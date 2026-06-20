.class public Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;
.super Ljava/lang/Object;
.source "ProjectSpecificDataProvider.java"

# interfaces
.implements Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;


# static fields
.field private static instance:Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;


# instance fields
.field private provider:Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7
    new-instance v0, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;

    invoke-direct {v0}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;-><init>()V

    sput-object v0, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->instance:Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkProvider()V
    .locals 0

    return-void
.end method

.method public static getInstance()Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;
    .locals 1

    .line 10
    sget-object v0, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->instance:Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;

    return-object v0
.end method


# virtual methods
.method public getAllowExplicitContent()Z
    .locals 1

    .line 98
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->checkProvider()V

    .line 99
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->provider:Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;

    if-eqz v0, :cond_0

    .line 100
    invoke-interface {v0}, Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;->getAllowExplicitContent()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getAutoSuggestdDataSource()Ljava/lang/String;
    .locals 1

    .line 107
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->checkProvider()V

    .line 108
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->provider:Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;

    if-eqz v0, :cond_0

    .line 109
    invoke-interface {v0}, Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;->getAutoSuggestdDataSource()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCombinedContentRating()Ljava/lang/String;
    .locals 1

    .line 27
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->checkProvider()V

    .line 28
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->provider:Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;

    if-eqz v0, :cond_0

    .line 29
    invoke-interface {v0}, Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;->getCombinedContentRating()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getConnectedLocale()Ljava/lang/String;
    .locals 1

    .line 207
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->checkProvider()V

    .line 208
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->provider:Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;

    if-eqz v0, :cond_0

    .line 209
    invoke-interface {v0}, Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;->getConnectedLocale()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getConnectedLocale(Z)Ljava/lang/String;
    .locals 1

    .line 216
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->checkProvider()V

    .line 217
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->provider:Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;

    if-eqz v0, :cond_0

    .line 218
    invoke-interface {v0, p1}, Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;->getConnectedLocale(Z)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getContentRestrictions()Ljava/lang/String;
    .locals 1

    .line 235
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->checkProvider()V

    .line 236
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->provider:Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;

    if-eqz v0, :cond_0

    .line 237
    invoke-interface {v0}, Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;->getContentRestrictions()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentSandboxID()Ljava/lang/String;
    .locals 1

    .line 188
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->checkProvider()V

    .line 189
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->provider:Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;

    if-eqz v0, :cond_0

    .line 190
    invoke-interface {v0}, Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;->getCurrentSandboxID()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInitializeComplete()Z
    .locals 1

    .line 116
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->checkProvider()V

    .line 117
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->provider:Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;

    if-eqz v0, :cond_0

    .line 118
    invoke-interface {v0}, Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;->getInitializeComplete()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getIsForXboxOne()Z
    .locals 1

    .line 178
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->checkProvider()V

    .line 179
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->provider:Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;

    if-eqz v0, :cond_0

    .line 180
    invoke-interface {v0}, Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;->getIsForXboxOne()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getIsFreeAccount()Z
    .locals 1

    .line 127
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->checkProvider()V

    .line 128
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->provider:Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;

    if-eqz v0, :cond_0

    .line 129
    invoke-interface {v0}, Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;->getIsFreeAccount()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getIsXboxMusicSupported()Z
    .locals 1

    .line 140
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->checkProvider()V

    .line 141
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->provider:Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;

    if-eqz v0, :cond_0

    .line 142
    invoke-interface {v0}, Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;->getIsXboxMusicSupported()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getLegalLocale()Ljava/lang/String;
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->checkProvider()V

    .line 19
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->provider:Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;

    if-eqz v0, :cond_0

    .line 20
    invoke-interface {v0}, Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;->getLegalLocale()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMembershipLevel()Ljava/lang/String;
    .locals 1

    .line 36
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->checkProvider()V

    .line 37
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->provider:Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;

    if-eqz v0, :cond_0

    .line 38
    invoke-interface {v0}, Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;->getMembershipLevel()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPrivileges()Ljava/lang/String;
    .locals 1

    .line 81
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->checkProvider()V

    .line 82
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->provider:Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;

    if-eqz v0, :cond_0

    .line 83
    invoke-interface {v0}, Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;->getPrivileges()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 86
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getRegion()Ljava/lang/String;
    .locals 1

    .line 244
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->checkProvider()V

    .line 245
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->provider:Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;

    if-eqz v0, :cond_0

    .line 246
    invoke-interface {v0}, Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;->getRegion()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSCDRpsTicket()Ljava/lang/String;
    .locals 1

    .line 63
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->checkProvider()V

    .line 64
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->provider:Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;

    if-eqz v0, :cond_0

    .line 65
    invoke-interface {v0}, Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;->getSCDRpsTicket()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVersionCheckUrl()Ljava/lang/String;
    .locals 1

    .line 160
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->checkProvider()V

    .line 161
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->provider:Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;

    if-eqz v0, :cond_0

    .line 162
    invoke-interface {v0}, Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;->getVersionCheckUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVersionCode()I
    .locals 1

    .line 225
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->checkProvider()V

    .line 226
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->provider:Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;

    if-eqz v0, :cond_0

    .line 227
    invoke-interface {v0}, Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;->getVersionCode()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getWindowsLiveClientId()Ljava/lang/String;
    .locals 1

    .line 150
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->checkProvider()V

    .line 151
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->provider:Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;

    if-eqz v0, :cond_0

    .line 152
    invoke-interface {v0}, Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;->getWindowsLiveClientId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getXuidString()Ljava/lang/String;
    .locals 1

    .line 45
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->checkProvider()V

    .line 46
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->provider:Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;

    if-eqz v0, :cond_0

    .line 47
    invoke-interface {v0}, Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;->getXuidString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public isDeviceLocaleKnown()Z
    .locals 1

    .line 198
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->checkProvider()V

    .line 199
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->provider:Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;

    if-eqz v0, :cond_0

    .line 200
    invoke-interface {v0}, Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;->isDeviceLocaleKnown()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public resetModels(Z)V
    .locals 1

    .line 170
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->checkProvider()V

    .line 171
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->provider:Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;

    if-eqz v0, :cond_0

    .line 172
    invoke-interface {v0, p1}, Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;->resetModels(Z)V

    :cond_0
    return-void
.end method

.method public setPrivileges(Ljava/lang/String;)V
    .locals 1

    .line 91
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->checkProvider()V

    .line 92
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->provider:Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;

    if-eqz v0, :cond_0

    .line 93
    invoke-interface {v0, p1}, Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;->setPrivileges(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setProvider(Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->provider:Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;

    return-void
.end method

.method public setSCDRpsTicket(Ljava/lang/String;)V
    .locals 1

    .line 73
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->checkProvider()V

    .line 74
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->provider:Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;

    if-eqz v0, :cond_0

    .line 75
    invoke-interface {v0, p1}, Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;->setSCDRpsTicket(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setXuidString(Ljava/lang/String;)V
    .locals 1

    .line 55
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->checkProvider()V

    .line 56
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->provider:Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;

    if-eqz v0, :cond_0

    .line 57
    invoke-interface {v0, p1}, Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;->setXuidString(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
