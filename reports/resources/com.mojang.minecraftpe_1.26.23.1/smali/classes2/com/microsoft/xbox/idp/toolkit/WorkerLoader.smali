.class public abstract Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;
.super Landroid/content/Loader;
.source "WorkerLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListenerImpl;,
        Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;,
        Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$Worker;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/content/Loader<",
        "TD;>;"
    }
.end annotation


# instance fields
.field private final dispatcher:Landroid/os/Handler;

.field private final lock:Ljava/lang/Object;

.field private result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TD;"
        }
    .end annotation
.end field

.field private resultListener:Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener<",
            "TD;>;"
        }
    .end annotation
.end field

.field private final worker:Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$Worker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$Worker<",
            "TD;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$Worker;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$Worker<",
            "TD;>;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1}, Landroid/content/Loader;-><init>(Landroid/content/Context;)V

    .line 14
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;->lock:Ljava/lang/Object;

    .line 15
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;->dispatcher:Landroid/os/Handler;

    .line 22
    iput-object p2, p0, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;->worker:Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$Worker;

    return-void
.end method

.method static synthetic access$100(Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;)Ljava/lang/Object;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;->lock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$200(Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;)Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;->resultListener:Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;

    return-object p0
.end method

.method static synthetic access$202(Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;)Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;->resultListener:Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;

    return-object p1
.end method

.method static synthetic access$300(Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;)Landroid/os/Handler;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;->dispatcher:Landroid/os/Handler;

    return-object p0
.end method

.method private cancelLoadCompat()Z
    .locals 1

    .line 113
    invoke-virtual {p0}, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;->cancelLoad()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public deliverResult(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    .line 73
    invoke-virtual {p0}, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;->isReset()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 75
    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;->releaseData(Ljava/lang/Object;)V

    :cond_0
    return-void

    .line 80
    :cond_1
    iget-object v0, p0, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;->result:Ljava/lang/Object;

    .line 81
    iput-object p1, p0, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;->result:Ljava/lang/Object;

    .line 83
    invoke-virtual {p0}, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 84
    invoke-super {p0, p1}, Landroid/content/Loader;->deliverResult(Ljava/lang/Object;)V

    :cond_2
    if-eqz v0, :cond_3

    if-eq v0, p1, :cond_3

    .line 87
    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;->isDataReleased(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 88
    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;->releaseData(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method protected abstract isDataReleased(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)Z"
        }
    .end annotation
.end method

.method protected onCancelLoad()Z
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 62
    :try_start_0
    iget-object v1, p0, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;->resultListener:Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;

    if-eqz v1, :cond_0

    .line 63
    iget-object v1, p0, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;->worker:Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$Worker;

    invoke-interface {v1}, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$Worker;->cancel()V

    const/4 v1, 0x0

    .line 64
    iput-object v1, p0, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;->resultListener:Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;

    .line 65
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    .line 67
    :cond_0
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v1

    .line 68
    monitor-exit v0

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onCanceled(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 44
    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;->isDataReleased(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 45
    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;->releaseData(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected onForceLoad()V
    .locals 3

    .line 51
    invoke-super {p0}, Landroid/content/Loader;->onForceLoad()V

    .line 52
    invoke-direct {p0}, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;->cancelLoadCompat()Z

    .line 53
    iget-object v0, p0, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 54
    :try_start_0
    new-instance v1, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListenerImpl;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListenerImpl;-><init>(Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$1;)V

    iput-object v1, p0, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;->resultListener:Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;

    .line 55
    iget-object v2, p0, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;->worker:Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$Worker;

    invoke-interface {v2, v1}, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$Worker;->start(Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;)V

    .line 56
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected onReset()V
    .locals 1

    .line 94
    invoke-direct {p0}, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;->cancelLoadCompat()Z

    .line 96
    iget-object v0, p0, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;->result:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;->isDataReleased(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;->result:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;->releaseData(Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    .line 99
    iput-object v0, p0, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;->result:Ljava/lang/Object;

    return-void
.end method

.method protected onStartLoading()V
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;->result:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 31
    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;->deliverResult(Ljava/lang/Object;)V

    .line 33
    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;->takeContentChanged()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;->result:Ljava/lang/Object;

    if-nez v0, :cond_2

    .line 34
    :cond_1
    invoke-virtual {p0}, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;->forceLoad()V

    :cond_2
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader;->cancelLoadCompat()Z

    return-void
.end method

.method protected abstract releaseData(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation
.end method
