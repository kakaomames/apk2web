.class public Lcom/microsoft/applications/events/PrivacyGuard;
.super Ljava/lang/Object;
.source "PrivacyGuard.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addIgnoredConcern(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/applications/events/DataConcernType;)V
    .locals 0

    .line 152
    invoke-virtual {p2}, Lcom/microsoft/applications/events/DataConcernType;->getValue()I

    move-result p2

    invoke-static {p0, p1, p2}, Lcom/microsoft/applications/events/PrivacyGuard;->nativeAddIgnoredConcern(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static appendCommonDataContext(Lcom/microsoft/applications/events/CommonDataContext;)Z
    .locals 8

    if-eqz p0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/microsoft/applications/events/CommonDataContext;->domainName:Ljava/lang/String;

    iget-object v1, p0, Lcom/microsoft/applications/events/CommonDataContext;->machineName:Ljava/lang/String;

    iget-object v2, p0, Lcom/microsoft/applications/events/CommonDataContext;->userNames:Ljava/util/Vector;

    .line 134
    invoke-virtual {v2}, Ljava/util/Vector;->toArray()[Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/microsoft/applications/events/CommonDataContext;->userAliases:Ljava/util/Vector;

    .line 135
    invoke-virtual {v3}, Ljava/util/Vector;->toArray()[Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lcom/microsoft/applications/events/CommonDataContext;->ipAddresses:Ljava/util/Vector;

    .line 136
    invoke-virtual {v4}, Ljava/util/Vector;->toArray()[Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p0, Lcom/microsoft/applications/events/CommonDataContext;->languageIdentifiers:Ljava/util/Vector;

    .line 137
    invoke-virtual {v5}, Ljava/util/Vector;->toArray()[Ljava/lang/Object;

    move-result-object v5

    iget-object v6, p0, Lcom/microsoft/applications/events/CommonDataContext;->machineIds:Ljava/util/Vector;

    .line 138
    invoke-virtual {v6}, Ljava/util/Vector;->toArray()[Ljava/lang/Object;

    move-result-object v6

    iget-object p0, p0, Lcom/microsoft/applications/events/CommonDataContext;->outOfScopeIdentifiers:Ljava/util/Vector;

    .line 139
    invoke-virtual {p0}, Ljava/util/Vector;->toArray()[Ljava/lang/Object;

    move-result-object v7

    .line 131
    invoke-static/range {v0 .. v7}, Lcom/microsoft/applications/events/PrivacyGuard;->nativeAppendCommonDataContext(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 128
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Passed Common Data Context is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static initialize(Lcom/microsoft/applications/events/PrivacyGuardInitConfig;)Z
    .locals 17

    move-object/from16 v0, p0

    if-eqz v0, :cond_2

    .line 48
    iget-object v1, v0, Lcom/microsoft/applications/events/PrivacyGuardInitConfig;->LoggerInstance:Lcom/microsoft/applications/events/ILogger;

    if-eqz v1, :cond_1

    .line 53
    iget-object v1, v0, Lcom/microsoft/applications/events/PrivacyGuardInitConfig;->DataContext:Lcom/microsoft/applications/events/CommonDataContext;

    if-eqz v1, :cond_0

    .line 55
    iget-object v1, v0, Lcom/microsoft/applications/events/PrivacyGuardInitConfig;->LoggerInstance:Lcom/microsoft/applications/events/ILogger;

    invoke-interface {v1}, Lcom/microsoft/applications/events/ILogger;->getNativeILoggerPtr()J

    move-result-wide v2

    iget-object v4, v0, Lcom/microsoft/applications/events/PrivacyGuardInitConfig;->NotificationEventName:Ljava/lang/String;

    iget-object v5, v0, Lcom/microsoft/applications/events/PrivacyGuardInitConfig;->SemanticContextNotificationEventName:Ljava/lang/String;

    iget-object v6, v0, Lcom/microsoft/applications/events/PrivacyGuardInitConfig;->SummaryEventName:Ljava/lang/String;

    iget-boolean v7, v0, Lcom/microsoft/applications/events/PrivacyGuardInitConfig;->UseEventFieldPrefix:Z

    iget-boolean v8, v0, Lcom/microsoft/applications/events/PrivacyGuardInitConfig;->ScanForUrls:Z

    iget-object v1, v0, Lcom/microsoft/applications/events/PrivacyGuardInitConfig;->DataContext:Lcom/microsoft/applications/events/CommonDataContext;

    iget-object v9, v1, Lcom/microsoft/applications/events/CommonDataContext;->domainName:Ljava/lang/String;

    iget-object v1, v0, Lcom/microsoft/applications/events/PrivacyGuardInitConfig;->DataContext:Lcom/microsoft/applications/events/CommonDataContext;

    iget-object v10, v1, Lcom/microsoft/applications/events/CommonDataContext;->machineName:Ljava/lang/String;

    iget-object v1, v0, Lcom/microsoft/applications/events/PrivacyGuardInitConfig;->DataContext:Lcom/microsoft/applications/events/CommonDataContext;

    iget-object v1, v1, Lcom/microsoft/applications/events/CommonDataContext;->userNames:Ljava/util/Vector;

    .line 63
    invoke-virtual {v1}, Ljava/util/Vector;->toArray()[Ljava/lang/Object;

    move-result-object v11

    iget-object v1, v0, Lcom/microsoft/applications/events/PrivacyGuardInitConfig;->DataContext:Lcom/microsoft/applications/events/CommonDataContext;

    iget-object v1, v1, Lcom/microsoft/applications/events/CommonDataContext;->userAliases:Ljava/util/Vector;

    .line 64
    invoke-virtual {v1}, Ljava/util/Vector;->toArray()[Ljava/lang/Object;

    move-result-object v12

    iget-object v1, v0, Lcom/microsoft/applications/events/PrivacyGuardInitConfig;->DataContext:Lcom/microsoft/applications/events/CommonDataContext;

    iget-object v1, v1, Lcom/microsoft/applications/events/CommonDataContext;->ipAddresses:Ljava/util/Vector;

    .line 65
    invoke-virtual {v1}, Ljava/util/Vector;->toArray()[Ljava/lang/Object;

    move-result-object v13

    iget-object v1, v0, Lcom/microsoft/applications/events/PrivacyGuardInitConfig;->DataContext:Lcom/microsoft/applications/events/CommonDataContext;

    iget-object v1, v1, Lcom/microsoft/applications/events/CommonDataContext;->languageIdentifiers:Ljava/util/Vector;

    .line 66
    invoke-virtual {v1}, Ljava/util/Vector;->toArray()[Ljava/lang/Object;

    move-result-object v14

    iget-object v1, v0, Lcom/microsoft/applications/events/PrivacyGuardInitConfig;->DataContext:Lcom/microsoft/applications/events/CommonDataContext;

    iget-object v1, v1, Lcom/microsoft/applications/events/CommonDataContext;->machineIds:Ljava/util/Vector;

    .line 67
    invoke-virtual {v1}, Ljava/util/Vector;->toArray()[Ljava/lang/Object;

    move-result-object v15

    iget-object v0, v0, Lcom/microsoft/applications/events/PrivacyGuardInitConfig;->DataContext:Lcom/microsoft/applications/events/CommonDataContext;

    iget-object v0, v0, Lcom/microsoft/applications/events/CommonDataContext;->outOfScopeIdentifiers:Ljava/util/Vector;

    .line 68
    invoke-virtual {v0}, Ljava/util/Vector;->toArray()[Ljava/lang/Object;

    move-result-object v16

    .line 55
    invoke-static/range {v2 .. v16}, Lcom/microsoft/applications/events/PrivacyGuard;->nativeInitializePrivacyGuard(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 71
    :cond_0
    iget-object v1, v0, Lcom/microsoft/applications/events/PrivacyGuardInitConfig;->LoggerInstance:Lcom/microsoft/applications/events/ILogger;

    .line 72
    invoke-interface {v1}, Lcom/microsoft/applications/events/ILogger;->getNativeILoggerPtr()J

    move-result-wide v2

    iget-object v4, v0, Lcom/microsoft/applications/events/PrivacyGuardInitConfig;->NotificationEventName:Ljava/lang/String;

    iget-object v5, v0, Lcom/microsoft/applications/events/PrivacyGuardInitConfig;->SemanticContextNotificationEventName:Ljava/lang/String;

    iget-object v6, v0, Lcom/microsoft/applications/events/PrivacyGuardInitConfig;->SummaryEventName:Ljava/lang/String;

    iget-boolean v7, v0, Lcom/microsoft/applications/events/PrivacyGuardInitConfig;->UseEventFieldPrefix:Z

    iget-boolean v8, v0, Lcom/microsoft/applications/events/PrivacyGuardInitConfig;->ScanForUrls:Z

    .line 71
    invoke-static/range {v2 .. v8}, Lcom/microsoft/applications/events/PrivacyGuard;->nativeInitializePrivacyGuardWithoutCommonDataContext(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Z

    move-result v0

    return v0

    .line 50
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x0

    sget-object v1, Landroidx/core/view/accessibility/jw/tbDfchcNBxcYj;->yUvyr:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "initConfig cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static native isEnabled()Z
.end method

.method public static native isInitialized()Z
.end method

.method private static native nativeAddIgnoredConcern(Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method private static native nativeAppendCommonDataContext(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)Z
.end method

.method private static native nativeInitializePrivacyGuard(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)Z
.end method

.method private static native nativeInitializePrivacyGuardWithoutCommonDataContext(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Z
.end method

.method public static native setEnabled(Z)Z
.end method

.method public static native uninitialize()Z
.end method
