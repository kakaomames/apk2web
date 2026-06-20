.class public Lcom/microsoft/xbox/service/model/privacy/PrivacySettingsResult;
.super Ljava/lang/Object;
.source "PrivacySettingsResult.java"


# instance fields
.field public settings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySetting;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySetting;",
            ">;)V"
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/microsoft/xbox/service/model/privacy/PrivacySettingsResult;->settings:Ljava/util/ArrayList;

    return-void
.end method

.method public static deserialize(Ljava/lang/String;)Lcom/microsoft/xbox/service/model/privacy/PrivacySettingsResult;
    .locals 1

    .line 18
    const-class v0, Lcom/microsoft/xbox/service/model/privacy/PrivacySettingsResult;

    invoke-static {p0, v0}, Lcom/microsoft/xbox/toolkit/GsonUtil;->deserializeJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/microsoft/xbox/service/model/privacy/PrivacySettingsResult;

    return-object p0
.end method

.method public static getPrivacySettingRequestBody(Lcom/microsoft/xbox/service/model/privacy/PrivacySettingsResult;)Ljava/lang/String;
    .locals 0

    .line 42
    :try_start_0
    invoke-static {p0}, Lcom/microsoft/xbox/toolkit/GsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getShareRealNameStatus()Ljava/lang/String;
    .locals 4

    .line 22
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/privacy/PrivacySettingsResult;->settings:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySetting;

    .line 23
    invoke-virtual {v1}, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySetting;->getPrivacySettingId()Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

    move-result-object v2

    sget-object v3, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;->ShareIdentity:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

    if-ne v2, v3, :cond_0

    .line 24
    iget-object v0, v1, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySetting;->value:Ljava/lang/String;

    return-object v0

    .line 27
    :cond_1
    sget-object v0, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;->PeopleOnMyList:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;

    invoke-virtual {v0}, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSharingRealNameTransitively()Z
    .locals 4

    .line 31
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/privacy/PrivacySettingsResult;->settings:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySetting;

    .line 32
    invoke-virtual {v1}, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySetting;->getPrivacySettingId()Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

    move-result-object v2

    sget-object v3, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;->ShareIdentityTransitively:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

    if-ne v2, v3, :cond_0

    .line 33
    iget-object v0, v1, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySetting;->value:Ljava/lang/String;

    sget-object v1, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;->Everyone:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;

    invoke-virtual {v1}, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingValue;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method
