.class public Lcom/xbox/httpclient/NetworkObserver;
.super Ljava/lang/Object;
.source "NetworkObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xbox/httpclient/NetworkObserver$NetworkDetails;
    }
.end annotation


# static fields
.field private static s_lastCapabilities:Ljava/lang/String; = ""

.field private static s_lastLinkProperties:Ljava/lang/String; = ""

.field private static s_networkChangedCallback:Landroid/net/ConnectivityManager$NetworkCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Lcom/xbox/httpclient/NetworkObserver$1;

    invoke-direct {v0}, Lcom/xbox/httpclient/NetworkObserver$1;-><init>()V

    sput-object v0, Lcom/xbox/httpclient/NetworkObserver;->s_networkChangedCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Cleanup(Landroid/content/Context;)V
    .locals 1

    .line 77
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 79
    sget-object v0, Lcom/xbox/httpclient/NetworkObserver;->s_networkChangedCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method

.method public static Initialize(Landroid/content/Context;)V
    .locals 2

    .line 64
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 68
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/16 v1, 0xc

    .line 69
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 70
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    .line 72
    sget-object v1, Lcom/xbox/httpclient/NetworkObserver;->s_networkChangedCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {p0, v0, v1}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method

.method private static native Log(Ljava/lang/String;)V
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0

    .line 17
    invoke-static {p0}, Lcom/xbox/httpclient/NetworkObserver;->Log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 17
    sget-object v0, Lcom/xbox/httpclient/NetworkObserver;->s_lastCapabilities:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 17
    sput-object p0, Lcom/xbox/httpclient/NetworkObserver;->s_lastCapabilities:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .line 17
    sget-object v0, Lcom/xbox/httpclient/NetworkObserver;->s_lastLinkProperties:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 17
    sput-object p0, Lcom/xbox/httpclient/NetworkObserver;->s_lastLinkProperties:Ljava/lang/String;

    return-object p0
.end method
