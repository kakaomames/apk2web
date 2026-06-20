.class public Lcom/microsoft/xbox/telemetry/helpers/UTCEventTracker;
.super Ljava/lang/Object;
.source "UTCEventTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xbox/telemetry/helpers/UTCEventTracker$UTCStringEventDelegate;,
        Lcom/microsoft/xbox/telemetry/helpers/UTCEventTracker$UTCEventDelegate;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static callStringTrackWrapper(Lcom/microsoft/xbox/telemetry/helpers/UTCEventTracker$UTCStringEventDelegate;)Ljava/lang/String;
    .locals 1

    .line 23
    :try_start_0
    invoke-interface {p0}, Lcom/microsoft/xbox/telemetry/helpers/UTCEventTracker$UTCStringEventDelegate;->call()Ljava/lang/String;

    move-result-object p0

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 25
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/microsoft/xbox/telemetry/helpers/UTCLog;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static callTrackWrapper(Lcom/microsoft/xbox/telemetry/helpers/UTCEventTracker$UTCEventDelegate;)V
    .locals 1

    .line 15
    :try_start_0
    invoke-interface {p0}, Lcom/microsoft/xbox/telemetry/helpers/UTCEventTracker$UTCEventDelegate;->call()V

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 17
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/microsoft/xbox/telemetry/helpers/UTCLog;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
