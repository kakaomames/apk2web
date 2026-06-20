.class public abstract Lcom/microsoft/xbox/toolkit/NetworkAsyncTask;
.super Lcom/microsoft/xbox/toolkit/XLEAsyncTask;
.source "NetworkAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/microsoft/xbox/toolkit/XLEAsyncTask<",
        "TT;>;"
    }
.end annotation


# instance fields
.field protected forceLoad:Z

.field private shouldExecute:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    sget-object v0, Lcom/microsoft/xbox/toolkit/network/XLEThreadPool;->networkOperationsThreadPool:Lcom/microsoft/xbox/toolkit/network/XLEThreadPool;

    invoke-direct {p0, v0}, Lcom/microsoft/xbox/toolkit/XLEAsyncTask;-><init>(Lcom/microsoft/xbox/toolkit/network/XLEThreadPool;)V

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/microsoft/xbox/toolkit/NetworkAsyncTask;->forceLoad:Z

    .line 8
    iput-boolean v0, p0, Lcom/microsoft/xbox/toolkit/NetworkAsyncTask;->shouldExecute:Z

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/xbox/toolkit/network/XLEThreadPool;)V
    .locals 0

    .line 15
    sget-object p1, Lcom/microsoft/xbox/toolkit/network/XLEThreadPool;->networkOperationsThreadPool:Lcom/microsoft/xbox/toolkit/network/XLEThreadPool;

    invoke-direct {p0, p1}, Lcom/microsoft/xbox/toolkit/XLEAsyncTask;-><init>(Lcom/microsoft/xbox/toolkit/network/XLEThreadPool;)V

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcom/microsoft/xbox/toolkit/NetworkAsyncTask;->forceLoad:Z

    .line 8
    iput-boolean p1, p0, Lcom/microsoft/xbox/toolkit/NetworkAsyncTask;->shouldExecute:Z

    return-void
.end method


# virtual methods
.method protected abstract checkShouldExecute()Z
.end method

.method protected final doInBackground()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 34
    :try_start_0
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/NetworkAsyncTask;->loadDataInBackground()Ljava/lang/Object;

    move-result-object v0

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 36
    :catch_0
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/NetworkAsyncTask;->onError()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public execute()V
    .locals 4

    .line 42
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    .line 44
    iget-boolean v0, p0, Lcom/microsoft/xbox/toolkit/NetworkAsyncTask;->cancelled:Z

    .line 47
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/NetworkAsyncTask;->checkShouldExecute()Z

    move-result v0

    iput-boolean v0, p0, Lcom/microsoft/xbox/toolkit/NetworkAsyncTask;->shouldExecute:Z

    if-nez v0, :cond_2

    .line 49
    iget-boolean v0, p0, Lcom/microsoft/xbox/toolkit/NetworkAsyncTask;->forceLoad:Z

    if-eqz v0, :cond_1

    goto :goto_1

    .line 55
    :cond_1
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/NetworkAsyncTask;->onNoAction()V

    .line 56
    iput-boolean v3, p0, Lcom/microsoft/xbox/toolkit/NetworkAsyncTask;->isBusy:Z

    goto :goto_2

    .line 50
    :cond_2
    :goto_1
    iput-boolean v2, p0, Lcom/microsoft/xbox/toolkit/NetworkAsyncTask;->isBusy:Z

    .line 51
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/NetworkAsyncTask;->onPreExecute()V

    .line 52
    invoke-super {p0}, Lcom/microsoft/xbox/toolkit/XLEAsyncTask;->executeBackground()V

    :goto_2
    return-void
.end method

.method public load(Z)V
    .locals 0

    .line 19
    iput-boolean p1, p0, Lcom/microsoft/xbox/toolkit/NetworkAsyncTask;->forceLoad:Z

    .line 20
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/NetworkAsyncTask;->execute()V

    return-void
.end method

.method protected abstract loadDataInBackground()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method protected abstract onError()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method protected abstract onNoAction()V
.end method
