.class public Lcom/microsoft/applications/events/LogManager;
.super Ljava/lang/Object;
.source "LogManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/applications/events/LogManager$LogConfigurationImpl;
    }
.end annotation


# static fields
.field static loggers:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/microsoft/applications/events/Logger;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 363
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/microsoft/applications/events/LogManager;->loggers:Ljava/util/Vector;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native disableViewer()V
.end method

.method public static flush()Lcom/microsoft/applications/events/Status;
    .locals 1

    .line 461
    invoke-static {}, Lcom/microsoft/applications/events/LogManager;->nativeFlush()I

    move-result v0

    invoke-static {v0}, Lcom/microsoft/applications/events/Status;->getEnum(I)Lcom/microsoft/applications/events/Status;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized flushAndTeardown()Lcom/microsoft/applications/events/Status;
    .locals 3

    const-class v0, Lcom/microsoft/applications/events/LogManager;

    monitor-enter v0

    .line 443
    :try_start_0
    sget-object v1, Lcom/microsoft/applications/events/LogManager;->loggers:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/microsoft/applications/events/Logger;

    .line 444
    invoke-virtual {v2}, Lcom/microsoft/applications/events/Logger;->clearNative()V

    goto :goto_0

    .line 446
    :cond_0
    sget-object v1, Lcom/microsoft/applications/events/LogManager;->loggers:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clear()V

    .line 447
    invoke-static {}, Lcom/microsoft/applications/events/LogManager;->nativeFlushAndTeardown()I

    move-result v1

    invoke-static {v1}, Lcom/microsoft/applications/events/Status;->getEnum(I)Lcom/microsoft/applications/events/Status;

    move-result-object v1

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0

    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static native getCurrentEndpoint()Ljava/lang/String;
.end method

.method public static getLogConfigurationCopy()Lcom/microsoft/applications/events/ILogConfiguration;
    .locals 1

    .line 883
    invoke-static {}, Lcom/microsoft/applications/events/LogManager;->nativeGetLogConfiguration()Lcom/microsoft/applications/events/LogManager$LogConfigurationImpl;

    move-result-object v0

    return-object v0
.end method

.method public static getLogger()Lcom/microsoft/applications/events/ILogger;
    .locals 4

    .line 834
    invoke-static {}, Lcom/microsoft/applications/events/LogManager;->nativeGetLogger()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 836
    :cond_0
    new-instance v2, Lcom/microsoft/applications/events/Logger;

    invoke-direct {v2, v0, v1}, Lcom/microsoft/applications/events/Logger;-><init>(J)V

    return-object v2
.end method

.method public static getLogger(Ljava/lang/String;)Lcom/microsoft/applications/events/ILogger;
    .locals 4

    .line 848
    invoke-static {p0}, Lcom/microsoft/applications/events/LogManager;->nativeGetLoggerWithSource(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 850
    :cond_0
    new-instance p0, Lcom/microsoft/applications/events/Logger;

    invoke-direct {p0, v0, v1}, Lcom/microsoft/applications/events/Logger;-><init>(J)V

    return-object p0
.end method

.method public static getLogger(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/applications/events/ILogger;
    .locals 2

    .line 865
    invoke-static {p0, p1}, Lcom/microsoft/applications/events/LogManager;->nativeGetLoggerWithTenantTokenAndSource(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 867
    :cond_0
    new-instance v0, Lcom/microsoft/applications/events/Logger;

    invoke-direct {v0, p0, p1}, Lcom/microsoft/applications/events/Logger;-><init>(J)V

    return-object v0
.end method

.method public static getSemanticContext()Lcom/microsoft/applications/events/ISemanticContext;
    .locals 4

    .line 571
    invoke-static {}, Lcom/microsoft/applications/events/LogManager;->nativeGetSemanticContext()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 573
    :cond_0
    new-instance v2, Lcom/microsoft/applications/events/SemanticContext;

    invoke-direct {v2, v0, v1}, Lcom/microsoft/applications/events/SemanticContext;-><init>(J)V

    return-object v2
.end method

.method public static native getTransmitProfileName()Ljava/lang/String;
.end method

.method public static initialize()Lcom/microsoft/applications/events/ILogger;
    .locals 4

    .line 390
    invoke-static {}, Lcom/microsoft/applications/events/LogManager;->nativeInitializeWithoutTenantToken()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 392
    :cond_0
    new-instance v2, Lcom/microsoft/applications/events/Logger;

    invoke-direct {v2, v0, v1}, Lcom/microsoft/applications/events/Logger;-><init>(J)V

    return-object v2
.end method

.method public static initialize(Ljava/lang/String;)Lcom/microsoft/applications/events/ILogger;
    .locals 4

    if-eqz p0, :cond_1

    .line 405
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 408
    invoke-static {p0}, Lcom/microsoft/applications/events/LogManager;->nativeInitializeWithTenantToken(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 410
    :cond_0
    new-instance p0, Lcom/microsoft/applications/events/Logger;

    invoke-direct {p0, v0, v1}, Lcom/microsoft/applications/events/Logger;-><init>(J)V

    return-object p0

    .line 406
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "tenantToken is null or empty"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static initialize(Ljava/lang/String;Lcom/microsoft/applications/events/ILogConfiguration;)Lcom/microsoft/applications/events/ILogger;
    .locals 2

    if-nez p0, :cond_0

    .line 425
    const-string p0, ""

    .line 427
    :cond_0
    invoke-static {p0, p1}, Lcom/microsoft/applications/events/LogManager;->nativeInitializeConfig(Ljava/lang/String;Lcom/microsoft/applications/events/ILogConfiguration;)J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return-object p0

    .line 431
    :cond_1
    new-instance v0, Lcom/microsoft/applications/events/Logger;

    invoke-direct {v0, p0, p1}, Lcom/microsoft/applications/events/Logger;-><init>(J)V

    return-object v0
.end method

.method public static native initializeDiagnosticDataViewer(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public static native isViewerEnabled()Z
.end method

.method public static loadTransmitProfiles(Ljava/lang/String;)Lcom/microsoft/applications/events/Status;
    .locals 1

    if-eqz p0, :cond_0

    .line 540
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 543
    invoke-static {p0}, Lcom/microsoft/applications/events/LogManager;->nativeLoadTransmitProfilesString(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Lcom/microsoft/applications/events/Status;->getEnum(I)Lcom/microsoft/applications/events/Status;

    move-result-object p0

    return-object p0

    .line 541
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "profilesJson is null or empty"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static logConfigurationFactory()Lcom/microsoft/applications/events/ILogConfiguration;
    .locals 1

    .line 876
    new-instance v0, Lcom/microsoft/applications/events/LogManager$LogConfigurationImpl;

    invoke-direct {v0}, Lcom/microsoft/applications/events/LogManager$LogConfigurationImpl;-><init>()V

    return-object v0
.end method

.method private static native nativeFlush()I
.end method

.method private static native nativeFlushAndTeardown()I
.end method

.method private static native nativeGetLogConfiguration()Lcom/microsoft/applications/events/LogManager$LogConfigurationImpl;
.end method

.method private static native nativeGetLogger()J
.end method

.method private static native nativeGetLoggerWithSource(Ljava/lang/String;)J
.end method

.method private static native nativeGetLoggerWithTenantTokenAndSource(Ljava/lang/String;Ljava/lang/String;)J
.end method

.method private static native nativeGetSemanticContext()J
.end method

.method private static native nativeInitializeConfig(Ljava/lang/String;Lcom/microsoft/applications/events/ILogConfiguration;)J
.end method

.method private static native nativeInitializeWithTenantToken(Ljava/lang/String;)J
.end method

.method private static native nativeInitializeWithoutTenantToken()J
.end method

.method private static native nativeLoadTransmitProfilesString(Ljava/lang/String;)I
.end method

.method private static native nativePauseTransmission()I
.end method

.method private static native nativeRegisterPrivacyGuardOnDefaultLogManager()Z
.end method

.method private static native nativeResetTransmitProfiles()I
.end method

.method private static native nativeResumeTransmission()I
.end method

.method private static native nativeSetContextBoolValue(Ljava/lang/String;ZI)I
.end method

.method private static native nativeSetContextDoubleValue(Ljava/lang/String;DI)I
.end method

.method private static native nativeSetContextGuidValue(Ljava/lang/String;Ljava/lang/String;I)I
.end method

.method private static native nativeSetContextIntValue(Ljava/lang/String;II)I
.end method

.method private static native nativeSetContextLongValue(Ljava/lang/String;JI)I
.end method

.method private static native nativeSetContextStringValue(Ljava/lang/String;Ljava/lang/String;I)I
.end method

.method private static native nativeSetContextTimeTicksValue(Ljava/lang/String;JI)I
.end method

.method private static native nativeSetIntTransmitProfile(I)I
.end method

.method private static native nativeSetTransmitProfileString(Ljava/lang/String;)I
.end method

.method private static native nativeUnregisterPrivacyGuardOnDefaultLogManager()Z
.end method

.method private static native nativeUploadNow()I
.end method

.method public static pauseTransmission()Lcom/microsoft/applications/events/Status;
    .locals 1

    .line 484
    invoke-static {}, Lcom/microsoft/applications/events/LogManager;->nativePauseTransmission()I

    move-result v0

    invoke-static {v0}, Lcom/microsoft/applications/events/Status;->getEnum(I)Lcom/microsoft/applications/events/Status;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized registerLogger(Lcom/microsoft/applications/events/Logger;)V
    .locals 2

    const-class v0, Lcom/microsoft/applications/events/LogManager;

    monitor-enter v0

    if-eqz p0, :cond_0

    .line 368
    :try_start_0
    sget-object v1, Lcom/microsoft/applications/events/LogManager;->loggers:Ljava/util/Vector;

    invoke-virtual {v1, p0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 370
    :cond_0
    :goto_0
    monitor-exit v0

    return-void
.end method

.method public static registerPrivacyGuard()Z
    .locals 1

    .line 921
    invoke-static {}, Lcom/microsoft/applications/events/PrivacyGuard;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/microsoft/applications/events/LogManager;->nativeRegisterPrivacyGuardOnDefaultLogManager()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static declared-synchronized removeLogger(Lcom/microsoft/applications/events/Logger;)V
    .locals 4

    const-class v0, Lcom/microsoft/applications/events/LogManager;

    monitor-enter v0

    if-eqz p0, :cond_0

    .line 375
    :try_start_0
    sget-object v1, Lcom/microsoft/applications/events/LogManager;->loggers:Ljava/util/Vector;

    :goto_0
    invoke-virtual {v1, p0}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_0

    .line 376
    sget-object v2, Lcom/microsoft/applications/events/LogManager;->loggers:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/microsoft/applications/events/Logger;

    invoke-virtual {v2, v1, v3}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 377
    sget-object v1, Lcom/microsoft/applications/events/LogManager;->loggers:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/Vector;->setSize(I)V

    .line 375
    sget-object v1, Lcom/microsoft/applications/events/LogManager;->loggers:Ljava/util/Vector;

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 380
    :cond_0
    monitor-exit v0

    return-void
.end method

.method public static resetTransmitProfiles()Lcom/microsoft/applications/events/Status;
    .locals 1

    .line 554
    invoke-static {}, Lcom/microsoft/applications/events/LogManager;->nativeResetTransmitProfiles()I

    move-result v0

    invoke-static {v0}, Lcom/microsoft/applications/events/Status;->getEnum(I)Lcom/microsoft/applications/events/Status;

    move-result-object v0

    return-object v0
.end method

.method public static resumeTransmission()Lcom/microsoft/applications/events/Status;
    .locals 1

    .line 495
    invoke-static {}, Lcom/microsoft/applications/events/LogManager;->nativeResumeTransmission()I

    move-result v0

    invoke-static {v0}, Lcom/microsoft/applications/events/Status;->getEnum(I)Lcom/microsoft/applications/events/Status;

    move-result-object v0

    return-object v0
.end method

.method public static setContext(Ljava/lang/String;D)Lcom/microsoft/applications/events/Status;
    .locals 1

    .line 688
    sget-object v0, Lcom/microsoft/applications/events/PiiKind;->None:Lcom/microsoft/applications/events/PiiKind;

    invoke-static {p0, p1, p2, v0}, Lcom/microsoft/applications/events/LogManager;->setContext(Ljava/lang/String;DLcom/microsoft/applications/events/PiiKind;)Lcom/microsoft/applications/events/Status;

    move-result-object p0

    return-object p0
.end method

.method public static setContext(Ljava/lang/String;DLcom/microsoft/applications/events/PiiKind;)Lcom/microsoft/applications/events/Status;
    .locals 1

    if-eqz p0, :cond_1

    .line 702
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p3, :cond_0

    .line 706
    invoke-virtual {p3}, Lcom/microsoft/applications/events/PiiKind;->getValue()I

    move-result p3

    invoke-static {p0, p1, p2, p3}, Lcom/microsoft/applications/events/LogManager;->nativeSetContextDoubleValue(Ljava/lang/String;DI)I

    move-result p0

    invoke-static {p0}, Lcom/microsoft/applications/events/Status;->getEnum(I)Lcom/microsoft/applications/events/Status;

    move-result-object p0

    return-object p0

    .line 704
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "piiKind is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 703
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "name is null or empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setContext(Ljava/lang/String;I)Lcom/microsoft/applications/events/Status;
    .locals 1

    .line 622
    sget-object v0, Lcom/microsoft/applications/events/PiiKind;->None:Lcom/microsoft/applications/events/PiiKind;

    invoke-static {p0, p1, v0}, Lcom/microsoft/applications/events/LogManager;->setContext(Ljava/lang/String;ILcom/microsoft/applications/events/PiiKind;)Lcom/microsoft/applications/events/Status;

    move-result-object p0

    return-object p0
.end method

.method public static setContext(Ljava/lang/String;ILcom/microsoft/applications/events/PiiKind;)Lcom/microsoft/applications/events/Status;
    .locals 1

    if-eqz p0, :cond_1

    .line 636
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    .line 640
    invoke-virtual {p2}, Lcom/microsoft/applications/events/PiiKind;->getValue()I

    move-result p2

    invoke-static {p0, p1, p2}, Lcom/microsoft/applications/events/LogManager;->nativeSetContextIntValue(Ljava/lang/String;II)I

    move-result p0

    invoke-static {p0}, Lcom/microsoft/applications/events/Status;->getEnum(I)Lcom/microsoft/applications/events/Status;

    move-result-object p0

    return-object p0

    .line 638
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "piiKind is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 637
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "name is null or empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setContext(Ljava/lang/String;J)Lcom/microsoft/applications/events/Status;
    .locals 1

    .line 655
    sget-object v0, Lcom/microsoft/applications/events/PiiKind;->None:Lcom/microsoft/applications/events/PiiKind;

    invoke-static {p0, p1, p2, v0}, Lcom/microsoft/applications/events/LogManager;->setContext(Ljava/lang/String;JLcom/microsoft/applications/events/PiiKind;)Lcom/microsoft/applications/events/Status;

    move-result-object p0

    return-object p0
.end method

.method public static setContext(Ljava/lang/String;JLcom/microsoft/applications/events/PiiKind;)Lcom/microsoft/applications/events/Status;
    .locals 1

    if-eqz p0, :cond_1

    .line 669
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p3, :cond_0

    .line 673
    invoke-virtual {p3}, Lcom/microsoft/applications/events/PiiKind;->getValue()I

    move-result p3

    invoke-static {p0, p1, p2, p3}, Lcom/microsoft/applications/events/LogManager;->nativeSetContextLongValue(Ljava/lang/String;JI)I

    move-result p0

    invoke-static {p0}, Lcom/microsoft/applications/events/Status;->getEnum(I)Lcom/microsoft/applications/events/Status;

    move-result-object p0

    return-object p0

    .line 671
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "piiKind is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 670
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "name is null or empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static setContext(Ljava/lang/String;Lcom/microsoft/applications/events/TimeTicks;Lcom/microsoft/applications/events/PiiKind;)Lcom/microsoft/applications/events/Status;
    .locals 2

    if-eqz p0, :cond_2

    .line 756
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 762
    invoke-virtual {p1}, Lcom/microsoft/applications/events/TimeTicks;->getTicks()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/microsoft/applications/events/PiiKind;->getValue()I

    move-result p1

    invoke-static {p0, v0, v1, p1}, Lcom/microsoft/applications/events/LogManager;->nativeSetContextTimeTicksValue(Ljava/lang/String;JI)I

    move-result p0

    .line 761
    invoke-static {p0}, Lcom/microsoft/applications/events/Status;->getEnum(I)Lcom/microsoft/applications/events/Status;

    move-result-object p0

    return-object p0

    .line 759
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "piiKind is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 758
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "value is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 757
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "name is null or empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setContext(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/applications/events/Status;
    .locals 1

    .line 588
    sget-object v0, Lcom/microsoft/applications/events/PiiKind;->None:Lcom/microsoft/applications/events/PiiKind;

    invoke-static {p0, p1, v0}, Lcom/microsoft/applications/events/LogManager;->setContext(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/applications/events/PiiKind;)Lcom/microsoft/applications/events/Status;

    move-result-object p0

    return-object p0
.end method

.method public static setContext(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/applications/events/PiiKind;)Lcom/microsoft/applications/events/Status;
    .locals 1

    if-eqz p0, :cond_2

    .line 602
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 607
    invoke-virtual {p2}, Lcom/microsoft/applications/events/PiiKind;->getValue()I

    move-result p2

    invoke-static {p0, p1, p2}, Lcom/microsoft/applications/events/LogManager;->nativeSetContextStringValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    invoke-static {p0}, Lcom/microsoft/applications/events/Status;->getEnum(I)Lcom/microsoft/applications/events/Status;

    move-result-object p0

    return-object p0

    .line 605
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "piiKind is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 604
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "value is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 603
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "name is null or empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setContext(Ljava/lang/String;Ljava/util/Date;)Lcom/microsoft/applications/events/Status;
    .locals 1

    .line 775
    sget-object v0, Lcom/microsoft/applications/events/PiiKind;->None:Lcom/microsoft/applications/events/PiiKind;

    invoke-static {p0, p1, v0}, Lcom/microsoft/applications/events/LogManager;->setContext(Ljava/lang/String;Ljava/util/Date;Lcom/microsoft/applications/events/PiiKind;)Lcom/microsoft/applications/events/Status;

    move-result-object p0

    return-object p0
.end method

.method public static setContext(Ljava/lang/String;Ljava/util/Date;Lcom/microsoft/applications/events/PiiKind;)Lcom/microsoft/applications/events/Status;
    .locals 1

    .line 789
    new-instance v0, Lcom/microsoft/applications/events/TimeTicks;

    invoke-direct {v0, p1}, Lcom/microsoft/applications/events/TimeTicks;-><init>(Ljava/util/Date;)V

    invoke-static {p0, v0, p2}, Lcom/microsoft/applications/events/LogManager;->setContext(Ljava/lang/String;Lcom/microsoft/applications/events/TimeTicks;Lcom/microsoft/applications/events/PiiKind;)Lcom/microsoft/applications/events/Status;

    move-result-object p0

    return-object p0
.end method

.method public static setContext(Ljava/lang/String;Ljava/util/UUID;)Lcom/microsoft/applications/events/Status;
    .locals 1

    .line 804
    sget-object v0, Lcom/microsoft/applications/events/PiiKind;->None:Lcom/microsoft/applications/events/PiiKind;

    invoke-static {p0, p1, v0}, Lcom/microsoft/applications/events/LogManager;->setContext(Ljava/lang/String;Ljava/util/UUID;Lcom/microsoft/applications/events/PiiKind;)Lcom/microsoft/applications/events/Status;

    move-result-object p0

    return-object p0
.end method

.method public static setContext(Ljava/lang/String;Ljava/util/UUID;Lcom/microsoft/applications/events/PiiKind;)Lcom/microsoft/applications/events/Status;
    .locals 1

    if-eqz p0, :cond_2

    .line 818
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 823
    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/microsoft/applications/events/PiiKind;->getValue()I

    move-result p2

    invoke-static {p0, p1, p2}, Lcom/microsoft/applications/events/LogManager;->nativeSetContextGuidValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    invoke-static {p0}, Lcom/microsoft/applications/events/Status;->getEnum(I)Lcom/microsoft/applications/events/Status;

    move-result-object p0

    return-object p0

    .line 821
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "piiKind is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 820
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "value is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 819
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "name is null or empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setContext(Ljava/lang/String;Z)Lcom/microsoft/applications/events/Status;
    .locals 1

    .line 721
    sget-object v0, Lcom/microsoft/applications/events/PiiKind;->None:Lcom/microsoft/applications/events/PiiKind;

    invoke-static {p0, p1, v0}, Lcom/microsoft/applications/events/LogManager;->setContext(Ljava/lang/String;ZLcom/microsoft/applications/events/PiiKind;)Lcom/microsoft/applications/events/Status;

    move-result-object p0

    return-object p0
.end method

.method public static setContext(Ljava/lang/String;ZLcom/microsoft/applications/events/PiiKind;)Lcom/microsoft/applications/events/Status;
    .locals 1

    if-eqz p0, :cond_1

    .line 735
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    .line 739
    invoke-virtual {p2}, Lcom/microsoft/applications/events/PiiKind;->getValue()I

    move-result p2

    invoke-static {p0, p1, p2}, Lcom/microsoft/applications/events/LogManager;->nativeSetContextBoolValue(Ljava/lang/String;ZI)I

    move-result p0

    invoke-static {p0}, Lcom/microsoft/applications/events/Status;->getEnum(I)Lcom/microsoft/applications/events/Status;

    move-result-object p0

    return-object p0

    .line 737
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "piiKind is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 736
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "name is null or empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setTransmitProfile(Lcom/microsoft/applications/events/TransmitProfile;)Lcom/microsoft/applications/events/Status;
    .locals 1

    if-eqz p0, :cond_0

    .line 511
    invoke-virtual {p0}, Lcom/microsoft/applications/events/TransmitProfile;->getValue()I

    move-result p0

    invoke-static {p0}, Lcom/microsoft/applications/events/LogManager;->nativeSetIntTransmitProfile(I)I

    move-result p0

    invoke-static {p0}, Lcom/microsoft/applications/events/Status;->getEnum(I)Lcom/microsoft/applications/events/Status;

    move-result-object p0

    return-object p0

    .line 509
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "profile is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setTransmitProfile(Ljava/lang/String;)Lcom/microsoft/applications/events/Status;
    .locals 1

    if-eqz p0, :cond_0

    .line 525
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 528
    invoke-static {p0}, Lcom/microsoft/applications/events/LogManager;->nativeSetTransmitProfileString(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Lcom/microsoft/applications/events/Status;->getEnum(I)Lcom/microsoft/applications/events/Status;

    move-result-object p0

    return-object p0

    .line 526
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "profile is null or empty"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static unregisterPrivacyGuard()Z
    .locals 1

    .line 933
    invoke-static {}, Lcom/microsoft/applications/events/PrivacyGuard;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/microsoft/applications/events/LogManager;->nativeUnregisterPrivacyGuardOnDefaultLogManager()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static uploadNow()Lcom/microsoft/applications/events/Status;
    .locals 1

    .line 472
    invoke-static {}, Lcom/microsoft/applications/events/LogManager;->nativeUploadNow()I

    move-result v0

    invoke-static {v0}, Lcom/microsoft/applications/events/Status;->getEnum(I)Lcom/microsoft/applications/events/Status;

    move-result-object v0

    return-object v0
.end method
