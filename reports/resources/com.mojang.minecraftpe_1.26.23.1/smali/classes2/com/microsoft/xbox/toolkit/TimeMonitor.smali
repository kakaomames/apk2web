.class public Lcom/microsoft/xbox/toolkit/TimeMonitor;
.super Ljava/lang/Object;
.source "TimeMonitor.java"


# instance fields
.field private final NSTOMSEC:J

.field private endTicks:J

.field private startTicks:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, Lcom/microsoft/xbox/toolkit/TimeMonitor;->startTicks:J

    .line 5
    iput-wide v0, p0, Lcom/microsoft/xbox/toolkit/TimeMonitor;->endTicks:J

    const-wide/32 v0, 0xf4240

    .line 6
    iput-wide v0, p0, Lcom/microsoft/xbox/toolkit/TimeMonitor;->NSTOMSEC:J

    return-void
.end method


# virtual methods
.method public currentTime()J
    .locals 4

    .line 37
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/microsoft/xbox/toolkit/TimeMonitor;->startTicks:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getElapsedMs()J
    .locals 5

    .line 50
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/TimeMonitor;->getIsStarted()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    .line 51
    iget-wide v3, p0, Lcom/microsoft/xbox/toolkit/TimeMonitor;->endTicks:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_0

    goto :goto_0

    .line 54
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    .line 56
    :goto_0
    iget-wide v0, p0, Lcom/microsoft/xbox/toolkit/TimeMonitor;->startTicks:J

    sub-long/2addr v3, v0

    const-wide/32 v0, 0xf4240

    div-long v1, v3, v0

    :cond_1
    return-wide v1
.end method

.method public getIsEnded()Z
    .locals 4

    .line 17
    iget-wide v0, p0, Lcom/microsoft/xbox/toolkit/TimeMonitor;->endTicks:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getIsStarted()Z
    .locals 4

    .line 13
    iget-wide v0, p0, Lcom/microsoft/xbox/toolkit/TimeMonitor;->startTicks:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public reset()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 21
    iput-wide v0, p0, Lcom/microsoft/xbox/toolkit/TimeMonitor;->startTicks:J

    .line 22
    iput-wide v0, p0, Lcom/microsoft/xbox/toolkit/TimeMonitor;->endTicks:J

    return-void
.end method

.method public saveCurrentTime()V
    .locals 2

    .line 42
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/TimeMonitor;->getIsStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/microsoft/xbox/toolkit/TimeMonitor;->endTicks:J

    :cond_0
    return-void
.end method

.method public start()V
    .locals 2

    .line 26
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/microsoft/xbox/toolkit/TimeMonitor;->startTicks:J

    const-wide/16 v0, 0x0

    .line 27
    iput-wide v0, p0, Lcom/microsoft/xbox/toolkit/TimeMonitor;->endTicks:J

    return-void
.end method

.method public stop()V
    .locals 4

    .line 31
    iget-wide v0, p0, Lcom/microsoft/xbox/toolkit/TimeMonitor;->startTicks:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/microsoft/xbox/toolkit/TimeMonitor;->endTicks:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 32
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/microsoft/xbox/toolkit/TimeMonitor;->endTicks:J

    :cond_0
    return-void
.end method
