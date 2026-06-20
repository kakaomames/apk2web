.class public Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;
.super Ljava/lang/Object;
.source "XboxLiveEnvironment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$Environment;
    }
.end annotation


# static fields
.field public static final NEVER_LIST_CONTRACT_VERSION:Ljava/lang/String; = "1"

.field public static final SHARE_IDENTITY_CONTRACT_VERSION:Ljava/lang/String; = "4"

.field public static final SOCIAL_SERVICE_GENERAL_CONTRACT_VERSION:Ljava/lang/String; = "1"

.field public static final USER_PROFILE_CONTRACT_VERSION:Ljava/lang/String; = "3"

.field public static final USER_PROFILE_PRIVACY_SETTINGS_CONTRACT_VERSION:Ljava/lang/String; = "4"

.field private static instance:Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;


# instance fields
.field private environment:Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$Environment;

.field private final useProxy:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 6
    new-instance v0, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;

    invoke-direct {v0}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;-><init>()V

    sput-object v0, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->instance:Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    sget-object v0, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$Environment;->PROD:Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$Environment;

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->environment:Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$Environment;

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->useProxy:Z

    return-void
.end method

.method public static Instance()Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;
    .locals 1

    .line 9
    sget-object v0, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->instance:Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;

    return-object v0
.end method


# virtual methods
.method public getAddFriendsToShareIdentityUrlFormat()Ljava/lang/String;
    .locals 2

    .line 41
    sget-object v0, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$1;->$SwitchMap$com$microsoft$xbox$toolkit$network$XboxLiveEnvironment$Environment:[I

    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->environment:Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$Environment;

    invoke-virtual {v1}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$Environment;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 46
    const-string v0, "https://social.xboxlive.com/users/xuid(%s)/people/identityshared/xuids?method=add"

    return-object v0

    .line 48
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 44
    :cond_1
    const-string v0, "https://social.dnet.xboxlive.com/users/xuid(%s)/people/identityshared/xuids?method=add"

    return-object v0
.end method

.method public getEnvironment()Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$Environment;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->environment:Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$Environment;

    return-object v0
.end method

.method public getFriendFinderSettingsUrl()Ljava/lang/String;
    .locals 1

    .line 167
    const-string v0, "https://settings.xboxlive.com/settings/feature/friendfinder/settings"

    return-object v0
.end method

.method public getGamertagSearchUrlFormat()Ljava/lang/String;
    .locals 3

    .line 198
    sget-object v0, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$1;->$SwitchMap$com$microsoft$xbox$toolkit$network$XboxLiveEnvironment$Environment:[I

    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->environment:Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$Environment;

    invoke-virtual {v1}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$Environment;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const-string v2, "https://profile.dnet.xboxlive.com/users/gt(%s)/profile/settings?settings=AppDisplayName,DisplayPic,Gamerscore,Gamertag,PublicGamerpic,XboxOneRep"

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 205
    const-string v0, "https://profile.xboxlive.com/users/gt(%s)/profile/settings?settings=AppDisplayName,DisplayPic,Gamerscore,Gamertag,PublicGamerpic,XboxOneRep"

    return-object v0

    .line 207
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :cond_1
    return-object v2
.end method

.method public getMutedServiceUrlFormat()Ljava/lang/String;
    .locals 1

    .line 155
    const-string v0, "https://privacy.xboxlive.com/users/xuid(%s)/people/mute"

    return-object v0
.end method

.method public getPeopleHubFriendFinderStateUrlFormat()Ljava/lang/String;
    .locals 1

    .line 171
    const-string v0, "https://peoplehub.xboxlive.com/users/me/friendfinder"

    return-object v0
.end method

.method public getPeopleHubRecommendationsUrlFormat()Ljava/lang/String;
    .locals 1

    .line 187
    const-string v0, "https://peoplehub.xboxlive.com/users/me/people/recommendations"

    return-object v0
.end method

.method public getProfileFavoriteListUrl()Ljava/lang/String;
    .locals 3

    .line 79
    sget-object v0, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$1;->$SwitchMap$com$microsoft$xbox$toolkit$network$XboxLiveEnvironment$Environment:[I

    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->environment:Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$Environment;

    invoke-virtual {v1}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$Environment;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const-string v2, "https://social.dnet.xboxlive.com/users/me/people/favorites/xuids?method=%s"

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 86
    const-string v0, "https://social.xboxlive.com/users/me/people/favorites/xuids?method=%s"

    return-object v0

    .line 88
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :cond_1
    return-object v2
.end method

.method public getProfileNeverListUrlFormat()Ljava/lang/String;
    .locals 3

    .line 65
    sget-object v0, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$1;->$SwitchMap$com$microsoft$xbox$toolkit$network$XboxLiveEnvironment$Environment:[I

    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->environment:Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$Environment;

    invoke-virtual {v1}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$Environment;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const-string v2, "https://privacy.dnet.xboxlive.com/users/xuid(%s)/people/never"

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 72
    const-string v0, "https://privacy.xboxlive.com/users/xuid(%s)/people/never"

    return-object v0

    .line 74
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :cond_1
    return-object v2
.end method

.method public getProfileSettingUrlFormat()Ljava/lang/String;
    .locals 1

    .line 175
    const-string v0, "https://privacy.xboxlive.com/users/me/privacy/settings/%s"

    return-object v0
.end method

.method public getProfileSummaryUrlFormat()Ljava/lang/String;
    .locals 2

    .line 107
    sget-object v0, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$1;->$SwitchMap$com$microsoft$xbox$toolkit$network$XboxLiveEnvironment$Environment:[I

    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->environment:Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$Environment;

    invoke-virtual {v1}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$Environment;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 112
    const-string v0, "https://social.xboxlive.com/users/xuid(%s)/summary"

    return-object v0

    .line 114
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 110
    :cond_1
    const-string v0, "https://social.dnet.xboxlive.com/users/xuid(%s)/summary"

    return-object v0
.end method

.method public getProxyEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getRemoveUsersFromShareIdentityUrlFormat()Ljava/lang/String;
    .locals 2

    .line 53
    sget-object v0, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$1;->$SwitchMap$com$microsoft$xbox$toolkit$network$XboxLiveEnvironment$Environment:[I

    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->environment:Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$Environment;

    invoke-virtual {v1}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$Environment;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 58
    const-string v0, "https://social.xboxlive.com/users/xuid(%s)/people/identityshared/xuids?method=remove"

    return-object v0

    .line 60
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 56
    :cond_1
    const-string v0, "https://social.dnet.xboxlive.com/users/xuid(%s)/people/identityshared/xuids?method=remove"

    return-object v0
.end method

.method public getSetFriendFinderOptInStatusUrlFormat()Ljava/lang/String;
    .locals 1

    .line 179
    const-string v0, "https://friendfinder.xboxlive.com/users/me/networks/%s/optin"

    return-object v0
.end method

.method public getShortCircuitProfileUrlFormat()Ljava/lang/String;
    .locals 1

    .line 191
    const-string v0, "https://pf.directory.live.com/profile/mine/System.ShortCircuitProfile.json"

    return-object v0
.end method

.method public getSubmitFeedbackUrlFormat()Ljava/lang/String;
    .locals 1

    .line 159
    const-string v0, "https://reputation.xboxlive.com/users/xuid(%s)/feedback"

    return-object v0
.end method

.method public getTenureWatermarkUrlFormat()Ljava/lang/String;
    .locals 1

    .line 127
    const-string v0, "http://dlassets.xboxlive.com/public/content/ppl/watermarks/tenure/%s.png"

    return-object v0
.end method

.method public getUpdateThirdPartyTokenUrlFormat()Ljava/lang/String;
    .locals 1

    .line 183
    const-string v0, "https://thirdpartytokens.xboxlive.com/users/me/networks/%s/token"

    return-object v0
.end method

.method public getUploadingPhoneContactsUrlFormat()Ljava/lang/String;
    .locals 1

    .line 195
    const-string v0, "https://people.directory.live.com/people/ExternalSCDLookup"

    return-object v0
.end method

.method public getUserProfileInfoUrl()Ljava/lang/String;
    .locals 3

    .line 27
    sget-object v0, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$1;->$SwitchMap$com$microsoft$xbox$toolkit$network$XboxLiveEnvironment$Environment:[I

    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->environment:Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$Environment;

    invoke-virtual {v1}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$Environment;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const-string v2, "https://profile.dnet.xboxlive.com/users/batch/profile/settings"

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 34
    const-string v0, "https://profile.xboxlive.com/users/batch/profile/settings"

    return-object v0

    .line 36
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :cond_1
    return-object v2
.end method

.method public getUserProfileSettingUrlFormat()Ljava/lang/String;
    .locals 1

    .line 163
    const-string v0, "https://privacy.xboxlive.com/users/me/privacy/settings"

    return-object v0
.end method

.method public getWatermarkUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 131
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0    # 0x7a8dcb8f
    const-string/jumbo v1, "xboxlivelaunchteam"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x7

    goto :goto_0

    :sswitch_1    # 0x5e71a181
    const-string/jumbo v1, "xboxoriginalteam"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x6

    goto :goto_0

    :sswitch_2    # 0x389a8ad0
    const-string/jumbo v1, "xboxnxoeteam"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x5

    goto :goto_0

    :sswitch_3    # 0x2c3e08c0
    const-string v1, "cheater"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x4

    goto :goto_0

    :sswitch_4    # 0x20a05490
    const-string v1, "launchteam"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_5    # 0x1be32623
    const-string v1, "kinectteam"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_6    # -0x4276ff0
    const-string/jumbo v1, "xboxoneteam"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_7    # -0x72877748
    const-string v1, "nxeteam"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unsupported watermark value: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/microsoft/xbox/toolkit/XLEAssert;->fail(Ljava/lang/String;)V

    .line 150
    const-string p1, ""

    return-object p1

    .line 137
    :pswitch_0    # 0x7
    const-string p1, "http://dlassets.xboxlive.com/public/content/ppl/watermarks/launch/xboxlivelaunchteam.png"

    return-object p1

    .line 135
    :pswitch_1    # 0x6
    const-string p1, "http://dlassets.xboxlive.com/public/content/ppl/watermarks/launch/xboxoriginalteam.png"

    return-object p1

    .line 147
    :pswitch_2    # 0x5
    const-string p1, "http://dlassets.xboxlive.com/public/content/ppl/watermarks/launch/xboxnxoeteam.png"

    return-object p1

    .line 133
    :pswitch_3    # 0x4
    const-string p1, "http://dlassets.xboxlive.com/public/content/ppl/watermarks/cheater.png"

    return-object p1

    .line 139
    :pswitch_4    # 0x3
    const-string p1, "http://dlassets.xboxlive.com/public/content/ppl/watermarks/launch/launchteam.png"

    return-object p1

    .line 143
    :pswitch_5    # 0x2
    const-string p1, "http://dlassets.xboxlive.com/public/content/ppl/watermarks/launch/kinectteam.png"

    return-object p1

    .line 145
    :pswitch_6    # 0x1
    const-string p1, "http://dlassets.xboxlive.com/public/content/ppl/watermarks/launch/xboxoneteam.png"

    return-object p1

    .line 141
    :pswitch_7    # 0x0
    const-string p1, "http://dlassets.xboxlive.com/public/content/ppl/watermarks/launch/nxeteam.png"

    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x72877748 -> :sswitch_7
        -0x4276ff0 -> :sswitch_6
        0x1be32623 -> :sswitch_5
        0x20a05490 -> :sswitch_4
        0x2c3e08c0 -> :sswitch_3
        0x389a8ad0 -> :sswitch_2
        0x5e71a181 -> :sswitch_1
        0x7a8dcb8f -> :sswitch_0

    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7    # 0x0
        :pswitch_6    # 0x1
        :pswitch_5    # 0x2
        :pswitch_4    # 0x3
        :pswitch_3    # 0x4
        :pswitch_2    # 0x5
        :pswitch_1    # 0x6
        :pswitch_0    # 0x7
    .end packed-switch
.end method

.method public updateProfileFollowingListUrl()Ljava/lang/String;
    .locals 3

    .line 93
    sget-object v0, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$1;->$SwitchMap$com$microsoft$xbox$toolkit$network$XboxLiveEnvironment$Environment:[I

    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->environment:Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$Environment;

    invoke-virtual {v1}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$Environment;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-object v2, Landroidx/legacy/coreutils/Zn/jzoH;->PkFmAESmDUbiWx:Ljava/lang/String;

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 100
    const-string v0, "https://social.xboxlive.com/users/me/people/xuids?method=%s"

    return-object v0

    .line 102
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :cond_1
    return-object v2
.end method
