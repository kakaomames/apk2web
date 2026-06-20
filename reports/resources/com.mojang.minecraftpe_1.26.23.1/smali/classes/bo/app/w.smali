.class public final Lbo/app/w;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0007J\u0012\u0010\u0007\u001a\u00020\u00062\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008H\u0007\u00a8\u0006\u000c"
    }
    d2 = {
        "Lbo/app/w;",
        "",
        "Landroid/content/Intent;",
        "intent",
        "Landroid/net/ConnectivityManager;",
        "connectivityManager",
        "Lbo/app/p3;",
        "a",
        "Landroid/net/NetworkCapabilities;",
        "networkCapabilities",
        "<init>",
        "()V",
        "android-sdk-base_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# static fields
.field public static final a:Lbo/app/w;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lbo/app/w;

    invoke-direct {v0}, Lbo/app/w;-><init>()V

    sput-object v0, Lbo/app/w;->a:Lbo/app/w;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Landroid/content/Intent;Landroid/net/ConnectivityManager;)Lbo/app/p3;
    .locals 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "intent"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "connectivityManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 4
    :try_start_0
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p1

    .line 13
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "noConnectivity"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p1, :cond_6

    if-eqz p0, :cond_0

    goto :goto_1

    .line 23
    :cond_0
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result p0

    if-eqz p0, :cond_3

    const/4 p1, 0x1

    if-eq p0, p1, :cond_2

    const/4 p1, 0x6

    if-eq p0, p1, :cond_2

    const/16 p1, 0x9

    if-eq p0, p1, :cond_1

    .line 31
    sget-object p0, Lbo/app/p3;->b:Lbo/app/p3;

    goto :goto_0

    .line 32
    :cond_1
    sget-object p0, Lbo/app/p3;->d:Lbo/app/p3;

    goto :goto_0

    .line 33
    :cond_2
    sget-object p0, Lbo/app/p3;->e:Lbo/app/p3;

    goto :goto_0

    .line 34
    :cond_3
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result p0

    const/4 p1, 0x3

    if-eq p0, p1, :cond_5

    const/16 p1, 0xd

    if-eq p0, p1, :cond_4

    const/16 p1, 0x14

    if-eq p0, p1, :cond_4

    .line 37
    sget-object p0, Lbo/app/p3;->c:Lbo/app/p3;

    goto :goto_0

    .line 38
    :cond_4
    sget-object p0, Lbo/app/p3;->e:Lbo/app/p3;

    goto :goto_0

    .line 39
    :cond_5
    sget-object p0, Lbo/app/p3;->d:Lbo/app/p3;

    :goto_0
    return-object p0

    .line 40
    :cond_6
    :goto_1
    sget-object p0, Lbo/app/p3;->b:Lbo/app/p3;

    return-object p0

    :catch_0
    move-exception p0

    .line 41
    sget-object p1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v0, Lbo/app/w;->a:Lbo/app/w;

    sget-object v1, Lcom/braze/support/BrazeLogger$Priority;->E:Lcom/braze/support/BrazeLogger$Priority;

    sget-object v2, Lbo/app/w$b;->b:Lbo/app/w$b;

    invoke-virtual {p1, v0, v1, p0, v2}, Lcom/braze/support/BrazeLogger;->brazelog(Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V

    .line 45
    sget-object p0, Lbo/app/p3;->b:Lbo/app/p3;

    return-object p0

    .line 69
    :cond_7
    sget-object p0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v1, Lbo/app/w;->a:Lbo/app/w;

    sget-object v2, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v4, Lbo/app/w$a;

    invoke-direct {v4, v0}, Lbo/app/w$a;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 71
    sget-object p0, Lbo/app/p3;->b:Lbo/app/p3;

    return-object p0
.end method

.method public static final a(Landroid/net/NetworkCapabilities;)Lbo/app/p3;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-nez p0, :cond_0

    .line 72
    sget-object p0, Lbo/app/p3;->b:Lbo/app/p3;

    return-object p0

    .line 75
    :cond_0
    invoke-virtual {p0}, Landroid/net/NetworkCapabilities;->getLinkDownstreamBandwidthKbps()I

    move-result v0

    .line 76
    invoke-virtual {p0}, Landroid/net/NetworkCapabilities;->getLinkUpstreamBandwidthKbps()I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    const/16 v0, 0x36b0

    if-le p0, v0, :cond_1

    .line 79
    sget-object p0, Lbo/app/p3;->e:Lbo/app/p3;

    goto :goto_0

    :cond_1
    const/16 v0, 0xfa0

    if-le p0, v0, :cond_2

    .line 80
    sget-object p0, Lbo/app/p3;->d:Lbo/app/p3;

    goto :goto_0

    .line 81
    :cond_2
    sget-object p0, Lbo/app/p3;->c:Lbo/app/p3;

    :goto_0
    return-object p0
.end method
