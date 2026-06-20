.class public abstract Lcom/microsoft/xbox/service/model/ModelBase;
.super Lcom/microsoft/xbox/toolkit/XLEObservable;
.source "ModelBase.java"

# interfaces
.implements Lcom/microsoft/xbox/toolkit/ModelData;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/microsoft/xbox/toolkit/XLEObservable<",
        "Lcom/microsoft/xbox/service/model/UpdateData;",
        ">;",
        "Lcom/microsoft/xbox/toolkit/ModelData<",
        "TT;>;"
    }
.end annotation


# static fields
.field protected static final MilliSecondsInADay:J = 0x5265c00L

.field protected static final MilliSecondsInAnHour:J = 0x36ee80L

.field protected static final MilliSecondsInHalfHour:J = 0x1b7740L


# instance fields
.field protected isLoading:Z

.field protected lastInvalidatedTick:J

.field protected lastRefreshTime:Ljava/util/Date;

.field protected lifetime:J

.field protected loaderRunnable:Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable<",
            "TT;>;"
        }
    .end annotation
.end field

.field private loadingStatus:Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 52
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/XLEObservable;-><init>()V

    const-wide/32 v0, 0x5265c00

    .line 45
    iput-wide v0, p0, Lcom/microsoft/xbox/service/model/ModelBase;->lifetime:J

    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lcom/microsoft/xbox/service/model/ModelBase;->isLoading:Z

    const-wide/16 v0, 0x0

    .line 49
    iput-wide v0, p0, Lcom/microsoft/xbox/service/model/ModelBase;->lastInvalidatedTick:J

    .line 53
    new-instance v0, Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

    invoke-direct {v0}, Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;-><init>()V

    iput-object v0, p0, Lcom/microsoft/xbox/service/model/ModelBase;->loadingStatus:Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

    return-void
.end method


# virtual methods
.method public getIsLoading()Z
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/ModelBase;->loadingStatus:Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;->getIsLoading()Z

    move-result v0

    return v0
.end method

.method public hasValidData()Z
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/ModelBase;->lastRefreshTime:Ljava/util/Date;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public invalidateData()V
    .locals 1

    const/4 v0, 0x0

    .line 87
    iput-object v0, p0, Lcom/microsoft/xbox/service/model/ModelBase;->lastRefreshTime:Ljava/util/Date;

    return-void
.end method

.method protected isLoaded()Z
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/ModelBase;->lastRefreshTime:Ljava/util/Date;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected loadData(ZLcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;)Lcom/microsoft/xbox/toolkit/AsyncResult;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable<",
            "TT;>;)",
            "Lcom/microsoft/xbox/toolkit/AsyncResult<",
            "TT;>;"
        }
    .end annotation

    .line 92
    invoke-static {}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertIsNotUIThread()V

    .line 93
    iget-wide v1, p0, Lcom/microsoft/xbox/service/model/ModelBase;->lifetime:J

    iget-object v3, p0, Lcom/microsoft/xbox/service/model/ModelBase;->lastRefreshTime:Ljava/util/Date;

    iget-object v4, p0, Lcom/microsoft/xbox/service/model/ModelBase;->loadingStatus:Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

    move v0, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/microsoft/xbox/toolkit/DataLoadUtil;->Load(ZJLjava/util/Date;Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;)Lcom/microsoft/xbox/toolkit/AsyncResult;

    move-result-object p1

    return-object p1
.end method

.method protected loadInternal(ZLcom/microsoft/xbox/service/model/UpdateType;Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/microsoft/xbox/service/model/UpdateType;",
            "Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable<",
            "TT;>;)V"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/ModelBase;->lastRefreshTime:Ljava/util/Date;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/microsoft/xbox/service/model/ModelBase;->loadInternal(ZLcom/microsoft/xbox/service/model/UpdateType;Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;Ljava/util/Date;)V

    return-void
.end method

.method protected loadInternal(ZLcom/microsoft/xbox/service/model/UpdateType;Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;Ljava/util/Date;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/microsoft/xbox/service/model/UpdateType;",
            "Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable<",
            "TT;>;",
            "Ljava/util/Date;",
            ")V"
        }
    .end annotation

    .line 102
    invoke-static {}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertIsUIThread()V

    .line 105
    invoke-virtual {p0}, Lcom/microsoft/xbox/service/model/ModelBase;->getIsLoading()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    invoke-virtual {p0, p4}, Lcom/microsoft/xbox/service/model/ModelBase;->shouldRefresh(Ljava/util/Date;)Z

    move-result p4

    if-eqz p4, :cond_1

    .line 106
    :cond_0
    iget-wide v3, p0, Lcom/microsoft/xbox/service/model/ModelBase;->lifetime:J

    iget-object v5, p0, Lcom/microsoft/xbox/service/model/ModelBase;->lastRefreshTime:Ljava/util/Date;

    iget-object v6, p0, Lcom/microsoft/xbox/service/model/ModelBase;->loadingStatus:Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

    move v2, p1

    move-object v7, p3

    invoke-static/range {v2 .. v7}, Lcom/microsoft/xbox/toolkit/DataLoadUtil;->StartLoadFromUI(ZJLjava/util/Date;Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;)Lcom/microsoft/xbox/toolkit/NetworkAsyncTask;

    .line 107
    new-instance p1, Lcom/microsoft/xbox/toolkit/AsyncResult;

    new-instance p3, Lcom/microsoft/xbox/service/model/UpdateData;

    const/4 p4, 0x0

    invoke-direct {p3, p2, p4}, Lcom/microsoft/xbox/service/model/UpdateData;-><init>(Lcom/microsoft/xbox/service/model/UpdateType;Z)V

    invoke-direct {p1, p3, p0, v1}, Lcom/microsoft/xbox/toolkit/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/xbox/toolkit/XLEException;)V

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/service/model/ModelBase;->notifyObservers(Lcom/microsoft/xbox/toolkit/AsyncResult;)V

    goto :goto_0

    .line 111
    :cond_1
    new-instance p1, Lcom/microsoft/xbox/toolkit/AsyncResult;

    new-instance p3, Lcom/microsoft/xbox/service/model/UpdateData;

    invoke-virtual {p0}, Lcom/microsoft/xbox/service/model/ModelBase;->getIsLoading()Z

    move-result p4

    xor-int/lit8 p4, p4, 0x1

    invoke-direct {p3, p2, p4}, Lcom/microsoft/xbox/service/model/UpdateData;-><init>(Lcom/microsoft/xbox/service/model/UpdateType;Z)V

    invoke-direct {p1, p3, p0, v1}, Lcom/microsoft/xbox/toolkit/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/xbox/toolkit/XLEException;)V

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/service/model/ModelBase;->notifyObservers(Lcom/microsoft/xbox/toolkit/AsyncResult;)V

    :goto_0
    return-void
.end method

.method public shouldRefresh()Z
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/ModelBase;->lastRefreshTime:Ljava/util/Date;

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/service/model/ModelBase;->shouldRefresh(Ljava/util/Date;)Z

    move-result v0

    return v0
.end method

.method protected shouldRefresh(Ljava/util/Date;)Z
    .locals 2

    .line 65
    iget-wide v0, p0, Lcom/microsoft/xbox/service/model/ModelBase;->lifetime:J

    invoke-static {p1, v0, v1}, Lcom/microsoft/xbox/xle/app/XLEUtil;->shouldRefresh(Ljava/util/Date;J)Z

    move-result p1

    return p1
.end method

.method public updateWithNewData(Lcom/microsoft/xbox/toolkit/AsyncResult;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/xbox/toolkit/AsyncResult<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 76
    iput-boolean v0, p0, Lcom/microsoft/xbox/service/model/ModelBase;->isLoading:Z

    .line 77
    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/AsyncResult;->getException()Lcom/microsoft/xbox/toolkit/XLEException;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/AsyncResult;->getStatus()Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    move-result-object p1

    sget-object v0, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->SUCCESS:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    if-ne p1, v0, :cond_0

    .line 78
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iput-object p1, p0, Lcom/microsoft/xbox/service/model/ModelBase;->lastRefreshTime:Ljava/util/Date;

    :cond_0
    return-void
.end method
