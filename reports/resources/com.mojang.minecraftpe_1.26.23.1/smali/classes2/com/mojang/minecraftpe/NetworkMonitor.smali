.class public Lcom/mojang/minecraftpe/NetworkMonitor;
.super Ljava/lang/Object;
.source "NetworkMonitor.java"


# static fields
.field public static final NETWORK_CATEGORY_ETHERNET:I = 0x0

.field public static final NETWORK_CATEGORY_OTHER:I = 0x2

.field public static final NETWORK_CATEGORY_WIFI:I = 0x1


# instance fields
.field public mAvailableNetworksPerCategory:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashSet<",
            "Landroid/net/Network;",
            ">;>;"
        }
    .end annotation
.end field

.field public mContext:Landroid/content/Context;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmAvailableNetworksPerCategory(Lcom/mojang/minecraftpe/NetworkMonitor;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/mojang/minecraftpe/NetworkMonitor;->mAvailableNetworksPerCategory:Ljava/util/HashMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$m_updateStatus(Lcom/mojang/minecraftpe/NetworkMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/mojang/minecraftpe/NetworkMonitor;->_updateStatus()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/mojang/minecraftpe/NetworkMonitor;->mContext:Landroid/content/Context;

    .line 25
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/mojang/minecraftpe/NetworkMonitor;->mAvailableNetworksPerCategory:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 26
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    iget-object p1, p0, Lcom/mojang/minecraftpe/NetworkMonitor;->mAvailableNetworksPerCategory:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    iget-object p1, p0, Lcom/mojang/minecraftpe/NetworkMonitor;->mAvailableNetworksPerCategory:Ljava/util/HashMap;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x3

    .line 30
    invoke-direct {p0, p1, v0}, Lcom/mojang/minecraftpe/NetworkMonitor;->_addNetworkCallbacksForTransport(II)V

    .line 31
    invoke-direct {p0, v1, v1}, Lcom/mojang/minecraftpe/NetworkMonitor;->_addNetworkCallbacksForTransport(II)V

    .line 32
    invoke-direct {p0, v0, v2}, Lcom/mojang/minecraftpe/NetworkMonitor;->_addNetworkCallbacksForTransport(II)V

    .line 33
    invoke-direct {p0, v2, v2}, Lcom/mojang/minecraftpe/NetworkMonitor;->_addNetworkCallbacksForTransport(II)V

    .line 35
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1f

    if-lt p1, v0, :cond_0

    const/16 p1, 0x8

    .line 36
    invoke-direct {p0, p1, v2}, Lcom/mojang/minecraftpe/NetworkMonitor;->_addNetworkCallbacksForTransport(II)V

    :cond_0
    return-void
.end method

.method private _addNetworkCallbacksForTransport(II)V
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/mojang/minecraftpe/NetworkMonitor;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 42
    invoke-direct {p0, p1}, Lcom/mojang/minecraftpe/NetworkMonitor;->_createNetworkRequestForTransport(I)Landroid/net/NetworkRequest;

    move-result-object p1

    .line 44
    new-instance v1, Lcom/mojang/minecraftpe/NetworkMonitor$1;

    invoke-direct {v1, p0, p2}, Lcom/mojang/minecraftpe/NetworkMonitor$1;-><init>(Lcom/mojang/minecraftpe/NetworkMonitor;I)V

    invoke-virtual {v0, p1, v1}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method

.method private _createNetworkRequestForTransport(I)Landroid/net/NetworkRequest;
    .locals 2

    .line 60
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/16 v1, 0xc

    .line 61
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    const/16 v1, 0x10

    .line 64
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 67
    invoke-virtual {v0, p1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    .line 69
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object p1

    return-object p1
.end method

.method private _updateStatus()V
    .locals 5

    .line 73
    iget-object v0, p0, Lcom/mojang/minecraftpe/NetworkMonitor;->mAvailableNetworksPerCategory:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 74
    iget-object v2, p0, Lcom/mojang/minecraftpe/NetworkMonitor;->mAvailableNetworksPerCategory:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    xor-int/2addr v2, v1

    .line 75
    iget-object v3, p0, Lcom/mojang/minecraftpe/NetworkMonitor;->mAvailableNetworksPerCategory:Ljava/util/HashMap;

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->isEmpty()Z

    move-result v3

    xor-int/2addr v1, v3

    .line 77
    invoke-direct {p0, v0, v2, v1}, Lcom/mojang/minecraftpe/NetworkMonitor;->nativeUpdateNetworkStatus(ZZZ)V

    return-void
.end method

.method private native nativeUpdateNetworkStatus(ZZZ)V
.end method
