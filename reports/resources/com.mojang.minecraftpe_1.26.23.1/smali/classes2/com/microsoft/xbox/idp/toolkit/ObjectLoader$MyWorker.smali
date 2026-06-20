.class Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;
.super Ljava/lang/Object;
.source "ObjectLoader.java"

# interfaces
.implements Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$Worker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/idp/toolkit/ObjectLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyWorker"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$Worker<",
        "Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field private final cache:Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Cache;

.field private final cls:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final gson:Lcom/google/gson/Gson;

.field private final httpCall:Lcom/microsoft/xbox/idp/util/HttpCall;

.field private final resultKey:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Cache;Ljava/lang/Object;Ljava/lang/Class;Lcom/google/gson/Gson;Lcom/microsoft/xbox/idp/util/HttpCall;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Cache;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/google/gson/Gson;",
            "Lcom/microsoft/xbox/idp/util/HttpCall;",
            ")V"
        }
    .end annotation

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;->cache:Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Cache;

    .line 73
    iput-object p2, p0, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;->resultKey:Ljava/lang/Object;

    .line 74
    iput-object p3, p0, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;->cls:Ljava/lang/Class;

    .line 75
    iput-object p4, p0, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;->gson:Lcom/google/gson/Gson;

    .line 76
    iput-object p5, p0, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;->httpCall:Lcom/microsoft/xbox/idp/util/HttpCall;

    return-void
.end method

.method synthetic constructor <init>(Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Cache;Ljava/lang/Object;Ljava/lang/Class;Lcom/google/gson/Gson;Lcom/microsoft/xbox/idp/util/HttpCall;Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$1;)V
    .locals 0

    .line 64
    invoke-direct/range {p0 .. p5}, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;-><init>(Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Cache;Ljava/lang/Object;Ljava/lang/Class;Lcom/google/gson/Gson;Lcom/microsoft/xbox/idp/util/HttpCall;)V

    return-void
.end method

.method static synthetic access$100(Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;)Z
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;->hasCache()Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;)Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Cache;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;->cache:Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Cache;

    return-object p0
.end method

.method static synthetic access$300(Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;)Ljava/lang/Object;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;->resultKey:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$400(Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;)Ljava/lang/Class;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;->cls:Ljava/lang/Class;

    return-object p0
.end method

.method static synthetic access$500(Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;)Lcom/google/gson/Gson;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;->gson:Lcom/google/gson/Gson;

    return-object p0
.end method

.method private hasCache()Z
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;->cache:Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Cache;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;->resultKey:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public cancel()V
    .locals 0

    return-void
.end method

.method public start(Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener<",
            "Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 85
    invoke-direct {p0}, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;->hasCache()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;->cache:Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Cache;

    monitor-enter v0

    .line 88
    :try_start_0
    iget-object v1, p0, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;->cache:Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Cache;

    iget-object v2, p0, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;->resultKey:Ljava/lang/Object;

    invoke-interface {v1, v2}, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Cache;->get(Ljava/lang/Object;)Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;

    move-result-object v1

    .line 89
    monitor-exit v0

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 91
    invoke-interface {p1, v1}, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;->onResult(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p1

    .line 89
    :try_start_1
    monitor-exit v0

    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;->httpCall:Lcom/microsoft/xbox/idp/util/HttpCall;

    new-instance v1, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker$1;

    invoke-direct {v1, p0, p1}, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker$1;-><init>(Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;)V

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/idp/util/HttpCall;->getResponseAsync(Lcom/microsoft/xbox/idp/util/HttpCall$Callback;)V

    return-void
.end method
