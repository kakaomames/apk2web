.class public final Lcom/microsoft/xbox/xle/viewmodel/FriendSelectorItem;
.super Lcom/microsoft/xbox/service/model/FollowersData;
.source "FriendSelectorItem.java"


# static fields
.field private static final serialVersionUID:J = 0x507b6988af949efeL


# instance fields
.field private selected:Z


# direct methods
.method public constructor <init>(Lcom/microsoft/xbox/service/model/FollowersData;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/microsoft/xbox/service/model/FollowersData;-><init>(Lcom/microsoft/xbox/service/model/FollowersData;)V

    const/4 p1, 0x0

    .line 15
    iput-boolean p1, p0, Lcom/microsoft/xbox/xle/viewmodel/FriendSelectorItem;->selected:Z

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/xbox/service/model/ProfileModel;)V
    .locals 2

    .line 34
    invoke-direct {p0}, Lcom/microsoft/xbox/service/model/FollowersData;-><init>()V

    .line 35
    invoke-virtual {p1}, Lcom/microsoft/xbox/service/model/ProfileModel;->getXuid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/FriendSelectorItem;->xuid:Ljava/lang/String;

    .line 41
    new-instance v0, Lcom/microsoft/xbox/service/model/UserProfileData;

    invoke-direct {v0}, Lcom/microsoft/xbox/service/model/UserProfileData;-><init>()V

    iput-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/FriendSelectorItem;->userProfileData:Lcom/microsoft/xbox/service/model/UserProfileData;

    .line 42
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/FriendSelectorItem;->userProfileData:Lcom/microsoft/xbox/service/model/UserProfileData;

    invoke-virtual {p1}, Lcom/microsoft/xbox/service/model/ProfileModel;->getGamerTag()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/microsoft/xbox/service/model/UserProfileData;->gamerTag:Ljava/lang/String;

    .line 43
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/FriendSelectorItem;->userProfileData:Lcom/microsoft/xbox/service/model/UserProfileData;

    invoke-virtual {p1}, Lcom/microsoft/xbox/service/model/ProfileModel;->getXuid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/microsoft/xbox/service/model/UserProfileData;->xuid:Ljava/lang/String;

    .line 45
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/FriendSelectorItem;->userProfileData:Lcom/microsoft/xbox/service/model/UserProfileData;

    invoke-virtual {p1}, Lcom/microsoft/xbox/service/model/ProfileModel;->getGamerPicImageUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/microsoft/xbox/service/model/UserProfileData;->profileImageUrl:Ljava/lang/String;

    .line 47
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/FriendSelectorItem;->userProfileData:Lcom/microsoft/xbox/service/model/UserProfileData;

    invoke-virtual {p1}, Lcom/microsoft/xbox/service/model/ProfileModel;->getGamerScore()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/microsoft/xbox/service/model/UserProfileData;->gamerScore:Ljava/lang/String;

    .line 48
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/FriendSelectorItem;->userProfileData:Lcom/microsoft/xbox/service/model/UserProfileData;

    invoke-virtual {p1}, Lcom/microsoft/xbox/service/model/ProfileModel;->getAppDisplayName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/microsoft/xbox/service/model/UserProfileData;->appDisplayName:Ljava/lang/String;

    .line 49
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/FriendSelectorItem;->userProfileData:Lcom/microsoft/xbox/service/model/UserProfileData;

    invoke-virtual {p1}, Lcom/microsoft/xbox/service/model/ProfileModel;->getAccountTier()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/microsoft/xbox/service/model/UserProfileData;->accountTier:Ljava/lang/String;

    .line 50
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/FriendSelectorItem;->userProfileData:Lcom/microsoft/xbox/service/model/UserProfileData;

    invoke-virtual {p1}, Lcom/microsoft/xbox/service/model/ProfileModel;->getRealName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/microsoft/xbox/service/model/UserProfileData;->gamerRealName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 81
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 83
    :cond_2
    check-cast p1, Lcom/microsoft/xbox/xle/viewmodel/FriendSelectorItem;

    .line 84
    iget-object v2, p0, Lcom/microsoft/xbox/xle/viewmodel/FriendSelectorItem;->userProfileData:Lcom/microsoft/xbox/service/model/UserProfileData;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/microsoft/xbox/xle/viewmodel/FriendSelectorItem;->userProfileData:Lcom/microsoft/xbox/service/model/UserProfileData;

    iget-object v2, v2, Lcom/microsoft/xbox/service/model/UserProfileData;->gamerTag:Ljava/lang/String;

    if-nez v2, :cond_3

    goto :goto_0

    .line 87
    :cond_3
    iget-object v2, p0, Lcom/microsoft/xbox/xle/viewmodel/FriendSelectorItem;->userProfileData:Lcom/microsoft/xbox/service/model/UserProfileData;

    iget-object v2, v2, Lcom/microsoft/xbox/service/model/UserProfileData;->gamerTag:Ljava/lang/String;

    iget-object p1, p1, Lcom/microsoft/xbox/xle/viewmodel/FriendSelectorItem;->userProfileData:Lcom/microsoft/xbox/service/model/UserProfileData;

    iget-object p1, p1, Lcom/microsoft/xbox/service/model/UserProfileData;->gamerTag:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v1

    .line 85
    :cond_4
    :goto_0
    iget-object v2, p1, Lcom/microsoft/xbox/xle/viewmodel/FriendSelectorItem;->userProfileData:Lcom/microsoft/xbox/service/model/UserProfileData;

    if-nez v2, :cond_6

    iget-object p1, p1, Lcom/microsoft/xbox/xle/viewmodel/FriendSelectorItem;->userProfileData:Lcom/microsoft/xbox/service/model/UserProfileData;

    iget-object p1, p1, Lcom/microsoft/xbox/service/model/UserProfileData;->gamerTag:Ljava/lang/String;

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    return v0

    :cond_6
    :goto_1
    return v1
.end method

.method public getIsSelected()Z
    .locals 1

    .line 59
    iget-boolean v0, p0, Lcom/microsoft/xbox/xle/viewmodel/FriendSelectorItem;->selected:Z

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/FriendSelectorItem;->userProfileData:Lcom/microsoft/xbox/service/model/UserProfileData;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/FriendSelectorItem;->userProfileData:Lcom/microsoft/xbox/service/model/UserProfileData;

    iget-object v0, v0, Lcom/microsoft/xbox/service/model/UserProfileData;->gamerTag:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/FriendSelectorItem;->userProfileData:Lcom/microsoft/xbox/service/model/UserProfileData;

    iget-object v0, v0, Lcom/microsoft/xbox/service/model/UserProfileData;->gamerTag:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0x1f

    add-int/2addr v1, v0

    return v1
.end method

.method public setSelected(Z)V
    .locals 0

    .line 63
    iput-boolean p1, p0, Lcom/microsoft/xbox/xle/viewmodel/FriendSelectorItem;->selected:Z

    return-void
.end method

.method public toggleSelection()V
    .locals 1

    .line 55
    iget-boolean v0, p0, Lcom/microsoft/xbox/xle/viewmodel/FriendSelectorItem;->selected:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/microsoft/xbox/xle/viewmodel/FriendSelectorItem;->selected:Z

    return-void
.end method
