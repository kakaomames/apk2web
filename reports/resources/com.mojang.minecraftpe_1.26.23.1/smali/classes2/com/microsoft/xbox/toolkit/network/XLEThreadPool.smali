.class public Lcom/microsoft/xbox/toolkit/network/XLEThreadPool;
.super Ljava/lang/Object;
.source "XLEThreadPool.java"


# static fields
.field public static biOperationsThreadPool:Lcom/microsoft/xbox/toolkit/network/XLEThreadPool;

.field public static nativeOperationsThreadPool:Lcom/microsoft/xbox/toolkit/network/XLEThreadPool;

.field public static networkOperationsThreadPool:Lcom/microsoft/xbox/toolkit/network/XLEThreadPool;

.field public static textureThreadPool:Lcom/microsoft/xbox/toolkit/network/XLEThreadPool;


# instance fields
.field private executor:Ljava/util/concurrent/ExecutorService;

.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 10
    new-instance v0, Lcom/microsoft/xbox/toolkit/network/XLEThreadPool;

    const/4 v1, 0x4

    const-string v2, "XLENativeOperationsPool"

    const/4 v3, 0x1

    invoke-direct {v0, v3, v1, v2}, Lcom/microsoft/xbox/toolkit/network/XLEThreadPool;-><init>(ZILjava/lang/String;)V

    sput-object v0, Lcom/microsoft/xbox/toolkit/network/XLEThreadPool;->nativeOperationsThreadPool:Lcom/microsoft/xbox/toolkit/network/XLEThreadPool;

    .line 11
    new-instance v0, Lcom/microsoft/xbox/toolkit/network/XLEThreadPool;

    const/4 v1, 0x3

    const-string v2, "XLENetworkOperationsPool"

    const/4 v4, 0x0

    invoke-direct {v0, v4, v1, v2}, Lcom/microsoft/xbox/toolkit/network/XLEThreadPool;-><init>(ZILjava/lang/String;)V

    sput-object v0, Lcom/microsoft/xbox/toolkit/network/XLEThreadPool;->networkOperationsThreadPool:Lcom/microsoft/xbox/toolkit/network/XLEThreadPool;

    .line 12
    new-instance v0, Lcom/microsoft/xbox/toolkit/network/XLEThreadPool;

    const-string v1, "XLETexturePool"

    invoke-direct {v0, v4, v3, v1}, Lcom/microsoft/xbox/toolkit/network/XLEThreadPool;-><init>(ZILjava/lang/String;)V

    sput-object v0, Lcom/microsoft/xbox/toolkit/network/XLEThreadPool;->textureThreadPool:Lcom/microsoft/xbox/toolkit/network/XLEThreadPool;

    .line 13
    new-instance v0, Lcom/microsoft/xbox/toolkit/network/XLEThreadPool;

    const-string v1, "XLEPerfMarkerOperationsPool"

    invoke-direct {v0, v4, v3, v1}, Lcom/microsoft/xbox/toolkit/network/XLEThreadPool;-><init>(ZILjava/lang/String;)V

    sput-object v0, Lcom/microsoft/xbox/toolkit/network/XLEThreadPool;->biOperationsThreadPool:Lcom/microsoft/xbox/toolkit/network/XLEThreadPool;

    return-void
.end method

.method public constructor <init>(ZILjava/lang/String;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p3, p0, Lcom/microsoft/xbox/toolkit/network/XLEThreadPool;->name:Ljava/lang/String;

    .line 20
    new-instance p3, Lcom/microsoft/xbox/toolkit/network/XLEThreadPool$1;

    invoke-direct {p3, p0, p2}, Lcom/microsoft/xbox/toolkit/network/XLEThreadPool$1;-><init>(Lcom/microsoft/xbox/toolkit/network/XLEThreadPool;I)V

    if-eqz p1, :cond_0

    .line 31
    invoke-static {p3}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/network/XLEThreadPool;->executor:Ljava/util/concurrent/ExecutorService;

    goto :goto_0

    .line 33
    :cond_0
    invoke-static {p3}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/network/XLEThreadPool;->executor:Ljava/util/concurrent/ExecutorService;

    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/microsoft/xbox/toolkit/network/XLEThreadPool;)Ljava/lang/String;
    .locals 0

    .line 9
    iget-object p0, p0, Lcom/microsoft/xbox/toolkit/network/XLEThreadPool;->name:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public run(Ljava/lang/Runnable;)V
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/network/XLEThreadPool;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
