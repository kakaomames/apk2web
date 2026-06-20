.class Lcom/microsoft/applications/events/SemanticContext;
.super Ljava/lang/Object;
.source "SemanticContext.java"

# interfaces
.implements Lcom/microsoft/applications/events/ISemanticContext;


# instance fields
.field private final m_nativeISemanticContextPtr:J


# direct methods
.method constructor <init>(J)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-wide p1, p0, Lcom/microsoft/applications/events/SemanticContext;->m_nativeISemanticContextPtr:J

    return-void
.end method

.method private native nativeClearExperimentIds(J)V
.end method

.method private native nativeSetAppExperimentETag(JLjava/lang/String;)V
.end method

.method private native nativeSetCommonField(JLjava/lang/String;Lcom/microsoft/applications/events/EventProperty;)V
.end method

.method private native nativeSetCommonFieldString(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method private native nativeSetCustomField(JLjava/lang/String;Lcom/microsoft/applications/events/EventProperty;)V
.end method

.method private native nativeSetCustomFieldString(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method private native nativeSetEventExperimentIds(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method private native nativeSetNetworkCost(JI)V
.end method

.method private native nativeSetNetworkType(JI)V
.end method

.method private native nativeSetTicket(JILjava/lang/String;)V
.end method

.method private native nativeSetUserId(JLjava/lang/String;I)V
.end method


# virtual methods
.method public SetNetworkType(Lcom/microsoft/applications/events/NetworkType;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 217
    iget-wide v0, p0, Lcom/microsoft/applications/events/SemanticContext;->m_nativeISemanticContextPtr:J

    invoke-virtual {p1}, Lcom/microsoft/applications/events/NetworkType;->getValue()I

    move-result p1

    invoke-direct {p0, v0, v1, p1}, Lcom/microsoft/applications/events/SemanticContext;->nativeSetNetworkType(JI)V

    return-void

    .line 215
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "networkType is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public clearExperimentIds()V
    .locals 2

    .line 139
    iget-wide v0, p0, Lcom/microsoft/applications/events/SemanticContext;->m_nativeISemanticContextPtr:J

    invoke-direct {p0, v0, v1}, Lcom/microsoft/applications/events/SemanticContext;->nativeClearExperimentIds(J)V

    return-void
.end method

.method getNativeSemanticContextPtr()J
    .locals 2

    .line 14
    iget-wide v0, p0, Lcom/microsoft/applications/events/SemanticContext;->m_nativeISemanticContextPtr:J

    return-wide v0
.end method

.method public setAppEnv(Ljava/lang/String;)V
    .locals 1

    .line 34
    const-string v0, "AppInfo.Env"

    invoke-virtual {p0, v0, p1}, Lcom/microsoft/applications/events/SemanticContext;->setCommonField(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAppExperimentETag(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 98
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    iget-wide v0, p0, Lcom/microsoft/applications/events/SemanticContext;->m_nativeISemanticContextPtr:J

    invoke-direct {p0, v0, v1, p1}, Lcom/microsoft/applications/events/SemanticContext;->nativeSetAppExperimentETag(JLjava/lang/String;)V

    return-void

    .line 99
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "appExperimentETag is null or empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setAppExperimentIds(Ljava/lang/String;)V
    .locals 1

    .line 85
    const-string v0, "AppInfo.ExperimentIds"

    invoke-virtual {p0, v0, p1}, Lcom/microsoft/applications/events/SemanticContext;->setCommonField(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAppExperimentImpressionId(Ljava/lang/String;)V
    .locals 1

    .line 111
    const-string v0, "Session.ImpressionId"

    invoke-virtual {p0, v0, p1}, Lcom/microsoft/applications/events/SemanticContext;->setCommonField(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 1

    .line 44
    const-string v0, "AppInfo.Id"

    invoke-virtual {p0, v0, p1}, Lcom/microsoft/applications/events/SemanticContext;->setCommonField(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAppLanguage(Ljava/lang/String;)V
    .locals 1

    .line 74
    const-string v0, "AppInfo.Language"

    invoke-virtual {p0, v0, p1}, Lcom/microsoft/applications/events/SemanticContext;->setCommonField(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 1

    .line 54
    const-string v0, "AppInfo.Name"

    invoke-virtual {p0, v0, p1}, Lcom/microsoft/applications/events/SemanticContext;->setCommonField(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAppVersion(Ljava/lang/String;)V
    .locals 1

    .line 64
    const-string v0, "AppInfo.Version"

    invoke-virtual {p0, v0, p1}, Lcom/microsoft/applications/events/SemanticContext;->setCommonField(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setCommercialId(Ljava/lang/String;)V
    .locals 1

    .line 335
    const-string v0, "M365aInfo.EnrolledTenantId"

    invoke-virtual {p0, v0, p1}, Lcom/microsoft/applications/events/SemanticContext;->setCommonField(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setCommonField(Ljava/lang/String;Lcom/microsoft/applications/events/EventProperty;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 366
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    .line 371
    iget-wide v0, p0, Lcom/microsoft/applications/events/SemanticContext;->m_nativeISemanticContextPtr:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/microsoft/applications/events/SemanticContext;->nativeSetCommonField(JLjava/lang/String;Lcom/microsoft/applications/events/EventProperty;)V

    return-void

    .line 369
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "value is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 367
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "name is null or empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setCommonField(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 348
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    .line 353
    iget-wide v0, p0, Lcom/microsoft/applications/events/SemanticContext;->m_nativeISemanticContextPtr:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/microsoft/applications/events/SemanticContext;->nativeSetCommonFieldString(JLjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 351
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "value is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 349
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "name is null or empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setCustomField(Ljava/lang/String;Lcom/microsoft/applications/events/EventProperty;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 402
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    .line 407
    iget-wide v0, p0, Lcom/microsoft/applications/events/SemanticContext;->m_nativeISemanticContextPtr:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/microsoft/applications/events/SemanticContext;->nativeSetCustomField(JLjava/lang/String;Lcom/microsoft/applications/events/EventProperty;)V

    return-void

    .line 405
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "value is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 403
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "name is null or empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setCustomField(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 384
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    .line 389
    iget-wide v0, p0, Lcom/microsoft/applications/events/SemanticContext;->m_nativeISemanticContextPtr:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/microsoft/applications/events/SemanticContext;->nativeSetCustomFieldString(JLjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 387
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "value is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 385
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "name is null or empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDeviceClass(Ljava/lang/String;)V
    .locals 1

    .line 179
    const-string v0, "DeviceInfo.Class"

    invoke-virtual {p0, v0, p1}, Lcom/microsoft/applications/events/SemanticContext;->setCommonField(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 1

    .line 149
    const-string v0, "DeviceInfo.Id"

    invoke-virtual {p0, v0, p1}, Lcom/microsoft/applications/events/SemanticContext;->setCommonField(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setDeviceMake(Ljava/lang/String;)V
    .locals 1

    .line 159
    const-string v0, "DeviceInfo.Make"

    invoke-virtual {p0, v0, p1}, Lcom/microsoft/applications/events/SemanticContext;->setCommonField(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setDeviceModel(Ljava/lang/String;)V
    .locals 1

    .line 169
    const-string v0, "DeviceInfo.Model"

    invoke-virtual {p0, v0, p1}, Lcom/microsoft/applications/events/SemanticContext;->setCommonField(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setEventExperimentIds(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 124
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    .line 126
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 129
    iget-wide v0, p0, Lcom/microsoft/applications/events/SemanticContext;->m_nativeISemanticContextPtr:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/microsoft/applications/events/SemanticContext;->nativeSetEventExperimentIds(JLjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 127
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "experimentIds is null or empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 125
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "eventName is null or empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setNetworkCost(Lcom/microsoft/applications/events/NetworkCost;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 193
    iget-wide v0, p0, Lcom/microsoft/applications/events/SemanticContext;->m_nativeISemanticContextPtr:J

    invoke-virtual {p1}, Lcom/microsoft/applications/events/NetworkCost;->getValue()I

    move-result p1

    invoke-direct {p0, v0, v1, p1}, Lcom/microsoft/applications/events/SemanticContext;->nativeSetNetworkCost(JI)V

    return-void

    .line 191
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "networkCost is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setNetworkProvider(Ljava/lang/String;)V
    .locals 1

    .line 203
    const-string v0, "DeviceInfo.NetworkProvider"

    invoke-virtual {p0, v0, p1}, Lcom/microsoft/applications/events/SemanticContext;->setCommonField(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setOsBuild(Ljava/lang/String;)V
    .locals 1

    .line 247
    const-string v0, "DeviceInfo.OsBuild"

    invoke-virtual {p0, v0, p1}, Lcom/microsoft/applications/events/SemanticContext;->setCommonField(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setOsName(Ljava/lang/String;)V
    .locals 1

    .line 227
    const-string v0, "DeviceInfo.OsName"

    invoke-virtual {p0, v0, p1}, Lcom/microsoft/applications/events/SemanticContext;->setCommonField(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setOsVersion(Ljava/lang/String;)V
    .locals 1

    .line 237
    const-string v0, "DeviceInfo.OsVersion"

    invoke-virtual {p0, v0, p1}, Lcom/microsoft/applications/events/SemanticContext;->setCommonField(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setTicket(Lcom/microsoft/applications/events/TicketType;Ljava/lang/String;)V
    .locals 2

    if-eqz p2, :cond_1

    .line 419
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 424
    iget-wide v0, p0, Lcom/microsoft/applications/events/SemanticContext;->m_nativeISemanticContextPtr:J

    invoke-virtual {p1}, Lcom/microsoft/applications/events/TicketType;->getValue()I

    move-result p1

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/microsoft/applications/events/SemanticContext;->nativeSetTicket(JILjava/lang/String;)V

    return-void

    .line 422
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "ticketType is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 420
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "ticketValue is null or empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setUserANID(Ljava/lang/String;)V
    .locals 1

    .line 295
    const-string v0, "UserInfo.ANID"

    invoke-virtual {p0, v0, p1}, Lcom/microsoft/applications/events/SemanticContext;->setCommonField(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setUserAdvertisingId(Ljava/lang/String;)V
    .locals 1

    .line 305
    const-string v0, "UserInfo.AdvertisingId"

    invoke-virtual {p0, v0, p1}, Lcom/microsoft/applications/events/SemanticContext;->setCommonField(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 1

    .line 257
    sget-object v0, Lcom/microsoft/applications/events/PiiKind;->Identity:Lcom/microsoft/applications/events/PiiKind;

    invoke-virtual {p0, p1, v0}, Lcom/microsoft/applications/events/SemanticContext;->setUserId(Ljava/lang/String;Lcom/microsoft/applications/events/PiiKind;)V

    return-void
.end method

.method public setUserId(Ljava/lang/String;Lcom/microsoft/applications/events/PiiKind;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 270
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    .line 275
    iget-wide v0, p0, Lcom/microsoft/applications/events/SemanticContext;->m_nativeISemanticContextPtr:J

    invoke-virtual {p2}, Lcom/microsoft/applications/events/PiiKind;->getValue()I

    move-result p2

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/microsoft/applications/events/SemanticContext;->nativeSetUserId(JLjava/lang/String;I)V

    return-void

    .line 273
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "piiKind_Identity is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 271
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "userId is null or empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setUserLanguage(Ljava/lang/String;)V
    .locals 1

    .line 315
    const-string v0, "UserInfo.Language"

    invoke-virtual {p0, v0, p1}, Lcom/microsoft/applications/events/SemanticContext;->setCommonField(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setUserMsaId(Ljava/lang/String;)V
    .locals 1

    .line 285
    const-string v0, "UserInfo.MsaId"

    invoke-virtual {p0, v0, p1}, Lcom/microsoft/applications/events/SemanticContext;->setCommonField(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setUserTimeZone(Ljava/lang/String;)V
    .locals 1

    .line 325
    const-string v0, "UserInfo.TimeZone"

    invoke-virtual {p0, v0, p1}, Lcom/microsoft/applications/events/SemanticContext;->setCommonField(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
