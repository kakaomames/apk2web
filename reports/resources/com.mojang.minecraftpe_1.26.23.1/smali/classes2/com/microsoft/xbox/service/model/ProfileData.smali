.class public Lcom/microsoft/xbox/service/model/ProfileData;
.super Ljava/lang/Object;
.source "ProfileData.java"


# instance fields
.field private profileResult:Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$UserProfileResult;

.field private shareRealName:Z

.field private shareRealNameStatus:Ljava/lang/String;

.field private sharingRealNameTransitively:Z


# direct methods
.method public constructor <init>(Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$UserProfileResult;Z)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/microsoft/xbox/service/model/ProfileData;->profileResult:Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$UserProfileResult;

    .line 13
    iput-boolean p2, p0, Lcom/microsoft/xbox/service/model/ProfileData;->shareRealName:Z

    const/4 p1, 0x0

    .line 14
    iput-object p1, p0, Lcom/microsoft/xbox/service/model/ProfileData;->shareRealNameStatus:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$UserProfileResult;ZLjava/lang/String;Z)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/microsoft/xbox/service/model/ProfileData;->profileResult:Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$UserProfileResult;

    .line 19
    iput-boolean p2, p0, Lcom/microsoft/xbox/service/model/ProfileData;->shareRealName:Z

    .line 20
    iput-object p3, p0, Lcom/microsoft/xbox/service/model/ProfileData;->shareRealNameStatus:Ljava/lang/String;

    .line 21
    iput-boolean p4, p0, Lcom/microsoft/xbox/service/model/ProfileData;->sharingRealNameTransitively:Z

    return-void
.end method


# virtual methods
.method public getProfileResult()Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$UserProfileResult;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileData;->profileResult:Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$UserProfileResult;

    return-object v0
.end method

.method public getShareRealName()Z
    .locals 1

    .line 29
    iget-boolean v0, p0, Lcom/microsoft/xbox/service/model/ProfileData;->shareRealName:Z

    return v0
.end method

.method public getShareRealNameStatus()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileData;->shareRealNameStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getSharingRealNameTransitively()Z
    .locals 1

    .line 37
    iget-boolean v0, p0, Lcom/microsoft/xbox/service/model/ProfileData;->sharingRealNameTransitively:Z

    return v0
.end method
