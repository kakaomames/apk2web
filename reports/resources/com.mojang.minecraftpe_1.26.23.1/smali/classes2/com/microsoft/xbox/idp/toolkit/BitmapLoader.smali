.class public Lcom/microsoft/xbox/idp/toolkit/BitmapLoader;
.super Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;
.source "BitmapLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker;,
        Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Result;,
        Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Cache;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/microsoft/xbox/idp/toolkit/WorkerLoader<",
        "Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Result;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BitmapLoader"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Cache;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 24
    new-instance v0, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p3, p4, v1}, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$MyWorker;-><init>(Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Cache;Ljava/lang/Object;Ljava/lang/String;Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$1;)V

    invoke-direct {p0, p1, v0}, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;-><init>(Landroid/content/Context;Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$Worker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 20
    invoke-direct {p0, p1, v0, v0, p2}, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader;-><init>(Landroid/content/Context;Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Cache;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 16
    sget-object v0, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected isDataReleased(Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Result;)Z
    .locals 0

    .line 29
    invoke-virtual {p1}, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Result;->isReleased()Z

    move-result p1

    return p1
.end method

.method protected bridge synthetic isDataReleased(Ljava/lang/Object;)Z
    .locals 0

    .line 16
    check-cast p1, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Result;

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader;->isDataReleased(Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Result;)Z

    move-result p1

    return p1
.end method

.method protected releaseData(Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Result;)V
    .locals 0

    .line 34
    invoke-virtual {p1}, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Result;->release()V

    return-void
.end method

.method protected bridge synthetic releaseData(Ljava/lang/Object;)V
    .locals 0

    .line 16
    check-cast p1, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Result;

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader;->releaseData(Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Result;)V

    return-void
.end method
