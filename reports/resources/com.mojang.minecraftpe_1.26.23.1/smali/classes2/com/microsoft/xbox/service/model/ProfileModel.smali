.class public Lcom/microsoft/xbox/service/model/ProfileModel;
.super Lcom/microsoft/xbox/service/model/ModelBase;
.source "ProfileModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xbox/service/model/ProfileModel$GetPeopleHubRecommendationRunner;,
        Lcom/microsoft/xbox/service/model/ProfileModel$SubmitFeedbackForUserRunner;,
        Lcom/microsoft/xbox/service/model/ProfileModel$RemoveUserFromMutedListRunner;,
        Lcom/microsoft/xbox/service/model/ProfileModel$PutUserToMutedListRunner;,
        Lcom/microsoft/xbox/service/model/ProfileModel$GetMutedListRunner;,
        Lcom/microsoft/xbox/service/model/ProfileModel$RemoveUserFromNeverListRunner;,
        Lcom/microsoft/xbox/service/model/ProfileModel$PutUserToNeverListRunner;,
        Lcom/microsoft/xbox/service/model/ProfileModel$GetNeverListRunner;,
        Lcom/microsoft/xbox/service/model/ProfileModel$GetPresenceDataRunner;,
        Lcom/microsoft/xbox/service/model/ProfileModel$RemoveUserFromFollowingListRunner;,
        Lcom/microsoft/xbox/service/model/ProfileModel$GetProfileSummaryRunner;,
        Lcom/microsoft/xbox/service/model/ProfileModel$AddUserToFollowingListRunner;,
        Lcom/microsoft/xbox/service/model/ProfileModel$RemoveUserFromFavoriteListRunner;,
        Lcom/microsoft/xbox/service/model/ProfileModel$AddUserToFavoriteListRunner;,
        Lcom/microsoft/xbox/service/model/ProfileModel$AddUsersToShareIdentityListRunner;,
        Lcom/microsoft/xbox/service/model/ProfileModel$RemoveUsersFromShareIdentityListRunner;,
        Lcom/microsoft/xbox/service/model/ProfileModel$FollowingAndFavoritesComparator;,
        Lcom/microsoft/xbox/service/model/ProfileModel$GetProfileRunner;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/microsoft/xbox/service/model/ModelBase<",
        "Lcom/microsoft/xbox/service/model/ProfileData;",
        ">;"
    }
.end annotation


# static fields
.field private static final MAX_PROFILE_MODELS:I = 0x14

.field private static final friendsDataLifetime:J = 0x2bf20L

.field private static meProfileInstance:Lcom/microsoft/xbox/service/model/ProfileModel; = null

.field private static profileModelCache:Lcom/microsoft/xbox/toolkit/ThreadSafeFixedSizeHashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/microsoft/xbox/toolkit/ThreadSafeFixedSizeHashtable<",
            "Ljava/lang/String;",
            "Lcom/microsoft/xbox/service/model/ProfileModel;",
            ">;"
        }
    .end annotation
.end field

.field private static final profilePresenceDataLifetime:J = 0x2bf20L


# instance fields
.field private addUserToFollowingResponse:Lcom/microsoft/xbox/service/network/managers/AddFollowingUserResponseContainer$AddFollowingUserResponse;

.field private addingUserToFavoriteListLoadingStatus:Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

.field private addingUserToFollowingListLoadingStatus:Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

.field private addingUserToMutedListLoadingStatus:Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

.field private addingUserToNeverListLoadingStatus:Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

.field private addingUserToShareIdentityListLoadingStatus:Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

.field private favorites:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/microsoft/xbox/service/model/FollowersData;",
            ">;"
        }
    .end annotation
.end field

.field private firstName:Ljava/lang/String;

.field private following:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/microsoft/xbox/service/model/FollowersData;",
            ">;"
        }
    .end annotation
.end field

.field private followingSummaries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/microsoft/xbox/service/network/managers/FollowingSummaryResult$People;",
            ">;"
        }
    .end annotation
.end field

.field private lastName:Ljava/lang/String;

.field private lastRefreshMutedList:Ljava/util/Date;

.field private lastRefreshNeverList:Ljava/util/Date;

.field private lastRefreshPeopleHubRecommendations:Ljava/util/Date;

.field private lastRefreshPresenceData:Ljava/util/Date;

.field private lastRefreshProfileSummary:Ljava/util/Date;

.field private mutedList:Lcom/microsoft/xbox/service/network/managers/MutedListResultContainer$MutedListResult;

.field private mutedListLoadingStatus:Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

.field private neverList:Lcom/microsoft/xbox/service/network/managers/NeverListResultContainer$NeverListResult;

.field private neverListLoadingStatus:Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

.field private peopleHubPersonSummary:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPersonSummary;

.field private peopleHubRecommendations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/microsoft/xbox/service/model/FollowersData;",
            ">;"
        }
    .end annotation
.end field

.field private peopleHubRecommendationsRaw:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPeopleSummary;

.field private presenceData:Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$UserPresence;

.field private presenceDataLoadingStatus:Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

.field private profileImageUrl:Ljava/lang/String;

.field private profileSummary:Lcom/microsoft/xbox/service/network/managers/ProfileSummaryResultContainer$ProfileSummaryResult;

.field private profileSummaryLoadingStatus:Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

.field private profileUser:Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$ProfileUser;

.field private removingUserFromFavoriteListLoadingStatus:Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

.field private removingUserFromFollowingListLoadingStatus:Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

.field private removingUserFromMutedListLoadingStatus:Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

.field private removingUserFromNeverListLoadingStatus:Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

.field private removingUserFromShareIdentityListLoadingStatus:Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

.field private shareRealName:Z

.field private shareRealNameStatus:Ljava/lang/String;

.field private sharingRealNameTransitively:Z

.field private submitFeedbackForUserLoadingStatus:Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

.field private xuid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 106
    new-instance v0, Lcom/microsoft/xbox/toolkit/ThreadSafeFixedSizeHashtable;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lcom/microsoft/xbox/toolkit/ThreadSafeFixedSizeHashtable;-><init>(I)V

    sput-object v0, Lcom/microsoft/xbox/service/model/ProfileModel;->profileModelCache:Lcom/microsoft/xbox/toolkit/ThreadSafeFixedSizeHashtable;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 109
    invoke-direct {p0}, Lcom/microsoft/xbox/service/model/ModelBase;-><init>()V

    .line 110
    iput-object p1, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->xuid:Ljava/lang/String;

    .line 124
    new-instance p1, Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

    invoke-direct {p1}, Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;-><init>()V

    iput-object p1, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->mutedListLoadingStatus:Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

    .line 125
    new-instance p1, Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

    invoke-direct {p1}, Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;-><init>()V

    iput-object p1, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->neverListLoadingStatus:Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

    .line 126
    new-instance p1, Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

    invoke-direct {p1}, Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;-><init>()V

    iput-object p1, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->addingUserToNeverListLoadingStatus:Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

    .line 127
    new-instance p1, Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

    invoke-direct {p1}, Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;-><init>()V

    iput-object p1, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->removingUserFromNeverListLoadingStatus:Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

    .line 128
    new-instance p1, Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

    invoke-direct {p1}, Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;-><init>()V

    iput-object p1, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->addingUserToFavoriteListLoadingStatus:Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

    .line 129
    new-instance p1, Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

    invoke-direct {p1}, Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;-><init>()V

    iput-object p1, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->addingUserToShareIdentityListLoadingStatus:Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

    .line 130
    new-instance p1, Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

    invoke-direct {p1}, Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;-><init>()V

    iput-object p1, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->removingUserFromShareIdentityListLoadingStatus:Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

    .line 131
    new-instance p1, Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

    invoke-direct {p1}, Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;-><init>()V

    iput-object p1, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->removingUserFromFavoriteListLoadingStatus:Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

    .line 132
    new-instance p1, Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

    invoke-direct {p1}, Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;-><init>()V

    iput-object p1, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->addingUserToFollowingListLoadingStatus:Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

    .line 133
    new-instance p1, Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

    invoke-direct {p1}, Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;-><init>()V

    iput-object p1, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->removingUserFromFollowingListLoadingStatus:Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

    .line 134
    new-instance p1, Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

    invoke-direct {p1}, Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;-><init>()V

    iput-object p1, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->addingUserToMutedListLoadingStatus:Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

    .line 135
    new-instance p1, Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

    invoke-direct {p1}, Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;-><init>()V

    iput-object p1, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->removingUserFromMutedListLoadingStatus:Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

    .line 136
    new-instance p1, Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

    invoke-direct {p1}, Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;-><init>()V

    iput-object p1, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->submitFeedbackForUserLoadingStatus:Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

    return-void
.end method

.method static synthetic access$1000(Lcom/microsoft/xbox/service/model/ProfileModel;Lcom/microsoft/xbox/toolkit/AsyncResult;Ljava/lang/String;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/microsoft/xbox/service/model/ProfileModel;->onRemoveUserFromFollowingListCompleted(Lcom/microsoft/xbox/toolkit/AsyncResult;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/microsoft/xbox/service/model/ProfileModel;Lcom/microsoft/xbox/toolkit/AsyncResult;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/microsoft/xbox/service/model/ProfileModel;->onGetPresenceDataCompleted(Lcom/microsoft/xbox/toolkit/AsyncResult;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/microsoft/xbox/service/model/ProfileModel;Lcom/microsoft/xbox/toolkit/AsyncResult;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/microsoft/xbox/service/model/ProfileModel;->onGetNeverListCompleted(Lcom/microsoft/xbox/toolkit/AsyncResult;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/microsoft/xbox/service/model/ProfileModel;Lcom/microsoft/xbox/toolkit/AsyncResult;Ljava/lang/String;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/microsoft/xbox/service/model/ProfileModel;->onPutUserToNeverListCompleted(Lcom/microsoft/xbox/toolkit/AsyncResult;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/microsoft/xbox/service/model/ProfileModel;Lcom/microsoft/xbox/toolkit/AsyncResult;Ljava/lang/String;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/microsoft/xbox/service/model/ProfileModel;->onRemoveUserFromNeverListCompleted(Lcom/microsoft/xbox/toolkit/AsyncResult;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/microsoft/xbox/service/model/ProfileModel;Lcom/microsoft/xbox/toolkit/AsyncResult;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/microsoft/xbox/service/model/ProfileModel;->onGetMutedListCompleted(Lcom/microsoft/xbox/toolkit/AsyncResult;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/microsoft/xbox/service/model/ProfileModel;Lcom/microsoft/xbox/toolkit/AsyncResult;Ljava/lang/String;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/microsoft/xbox/service/model/ProfileModel;->onPutUserToMutedListCompleted(Lcom/microsoft/xbox/toolkit/AsyncResult;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/microsoft/xbox/service/model/ProfileModel;Lcom/microsoft/xbox/toolkit/AsyncResult;Ljava/lang/String;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/microsoft/xbox/service/model/ProfileModel;->onRemoveUserFromMutedListCompleted(Lcom/microsoft/xbox/toolkit/AsyncResult;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/microsoft/xbox/service/model/ProfileModel;Lcom/microsoft/xbox/toolkit/AsyncResult;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/microsoft/xbox/service/model/ProfileModel;->onSubmitFeedbackForUserCompleted(Lcom/microsoft/xbox/toolkit/AsyncResult;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/microsoft/xbox/service/model/ProfileModel;Lcom/microsoft/xbox/toolkit/AsyncResult;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/microsoft/xbox/service/model/ProfileModel;->onGetPeopleHubRecommendationsCompleted(Lcom/microsoft/xbox/toolkit/AsyncResult;)V

    return-void
.end method

.method static synthetic access$200(Lcom/microsoft/xbox/service/model/ProfileModel;Lcom/microsoft/xbox/toolkit/AsyncResult;Z)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/microsoft/xbox/service/model/ProfileModel;->updateWithProfileData(Lcom/microsoft/xbox/toolkit/AsyncResult;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/microsoft/xbox/service/model/ProfileModel;)Ljava/lang/String;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->xuid:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/microsoft/xbox/service/model/ProfileModel;Lcom/microsoft/xbox/toolkit/AsyncResult;Ljava/util/ArrayList;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/microsoft/xbox/service/model/ProfileModel;->onRemoveUserFromShareIdentityCompleted(Lcom/microsoft/xbox/toolkit/AsyncResult;Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$500(Lcom/microsoft/xbox/service/model/ProfileModel;Lcom/microsoft/xbox/toolkit/AsyncResult;Ljava/util/ArrayList;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/microsoft/xbox/service/model/ProfileModel;->onAddUserToShareIdentityCompleted(Lcom/microsoft/xbox/toolkit/AsyncResult;Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$600(Lcom/microsoft/xbox/service/model/ProfileModel;Lcom/microsoft/xbox/toolkit/AsyncResult;Ljava/lang/String;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/microsoft/xbox/service/model/ProfileModel;->onAddUserToFavoriteListCompleted(Lcom/microsoft/xbox/toolkit/AsyncResult;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/microsoft/xbox/service/model/ProfileModel;Lcom/microsoft/xbox/toolkit/AsyncResult;Ljava/lang/String;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/microsoft/xbox/service/model/ProfileModel;->onRemoveUserFromFavoriteListCompleted(Lcom/microsoft/xbox/toolkit/AsyncResult;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/microsoft/xbox/service/model/ProfileModel;Lcom/microsoft/xbox/toolkit/AsyncResult;Ljava/lang/String;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/microsoft/xbox/service/model/ProfileModel;->onAddUserToFollowingListCompleted(Lcom/microsoft/xbox/toolkit/AsyncResult;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/microsoft/xbox/service/model/ProfileModel;Lcom/microsoft/xbox/toolkit/AsyncResult;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/microsoft/xbox/service/model/ProfileModel;->onGetProfileSummaryCompleted(Lcom/microsoft/xbox/toolkit/AsyncResult;)V

    return-void
.end method

.method private buildRecommendationsList(Z)V
    .locals 2

    .line 806
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->peopleHubRecommendations:Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    .line 808
    new-instance p1, Lcom/microsoft/xbox/service/model/RecommendationsPeopleData;

    const/4 v0, 0x1

    sget-object v1, Lcom/microsoft/xbox/service/model/FollowersData$DummyType;->DUMMY_LINK_TO_FACEBOOK:Lcom/microsoft/xbox/service/model/FollowersData$DummyType;

    invoke-direct {p1, v0, v1}, Lcom/microsoft/xbox/service/model/RecommendationsPeopleData;-><init>(ZLcom/microsoft/xbox/service/model/FollowersData$DummyType;)V

    .line 809
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->peopleHubRecommendations:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 811
    :cond_0
    iget-object p1, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->peopleHubRecommendationsRaw:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPeopleSummary;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPeopleSummary;->people:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/microsoft/xbox/xle/app/XLEUtil;->isNullOrEmpty(Ljava/lang/Iterable;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 812
    iget-object p1, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->peopleHubRecommendationsRaw:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPeopleSummary;

    iget-object p1, p1, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPeopleSummary;->people:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPersonSummary;

    .line 813
    new-instance v1, Lcom/microsoft/xbox/service/model/RecommendationsPeopleData;

    invoke-direct {v1, v0}, Lcom/microsoft/xbox/service/model/RecommendationsPeopleData;-><init>(Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPersonSummary;)V

    .line 814
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->peopleHubRecommendations:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static getDefaultColor()I
    .locals 2

    .line 302
    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "XboxOneGreen"

    invoke-static {v1}, Lcom/microsoft/xbox/toolkit/XLERValueHelper;->getColorRValue(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method public static getMeProfileModel()Lcom/microsoft/xbox/service/model/ProfileModel;
    .locals 2

    .line 154
    invoke-static {}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->getInstance()Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->getXuidString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 158
    :cond_0
    sget-object v0, Lcom/microsoft/xbox/service/model/ProfileModel;->meProfileInstance:Lcom/microsoft/xbox/service/model/ProfileModel;

    if-nez v0, :cond_1

    .line 159
    new-instance v0, Lcom/microsoft/xbox/service/model/ProfileModel;

    invoke-static {}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->getInstance()Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->getXuidString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/microsoft/xbox/service/model/ProfileModel;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/microsoft/xbox/service/model/ProfileModel;->meProfileInstance:Lcom/microsoft/xbox/service/model/ProfileModel;

    .line 162
    :cond_1
    sget-object v0, Lcom/microsoft/xbox/service/model/ProfileModel;->meProfileInstance:Lcom/microsoft/xbox/service/model/ProfileModel;

    return-object v0
.end method

.method private getProfileImageUrl()Ljava/lang/String;
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->profileImageUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 219
    :cond_0
    sget-object v0, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->GameDisplayPicRaw:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    invoke-direct {p0, v0}, Lcom/microsoft/xbox/service/model/ProfileModel;->getProfileSettingValue(Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->profileImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public static getProfileModel(Ljava/lang/String;)Lcom/microsoft/xbox/service/model/ProfileModel;
    .locals 2

    .line 166
    invoke-static {p0}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 170
    invoke-static {}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->getInstance()Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->getXuidString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/microsoft/xbox/toolkit/JavaUtil;->stringsEqualCaseInsensitive(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 171
    sget-object v0, Lcom/microsoft/xbox/service/model/ProfileModel;->meProfileInstance:Lcom/microsoft/xbox/service/model/ProfileModel;

    if-nez v0, :cond_0

    .line 172
    new-instance v0, Lcom/microsoft/xbox/service/model/ProfileModel;

    invoke-direct {v0, p0}, Lcom/microsoft/xbox/service/model/ProfileModel;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/microsoft/xbox/service/model/ProfileModel;->meProfileInstance:Lcom/microsoft/xbox/service/model/ProfileModel;

    .line 175
    :cond_0
    sget-object p0, Lcom/microsoft/xbox/service/model/ProfileModel;->meProfileInstance:Lcom/microsoft/xbox/service/model/ProfileModel;

    return-object p0

    .line 177
    :cond_1
    sget-object v0, Lcom/microsoft/xbox/service/model/ProfileModel;->profileModelCache:Lcom/microsoft/xbox/toolkit/ThreadSafeFixedSizeHashtable;

    invoke-virtual {v0, p0}, Lcom/microsoft/xbox/toolkit/ThreadSafeFixedSizeHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/service/model/ProfileModel;

    if-nez v0, :cond_2

    .line 179
    new-instance v0, Lcom/microsoft/xbox/service/model/ProfileModel;

    invoke-direct {v0, p0}, Lcom/microsoft/xbox/service/model/ProfileModel;-><init>(Ljava/lang/String;)V

    .line 180
    sget-object v1, Lcom/microsoft/xbox/service/model/ProfileModel;->profileModelCache:Lcom/microsoft/xbox/toolkit/ThreadSafeFixedSizeHashtable;

    invoke-virtual {v1, p0, v0}, Lcom/microsoft/xbox/toolkit/ThreadSafeFixedSizeHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-object v0

    .line 167
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method private getProfileSettingValue(Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;)Ljava/lang/String;
    .locals 4

    .line 318
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->profileUser:Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$ProfileUser;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$ProfileUser;->settings:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 319
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->profileUser:Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$ProfileUser;

    iget-object v0, v0, Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$ProfileUser;->settings:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$Settings;

    .line 320
    iget-object v2, v1, Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$Settings;->id:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$Settings;->id:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 321
    iget-object p1, v1, Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$Settings;->value:Ljava/lang/String;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private static hasPrivilege(Ljava/lang/String;)Z
    .locals 2

    .line 365
    invoke-static {}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->getInstance()Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->getPrivileges()Ljava/lang/String;

    move-result-object v0

    .line 366
    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static hasPrivilegeToAddFriend()Z
    .locals 1

    .line 357
    const-string v0, "255"

    invoke-static {v0}, Lcom/microsoft/xbox/service/model/ProfileModel;->hasPrivilege(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static hasPrivilegeToSendMessage()Z
    .locals 1

    .line 361
    const-string v0, "252"

    invoke-static {v0}, Lcom/microsoft/xbox/service/model/ProfileModel;->hasPrivilege(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isMeXuid(Ljava/lang/String;)Z
    .locals 1

    .line 297
    invoke-static {}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->getInstance()Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->getXuidString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 298
    invoke-virtual {p0, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private onAddUserToFavoriteListCompleted(Lcom/microsoft/xbox/toolkit/AsyncResult;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/xbox/toolkit/AsyncResult<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 590
    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/AsyncResult;->getStatus()Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    move-result-object v0

    sget-object v1, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->SUCCESS:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    if-ne v0, v1, :cond_4

    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/AsyncResult;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 591
    iget-object p1, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->following:Ljava/util/ArrayList;

    if-nez p1, :cond_0

    return-void

    .line 595
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 596
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->following:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/xbox/service/model/FollowersData;

    .line 597
    iget-object v3, v1, Lcom/microsoft/xbox/service/model/FollowersData;->xuid:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 598
    iput-boolean v2, v1, Lcom/microsoft/xbox/service/model/FollowersData;->isFavorite:Z

    .line 600
    :cond_2
    iget-boolean v2, v1, Lcom/microsoft/xbox/service/model/FollowersData;->isFavorite:Z

    if-eqz v2, :cond_1

    .line 601
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 605
    :cond_3
    new-instance p2, Lcom/microsoft/xbox/service/model/ProfileModel$FollowingAndFavoritesComparator;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/microsoft/xbox/service/model/ProfileModel$FollowingAndFavoritesComparator;-><init>(Lcom/microsoft/xbox/service/model/ProfileModel;Lcom/microsoft/xbox/service/model/ProfileModel$1;)V

    invoke-static {p1, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 607
    iput-object p1, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->favorites:Ljava/util/ArrayList;

    .line 609
    new-instance p1, Lcom/microsoft/xbox/toolkit/AsyncResult;

    new-instance p2, Lcom/microsoft/xbox/service/model/UpdateData;

    sget-object v1, Lcom/microsoft/xbox/service/model/UpdateType;->UpdateFriend:Lcom/microsoft/xbox/service/model/UpdateType;

    invoke-direct {p2, v1, v2}, Lcom/microsoft/xbox/service/model/UpdateData;-><init>(Lcom/microsoft/xbox/service/model/UpdateType;Z)V

    invoke-direct {p1, p2, p0, v0}, Lcom/microsoft/xbox/toolkit/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/xbox/toolkit/XLEException;)V

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/service/model/ProfileModel;->notifyObservers(Lcom/microsoft/xbox/toolkit/AsyncResult;)V

    :cond_4
    return-void
.end method

.method private onAddUserToFollowingListCompleted(Lcom/microsoft/xbox/toolkit/AsyncResult;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/xbox/toolkit/AsyncResult<",
            "Lcom/microsoft/xbox/service/network/managers/AddFollowingUserResponseContainer$AddFollowingUserResponse;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 639
    invoke-static {p2}, Lcom/microsoft/xbox/service/model/ProfileModel;->getProfileModel(Ljava/lang/String;)Lcom/microsoft/xbox/service/model/ProfileModel;

    move-result-object v0

    .line 640
    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    .line 642
    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/AsyncResult;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/xbox/service/network/managers/AddFollowingUserResponseContainer$AddFollowingUserResponse;

    iput-object v1, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->addUserToFollowingResponse:Lcom/microsoft/xbox/service/network/managers/AddFollowingUserResponseContainer$AddFollowingUserResponse;

    .line 644
    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/AsyncResult;->getStatus()Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    move-result-object v1

    sget-object v2, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->SUCCESS:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->addUserToFollowingResponse:Lcom/microsoft/xbox/service/network/managers/AddFollowingUserResponseContainer$AddFollowingUserResponse;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/microsoft/xbox/service/network/managers/AddFollowingUserResponseContainer$AddFollowingUserResponse;->getAddFollowingRequestStatus()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 647
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 648
    iget-object v1, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->following:Ljava/util/ArrayList;

    const/4 v2, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    .line 649
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v5, v4

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/microsoft/xbox/service/model/FollowersData;

    .line 650
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 651
    iget-object v6, v6, Lcom/microsoft/xbox/service/model/FollowersData;->xuid:Ljava/lang/String;

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v5, v2

    goto :goto_0

    :cond_1
    move v5, v4

    :cond_2
    if-nez v5, :cond_3

    .line 657
    new-instance v1, Lcom/microsoft/xbox/service/model/FollowersData;

    invoke-direct {v1}, Lcom/microsoft/xbox/service/model/FollowersData;-><init>()V

    .line 658
    iput-object p2, v1, Lcom/microsoft/xbox/service/model/FollowersData;->xuid:Ljava/lang/String;

    .line 659
    iput-boolean v4, v1, Lcom/microsoft/xbox/service/model/FollowersData;->isFavorite:Z

    .line 663
    sget-object p2, Lcom/microsoft/xbox/service/model/UserStatus;->Offline:Lcom/microsoft/xbox/service/model/UserStatus;

    iput-object p2, v1, Lcom/microsoft/xbox/service/model/FollowersData;->status:Lcom/microsoft/xbox/service/model/UserStatus;

    .line 665
    new-instance p2, Lcom/microsoft/xbox/service/model/UserProfileData;

    invoke-direct {p2}, Lcom/microsoft/xbox/service/model/UserProfileData;-><init>()V

    iput-object p2, v1, Lcom/microsoft/xbox/service/model/FollowersData;->userProfileData:Lcom/microsoft/xbox/service/model/UserProfileData;

    .line 666
    iget-object p2, v1, Lcom/microsoft/xbox/service/model/FollowersData;->userProfileData:Lcom/microsoft/xbox/service/model/UserProfileData;

    invoke-virtual {v0}, Lcom/microsoft/xbox/service/model/ProfileModel;->getAccountTier()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p2, Lcom/microsoft/xbox/service/model/UserProfileData;->accountTier:Ljava/lang/String;

    .line 667
    iget-object p2, v1, Lcom/microsoft/xbox/service/model/FollowersData;->userProfileData:Lcom/microsoft/xbox/service/model/UserProfileData;

    invoke-virtual {v0}, Lcom/microsoft/xbox/service/model/ProfileModel;->getAppDisplayName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p2, Lcom/microsoft/xbox/service/model/UserProfileData;->appDisplayName:Ljava/lang/String;

    .line 668
    iget-object p2, v1, Lcom/microsoft/xbox/service/model/FollowersData;->userProfileData:Lcom/microsoft/xbox/service/model/UserProfileData;

    invoke-virtual {v0}, Lcom/microsoft/xbox/service/model/ProfileModel;->getGamerScore()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p2, Lcom/microsoft/xbox/service/model/UserProfileData;->gamerScore:Ljava/lang/String;

    .line 669
    iget-object p2, v1, Lcom/microsoft/xbox/service/model/FollowersData;->userProfileData:Lcom/microsoft/xbox/service/model/UserProfileData;

    invoke-virtual {v0}, Lcom/microsoft/xbox/service/model/ProfileModel;->getGamerTag()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p2, Lcom/microsoft/xbox/service/model/UserProfileData;->gamerTag:Ljava/lang/String;

    .line 670
    iget-object p2, v1, Lcom/microsoft/xbox/service/model/FollowersData;->userProfileData:Lcom/microsoft/xbox/service/model/UserProfileData;

    invoke-direct {v0}, Lcom/microsoft/xbox/service/model/ProfileModel;->getProfileImageUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/microsoft/xbox/service/model/UserProfileData;->profileImageUrl:Ljava/lang/String;

    .line 672
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 674
    new-instance p2, Lcom/microsoft/xbox/service/model/ProfileModel$FollowingAndFavoritesComparator;

    invoke-direct {p2, p0, v3}, Lcom/microsoft/xbox/service/model/ProfileModel$FollowingAndFavoritesComparator;-><init>(Lcom/microsoft/xbox/service/model/ProfileModel;Lcom/microsoft/xbox/service/model/ProfileModel$1;)V

    invoke-static {p1, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 677
    :cond_3
    iput-object p1, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->following:Ljava/util/ArrayList;

    .line 679
    new-instance p1, Lcom/microsoft/xbox/toolkit/AsyncResult;

    new-instance p2, Lcom/microsoft/xbox/service/model/UpdateData;

    sget-object v0, Lcom/microsoft/xbox/service/model/UpdateType;->UpdateFriend:Lcom/microsoft/xbox/service/model/UpdateType;

    invoke-direct {p2, v0, v2}, Lcom/microsoft/xbox/service/model/UpdateData;-><init>(Lcom/microsoft/xbox/service/model/UpdateType;Z)V

    invoke-direct {p1, p2, p0, v3}, Lcom/microsoft/xbox/toolkit/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/xbox/toolkit/XLEException;)V

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/service/model/ProfileModel;->notifyObservers(Lcom/microsoft/xbox/toolkit/AsyncResult;)V

    goto :goto_1

    .line 682
    :cond_4
    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/AsyncResult;->getStatus()Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    move-result-object p1

    sget-object p2, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->SUCCESS:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    if-ne p1, p2, :cond_5

    iget-object p1, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->addUserToFollowingResponse:Lcom/microsoft/xbox/service/network/managers/AddFollowingUserResponseContainer$AddFollowingUserResponse;

    iget p1, p1, Lcom/microsoft/xbox/service/network/managers/AddFollowingUserResponseContainer$AddFollowingUserResponse;->code:I

    const/16 p2, 0x404

    if-eq p1, p2, :cond_6

    iget-object p1, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->addUserToFollowingResponse:Lcom/microsoft/xbox/service/network/managers/AddFollowingUserResponseContainer$AddFollowingUserResponse;

    .line 683
    invoke-virtual {p1}, Lcom/microsoft/xbox/service/network/managers/AddFollowingUserResponseContainer$AddFollowingUserResponse;->getAddFollowingRequestStatus()Z

    move-result p1

    if-nez p1, :cond_6

    .line 684
    :cond_5
    iput-object v3, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->addUserToFollowingResponse:Lcom/microsoft/xbox/service/network/managers/AddFollowingUserResponseContainer$AddFollowingUserResponse;

    :cond_6
    :goto_1
    return-void
.end method

.method private onAddUserToShareIdentityCompleted(Lcom/microsoft/xbox/toolkit/AsyncResult;Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/xbox/toolkit/AsyncResult<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 563
    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/AsyncResult;->getStatus()Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    move-result-object v0

    sget-object v1, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->SUCCESS:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    if-ne v0, v1, :cond_5

    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/AsyncResult;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 564
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 565
    invoke-static {v0}, Lcom/microsoft/xbox/service/model/ProfileModel;->getProfileModel(Ljava/lang/String;)Lcom/microsoft/xbox/service/model/ProfileModel;

    move-result-object v0

    .line 566
    invoke-virtual {v0}, Lcom/microsoft/xbox/service/model/ProfileModel;->getProfileSummaryData()Lcom/microsoft/xbox/service/network/managers/ProfileSummaryResultContainer$ProfileSummaryResult;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 568
    iput-boolean v1, v0, Lcom/microsoft/xbox/service/network/managers/ProfileSummaryResultContainer$ProfileSummaryResult;->hasCallerMarkedTargetAsIdentityShared:Z

    goto :goto_0

    .line 573
    :cond_1
    invoke-static {}, Lcom/microsoft/xbox/service/model/ProfileModel;->getMeProfileModel()Lcom/microsoft/xbox/service/model/ProfileModel;

    move-result-object p1

    .line 574
    invoke-virtual {p1}, Lcom/microsoft/xbox/service/model/ProfileModel;->getProfileFollowingSummaryData()Ljava/util/ArrayList;

    move-result-object v0

    .line 575
    invoke-static {v0}, Lcom/microsoft/xbox/xle/app/XLEUtil;->isNullOrEmpty(Ljava/lang/Iterable;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 576
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 577
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/microsoft/xbox/service/network/managers/FollowingSummaryResult$People;

    .line 578
    iget-object v5, v4, Lcom/microsoft/xbox/service/network/managers/FollowingSummaryResult$People;->xuid:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 579
    iput-boolean v1, v4, Lcom/microsoft/xbox/service/network/managers/FollowingSummaryResult$People;->isIdentityShared:Z

    goto :goto_1

    .line 584
    :cond_4
    invoke-virtual {p1, v0}, Lcom/microsoft/xbox/service/model/ProfileModel;->setProfileFollowingSummaryData(Ljava/util/ArrayList;)V

    :cond_5
    return-void
.end method

.method private onGetMutedListCompleted(Lcom/microsoft/xbox/toolkit/AsyncResult;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/xbox/toolkit/AsyncResult<",
            "Lcom/microsoft/xbox/service/network/managers/MutedListResultContainer$MutedListResult;",
            ">;)V"
        }
    .end annotation

    .line 758
    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/AsyncResult;->getStatus()Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    move-result-object v0

    sget-object v1, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->SUCCESS:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    if-ne v0, v1, :cond_1

    .line 759
    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/AsyncResult;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/microsoft/xbox/service/network/managers/MutedListResultContainer$MutedListResult;

    .line 760
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->lastRefreshMutedList:Ljava/util/Date;

    if-eqz p1, :cond_0

    .line 762
    iput-object p1, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->mutedList:Lcom/microsoft/xbox/service/network/managers/MutedListResultContainer$MutedListResult;

    goto :goto_0

    .line 764
    :cond_0
    new-instance p1, Lcom/microsoft/xbox/service/network/managers/MutedListResultContainer$MutedListResult;

    invoke-direct {p1}, Lcom/microsoft/xbox/service/network/managers/MutedListResultContainer$MutedListResult;-><init>()V

    iput-object p1, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->mutedList:Lcom/microsoft/xbox/service/network/managers/MutedListResultContainer$MutedListResult;

    :cond_1
    :goto_0
    return-void
.end method

.method private onGetNeverListCompleted(Lcom/microsoft/xbox/toolkit/AsyncResult;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/xbox/toolkit/AsyncResult<",
            "Lcom/microsoft/xbox/service/network/managers/NeverListResultContainer$NeverListResult;",
            ">;)V"
        }
    .end annotation

    .line 727
    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/AsyncResult;->getStatus()Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    move-result-object v0

    sget-object v1, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->SUCCESS:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    if-ne v0, v1, :cond_1

    .line 728
    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/AsyncResult;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/microsoft/xbox/service/network/managers/NeverListResultContainer$NeverListResult;

    .line 729
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->lastRefreshNeverList:Ljava/util/Date;

    if-eqz p1, :cond_0

    .line 731
    iput-object p1, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->neverList:Lcom/microsoft/xbox/service/network/managers/NeverListResultContainer$NeverListResult;

    goto :goto_0

    .line 733
    :cond_0
    new-instance p1, Lcom/microsoft/xbox/service/network/managers/NeverListResultContainer$NeverListResult;

    invoke-direct {p1}, Lcom/microsoft/xbox/service/network/managers/NeverListResultContainer$NeverListResult;-><init>()V

    iput-object p1, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->neverList:Lcom/microsoft/xbox/service/network/managers/NeverListResultContainer$NeverListResult;

    :cond_1
    :goto_0
    return-void
.end method

.method private onGetPeopleHubPersonDataCompleted(Lcom/microsoft/xbox/toolkit/AsyncResult;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/xbox/toolkit/AsyncResult<",
            "Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPersonSummary;",
            ">;)V"
        }
    .end annotation

    .line 522
    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/AsyncResult;->getStatus()Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    move-result-object v0

    sget-object v1, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->SUCCESS:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    if-ne v0, v1, :cond_0

    .line 523
    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/AsyncResult;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPersonSummary;

    iput-object p1, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->peopleHubPersonSummary:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPersonSummary;

    :cond_0
    return-void
.end method

.method private onGetPeopleHubRecommendationsCompleted(Lcom/microsoft/xbox/toolkit/AsyncResult;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/xbox/toolkit/AsyncResult<",
            "Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPeopleSummary;",
            ">;)V"
        }
    .end annotation

    .line 792
    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/AsyncResult;->getStatus()Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    move-result-object v0

    sget-object v1, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->SUCCESS:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    if-ne v0, v1, :cond_1

    .line 793
    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/AsyncResult;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPeopleSummary;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 795
    iput-object p1, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->peopleHubRecommendationsRaw:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPeopleSummary;

    .line 796
    iput-object p1, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->peopleHubRecommendations:Ljava/util/ArrayList;

    return-void

    .line 799
    :cond_0
    iput-object p1, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->peopleHubRecommendationsRaw:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPeopleSummary;

    .line 801
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iput-object p1, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->lastRefreshPeopleHubRecommendations:Ljava/util/Date;

    :cond_1
    return-void
.end method

.method private onGetPresenceDataCompleted(Lcom/microsoft/xbox/toolkit/AsyncResult;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/xbox/toolkit/AsyncResult<",
            "Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$UserPresence;",
            ">;)V"
        }
    .end annotation

    .line 720
    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/AsyncResult;->getStatus()Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    move-result-object v0

    sget-object v1, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->SUCCESS:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    if-ne v0, v1, :cond_0

    .line 721
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->lastRefreshPresenceData:Ljava/util/Date;

    .line 722
    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/AsyncResult;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$UserPresence;

    iput-object p1, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->presenceData:Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$UserPresence;

    :cond_0
    return-void
.end method

.method private onGetProfileSummaryCompleted(Lcom/microsoft/xbox/toolkit/AsyncResult;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/xbox/toolkit/AsyncResult<",
            "Lcom/microsoft/xbox/service/network/managers/ProfileSummaryResultContainer$ProfileSummaryResult;",
            ">;)V"
        }
    .end annotation

    .line 690
    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/AsyncResult;->getStatus()Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    move-result-object v0

    sget-object v1, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->SUCCESS:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    if-ne v0, v1, :cond_0

    .line 691
    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/AsyncResult;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/microsoft/xbox/service/network/managers/ProfileSummaryResultContainer$ProfileSummaryResult;

    .line 692
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->lastRefreshProfileSummary:Ljava/util/Date;

    .line 693
    iput-object p1, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->profileSummary:Lcom/microsoft/xbox/service/network/managers/ProfileSummaryResultContainer$ProfileSummaryResult;

    .line 695
    new-instance p1, Lcom/microsoft/xbox/toolkit/AsyncResult;

    new-instance v0, Lcom/microsoft/xbox/service/model/UpdateData;

    sget-object v1, Lcom/microsoft/xbox/service/model/UpdateType;->ActivityAlertsSummary:Lcom/microsoft/xbox/service/model/UpdateType;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/service/model/UpdateData;-><init>(Lcom/microsoft/xbox/service/model/UpdateType;Z)V

    const/4 v1, 0x0

    invoke-direct {p1, v0, p0, v1}, Lcom/microsoft/xbox/toolkit/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/xbox/toolkit/XLEException;)V

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/service/model/ProfileModel;->notifyObservers(Lcom/microsoft/xbox/toolkit/AsyncResult;)V

    :cond_0
    return-void
.end method

.method private onPutUserToMutedListCompleted(Lcom/microsoft/xbox/toolkit/AsyncResult;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/xbox/toolkit/AsyncResult<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 770
    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/AsyncResult;->getStatus()Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    move-result-object v0

    sget-object v1, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->SUCCESS:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/AsyncResult;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 771
    iget-object p1, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->mutedList:Lcom/microsoft/xbox/service/network/managers/MutedListResultContainer$MutedListResult;

    if-nez p1, :cond_0

    .line 772
    new-instance p1, Lcom/microsoft/xbox/service/network/managers/MutedListResultContainer$MutedListResult;

    invoke-direct {p1}, Lcom/microsoft/xbox/service/network/managers/MutedListResultContainer$MutedListResult;-><init>()V

    iput-object p1, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->mutedList:Lcom/microsoft/xbox/service/network/managers/MutedListResultContainer$MutedListResult;

    .line 774
    :cond_0
    iget-object p1, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->mutedList:Lcom/microsoft/xbox/service/network/managers/MutedListResultContainer$MutedListResult;

    invoke-virtual {p1, p2}, Lcom/microsoft/xbox/service/network/managers/MutedListResultContainer$MutedListResult;->contains(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 775
    iget-object p1, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->mutedList:Lcom/microsoft/xbox/service/network/managers/MutedListResultContainer$MutedListResult;

    invoke-virtual {p1, p2}, Lcom/microsoft/xbox/service/network/managers/MutedListResultContainer$MutedListResult;->add(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private onPutUserToNeverListCompleted(Lcom/microsoft/xbox/toolkit/AsyncResult;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/xbox/toolkit/AsyncResult<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 739
    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/AsyncResult;->getStatus()Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    move-result-object v0

    sget-object v1, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->SUCCESS:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/AsyncResult;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 740
    iget-object p1, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->neverList:Lcom/microsoft/xbox/service/network/managers/NeverListResultContainer$NeverListResult;

    if-nez p1, :cond_0

    .line 741
    new-instance p1, Lcom/microsoft/xbox/service/network/managers/NeverListResultContainer$NeverListResult;

    invoke-direct {p1}, Lcom/microsoft/xbox/service/network/managers/NeverListResultContainer$NeverListResult;-><init>()V

    iput-object p1, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->neverList:Lcom/microsoft/xbox/service/network/managers/NeverListResultContainer$NeverListResult;

    .line 743
    :cond_0
    iget-object p1, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->neverList:Lcom/microsoft/xbox/service/network/managers/NeverListResultContainer$NeverListResult;

    invoke-virtual {p1, p2}, Lcom/microsoft/xbox/service/network/managers/NeverListResultContainer$NeverListResult;->contains(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 744
    iget-object p1, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->neverList:Lcom/microsoft/xbox/service/network/managers/NeverListResultContainer$NeverListResult;

    invoke-virtual {p1, p2}, Lcom/microsoft/xbox/service/network/managers/NeverListResultContainer$NeverListResult;->add(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private onRemoveUserFromFavoriteListCompleted(Lcom/microsoft/xbox/toolkit/AsyncResult;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/xbox/toolkit/AsyncResult<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 614
    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/AsyncResult;->getStatus()Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    move-result-object v0

    sget-object v1, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->SUCCESS:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    if-ne v0, v1, :cond_4

    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/AsyncResult;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 615
    iget-object p1, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->following:Ljava/util/ArrayList;

    if-nez p1, :cond_0

    return-void

    .line 619
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 620
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->following:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/xbox/service/model/FollowersData;

    .line 621
    iget-object v2, v1, Lcom/microsoft/xbox/service/model/FollowersData;->xuid:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    .line 622
    iput-boolean v2, v1, Lcom/microsoft/xbox/service/model/FollowersData;->isFavorite:Z

    .line 625
    :cond_2
    iget-boolean v2, v1, Lcom/microsoft/xbox/service/model/FollowersData;->isFavorite:Z

    if-eqz v2, :cond_1

    .line 626
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 630
    :cond_3
    iput-object p1, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->favorites:Ljava/util/ArrayList;

    .line 632
    new-instance p1, Lcom/microsoft/xbox/toolkit/AsyncResult;

    new-instance p2, Lcom/microsoft/xbox/service/model/UpdateData;

    sget-object v0, Lcom/microsoft/xbox/service/model/UpdateType;->UpdateFriend:Lcom/microsoft/xbox/service/model/UpdateType;

    const/4 v1, 0x1

    invoke-direct {p2, v0, v1}, Lcom/microsoft/xbox/service/model/UpdateData;-><init>(Lcom/microsoft/xbox/service/model/UpdateType;Z)V

    const/4 v0, 0x0

    invoke-direct {p1, p2, p0, v0}, Lcom/microsoft/xbox/toolkit/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/xbox/toolkit/XLEException;)V

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/service/model/ProfileModel;->notifyObservers(Lcom/microsoft/xbox/toolkit/AsyncResult;)V

    :cond_4
    return-void
.end method

.method private onRemoveUserFromFollowingListCompleted(Lcom/microsoft/xbox/toolkit/AsyncResult;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/xbox/toolkit/AsyncResult<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 700
    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/AsyncResult;->getStatus()Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    move-result-object v0

    sget-object v1, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->SUCCESS:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/AsyncResult;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->following:Ljava/util/ArrayList;

    if-eqz p1, :cond_2

    .line 701
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 702
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 703
    iget-object v1, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->following:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/microsoft/xbox/service/model/FollowersData;

    .line 704
    iget-object v3, v2, Lcom/microsoft/xbox/service/model/FollowersData;->xuid:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 705
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 706
    iget-boolean v3, v2, Lcom/microsoft/xbox/service/model/FollowersData;->isFavorite:Z

    if-eqz v3, :cond_0

    .line 707
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 712
    :cond_1
    iput-object p1, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->following:Ljava/util/ArrayList;

    .line 713
    iput-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->favorites:Ljava/util/ArrayList;

    .line 715
    new-instance p1, Lcom/microsoft/xbox/toolkit/AsyncResult;

    new-instance p2, Lcom/microsoft/xbox/service/model/UpdateData;

    sget-object v0, Lcom/microsoft/xbox/service/model/UpdateType;->UpdateFriend:Lcom/microsoft/xbox/service/model/UpdateType;

    const/4 v1, 0x1

    invoke-direct {p2, v0, v1}, Lcom/microsoft/xbox/service/model/UpdateData;-><init>(Lcom/microsoft/xbox/service/model/UpdateType;Z)V

    const/4 v0, 0x0

    invoke-direct {p1, p2, p0, v0}, Lcom/microsoft/xbox/toolkit/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/xbox/toolkit/XLEException;)V

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/service/model/ProfileModel;->notifyObservers(Lcom/microsoft/xbox/toolkit/AsyncResult;)V

    :cond_2
    return-void
.end method

.method private onRemoveUserFromMutedListCompleted(Lcom/microsoft/xbox/toolkit/AsyncResult;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/xbox/toolkit/AsyncResult<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 781
    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/AsyncResult;->getStatus()Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    move-result-object v0

    sget-object v1, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->SUCCESS:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/AsyncResult;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 782
    iget-object p1, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->mutedList:Lcom/microsoft/xbox/service/network/managers/MutedListResultContainer$MutedListResult;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Lcom/microsoft/xbox/service/network/managers/MutedListResultContainer$MutedListResult;->contains(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 783
    iget-object p1, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->mutedList:Lcom/microsoft/xbox/service/network/managers/MutedListResultContainer$MutedListResult;

    invoke-virtual {p1, p2}, Lcom/microsoft/xbox/service/network/managers/MutedListResultContainer$MutedListResult;->remove(Ljava/lang/String;)Lcom/microsoft/xbox/service/network/managers/MutedListResultContainer$MutedUser;

    :cond_0
    return-void
.end method

.method private onRemoveUserFromNeverListCompleted(Lcom/microsoft/xbox/toolkit/AsyncResult;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/xbox/toolkit/AsyncResult<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 750
    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/AsyncResult;->getStatus()Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    move-result-object v0

    sget-object v1, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->SUCCESS:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/AsyncResult;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 751
    iget-object p1, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->neverList:Lcom/microsoft/xbox/service/network/managers/NeverListResultContainer$NeverListResult;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Lcom/microsoft/xbox/service/network/managers/NeverListResultContainer$NeverListResult;->contains(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 752
    iget-object p1, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->neverList:Lcom/microsoft/xbox/service/network/managers/NeverListResultContainer$NeverListResult;

    invoke-virtual {p1, p2}, Lcom/microsoft/xbox/service/network/managers/NeverListResultContainer$NeverListResult;->remove(Ljava/lang/String;)Lcom/microsoft/xbox/service/network/managers/NeverListResultContainer$NeverUser;

    :cond_0
    return-void
.end method

.method private onRemoveUserFromShareIdentityCompleted(Lcom/microsoft/xbox/toolkit/AsyncResult;Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/xbox/toolkit/AsyncResult<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 536
    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/AsyncResult;->getStatus()Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    move-result-object v0

    sget-object v1, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->SUCCESS:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    if-ne v0, v1, :cond_5

    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/AsyncResult;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 537
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 538
    invoke-static {v0}, Lcom/microsoft/xbox/service/model/ProfileModel;->getProfileModel(Ljava/lang/String;)Lcom/microsoft/xbox/service/model/ProfileModel;

    move-result-object v0

    .line 539
    invoke-virtual {v0}, Lcom/microsoft/xbox/service/model/ProfileModel;->getProfileSummaryData()Lcom/microsoft/xbox/service/network/managers/ProfileSummaryResultContainer$ProfileSummaryResult;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 541
    iput-boolean v1, v0, Lcom/microsoft/xbox/service/network/managers/ProfileSummaryResultContainer$ProfileSummaryResult;->hasCallerMarkedTargetAsIdentityShared:Z

    goto :goto_0

    .line 546
    :cond_1
    invoke-static {}, Lcom/microsoft/xbox/service/model/ProfileModel;->getMeProfileModel()Lcom/microsoft/xbox/service/model/ProfileModel;

    move-result-object p1

    .line 547
    invoke-virtual {p1}, Lcom/microsoft/xbox/service/model/ProfileModel;->getProfileFollowingSummaryData()Ljava/util/ArrayList;

    move-result-object v0

    .line 548
    invoke-static {v0}, Lcom/microsoft/xbox/xle/app/XLEUtil;->isNullOrEmpty(Ljava/lang/Iterable;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 549
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 550
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/microsoft/xbox/service/network/managers/FollowingSummaryResult$People;

    .line 551
    iget-object v5, v4, Lcom/microsoft/xbox/service/network/managers/FollowingSummaryResult$People;->xuid:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 552
    iput-boolean v1, v4, Lcom/microsoft/xbox/service/network/managers/FollowingSummaryResult$People;->isIdentityShared:Z

    goto :goto_1

    .line 557
    :cond_4
    invoke-virtual {p1, v0}, Lcom/microsoft/xbox/service/model/ProfileModel;->setProfileFollowingSummaryData(Ljava/util/ArrayList;)V

    :cond_5
    return-void
.end method

.method private onSubmitFeedbackForUserCompleted(Lcom/microsoft/xbox/toolkit/AsyncResult;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/xbox/toolkit/AsyncResult<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public static reset()V
    .locals 2

    .line 386
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    .line 387
    sget-object v0, Lcom/microsoft/xbox/service/model/ProfileModel;->profileModelCache:Lcom/microsoft/xbox/toolkit/ThreadSafeFixedSizeHashtable;

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/ThreadSafeFixedSizeHashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 388
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/xbox/service/model/ProfileModel;

    invoke-virtual {v1}, Lcom/microsoft/xbox/service/model/ProfileModel;->clearObserver()V

    goto :goto_1

    .line 390
    :cond_1
    sget-object v0, Lcom/microsoft/xbox/service/model/ProfileModel;->meProfileInstance:Lcom/microsoft/xbox/service/model/ProfileModel;

    if-eqz v0, :cond_2

    .line 391
    invoke-virtual {v0}, Lcom/microsoft/xbox/service/model/ProfileModel;->clearObserver()V

    const/4 v0, 0x0

    .line 392
    sput-object v0, Lcom/microsoft/xbox/service/model/ProfileModel;->meProfileInstance:Lcom/microsoft/xbox/service/model/ProfileModel;

    .line 394
    :cond_2
    new-instance v0, Lcom/microsoft/xbox/toolkit/ThreadSafeFixedSizeHashtable;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lcom/microsoft/xbox/toolkit/ThreadSafeFixedSizeHashtable;-><init>(I)V

    sput-object v0, Lcom/microsoft/xbox/service/model/ProfileModel;->profileModelCache:Lcom/microsoft/xbox/toolkit/ThreadSafeFixedSizeHashtable;

    return-void
.end method

.method private updateWithProfileData(Lcom/microsoft/xbox/toolkit/AsyncResult;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/xbox/toolkit/AsyncResult<",
            "Lcom/microsoft/xbox/service/model/ProfileData;",
            ">;Z)V"
        }
    .end annotation

    .line 853
    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/service/model/ProfileModel;->updateWithNewData(Lcom/microsoft/xbox/toolkit/AsyncResult;)V

    if-eqz p2, :cond_0

    .line 860
    invoke-virtual {p0}, Lcom/microsoft/xbox/service/model/ProfileModel;->invalidateData()V

    :cond_0
    return-void
.end method


# virtual methods
.method public addUserToFavoriteList(ZLjava/lang/String;)Lcom/microsoft/xbox/toolkit/AsyncResult;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            ")",
            "Lcom/microsoft/xbox/toolkit/AsyncResult<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 444
    invoke-static {}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertIsNotUIThread()V

    .line 445
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->xuid:Ljava/lang/String;

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    .line 446
    invoke-static {p2}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    .line 447
    iget-wide v2, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->lifetime:J

    iget-object v5, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->addingUserToFavoriteListLoadingStatus:Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

    new-instance v6, Lcom/microsoft/xbox/service/model/ProfileModel$AddUserToFavoriteListRunner;

    invoke-direct {v6, p0, p0, p2}, Lcom/microsoft/xbox/service/model/ProfileModel$AddUserToFavoriteListRunner;-><init>(Lcom/microsoft/xbox/service/model/ProfileModel;Lcom/microsoft/xbox/service/model/ProfileModel;Ljava/lang/String;)V

    const/4 v4, 0x0

    move v1, p1

    invoke-static/range {v1 .. v6}, Lcom/microsoft/xbox/toolkit/DataLoadUtil;->Load(ZJLjava/util/Date;Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;)Lcom/microsoft/xbox/toolkit/AsyncResult;

    move-result-object p1

    return-object p1
.end method

.method public addUserToFollowingList(ZLjava/lang/String;)Lcom/microsoft/xbox/toolkit/AsyncResult;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            ")",
            "Lcom/microsoft/xbox/toolkit/AsyncResult<",
            "Lcom/microsoft/xbox/service/network/managers/AddFollowingUserResponseContainer$AddFollowingUserResponse;",
            ">;"
        }
    .end annotation

    .line 458
    invoke-static {}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertIsNotUIThread()V

    .line 459
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->xuid:Ljava/lang/String;

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    .line 460
    invoke-static {p2}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    .line 461
    iget-wide v2, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->lifetime:J

    iget-object v5, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->addingUserToFollowingListLoadingStatus:Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

    new-instance v6, Lcom/microsoft/xbox/service/model/ProfileModel$AddUserToFollowingListRunner;

    invoke-direct {v6, p0, p0, p2}, Lcom/microsoft/xbox/service/model/ProfileModel$AddUserToFollowingListRunner;-><init>(Lcom/microsoft/xbox/service/model/ProfileModel;Lcom/microsoft/xbox/service/model/ProfileModel;Ljava/lang/String;)V

    const/4 v4, 0x0

    move v1, p1

    invoke-static/range {v1 .. v6}, Lcom/microsoft/xbox/toolkit/DataLoadUtil;->Load(ZJLjava/util/Date;Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;)Lcom/microsoft/xbox/toolkit/AsyncResult;

    move-result-object p1

    return-object p1
.end method

.method public addUserToMutedList(ZLjava/lang/String;)Lcom/microsoft/xbox/toolkit/AsyncResult;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            ")",
            "Lcom/microsoft/xbox/toolkit/AsyncResult<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 502
    invoke-static {}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertIsNotUIThread()V

    .line 503
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->xuid:Ljava/lang/String;

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    .line 504
    invoke-static {p2}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    .line 505
    iget-wide v2, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->lifetime:J

    iget-object v5, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->addingUserToMutedListLoadingStatus:Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

    new-instance v6, Lcom/microsoft/xbox/service/model/ProfileModel$PutUserToMutedListRunner;

    iget-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->xuid:Ljava/lang/String;

    invoke-direct {v6, p0, p0, v0, p2}, Lcom/microsoft/xbox/service/model/ProfileModel$PutUserToMutedListRunner;-><init>(Lcom/microsoft/xbox/service/model/ProfileModel;Lcom/microsoft/xbox/service/model/ProfileModel;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    move v1, p1

    invoke-static/range {v1 .. v6}, Lcom/microsoft/xbox/toolkit/DataLoadUtil;->Load(ZJLjava/util/Date;Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;)Lcom/microsoft/xbox/toolkit/AsyncResult;

    move-result-object p1

    return-object p1
.end method

.method public addUserToNeverList(ZLjava/lang/String;)Lcom/microsoft/xbox/toolkit/AsyncResult;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            ")",
            "Lcom/microsoft/xbox/toolkit/AsyncResult<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 484
    invoke-static {}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertIsNotUIThread()V

    .line 485
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->xuid:Ljava/lang/String;

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    .line 486
    invoke-static {p2}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    .line 487
    iget-wide v2, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->lifetime:J

    iget-object v5, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->addingUserToNeverListLoadingStatus:Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

    new-instance v6, Lcom/microsoft/xbox/service/model/ProfileModel$PutUserToNeverListRunner;

    iget-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->xuid:Ljava/lang/String;

    invoke-direct {v6, p0, p0, v0, p2}, Lcom/microsoft/xbox/service/model/ProfileModel$PutUserToNeverListRunner;-><init>(Lcom/microsoft/xbox/service/model/ProfileModel;Lcom/microsoft/xbox/service/model/ProfileModel;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    move v1, p1

    invoke-static/range {v1 .. v6}, Lcom/microsoft/xbox/toolkit/DataLoadUtil;->Load(ZJLjava/util/Date;Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;)Lcom/microsoft/xbox/toolkit/AsyncResult;

    move-result-object p1

    return-object p1
.end method

.method public addUserToShareIdentity(ZLjava/util/ArrayList;)Lcom/microsoft/xbox/toolkit/AsyncResult;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/microsoft/xbox/toolkit/AsyncResult<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 438
    invoke-static {}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertIsNotUIThread()V

    .line 439
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->xuid:Ljava/lang/String;

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    .line 440
    iget-wide v2, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->lifetime:J

    iget-object v5, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->addingUserToShareIdentityListLoadingStatus:Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

    new-instance v6, Lcom/microsoft/xbox/service/model/ProfileModel$AddUsersToShareIdentityListRunner;

    invoke-direct {v6, p0, p0, p2}, Lcom/microsoft/xbox/service/model/ProfileModel$AddUsersToShareIdentityListRunner;-><init>(Lcom/microsoft/xbox/service/model/ProfileModel;Lcom/microsoft/xbox/service/model/ProfileModel;Ljava/util/ArrayList;)V

    const/4 v4, 0x0

    move v1, p1

    invoke-static/range {v1 .. v6}, Lcom/microsoft/xbox/toolkit/DataLoadUtil;->Load(ZJLjava/util/Date;Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;)Lcom/microsoft/xbox/toolkit/AsyncResult;

    move-result-object p1

    return-object p1
.end method

.method public getAccountTier()Ljava/lang/String;
    .locals 1

    .line 191
    sget-object v0, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->AccountTier:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    invoke-direct {p0, v0}, Lcom/microsoft/xbox/service/model/ProfileModel;->getProfileSettingValue(Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAddUserToFollowingResult()Lcom/microsoft/xbox/service/network/managers/AddFollowingUserResponseContainer$AddFollowingUserResponse;
    .locals 1

    .line 378
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->addUserToFollowingResponse:Lcom/microsoft/xbox/service/network/managers/AddFollowingUserResponseContainer$AddFollowingUserResponse;

    return-object v0
.end method

.method public getAppDisplayName()Ljava/lang/String;
    .locals 1

    .line 195
    sget-object v0, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->AppDisplayName:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    invoke-direct {p0, v0}, Lcom/microsoft/xbox/service/model/ProfileModel;->getProfileSettingValue(Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBio()Ljava/lang/String;
    .locals 1

    .line 207
    sget-object v0, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->Bio:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    invoke-direct {p0, v0}, Lcom/microsoft/xbox/service/model/ProfileModel;->getProfileSettingValue(Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFavorites()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/microsoft/xbox/service/model/FollowersData;",
            ">;"
        }
    .end annotation

    .line 370
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->favorites:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getFollowingData()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/microsoft/xbox/service/model/FollowersData;",
            ">;"
        }
    .end annotation

    .line 225
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->following:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getGamerPicImageUrl()Ljava/lang/String;
    .locals 1

    .line 229
    invoke-direct {p0}, Lcom/microsoft/xbox/service/model/ProfileModel;->getProfileImageUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGamerScore()Ljava/lang/String;
    .locals 1

    .line 199
    sget-object v0, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->Gamerscore:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    invoke-direct {p0, v0}, Lcom/microsoft/xbox/service/model/ProfileModel;->getProfileSettingValue(Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGamerTag()Ljava/lang/String;
    .locals 1

    .line 314
    sget-object v0, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->Gamertag:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    invoke-direct {p0, v0}, Lcom/microsoft/xbox/service/model/ProfileModel;->getProfileSettingValue(Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .line 203
    sget-object v0, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->Location:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    invoke-direct {p0, v0}, Lcom/microsoft/xbox/service/model/ProfileModel;->getProfileSettingValue(Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaturityLevel()I
    .locals 1

    .line 341
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->profileUser:Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$ProfileUser;

    if-eqz v0, :cond_0

    .line 342
    invoke-virtual {v0}, Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$ProfileUser;->getMaturityLevel()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getMutedList()Lcom/microsoft/xbox/service/network/managers/MutedListResultContainer$MutedListResult;
    .locals 1

    .line 333
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->mutedList:Lcom/microsoft/xbox/service/network/managers/MutedListResultContainer$MutedListResult;

    return-object v0
.end method

.method public getNeverListData()Lcom/microsoft/xbox/service/network/managers/NeverListResultContainer$NeverListResult;
    .locals 1

    .line 329
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->neverList:Lcom/microsoft/xbox/service/network/managers/NeverListResultContainer$NeverListResult;

    return-object v0
.end method

.method public getNumberOfFollowers()I
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->profileSummary:Lcom/microsoft/xbox/service/network/managers/ProfileSummaryResultContainer$ProfileSummaryResult;

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/microsoft/xbox/service/network/managers/ProfileSummaryResultContainer$ProfileSummaryResult;->targetFollowerCount:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getNumberOfFollowing()I
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->profileSummary:Lcom/microsoft/xbox/service/network/managers/ProfileSummaryResultContainer$ProfileSummaryResult;

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/microsoft/xbox/service/network/managers/ProfileSummaryResultContainer$ProfileSummaryResult;->targetFollowingCount:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getPeopleHubPersonSummary()Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPersonSummary;
    .locals 1

    .line 374
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->peopleHubPersonSummary:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPersonSummary;

    return-object v0
.end method

.method public getPeopleHubRecommendationsRawData()Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPeopleSummary;
    .locals 1

    .line 382
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->peopleHubRecommendationsRaw:Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPeopleSummary;

    return-object v0
.end method

.method public getPreferedColor()I
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->profileUser:Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$ProfileUser;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$ProfileUser;->colors:Lcom/microsoft/xbox/service/network/managers/ProfilePreferredColor;

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->profileUser:Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$ProfileUser;

    iget-object v0, v0, Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$ProfileUser;->colors:Lcom/microsoft/xbox/service/network/managers/ProfilePreferredColor;

    invoke-virtual {v0}, Lcom/microsoft/xbox/service/network/managers/ProfilePreferredColor;->getPrimaryColor()I

    move-result v0

    return v0

    .line 244
    :cond_0
    invoke-static {}, Lcom/microsoft/xbox/service/model/ProfileModel;->getDefaultColor()I

    move-result v0

    return v0
.end method

.method public getPresenceData()Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$UserPresence;
    .locals 1

    .line 337
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->presenceData:Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$UserPresence;

    return-object v0
.end method

.method public getProfileFollowingSummaryData()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/microsoft/xbox/service/network/managers/FollowingSummaryResult$People;",
            ">;"
        }
    .end annotation

    .line 528
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->followingSummaries:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getProfileSummaryData()Lcom/microsoft/xbox/service/network/managers/ProfileSummaryResultContainer$ProfileSummaryResult;
    .locals 1

    .line 306
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->profileSummary:Lcom/microsoft/xbox/service/network/managers/ProfileSummaryResultContainer$ProfileSummaryResult;

    return-object v0
.end method

.method public getRealName()Ljava/lang/String;
    .locals 1

    .line 211
    iget-boolean v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->shareRealName:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->RealName:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    invoke-direct {p0, v0}, Lcom/microsoft/xbox/service/model/ProfileModel;->getProfileSettingValue(Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getShareRealNameStatus()Ljava/lang/String;
    .locals 1

    .line 310
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->shareRealNameStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getWatermarkUris()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/net/URI;",
            ">;"
        }
    .end annotation

    .line 249
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 252
    sget-object v1, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->TenureLevel:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    invoke-direct {p0, v1}, Lcom/microsoft/xbox/service/model/ProfileModel;->getProfileSettingValue(Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;)Ljava/lang/String;

    move-result-object v1

    .line 253
    invoke-static {v1}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 255
    :try_start_0
    new-instance v3, Ljava/net/URI;

    invoke-static {}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->Instance()Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->getTenureWatermarkUrlFormat()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 257
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to create URI for tenure watermark: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URISyntaxException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/microsoft/xbox/toolkit/XLEAssert;->fail(Ljava/lang/String;)V

    .line 262
    :cond_1
    :goto_0
    sget-object v1, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->Watermarks:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    invoke-direct {p0, v1}, Lcom/microsoft/xbox/service/model/ProfileModel;->getProfileSettingValue(Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;)Ljava/lang/String;

    move-result-object v1

    .line 263
    invoke-static {v1}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 264
    const-string v2, "\\|"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 266
    :try_start_1
    new-instance v5, Ljava/net/URI;

    invoke-static {}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->Instance()Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->getWatermarkUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v5

    .line 268
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Failed to create URI for watermark "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v5}, Ljava/net/URISyntaxException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/microsoft/xbox/toolkit/XLEAssert;->fail(Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method public getXuid()Ljava/lang/String;
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->xuid:Ljava/lang/String;

    return-object v0
.end method

.method public hasCallerMarkedTargetAsFavorite()Z
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->profileSummary:Lcom/microsoft/xbox/service/network/managers/ProfileSummaryResultContainer$ProfileSummaryResult;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/microsoft/xbox/service/network/managers/ProfileSummaryResultContainer$ProfileSummaryResult;->hasCallerMarkedTargetAsFavorite:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasCallerMarkedTargetAsIdentityShared()Z
    .locals 1

    .line 293
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->profileSummary:Lcom/microsoft/xbox/service/network/managers/ProfileSummaryResultContainer$ProfileSummaryResult;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/microsoft/xbox/service/network/managers/ProfileSummaryResultContainer$ProfileSummaryResult;->hasCallerMarkedTargetAsIdentityShared:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isCallerFollowingTarget()Z
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->profileSummary:Lcom/microsoft/xbox/service/network/managers/ProfileSummaryResultContainer$ProfileSummaryResult;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/microsoft/xbox/service/network/managers/ProfileSummaryResultContainer$ProfileSummaryResult;->isCallerFollowingTarget:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isMeProfile()Z
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->xuid:Ljava/lang/String;

    invoke-static {v0}, Lcom/microsoft/xbox/service/model/ProfileModel;->isMeXuid(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isTargetFollowingCaller()Z
    .locals 1

    .line 285
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->profileSummary:Lcom/microsoft/xbox/service/network/managers/ProfileSummaryResultContainer$ProfileSummaryResult;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/microsoft/xbox/service/network/managers/ProfileSummaryResultContainer$ProfileSummaryResult;->isTargetFollowingCaller:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public loadAsync(Z)V
    .locals 4

    .line 406
    sget-object v0, Lcom/microsoft/xbox/service/model/UpdateType;->MeProfileData:Lcom/microsoft/xbox/service/model/UpdateType;

    new-instance v1, Lcom/microsoft/xbox/service/model/ProfileModel$GetProfileRunner;

    iget-object v2, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->xuid:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v1, p0, p0, v2, v3}, Lcom/microsoft/xbox/service/model/ProfileModel$GetProfileRunner;-><init>(Lcom/microsoft/xbox/service/model/ProfileModel;Lcom/microsoft/xbox/service/model/ProfileModel;Ljava/lang/String;Z)V

    invoke-virtual {p0, p1, v0, v1}, Lcom/microsoft/xbox/service/model/ProfileModel;->loadInternal(ZLcom/microsoft/xbox/service/model/UpdateType;Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;)V

    return-void
.end method

.method public loadPeopleHubRecommendations(Z)Lcom/microsoft/xbox/toolkit/AsyncResult;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/microsoft/xbox/toolkit/AsyncResult<",
            "Lcom/microsoft/xbox/service/network/managers/IPeopleHubResult$PeopleHubPeopleSummary;",
            ">;"
        }
    .end annotation

    .line 426
    invoke-static {}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertIsNotUIThread()V

    .line 427
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->xuid:Ljava/lang/String;

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    .line 428
    iget-object v4, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->lastRefreshPeopleHubRecommendations:Ljava/util/Date;

    new-instance v5, Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

    invoke-direct {v5}, Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;-><init>()V

    new-instance v6, Lcom/microsoft/xbox/service/model/ProfileModel$GetPeopleHubRecommendationRunner;

    iget-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->xuid:Ljava/lang/String;

    invoke-direct {v6, p0, p0, v0}, Lcom/microsoft/xbox/service/model/ProfileModel$GetPeopleHubRecommendationRunner;-><init>(Lcom/microsoft/xbox/service/model/ProfileModel;Lcom/microsoft/xbox/service/model/ProfileModel;Ljava/lang/String;)V

    const-wide/32 v2, 0x2bf20

    move v1, p1

    invoke-static/range {v1 .. v6}, Lcom/microsoft/xbox/toolkit/DataLoadUtil;->Load(ZJLjava/util/Date;Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;)Lcom/microsoft/xbox/toolkit/AsyncResult;

    move-result-object p1

    return-object p1
.end method

.method public loadPresenceData(Z)Lcom/microsoft/xbox/toolkit/AsyncResult;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/microsoft/xbox/toolkit/AsyncResult<",
            "Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$UserPresence;",
            ">;"
        }
    .end annotation

    .line 418
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->presenceDataLoadingStatus:Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

    if-nez v0, :cond_0

    .line 419
    new-instance v0, Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

    invoke-direct {v0}, Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;-><init>()V

    iput-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->presenceDataLoadingStatus:Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

    .line 422
    :cond_0
    iget-object v4, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->lastRefreshPresenceData:Ljava/util/Date;

    iget-object v5, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->presenceDataLoadingStatus:Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

    new-instance v6, Lcom/microsoft/xbox/service/model/ProfileModel$GetPresenceDataRunner;

    iget-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->xuid:Ljava/lang/String;

    invoke-direct {v6, p0, p0, v0}, Lcom/microsoft/xbox/service/model/ProfileModel$GetPresenceDataRunner;-><init>(Lcom/microsoft/xbox/service/model/ProfileModel;Lcom/microsoft/xbox/service/model/ProfileModel;Ljava/lang/String;)V

    const-wide/32 v2, 0x2bf20

    move v1, p1

    invoke-static/range {v1 .. v6}, Lcom/microsoft/xbox/toolkit/DataLoadUtil;->Load(ZJLjava/util/Date;Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;)Lcom/microsoft/xbox/toolkit/AsyncResult;

    move-result-object p1

    return-object p1
.end method

.method public loadProfileSummary(Z)Lcom/microsoft/xbox/toolkit/AsyncResult;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/microsoft/xbox/toolkit/AsyncResult<",
            "Lcom/microsoft/xbox/service/network/managers/ProfileSummaryResultContainer$ProfileSummaryResult;",
            ">;"
        }
    .end annotation

    .line 465
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->profileSummaryLoadingStatus:Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

    if-nez v0, :cond_0

    .line 466
    new-instance v0, Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

    invoke-direct {v0}, Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;-><init>()V

    iput-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->profileSummaryLoadingStatus:Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

    .line 469
    :cond_0
    iget-wide v2, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->lifetime:J

    iget-object v4, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->lastRefreshProfileSummary:Ljava/util/Date;

    iget-object v5, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->profileSummaryLoadingStatus:Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

    new-instance v6, Lcom/microsoft/xbox/service/model/ProfileModel$GetProfileSummaryRunner;

    iget-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->xuid:Ljava/lang/String;

    invoke-direct {v6, p0, p0, v0}, Lcom/microsoft/xbox/service/model/ProfileModel$GetProfileSummaryRunner;-><init>(Lcom/microsoft/xbox/service/model/ProfileModel;Lcom/microsoft/xbox/service/model/ProfileModel;Ljava/lang/String;)V

    move v1, p1

    invoke-static/range {v1 .. v6}, Lcom/microsoft/xbox/toolkit/DataLoadUtil;->Load(ZJLjava/util/Date;Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;)Lcom/microsoft/xbox/toolkit/AsyncResult;

    move-result-object p1

    return-object p1
.end method

.method public loadSync(Z)Lcom/microsoft/xbox/toolkit/AsyncResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/microsoft/xbox/toolkit/AsyncResult<",
            "Lcom/microsoft/xbox/service/model/ProfileData;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 410
    invoke-virtual {p0, p1, v0}, Lcom/microsoft/xbox/service/model/ProfileModel;->loadSync(ZZ)Lcom/microsoft/xbox/toolkit/AsyncResult;

    move-result-object p1

    return-object p1
.end method

.method public loadSync(ZZ)Lcom/microsoft/xbox/toolkit/AsyncResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Lcom/microsoft/xbox/toolkit/AsyncResult<",
            "Lcom/microsoft/xbox/service/model/ProfileData;",
            ">;"
        }
    .end annotation

    .line 414
    new-instance v0, Lcom/microsoft/xbox/service/model/ProfileModel$GetProfileRunner;

    iget-object v1, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->xuid:Ljava/lang/String;

    invoke-direct {v0, p0, p0, v1, p2}, Lcom/microsoft/xbox/service/model/ProfileModel$GetProfileRunner;-><init>(Lcom/microsoft/xbox/service/model/ProfileModel;Lcom/microsoft/xbox/service/model/ProfileModel;Ljava/lang/String;Z)V

    invoke-super {p0, p1, v0}, Lcom/microsoft/xbox/service/model/ModelBase;->loadData(ZLcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;)Lcom/microsoft/xbox/toolkit/AsyncResult;

    move-result-object p1

    return-object p1
.end method

.method public loadUserMutedList(Z)Lcom/microsoft/xbox/toolkit/AsyncResult;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/microsoft/xbox/toolkit/AsyncResult<",
            "Lcom/microsoft/xbox/service/network/managers/MutedListResultContainer$MutedListResult;",
            ">;"
        }
    .end annotation

    .line 498
    iget-wide v1, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->lifetime:J

    iget-object v3, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->lastRefreshMutedList:Ljava/util/Date;

    iget-object v4, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->mutedListLoadingStatus:Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

    new-instance v5, Lcom/microsoft/xbox/service/model/ProfileModel$GetMutedListRunner;

    iget-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->xuid:Ljava/lang/String;

    invoke-direct {v5, p0, p0, v0}, Lcom/microsoft/xbox/service/model/ProfileModel$GetMutedListRunner;-><init>(Lcom/microsoft/xbox/service/model/ProfileModel;Lcom/microsoft/xbox/service/model/ProfileModel;Ljava/lang/String;)V

    move v0, p1

    invoke-static/range {v0 .. v5}, Lcom/microsoft/xbox/toolkit/DataLoadUtil;->Load(ZJLjava/util/Date;Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;)Lcom/microsoft/xbox/toolkit/AsyncResult;

    move-result-object p1

    return-object p1
.end method

.method public loadUserNeverList(Z)Lcom/microsoft/xbox/toolkit/AsyncResult;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/microsoft/xbox/toolkit/AsyncResult<",
            "Lcom/microsoft/xbox/service/network/managers/NeverListResultContainer$NeverListResult;",
            ">;"
        }
    .end annotation

    .line 480
    iget-wide v1, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->lifetime:J

    iget-object v3, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->lastRefreshNeverList:Ljava/util/Date;

    iget-object v4, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->neverListLoadingStatus:Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

    new-instance v5, Lcom/microsoft/xbox/service/model/ProfileModel$GetNeverListRunner;

    iget-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->xuid:Ljava/lang/String;

    invoke-direct {v5, p0, p0, v0}, Lcom/microsoft/xbox/service/model/ProfileModel$GetNeverListRunner;-><init>(Lcom/microsoft/xbox/service/model/ProfileModel;Lcom/microsoft/xbox/service/model/ProfileModel;Ljava/lang/String;)V

    move v0, p1

    invoke-static/range {v0 .. v5}, Lcom/microsoft/xbox/toolkit/DataLoadUtil;->Load(ZJLjava/util/Date;Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;)Lcom/microsoft/xbox/toolkit/AsyncResult;

    move-result-object p1

    return-object p1
.end method

.method public removeUserFromFavoriteList(ZLjava/lang/String;)Lcom/microsoft/xbox/toolkit/AsyncResult;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            ")",
            "Lcom/microsoft/xbox/toolkit/AsyncResult<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 451
    invoke-static {}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertIsNotUIThread()V

    .line 452
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->xuid:Ljava/lang/String;

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    .line 453
    invoke-static {p2}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    .line 454
    iget-wide v2, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->lifetime:J

    iget-object v5, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->removingUserFromFavoriteListLoadingStatus:Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

    new-instance v6, Lcom/microsoft/xbox/service/model/ProfileModel$RemoveUserFromFavoriteListRunner;

    invoke-direct {v6, p0, p0, p2}, Lcom/microsoft/xbox/service/model/ProfileModel$RemoveUserFromFavoriteListRunner;-><init>(Lcom/microsoft/xbox/service/model/ProfileModel;Lcom/microsoft/xbox/service/model/ProfileModel;Ljava/lang/String;)V

    const/4 v4, 0x0

    move v1, p1

    invoke-static/range {v1 .. v6}, Lcom/microsoft/xbox/toolkit/DataLoadUtil;->Load(ZJLjava/util/Date;Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;)Lcom/microsoft/xbox/toolkit/AsyncResult;

    move-result-object p1

    return-object p1
.end method

.method public removeUserFromFollowingList(ZLjava/lang/String;)Lcom/microsoft/xbox/toolkit/AsyncResult;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            ")",
            "Lcom/microsoft/xbox/toolkit/AsyncResult<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 473
    invoke-static {}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertIsNotUIThread()V

    .line 474
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->xuid:Ljava/lang/String;

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    .line 475
    invoke-static {p2}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    .line 476
    iget-wide v2, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->lifetime:J

    iget-object v5, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->removingUserFromFollowingListLoadingStatus:Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

    new-instance v6, Lcom/microsoft/xbox/service/model/ProfileModel$RemoveUserFromFollowingListRunner;

    invoke-direct {v6, p0, p0, p2}, Lcom/microsoft/xbox/service/model/ProfileModel$RemoveUserFromFollowingListRunner;-><init>(Lcom/microsoft/xbox/service/model/ProfileModel;Lcom/microsoft/xbox/service/model/ProfileModel;Ljava/lang/String;)V

    const/4 v4, 0x0

    move v1, p1

    invoke-static/range {v1 .. v6}, Lcom/microsoft/xbox/toolkit/DataLoadUtil;->Load(ZJLjava/util/Date;Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;)Lcom/microsoft/xbox/toolkit/AsyncResult;

    move-result-object p1

    return-object p1
.end method

.method public removeUserFromMutedList(ZLjava/lang/String;)Lcom/microsoft/xbox/toolkit/AsyncResult;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            ")",
            "Lcom/microsoft/xbox/toolkit/AsyncResult<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 509
    invoke-static {}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertIsNotUIThread()V

    .line 510
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->xuid:Ljava/lang/String;

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    .line 511
    invoke-static {p2}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    .line 512
    iget-wide v2, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->lifetime:J

    iget-object v5, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->removingUserFromMutedListLoadingStatus:Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

    new-instance v6, Lcom/microsoft/xbox/service/model/ProfileModel$RemoveUserFromMutedListRunner;

    iget-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->xuid:Ljava/lang/String;

    invoke-direct {v6, p0, p0, v0, p2}, Lcom/microsoft/xbox/service/model/ProfileModel$RemoveUserFromMutedListRunner;-><init>(Lcom/microsoft/xbox/service/model/ProfileModel;Lcom/microsoft/xbox/service/model/ProfileModel;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    move v1, p1

    invoke-static/range {v1 .. v6}, Lcom/microsoft/xbox/toolkit/DataLoadUtil;->Load(ZJLjava/util/Date;Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;)Lcom/microsoft/xbox/toolkit/AsyncResult;

    move-result-object p1

    return-object p1
.end method

.method public removeUserFromNeverList(ZLjava/lang/String;)Lcom/microsoft/xbox/toolkit/AsyncResult;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            ")",
            "Lcom/microsoft/xbox/toolkit/AsyncResult<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 491
    invoke-static {}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertIsNotUIThread()V

    .line 492
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->xuid:Ljava/lang/String;

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    .line 493
    invoke-static {p2}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    .line 494
    iget-wide v2, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->lifetime:J

    iget-object v5, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->removingUserFromNeverListLoadingStatus:Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

    new-instance v6, Lcom/microsoft/xbox/service/model/ProfileModel$RemoveUserFromNeverListRunner;

    iget-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->xuid:Ljava/lang/String;

    invoke-direct {v6, p0, p0, v0, p2}, Lcom/microsoft/xbox/service/model/ProfileModel$RemoveUserFromNeverListRunner;-><init>(Lcom/microsoft/xbox/service/model/ProfileModel;Lcom/microsoft/xbox/service/model/ProfileModel;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    move v1, p1

    invoke-static/range {v1 .. v6}, Lcom/microsoft/xbox/toolkit/DataLoadUtil;->Load(ZJLjava/util/Date;Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;)Lcom/microsoft/xbox/toolkit/AsyncResult;

    move-result-object p1

    return-object p1
.end method

.method public removeUserFromShareIdentity(ZLjava/util/ArrayList;)Lcom/microsoft/xbox/toolkit/AsyncResult;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/microsoft/xbox/toolkit/AsyncResult<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 432
    invoke-static {}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertIsNotUIThread()V

    .line 433
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->xuid:Ljava/lang/String;

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    .line 434
    iget-wide v2, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->lifetime:J

    iget-object v5, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->removingUserFromShareIdentityListLoadingStatus:Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

    new-instance v6, Lcom/microsoft/xbox/service/model/ProfileModel$RemoveUsersFromShareIdentityListRunner;

    invoke-direct {v6, p0, p0, p2}, Lcom/microsoft/xbox/service/model/ProfileModel$RemoveUsersFromShareIdentityListRunner;-><init>(Lcom/microsoft/xbox/service/model/ProfileModel;Lcom/microsoft/xbox/service/model/ProfileModel;Ljava/util/ArrayList;)V

    const/4 v4, 0x0

    move v1, p1

    invoke-static/range {v1 .. v6}, Lcom/microsoft/xbox/toolkit/DataLoadUtil;->Load(ZJLjava/util/Date;Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;)Lcom/microsoft/xbox/toolkit/AsyncResult;

    move-result-object p1

    return-object p1
.end method

.method public setFirstName(Ljava/lang/String;)V
    .locals 0

    .line 349
    iput-object p1, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->firstName:Ljava/lang/String;

    return-void
.end method

.method public setLastName(Ljava/lang/String;)V
    .locals 0

    .line 353
    iput-object p1, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->lastName:Ljava/lang/String;

    return-void
.end method

.method public setProfileFollowingSummaryData(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/microsoft/xbox/service/network/managers/FollowingSummaryResult$People;",
            ">;)V"
        }
    .end annotation

    .line 532
    iput-object p1, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->followingSummaries:Ljava/util/ArrayList;

    return-void
.end method

.method public shouldRefreshPresenceData()Z
    .locals 3

    .line 402
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->lastRefreshPresenceData:Ljava/util/Date;

    iget-wide v1, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->lifetime:J

    invoke-static {v0, v1, v2}, Lcom/microsoft/xbox/xle/app/XLEUtil;->shouldRefresh(Ljava/util/Date;J)Z

    move-result v0

    return v0
.end method

.method public shouldRefreshProfileSummary()Z
    .locals 3

    .line 398
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->lastRefreshProfileSummary:Ljava/util/Date;

    iget-wide v1, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->lifetime:J

    invoke-static {v0, v1, v2}, Lcom/microsoft/xbox/xle/app/XLEUtil;->shouldRefresh(Ljava/util/Date;J)Z

    move-result v0

    return v0
.end method

.method public submitFeedbackForUser(ZLcom/microsoft/xbox/service/model/sls/FeedbackType;Ljava/lang/String;)Lcom/microsoft/xbox/toolkit/AsyncResult;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/microsoft/xbox/service/model/sls/FeedbackType;",
            "Ljava/lang/String;",
            ")",
            "Lcom/microsoft/xbox/toolkit/AsyncResult<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 516
    invoke-static {}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertIsNotUIThread()V

    .line 517
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->xuid:Ljava/lang/String;

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    .line 518
    iget-wide v2, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->lifetime:J

    iget-object v5, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->submitFeedbackForUserLoadingStatus:Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;

    new-instance v0, Lcom/microsoft/xbox/service/model/ProfileModel$SubmitFeedbackForUserRunner;

    iget-object v9, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->xuid:Ljava/lang/String;

    move-object v6, v0

    move-object v7, p0

    move-object v8, p0

    move-object v10, p2

    move-object v11, p3

    invoke-direct/range {v6 .. v11}, Lcom/microsoft/xbox/service/model/ProfileModel$SubmitFeedbackForUserRunner;-><init>(Lcom/microsoft/xbox/service/model/ProfileModel;Lcom/microsoft/xbox/service/model/ProfileModel;Ljava/lang/String;Lcom/microsoft/xbox/service/model/sls/FeedbackType;Ljava/lang/String;)V

    const/4 v4, 0x0

    move v1, p1

    invoke-static/range {v1 .. v6}, Lcom/microsoft/xbox/toolkit/DataLoadUtil;->Load(ZJLjava/util/Date;Lcom/microsoft/xbox/toolkit/SingleEntryLoadingStatus;Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;)Lcom/microsoft/xbox/toolkit/AsyncResult;

    move-result-object p1

    return-object p1
.end method

.method public updateWithNewData(Lcom/microsoft/xbox/toolkit/AsyncResult;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/xbox/toolkit/AsyncResult<",
            "Lcom/microsoft/xbox/service/model/ProfileData;",
            ">;)V"
        }
    .end annotation

    .line 821
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    .line 823
    invoke-super {p0, p1}, Lcom/microsoft/xbox/service/model/ModelBase;->updateWithNewData(Lcom/microsoft/xbox/toolkit/AsyncResult;)V

    .line 825
    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/AsyncResult;->getStatus()Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    move-result-object v0

    sget-object v1, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->SUCCESS:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    if-ne v0, v1, :cond_2

    .line 826
    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/AsyncResult;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/service/model/ProfileData;

    if-eqz v0, :cond_2

    .line 833
    invoke-virtual {p0}, Lcom/microsoft/xbox/service/model/ProfileModel;->isMeProfile()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/microsoft/xbox/service/model/ProfileData;->getShareRealName()Z

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    iput-boolean v1, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->shareRealName:Z

    .line 834
    invoke-virtual {v0}, Lcom/microsoft/xbox/service/model/ProfileData;->getShareRealNameStatus()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->shareRealNameStatus:Ljava/lang/String;

    .line 836
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "shareRealNameStatus: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->shareRealNameStatus:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "ProfileModel"

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    invoke-virtual {v0}, Lcom/microsoft/xbox/service/model/ProfileData;->getSharingRealNameTransitively()Z

    move-result v1

    iput-boolean v1, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->sharingRealNameTransitively:Z

    .line 840
    invoke-virtual {v0}, Lcom/microsoft/xbox/service/model/ProfileData;->getProfileResult()Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$UserProfileResult;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 842
    iget-object v1, v0, Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$UserProfileResult;->profileUsers:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    .line 843
    iget-object v0, v0, Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$UserProfileResult;->profileUsers:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$ProfileUser;

    iput-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->profileUser:Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$ProfileUser;

    const/4 v0, 0x0

    .line 844
    iput-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel;->profileImageUrl:Ljava/lang/String;

    .line 848
    :cond_2
    new-instance v0, Lcom/microsoft/xbox/toolkit/AsyncResult;

    new-instance v1, Lcom/microsoft/xbox/service/model/UpdateData;

    sget-object v2, Lcom/microsoft/xbox/service/model/UpdateType;->ProfileData:Lcom/microsoft/xbox/service/model/UpdateType;

    invoke-direct {v1, v2, v3}, Lcom/microsoft/xbox/service/model/UpdateData;-><init>(Lcom/microsoft/xbox/service/model/UpdateType;Z)V

    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/AsyncResult;->getException()Lcom/microsoft/xbox/toolkit/XLEException;

    move-result-object p1

    invoke-direct {v0, v1, p0, p1}, Lcom/microsoft/xbox/toolkit/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/microsoft/xbox/toolkit/XLEException;)V

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/service/model/ProfileModel;->notifyObservers(Lcom/microsoft/xbox/toolkit/AsyncResult;)V

    return-void
.end method
