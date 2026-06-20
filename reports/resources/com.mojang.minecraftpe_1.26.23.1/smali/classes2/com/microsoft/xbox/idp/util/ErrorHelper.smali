.class public final Lcom/microsoft/xbox/idp/util/ErrorHelper;
.super Ljava/lang/Object;
.source "ErrorHelper.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xbox/idp/util/ErrorHelper$ActivityResult;,
        Lcom/microsoft/xbox/idp/util/ErrorHelper$LoaderInfo;,
        Lcom/microsoft/xbox/idp/util/ErrorHelper$ActivityContext;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/microsoft/xbox/idp/util/ErrorHelper;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEY_RESULT_KEY:Ljava/lang/String; = "KEY_RESULT_KEY"

.field public static final LOADER_NONE:I = -0x1

.field public static final RC_ERROR_SCREEN:I = 0x3f

.field private static final TAG:Ljava/lang/String; = "ErrorHelper"


# instance fields
.field private activityContext:Lcom/microsoft/xbox/idp/util/ErrorHelper$ActivityContext;

.field public loaderArgs:Landroid/os/Bundle;

.field public loaderId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    new-instance v0, Lcom/microsoft/xbox/idp/util/ErrorHelper$1;

    invoke-direct {v0}, Lcom/microsoft/xbox/idp/util/ErrorHelper$1;-><init>()V

    sput-object v0, Lcom/microsoft/xbox/idp/util/ErrorHelper;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 39
    iput v0, p0, Lcom/microsoft/xbox/idp/util/ErrorHelper;->loaderId:I

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lcom/microsoft/xbox/idp/util/ErrorHelper;->loaderArgs:Landroid/os/Bundle;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/microsoft/xbox/idp/util/ErrorHelper;->loaderId:I

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/xbox/idp/util/ErrorHelper;->loaderArgs:Landroid/os/Bundle;

    return-void
.end method

.method private isConnected()Z
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/microsoft/xbox/idp/util/ErrorHelper;->activityContext:Lcom/microsoft/xbox/idp/util/ErrorHelper$ActivityContext;

    invoke-interface {v0}, Lcom/microsoft/xbox/idp/util/ErrorHelper$ActivityContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 73
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public deleteLoader()V
    .locals 5

    .line 147
    iget v0, p0, Lcom/microsoft/xbox/idp/util/ErrorHelper;->loaderId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 148
    iget-object v0, p0, Lcom/microsoft/xbox/idp/util/ErrorHelper;->activityContext:Lcom/microsoft/xbox/idp/util/ErrorHelper$ActivityContext;

    invoke-interface {v0}, Lcom/microsoft/xbox/idp/util/ErrorHelper$ActivityContext;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    iget v2, p0, Lcom/microsoft/xbox/idp/util/ErrorHelper;->loaderId:I

    invoke-virtual {v0, v2}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 149
    iget-object v0, p0, Lcom/microsoft/xbox/idp/util/ErrorHelper;->loaderArgs:Landroid/os/Bundle;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move-object v0, v2

    goto :goto_0

    :cond_0
    const-string v3, "KEY_RESULT_KEY"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 151
    iget-object v3, p0, Lcom/microsoft/xbox/idp/util/ErrorHelper;->activityContext:Lcom/microsoft/xbox/idp/util/ErrorHelper$ActivityContext;

    iget v4, p0, Lcom/microsoft/xbox/idp/util/ErrorHelper;->loaderId:I

    invoke-interface {v3, v4}, Lcom/microsoft/xbox/idp/util/ErrorHelper$ActivityContext;->getLoaderInfo(I)Lcom/microsoft/xbox/idp/util/ErrorHelper$LoaderInfo;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/microsoft/xbox/idp/util/ErrorHelper$LoaderInfo;->clearCache(Ljava/lang/Object;)V

    .line 153
    :cond_1
    iput v1, p0, Lcom/microsoft/xbox/idp/util/ErrorHelper;->loaderId:I

    .line 154
    iput-object v2, p0, Lcom/microsoft/xbox/idp/util/ErrorHelper;->loaderArgs:Landroid/os/Bundle;

    :cond_2
    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getActivityResult(IILandroid/content/Intent;)Lcom/microsoft/xbox/idp/util/ErrorHelper$ActivityResult;
    .locals 0

    const/16 p3, 0x3f

    if-eq p1, p3, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 162
    :cond_0
    new-instance p1, Lcom/microsoft/xbox/idp/util/ErrorHelper$ActivityResult;

    const/4 p3, 0x1

    if-ne p2, p3, :cond_1

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    :goto_0
    invoke-direct {p1, p3}, Lcom/microsoft/xbox/idp/util/ErrorHelper$ActivityResult;-><init>(Z)V

    return-object p1
.end method

.method public initLoader(ILandroid/os/Bundle;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(I",
            "Landroid/os/Bundle;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x1

    .line 89
    invoke-virtual {p0, p1, p2, v0}, Lcom/microsoft/xbox/idp/util/ErrorHelper;->initLoader(ILandroid/os/Bundle;Z)Z

    move-result p1

    return p1
.end method

.method public initLoader(ILandroid/os/Bundle;Z)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(I",
            "Landroid/os/Bundle;",
            "Z)Z"
        }
    .end annotation

    .line 93
    sget-object v0, Lcom/microsoft/xbox/idp/util/ErrorHelper;->TAG:Ljava/lang/String;

    const-string v1, "initLoader"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq p1, v1, :cond_4

    .line 96
    iput p1, p0, Lcom/microsoft/xbox/idp/util/ErrorHelper;->loaderId:I

    .line 97
    iput-object p2, p0, Lcom/microsoft/xbox/idp/util/ErrorHelper;->loaderArgs:Landroid/os/Bundle;

    .line 98
    iget-object v1, p0, Lcom/microsoft/xbox/idp/util/ErrorHelper;->activityContext:Lcom/microsoft/xbox/idp/util/ErrorHelper$ActivityContext;

    invoke-interface {v1}, Lcom/microsoft/xbox/idp/util/ErrorHelper$ActivityContext;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    .line 99
    iget-object v3, p0, Lcom/microsoft/xbox/idp/util/ErrorHelper;->activityContext:Lcom/microsoft/xbox/idp/util/ErrorHelper$ActivityContext;

    iget v4, p0, Lcom/microsoft/xbox/idp/util/ErrorHelper;->loaderId:I

    invoke-interface {v3, v4}, Lcom/microsoft/xbox/idp/util/ErrorHelper$ActivityContext;->getLoaderInfo(I)Lcom/microsoft/xbox/idp/util/ErrorHelper$LoaderInfo;

    move-result-object v3

    .line 100
    iget-object v4, p0, Lcom/microsoft/xbox/idp/util/ErrorHelper;->loaderArgs:Landroid/os/Bundle;

    if-nez v4, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    const-string v5, "KEY_RESULT_KEY"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    :goto_0
    if-nez v4, :cond_1

    move v4, v2

    goto :goto_1

    .line 101
    :cond_1
    invoke-interface {v3, v4}, Lcom/microsoft/xbox/idp/util/ErrorHelper$LoaderInfo;->hasCachedData(Ljava/lang/Object;)Z

    move-result v4

    :goto_1
    if-nez v4, :cond_3

    .line 102
    invoke-virtual {v1, p1}, Landroid/app/LoaderManager;->getLoader(I)Landroid/content/Loader;

    move-result-object v4

    if-nez v4, :cond_3

    if-eqz p3, :cond_3

    invoke-direct {p0}, Lcom/microsoft/xbox/idp/util/ErrorHelper;->isConnected()Z

    move-result p3

    if-eqz p3, :cond_2

    goto :goto_2

    .line 107
    :cond_2
    const-string p1, "Starting error activity: OFFLINE"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    sget-object p1, Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;->OFFLINE:Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/idp/util/ErrorHelper;->startErrorActivity(Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;)V

    goto :goto_3

    .line 103
    :cond_3
    :goto_2
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v2, "initializing loader #"

    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/microsoft/xbox/idp/util/ErrorHelper;->loaderId:I

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-interface {v3}, Lcom/microsoft/xbox/idp/util/ErrorHelper$LoaderInfo;->getLoaderCallbacks()Landroid/app/LoaderManager$LoaderCallbacks;

    move-result-object p3

    invoke-virtual {v1, p1, p2, p3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    const/4 p1, 0x1

    move v2, p1

    goto :goto_3

    .line 111
    :cond_4
    const-string p1, "LOADER_NONE"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return v2
.end method

.method public restartLoader()Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">()Z"
        }
    .end annotation

    .line 134
    iget v0, p0, Lcom/microsoft/xbox/idp/util/ErrorHelper;->loaderId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 135
    invoke-direct {p0}, Lcom/microsoft/xbox/idp/util/ErrorHelper;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/microsoft/xbox/idp/util/ErrorHelper;->activityContext:Lcom/microsoft/xbox/idp/util/ErrorHelper$ActivityContext;

    invoke-interface {v0}, Lcom/microsoft/xbox/idp/util/ErrorHelper$ActivityContext;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    iget v1, p0, Lcom/microsoft/xbox/idp/util/ErrorHelper;->loaderId:I

    iget-object v2, p0, Lcom/microsoft/xbox/idp/util/ErrorHelper;->loaderArgs:Landroid/os/Bundle;

    iget-object v3, p0, Lcom/microsoft/xbox/idp/util/ErrorHelper;->activityContext:Lcom/microsoft/xbox/idp/util/ErrorHelper$ActivityContext;

    .line 137
    invoke-interface {v3, v1}, Lcom/microsoft/xbox/idp/util/ErrorHelper$ActivityContext;->getLoaderInfo(I)Lcom/microsoft/xbox/idp/util/ErrorHelper$LoaderInfo;

    move-result-object v3

    invoke-interface {v3}, Lcom/microsoft/xbox/idp/util/ErrorHelper$LoaderInfo;->getLoaderCallbacks()Landroid/app/LoaderManager$LoaderCallbacks;

    move-result-object v3

    .line 136
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    const/4 v0, 0x1

    goto :goto_0

    .line 140
    :cond_0
    sget-object v0, Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;->OFFLINE:Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/idp/util/ErrorHelper;->startErrorActivity(Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;)V

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public restartLoader(ILandroid/os/Bundle;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(I",
            "Landroid/os/Bundle;",
            ")Z"
        }
    .end annotation

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    .line 119
    iput p1, p0, Lcom/microsoft/xbox/idp/util/ErrorHelper;->loaderId:I

    .line 120
    iput-object p2, p0, Lcom/microsoft/xbox/idp/util/ErrorHelper;->loaderArgs:Landroid/os/Bundle;

    .line 121
    invoke-direct {p0}, Lcom/microsoft/xbox/idp/util/ErrorHelper;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 122
    iget-object p1, p0, Lcom/microsoft/xbox/idp/util/ErrorHelper;->activityContext:Lcom/microsoft/xbox/idp/util/ErrorHelper$ActivityContext;

    invoke-interface {p1}, Lcom/microsoft/xbox/idp/util/ErrorHelper$ActivityContext;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object p1

    iget p2, p0, Lcom/microsoft/xbox/idp/util/ErrorHelper;->loaderId:I

    iget-object v0, p0, Lcom/microsoft/xbox/idp/util/ErrorHelper;->loaderArgs:Landroid/os/Bundle;

    iget-object v1, p0, Lcom/microsoft/xbox/idp/util/ErrorHelper;->activityContext:Lcom/microsoft/xbox/idp/util/ErrorHelper$ActivityContext;

    .line 123
    invoke-interface {v1, p2}, Lcom/microsoft/xbox/idp/util/ErrorHelper$ActivityContext;->getLoaderInfo(I)Lcom/microsoft/xbox/idp/util/ErrorHelper$LoaderInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/microsoft/xbox/idp/util/ErrorHelper$LoaderInfo;->getLoaderCallbacks()Landroid/app/LoaderManager$LoaderCallbacks;

    move-result-object v1

    .line 122
    invoke-virtual {p1, p2, v0, v1}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    const/4 p1, 0x1

    goto :goto_0

    .line 126
    :cond_0
    sget-object p1, Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;->OFFLINE:Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/idp/util/ErrorHelper;->startErrorActivity(Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;)V

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setActivityContext(Lcom/microsoft/xbox/idp/util/ErrorHelper$ActivityContext;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/microsoft/xbox/idp/util/ErrorHelper;->activityContext:Lcom/microsoft/xbox/idp/util/ErrorHelper$ActivityContext;

    return-void
.end method

.method public startErrorActivity(Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;)V
    .locals 3

    .line 82
    iget-object v0, p0, Lcom/microsoft/xbox/idp/util/ErrorHelper;->activityContext:Lcom/microsoft/xbox/idp/util/ErrorHelper$ActivityContext;

    invoke-interface {v0}, Lcom/microsoft/xbox/idp/util/ErrorHelper$ActivityContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 83
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/microsoft/xbox/idp/ui/ErrorActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 84
    iget-object p1, p1, Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;->type:Lcom/microsoft/xbox/idp/interop/Interop$ErrorType;

    invoke-virtual {p1}, Lcom/microsoft/xbox/idp/interop/Interop$ErrorType;->getId()I

    move-result p1

    const-string v0, "ARG_ERROR_TYPE"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 85
    iget-object p1, p0, Lcom/microsoft/xbox/idp/util/ErrorHelper;->activityContext:Lcom/microsoft/xbox/idp/util/ErrorHelper$ActivityContext;

    const/16 v0, 0x3f

    invoke-interface {p1, v1, v0}, Lcom/microsoft/xbox/idp/util/ErrorHelper$ActivityContext;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 67
    iget p2, p0, Lcom/microsoft/xbox/idp/util/ErrorHelper;->loaderId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    iget-object p2, p0, Lcom/microsoft/xbox/idp/util/ErrorHelper;->loaderArgs:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
