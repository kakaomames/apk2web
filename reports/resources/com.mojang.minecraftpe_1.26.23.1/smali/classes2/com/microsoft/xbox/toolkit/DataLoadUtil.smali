.class public Lcom/microsoft/xbox/toolkit/DataLoadUtil;
.super Ljava/lang/Object;
.source "DataLoadUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Load(ZJLjava/util/Date;Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;)Lcom/microsoft/xbox/toolkit/AsyncResult;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(ZJ",
            "Ljava/util/Date;",
            "Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;",
            "Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable<",
            "TT;>;)",
            "Lcom/microsoft/xbox/toolkit/AsyncResult<",
            "TT;>;"
        }
    .end annotation

    .line 53
    invoke-static {p4}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    .line 54
    invoke-static {p5}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    .line 55
    invoke-static {}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertIsNotUIThread()V

    .line 60
    invoke-virtual {p4}, Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;->waitForNotLoading()Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus$WaitResult;

    move-result-object v0

    .line 61
    iget-boolean v1, v0, Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus$WaitResult;->waited:Z

    const/4 v2, 0x0

    if-nez v1, :cond_4

    .line 63
    invoke-static {p3, p1, p2}, Lcom/microsoft/xbox/xle/app/XLEUtil;->shouldRefresh(Ljava/util/Date;J)Z

    move-result p1

    if-nez p1, :cond_1

    if-eqz p0, :cond_0

    goto :goto_0

    .line 103
    :cond_0
    invoke-virtual {p4}, Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;->setSuccess()V

    .line 104
    sget-object p0, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->NO_CHANGE:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    invoke-static {v2, p5, v2, p0}, Lcom/microsoft/xbox/toolkit/DataLoadUtil;->safeReturnResult(Ljava/lang/Object;Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;Lcom/microsoft/xbox/toolkit/XLEException;Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)Lcom/microsoft/xbox/toolkit/AsyncResult;

    move-result-object p0

    return-object p0

    .line 64
    :cond_1
    :goto_0
    new-instance p0, Lcom/microsoft/xbox/toolkit/DataLoadUtil$2;

    invoke-direct {p0, p5}, Lcom/microsoft/xbox/toolkit/DataLoadUtil$2;-><init>(Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;)V

    invoke-static {p0}, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThreadSend(Ljava/lang/Runnable;)V

    .line 73
    invoke-virtual {p5}, Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;->getShouldRetryCountOnTokenError()I

    move-result p0

    const/4 p1, 0x0

    move-object p2, v2

    :goto_1
    if-gt p1, p0, :cond_3

    .line 77
    :try_start_0
    invoke-virtual {p5}, Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;->buildData()Ljava/lang/Object;

    move-result-object p2

    .line 79
    sget-object p3, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->SUCCESS:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    invoke-static {p2, p5, v2, p3}, Lcom/microsoft/xbox/toolkit/DataLoadUtil;->postExecute(Ljava/lang/Object;Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;Lcom/microsoft/xbox/toolkit/XLEException;Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V

    .line 81
    invoke-virtual {p4}, Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;->setSuccess()V

    .line 82
    new-instance p3, Lcom/microsoft/xbox/toolkit/AsyncResult;

    sget-object v0, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->SUCCESS:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    invoke-direct {p3, p2, p5, v2, v0}, Lcom/microsoft/xbox/toolkit/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/xbox/toolkit/XLEException;Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V

    :try_end_0
    .catch Lcom/microsoft/xbox/toolkit/XLEException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p3

    :catch_0
    move-exception p0

    .line 94
    new-instance p2, Lcom/microsoft/xbox/toolkit/XLEException;

    invoke-virtual {p5}, Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;->getDefaultErrorCode()J

    move-result-wide v0

    invoke-direct {p2, v0, v1, p0}, Lcom/microsoft/xbox/toolkit/XLEException;-><init>(JLjava/lang/Throwable;)V

    goto :goto_2

    :catch_1
    move-exception p2

    .line 86
    invoke-virtual {p2}, Lcom/microsoft/xbox/toolkit/XLEException;->getErrorCode()J

    move-result-wide v0

    const-wide/16 v3, 0x3fc

    cmp-long p3, v0, v3

    if-nez p3, :cond_2

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 89
    :cond_2
    invoke-virtual {p2}, Lcom/microsoft/xbox/toolkit/XLEException;->getErrorCode()J

    .line 99
    :cond_3
    :goto_2
    invoke-virtual {p4, p2}, Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;->setFailed(Lcom/microsoft/xbox/toolkit/XLEException;)V

    .line 100
    sget-object p0, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->FAIL:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    invoke-static {v2, p5, p2, p0}, Lcom/microsoft/xbox/toolkit/DataLoadUtil;->safeReturnResult(Ljava/lang/Object;Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;Lcom/microsoft/xbox/toolkit/XLEException;Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)Lcom/microsoft/xbox/toolkit/AsyncResult;

    move-result-object p0

    return-object p0

    .line 109
    :cond_4
    iget-object p0, v0, Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus$WaitResult;->error:Lcom/microsoft/xbox/toolkit/XLEException;

    if-nez p0, :cond_5

    .line 111
    sget-object p0, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->NO_OP_SUCCESS:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    invoke-static {v2, p5, v2, p0}, Lcom/microsoft/xbox/toolkit/DataLoadUtil;->safeReturnResult(Ljava/lang/Object;Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;Lcom/microsoft/xbox/toolkit/XLEException;Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)Lcom/microsoft/xbox/toolkit/AsyncResult;

    move-result-object p0

    return-object p0

    .line 113
    :cond_5
    sget-object p1, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->NO_OP_FAIL:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    invoke-static {v2, p5, p0, p1}, Lcom/microsoft/xbox/toolkit/DataLoadUtil;->safeReturnResult(Ljava/lang/Object;Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;Lcom/microsoft/xbox/toolkit/XLEException;Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)Lcom/microsoft/xbox/toolkit/AsyncResult;

    move-result-object p0

    return-object p0
.end method

.method public static StartLoadFromUI(ZJLjava/util/Date;Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;)Lcom/microsoft/xbox/toolkit/NetworkAsyncTask;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(ZJ",
            "Ljava/util/Date;",
            "Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;",
            "Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable<",
            "TT;>;)",
            "Lcom/microsoft/xbox/toolkit/NetworkAsyncTask;"
        }
    .end annotation

    .line 14
    new-instance p0, Lcom/microsoft/xbox/toolkit/DataLoadUtil$1;

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/microsoft/xbox/toolkit/DataLoadUtil$1;-><init>(JLjava/util/Date;Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;)V

    .line 45
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/NetworkAsyncTask;->execute()V

    return-object p0
.end method

.method private static postExecute(Ljava/lang/Object;Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;Lcom/microsoft/xbox/toolkit/XLEException;Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable<",
            "TT;>;",
            "Lcom/microsoft/xbox/toolkit/XLEException;",
            "Lcom/microsoft/xbox/toolkit/AsyncActionStatus;",
            ")V"
        }
    .end annotation

    .line 125
    new-instance v0, Lcom/microsoft/xbox/toolkit/DataLoadUtil$3;

    invoke-direct {v0, p1, p0, p2, p3}, Lcom/microsoft/xbox/toolkit/DataLoadUtil$3;-><init>(Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;Ljava/lang/Object;Lcom/microsoft/xbox/toolkit/XLEException;Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThreadSend(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static safeReturnResult(Ljava/lang/Object;Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;Lcom/microsoft/xbox/toolkit/XLEException;Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)Lcom/microsoft/xbox/toolkit/AsyncResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable<",
            "TT;>;",
            "Lcom/microsoft/xbox/toolkit/XLEException;",
            "Lcom/microsoft/xbox/toolkit/AsyncActionStatus;",
            ")",
            "Lcom/microsoft/xbox/toolkit/AsyncResult<",
            "TT;>;"
        }
    .end annotation

    .line 119
    invoke-static {p0, p1, p2, p3}, Lcom/microsoft/xbox/toolkit/DataLoadUtil;->postExecute(Ljava/lang/Object;Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;Lcom/microsoft/xbox/toolkit/XLEException;Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V

    .line 121
    new-instance v0, Lcom/microsoft/xbox/toolkit/AsyncResult;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/microsoft/xbox/toolkit/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/xbox/toolkit/XLEException;Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V

    return-object v0
.end method
