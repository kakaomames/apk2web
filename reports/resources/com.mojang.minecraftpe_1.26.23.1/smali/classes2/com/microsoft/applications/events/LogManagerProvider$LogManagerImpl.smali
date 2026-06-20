.class Lcom/microsoft/applications/events/LogManagerProvider$LogManagerImpl;
.super Ljava/lang/Object;
.source "LogManagerProvider.java"

# interfaces
.implements Lcom/microsoft/applications/events/ILogManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/applications/events/LogManagerProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LogManagerImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/applications/events/LogManagerProvider$LogManagerImpl$LogSessionDataImpl;
    }
.end annotation


# instance fields
.field nativeLogManager:J


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 19
    iput-wide v0, p0, Lcom/microsoft/applications/events/LogManagerProvider$LogManagerImpl;->nativeLogManager:J

    return-void
.end method

.method constructor <init>(J)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-wide p1, p0, Lcom/microsoft/applications/events/LogManagerProvider$LogManagerImpl;->nativeLogManager:J

    return-void
.end method

.method private native nativeGetLogger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
.end method

.method private native nativeRegisterPrivacyGuard(J)Z
.end method

.method private native nativeUnregisterPrivacyGuard(J)Z
.end method


# virtual methods
.method public addEventListener(Lcom/microsoft/applications/events/DebugEventType;Lcom/microsoft/applications/events/DebugEventListener;)V
    .locals 8

    .line 265
    iget-wide v1, p0, Lcom/microsoft/applications/events/LogManagerProvider$LogManagerImpl;->nativeLogManager:J

    invoke-virtual {p1}, Lcom/microsoft/applications/events/DebugEventType;->value()J

    move-result-wide v3

    iget-wide v6, p2, Lcom/microsoft/applications/events/DebugEventListener;->nativeIdentity:J

    move-object v0, p0

    move-object v5, p2

    invoke-virtual/range {v0 .. v7}, Lcom/microsoft/applications/events/LogManagerProvider$LogManagerImpl;->nativeAddEventListener(JJLcom/microsoft/applications/events/DebugEventListener;J)J

    move-result-wide v0

    iput-wide v0, p2, Lcom/microsoft/applications/events/DebugEventListener;->nativeIdentity:J

    return-void
.end method

.method public close()V
    .locals 2

    .line 48
    iget-wide v0, p0, Lcom/microsoft/applications/events/LogManagerProvider$LogManagerImpl;->nativeLogManager:J

    invoke-virtual {p0, v0, v1}, Lcom/microsoft/applications/events/LogManagerProvider$LogManagerImpl;->nativeClose(J)V

    const-wide/16 v0, -0x1

    .line 49
    iput-wide v0, p0, Lcom/microsoft/applications/events/LogManagerProvider$LogManagerImpl;->nativeLogManager:J

    return-void
.end method

.method public disableViewer()V
    .locals 2

    .line 205
    iget-wide v0, p0, Lcom/microsoft/applications/events/LogManagerProvider$LogManagerImpl;->nativeLogManager:J

    invoke-virtual {p0, v0, v1}, Lcom/microsoft/applications/events/LogManagerProvider$LogManagerImpl;->nativeDisableViewer(J)V

    return-void
.end method

.method public flush()Lcom/microsoft/applications/events/Status;
    .locals 2

    .line 65
    iget-wide v0, p0, Lcom/microsoft/applications/events/LogManagerProvider$LogManagerImpl;->nativeLogManager:J

    invoke-virtual {p0, v0, v1}, Lcom/microsoft/applications/events/LogManagerProvider$LogManagerImpl;->nativeFlush(J)I

    move-result v0

    invoke-static {v0}, Lcom/microsoft/applications/events/Status;->getEnum(I)Lcom/microsoft/applications/events/Status;

    move-result-object v0

    return-object v0
.end method

.method public flushAndTeardown()V
    .locals 2

    .line 58
    iget-wide v0, p0, Lcom/microsoft/applications/events/LogManagerProvider$LogManagerImpl;->nativeLogManager:J

    invoke-virtual {p0, v0, v1}, Lcom/microsoft/applications/events/LogManagerProvider$LogManagerImpl;->nativeFlushAndTeardown(J)V

    return-void
.end method

.method public getCurrentEndpoint()Ljava/lang/String;
    .locals 2

    .line 219
    iget-wide v0, p0, Lcom/microsoft/applications/events/LogManagerProvider$LogManagerImpl;->nativeLogManager:J

    invoke-virtual {p0, v0, v1}, Lcom/microsoft/applications/events/LogManagerProvider$LogManagerImpl;->nativeGetCurrentEndpoint(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLogConfigurationCopy()Lcom/microsoft/applications/events/ILogConfiguration;
    .locals 2

    .line 41
    iget-wide v0, p0, Lcom/microsoft/applications/events/LogManagerProvider$LogManagerImpl;->nativeLogManager:J

    invoke-virtual {p0, v0, v1}, Lcom/microsoft/applications/events/LogManagerProvider$LogManagerImpl;->nativeGetLogConfigurationCopy(J)Lcom/microsoft/applications/events/ILogConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public getLogSessionData()Lcom/microsoft/applications/events/LogSessionData;
    .locals 3

    .line 248
    new-instance v0, Lcom/microsoft/applications/events/LogManagerProvider$LogManagerImpl$LogSessionDataImpl;

    invoke-direct {v0}, Lcom/microsoft/applications/events/LogManagerProvider$LogManagerImpl$LogSessionDataImpl;-><init>()V

    .line 249
    iget-wide v1, p0, Lcom/microsoft/applications/events/LogManagerProvider$LogManagerImpl;->nativeLogManager:J

    invoke-virtual {p0, v1, v2, v0}, Lcom/microsoft/applications/events/LogManagerProvider$LogManagerImpl;->nativeGetLogSessionData(JLcom/microsoft/applications/events/LogManagerProvider$LogManagerImpl$LogSessionDataImpl;)V

    return-object v0
.end method

.method public getLogger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/applications/events/ILogger;
    .locals 2

    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/microsoft/applications/events/LogManagerProvider$LogManagerImpl;->nativeGetLogger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long p3, p1, v0

    if-eqz p3, :cond_0

    .line 36
    new-instance p3, Lcom/microsoft/applications/events/Logger;

    invoke-direct {p3, p1, p2}, Lcom/microsoft/applications/events/Logger;-><init>(J)V

    return-object p3

    .line 34
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null native logger pointer"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getSemanticContext()Lcom/microsoft/applications/events/ISemanticContext;
    .locals 3

    .line 128
    new-instance v0, Lcom/microsoft/applications/events/SemanticContext;

    iget-wide v1, p0, Lcom/microsoft/applications/events/LogManagerProvider$LogManagerImpl;->nativeLogManager:J

    invoke-virtual {p0, v1, v2}, Lcom/microsoft/applications/events/LogManagerProvider$LogManagerImpl;->nativeGetSemanticContext(J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/microsoft/applications/events/SemanticContext;-><init>(J)V

    return-object v0
.end method

.method public getTransmitProfileName()Ljava/lang/String;
    .locals 2

    .line 121
    iget-wide v0, p0, Lcom/microsoft/applications/events/LogManagerProvider$LogManagerImpl;->nativeLogManager:J

    invoke-virtual {p0, v0, v1}, Lcom/microsoft/applications/events/LogManagerProvider$LogManagerImpl;->nativeGetTransmitProfileName(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initializeDiagnosticDataViewer(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 198
    iget-wide v0, p0, Lcom/microsoft/applications/events/LogManagerProvider$LogManagerImpl;->nativeLogManager:J

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/microsoft/applications/events/LogManagerProvider$LogManagerImpl;->nativeInitializeDDV(JLjava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isViewerEnabled()Z
    .locals 2

    .line 212
    iget-wide v0, p0, Lcom/microsoft/applications/events/LogManagerProvider$LogManagerImpl;->nativeLogManager:J

    invoke-virtual {p0, v0, v1}, Lcom/microsoft/applications/events/LogManagerProvider$LogManagerImpl;->nativeIsViewerEnabled(J)Z

    move-result v0

    return v0
.end method

.method public loadTransmitProfiles(Ljava/lang/String;)Lcom/microsoft/applications/events/Status;
    .locals 2

    .line 107
    iget-wide v0, p0, Lcom/microsoft/applications/events/LogManagerProvider$LogManagerImpl;->nativeLogManager:J

    invoke-virtual {p0, v0, v1, p1}, Lcom/microsoft/applications/events/LogManagerProvider$LogManagerImpl;->nativeLoadTransmitProfiles(JLjava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lcom/microsoft/applications/events/Status;->getEnum(I)Lcom/microsoft/applications/events/Status;

    move-result-object p1

    return-object p1
.end method

.method public native nativeAddEventListener(JJLcom/microsoft/applications/events/DebugEventListener;J)J
.end method

.method protected native nativeClose(J)V
.end method

.method protected native nativeDisableViewer(J)V
.end method

.method protected native nativeFlush(J)I
.end method

.method protected native nativeFlushAndTeardown(J)V
.end method

.method protected native nativeGetCurrentEndpoint(J)Ljava/lang/String;
.end method

.method protected native nativeGetLogConfigurationCopy(J)Lcom/microsoft/applications/events/ILogConfiguration;
.end method

.method protected native nativeGetLogSessionData(JLcom/microsoft/applications/events/LogManagerProvider$LogManagerImpl$LogSessionDataImpl;)V
.end method

.method protected native nativeGetSemanticContext(J)J
.end method

.method protected native nativeGetTransmitProfileName(J)Ljava/lang/String;
.end method

.method protected native nativeInitializeDDV(JLjava/lang/String;Ljava/lang/String;)Z
.end method

.method protected native nativeIsViewerEnabled(J)Z
.end method

.method protected native nativeLoadTransmitProfiles(JLjava/lang/String;)I
.end method

.method protected native nativePauseTransmission(J)I
.end method

.method public native nativeRemoveEventListener(JJJ)V
.end method

.method protected native nativeResetTransmitProfiles(J)I
.end method

.method protected native nativeResumeTransmission(J)I
.end method

.method protected native nativeSetContextBoolean(JLjava/lang/String;ZI)I
.end method

.method protected native nativeSetContextDate(JLjava/lang/String;Ljava/util/Date;I)I
.end method

.method protected native nativeSetContextDouble(JLjava/lang/String;DI)I
.end method

.method protected native nativeSetContextInt(JLjava/lang/String;II)I
.end method

.method protected native nativeSetContextLong(JLjava/lang/String;JI)I
.end method

.method protected native nativeSetContextString(JLjava/lang/String;Ljava/lang/String;I)I
.end method

.method protected native nativeSetContextUUID(JLjava/lang/String;Ljava/lang/String;I)I
.end method

.method protected native nativeSetLevelFilter(JI[I)V
.end method

.method protected native nativeSetTransmitProfileS(JLjava/lang/String;)I
.end method

.method protected native nativeSetTransmitProfileTP(JI)I
.end method

.method protected native nativeUploadNow(J)I
.end method

.method public pauseTransmission()Lcom/microsoft/applications/events/Status;
    .locals 2

    .line 79
    iget-wide v0, p0, Lcom/microsoft/applications/events/LogManagerProvider$LogManagerImpl;->nativeLogManager:J

    invoke-virtual {p0, v0, v1}, Lcom/microsoft/applications/events/LogManagerProvider$LogManagerImpl;->nativePauseTransmission(J)I

    move-result v0

    invoke-static {v0}, Lcom/microsoft/applications/events/Status;->getEnum(I)Lcom/microsoft/applications/events/Status;

    move-result-object v0

    return-object v0
.end method

.method public registerPrivacyGuard()Z
    .locals 2

    .line 283
    invoke-static {}, Lcom/microsoft/applications/events/PrivacyGuard;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/microsoft/applications/events/LogManagerProvider$LogManagerImpl;->nativeLogManager:J

    invoke-direct {p0, v0, v1}, Lcom/microsoft/applications/events/LogManagerProvider$LogManagerImpl;->nativeRegisterPrivacyGuard(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public removeEventListener(Lcom/microsoft/applications/events/DebugEventType;Lcom/microsoft/applications/events/DebugEventListener;)V
    .locals 7

    .line 272
    iget-wide v1, p0, Lcom/microsoft/applications/events/LogManagerProvider$LogManagerImpl;->nativeLogManager:J

    invoke-virtual {p1}, Lcom/microsoft/applications/events/DebugEventType;->value()J

    move-result-wide v3

    iget-wide v5, p2, Lcom/microsoft/applications/events/DebugEventListener;->nativeIdentity:J

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/microsoft/applications/events/LogManagerProvider$LogManagerImpl;->nativeRemoveEventListener(JJJ)V

    return-void
.end method

.method public resetTransmitProfiles()Lcom/microsoft/applications/events/Status;
    .locals 2

    .line 114
    iget-wide v0, p0, Lcom/microsoft/applications/events/LogManagerProvider$LogManagerImpl;->nativeLogManager:J

    invoke-virtual {p0, v0, v1}, Lcom/microsoft/applications/events/LogManagerProvider$LogManagerImpl;->nativeResetTransmitProfiles(J)I

    move-result v0

    invoke-static {v0}, Lcom/microsoft/applications/events/Status;->getEnum(I)Lcom/microsoft/applications/events/Status;

    move-result-object v0

    return-object v0
.end method

.method public resumeTransmission()Lcom/microsoft/applications/events/Status;
    .locals 2

    .line 86
    iget-wide v0, p0, Lcom/microsoft/applications/events/LogManagerProvider$LogManagerImpl;->nativeLogManager:J

    invoke-virtual {p0, v0, v1}, Lcom/microsoft/applications/events/LogManagerProvider$LogManagerImpl;->nativeResumeTransmission(J)I

    move-result v0

    invoke-static {v0}, Lcom/microsoft/applications/events/Status;->getEnum(I)Lcom/microsoft/applications/events/Status;

    move-result-object v0

    return-object v0
.end method

.method public setContext(Ljava/lang/String;DLcom/microsoft/applications/events/PiiKind;)Lcom/microsoft/applications/events/Status;
    .locals 7

    .line 162
    iget-wide v1, p0, Lcom/microsoft/applications/events/LogManagerProvider$LogManagerImpl;->nativeLogManager:J

    .line 163
    invoke-virtual {p4}, Lcom/microsoft/applications/events/PiiKind;->getValue()I

    move-result v6

    move-object v0, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-virtual/range {v0 .. v6}, Lcom/microsoft/applications/events/LogManagerProvider$LogManagerImpl;->nativeSetContextDouble(JLjava/lang/String;DI)I

    move-result p1

    .line 162
    invoke-static {p1}, Lcom/microsoft/applications/events/Status;->getEnum(I)Lcom/microsoft/applications/events/Status;

    move-result-object p1

    return-object p1
.end method

.method public setContext(Ljava/lang/String;ILcom/microsoft/applications/events/PiiKind;)Lcom/microsoft/applications/events/Status;
    .locals 6

    .line 145
    iget-wide v1, p0, Lcom/microsoft/applications/events/LogManagerProvider$LogManagerImpl;->nativeLogManager:J

    invoke-virtual {p3}, Lcom/microsoft/applications/events/PiiKind;->getValue()I

    move-result v5

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/microsoft/applications/events/LogManagerProvider$LogManagerImpl;->nativeSetContextInt(JLjava/lang/String;II)I

    move-result p1

    invoke-static {p1}, Lcom/microsoft/applications/events/Status;->getEnum(I)Lcom/microsoft/applications/events/Status;

    move-result-object p1

    return-object p1
.end method

.method public setContext(Ljava/lang/String;JLcom/microsoft/applications/events/PiiKind;)Lcom/microsoft/applications/events/Status;
    .locals 7

    .line 153
    iget-wide v1, p0, Lcom/microsoft/applications/events/LogManagerProvider$LogManagerImpl;->nativeLogManager:J

    .line 154
    invoke-virtual {p4}, Lcom/microsoft/applications/events/PiiKind;->getValue()I

    move-result v6

    move-object v0, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-virtual/range {v0 .. v6}, Lcom/microsoft/applications/events/LogManagerProvider$LogManagerImpl;->nativeSetContextLong(JLjava/lang/String;JI)I

    move-result p1

    .line 153
    invoke-static {p1}, Lcom/microsoft/applications/events/Status;->getEnum(I)Lcom/microsoft/applications/events/Status;

    move-result-object p1

    return-object p1
.end method

.method public setContext(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/applications/events/PiiKind;)Lcom/microsoft/applications/events/Status;
    .locals 6

    .line 136
    iget-wide v1, p0, Lcom/microsoft/applications/events/LogManagerProvider$LogManagerImpl;->nativeLogManager:J

    .line 137
    invoke-virtual {p3}, Lcom/microsoft/applications/events/PiiKind;->getValue()I

    move-result v5

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/microsoft/applications/events/LogManagerProvider$LogManagerImpl;->nativeSetContextString(JLjava/lang/String;Ljava/lang/String;I)I

    move-result p1

    .line 136
    invoke-static {p1}, Lcom/microsoft/applications/events/Status;->getEnum(I)Lcom/microsoft/applications/events/Status;

    move-result-object p1

    return-object p1
.end method

.method public setContext(Ljava/lang/String;Ljava/util/Date;Lcom/microsoft/applications/events/PiiKind;)Lcom/microsoft/applications/events/Status;
    .locals 6

    .line 180
    iget-wide v1, p0, Lcom/microsoft/applications/events/LogManagerProvider$LogManagerImpl;->nativeLogManager:J

    .line 181
    invoke-virtual {p3}, Lcom/microsoft/applications/events/PiiKind;->getValue()I

    move-result v5

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/microsoft/applications/events/LogManagerProvider$LogManagerImpl;->nativeSetContextDate(JLjava/lang/String;Ljava/util/Date;I)I

    move-result p1

    .line 180
    invoke-static {p1}, Lcom/microsoft/applications/events/Status;->getEnum(I)Lcom/microsoft/applications/events/Status;

    move-result-object p1

    return-object p1
.end method

.method public setContext(Ljava/lang/String;Ljava/util/UUID;Lcom/microsoft/applications/events/PiiKind;)Lcom/microsoft/applications/events/Status;
    .locals 6

    .line 189
    iget-wide v1, p0, Lcom/microsoft/applications/events/LogManagerProvider$LogManagerImpl;->nativeLogManager:J

    .line 190
    invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3}, Lcom/microsoft/applications/events/PiiKind;->getValue()I

    move-result v5

    move-object v0, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/microsoft/applications/events/LogManagerProvider$LogManagerImpl;->nativeSetContextUUID(JLjava/lang/String;Ljava/lang/String;I)I

    move-result p1

    .line 189
    invoke-static {p1}, Lcom/microsoft/applications/events/Status;->getEnum(I)Lcom/microsoft/applications/events/Status;

    move-result-object p1

    return-object p1
.end method

.method public setContext(Ljava/lang/String;ZLcom/microsoft/applications/events/PiiKind;)Lcom/microsoft/applications/events/Status;
    .locals 6

    .line 171
    iget-wide v1, p0, Lcom/microsoft/applications/events/LogManagerProvider$LogManagerImpl;->nativeLogManager:J

    .line 172
    invoke-virtual {p3}, Lcom/microsoft/applications/events/PiiKind;->getValue()I

    move-result v5

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/microsoft/applications/events/LogManagerProvider$LogManagerImpl;->nativeSetContextBoolean(JLjava/lang/String;ZI)I

    move-result p1

    .line 171
    invoke-static {p1}, Lcom/microsoft/applications/events/Status;->getEnum(I)Lcom/microsoft/applications/events/Status;

    move-result-object p1

    return-object p1
.end method

.method public setLevelFilter(I[I)V
    .locals 2

    .line 258
    iget-wide v0, p0, Lcom/microsoft/applications/events/LogManagerProvider$LogManagerImpl;->nativeLogManager:J

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/microsoft/applications/events/LogManagerProvider$LogManagerImpl;->nativeSetLevelFilter(JI[I)V

    return-void
.end method

.method public setTransmitProfile(Lcom/microsoft/applications/events/TransmitProfile;)Lcom/microsoft/applications/events/Status;
    .locals 2

    .line 93
    iget-wide v0, p0, Lcom/microsoft/applications/events/LogManagerProvider$LogManagerImpl;->nativeLogManager:J

    invoke-virtual {p1}, Lcom/microsoft/applications/events/TransmitProfile;->getValue()I

    move-result p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/microsoft/applications/events/LogManagerProvider$LogManagerImpl;->nativeSetTransmitProfileTP(JI)I

    move-result p1

    invoke-static {p1}, Lcom/microsoft/applications/events/Status;->getEnum(I)Lcom/microsoft/applications/events/Status;

    move-result-object p1

    return-object p1
.end method

.method public setTransmitProfile(Ljava/lang/String;)Lcom/microsoft/applications/events/Status;
    .locals 2

    .line 100
    iget-wide v0, p0, Lcom/microsoft/applications/events/LogManagerProvider$LogManagerImpl;->nativeLogManager:J

    invoke-virtual {p0, v0, v1, p1}, Lcom/microsoft/applications/events/LogManagerProvider$LogManagerImpl;->nativeSetTransmitProfileS(JLjava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lcom/microsoft/applications/events/Status;->getEnum(I)Lcom/microsoft/applications/events/Status;

    move-result-object p1

    return-object p1
.end method

.method public unregisterPrivacyGuard()Z
    .locals 2

    .line 294
    invoke-static {}, Lcom/microsoft/applications/events/PrivacyGuard;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/microsoft/applications/events/LogManagerProvider$LogManagerImpl;->nativeLogManager:J

    invoke-direct {p0, v0, v1}, Lcom/microsoft/applications/events/LogManagerProvider$LogManagerImpl;->nativeUnregisterPrivacyGuard(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public uploadNow()Lcom/microsoft/applications/events/Status;
    .locals 2

    .line 72
    iget-wide v0, p0, Lcom/microsoft/applications/events/LogManagerProvider$LogManagerImpl;->nativeLogManager:J

    invoke-virtual {p0, v0, v1}, Lcom/microsoft/applications/events/LogManagerProvider$LogManagerImpl;->nativeUploadNow(J)I

    move-result v0

    invoke-static {v0}, Lcom/microsoft/applications/events/Status;->getEnum(I)Lcom/microsoft/applications/events/Status;

    move-result-object v0

    return-object v0
.end method
