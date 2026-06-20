.class public Ljp/co/neilo/snsshare/SnsShare;
.super Ljava/lang/Object;
.source "SnsShare.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljp/co/neilo/snsshare/SnsShare$IntentType;,
        Ljp/co/neilo/snsshare/SnsShare$Result;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CreateChooser(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    .line 64
    :try_start_0
    invoke-static {p1}, Ljp/co/neilo/snsshare/SnsShare;->getIntentType(Ljava/lang/String;)Ljp/co/neilo/snsshare/SnsShare$IntentType;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "android.intent.action.SEND"

    .line 65
    invoke-virtual {v0}, Ljp/co/neilo/snsshare/SnsShare$IntentType;->GetValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Ljp/co/neilo/snsshare/SnsShare;->createAppIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "android.intent.extra.TEXT"

    .line 69
    invoke-virtual {v1, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    sget-object p0, Ljp/co/neilo/snsshare/SnsShare$IntentType;->TextPlain:Ljp/co/neilo/snsshare/SnsShare$IntentType;

    if-eq v0, p0, :cond_0

    const-string p0, "android.intent.extra.STREAM"

    .line 72
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v1, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 77
    :cond_0
    sget-object p0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 80
    sget-object p0, Ljp/co/neilo/snsshare/SnsShare$Result;->Success:Ljp/co/neilo/snsshare/SnsShare$Result;

    invoke-virtual {p0}, Ljp/co/neilo/snsshare/SnsShare$Result;->GetValue()I

    move-result p0

    return p0

    .line 85
    :cond_1
    sget-object p0, Ljp/co/neilo/snsshare/SnsShare$Result;->NotAvailable:Ljp/co/neilo/snsshare/SnsShare$Result;

    invoke-virtual {p0}, Ljp/co/neilo/snsshare/SnsShare$Result;->GetValue()I

    move-result p0

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 90
    :catch_0
    sget-object p0, Ljp/co/neilo/snsshare/SnsShare$Result;->Error:Ljp/co/neilo/snsshare/SnsShare$Result;

    invoke-virtual {p0}, Ljp/co/neilo/snsshare/SnsShare$Result;->GetValue()I

    move-result p0

    return p0
.end method

.method private static createAppIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 119
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 120
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    sget-object p1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/high16 p2, 0x10000

    invoke-virtual {p1, v0, p2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    const-string p2, ""

    .line 123
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v1, 0x0

    if-nez p2, :cond_3

    if-nez p0, :cond_0

    goto :goto_0

    .line 129
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/ResolveInfo;

    .line 131
    iget-object v2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 133
    iget-object p0, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object p1, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0

    :cond_2
    return-object v1

    .line 125
    :cond_3
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_4

    goto :goto_1

    :cond_4
    move-object v0, v1

    :goto_1
    return-object v0

    :catch_0
    move-exception p0

    .line 142
    goto :goto_3

    :goto_2
    throw p0

    :goto_3
    goto :goto_2
.end method

.method private static getIntentType(Ljava/lang/String;)Ljp/co/neilo/snsshare/SnsShare$IntentType;
    .locals 1

    const-string v0, ""

    .line 101
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    sget-object p0, Ljp/co/neilo/snsshare/SnsShare$IntentType;->TextPlain:Ljp/co/neilo/snsshare/SnsShare$IntentType;

    return-object p0

    :cond_0
    const-string v0, "."

    .line 104
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v0, ".png"

    .line 105
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Ljp/co/neilo/snsshare/SnsShare$IntentType;->ImagePng:Ljp/co/neilo/snsshare/SnsShare$IntentType;

    goto :goto_0

    :cond_1
    sget-object p0, Ljp/co/neilo/snsshare/SnsShare$IntentType;->ImageJpg:Ljp/co/neilo/snsshare/SnsShare$IntentType;

    :goto_0
    return-object p0
.end method
