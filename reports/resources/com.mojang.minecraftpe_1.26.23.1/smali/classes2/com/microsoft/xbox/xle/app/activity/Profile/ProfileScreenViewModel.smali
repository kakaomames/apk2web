.class public Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;
.super Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;
.source "ProfileScreenViewModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$RemoveUserFromMutedListAsyncTask;,
        Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$AddUserToMutedListAsyncTask;,
        Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$RemoveUserToNeverListAsyncTask;,
        Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$AddUserToNeverListAsyncTask;,
        Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$AddUserToShareIdentityListAsyncTask;,
        Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$AddUserToFollowingListAsyncTask;,
        Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$LoadUserMutedListAsyncTask;,
        Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$LoadUserNeverListAsyncTask;,
        Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$LoadUserProfileAsyncTask;,
        Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ProfileScreenViewModel"


# instance fields
.field private addUserToFollowingListAsyncTask:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$AddUserToFollowingListAsyncTask;

.field private addUserToMutedListAsyncTask:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$AddUserToMutedListAsyncTask;

.field private addUserToNeverListAsyncTask:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$AddUserToNeverListAsyncTask;

.field private addUserToShareIdentityListAsyncTask:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$AddUserToShareIdentityListAsyncTask;

.field private basicData:Lcom/microsoft/xbox/service/model/FollowersData;

.field private changeFriendshipDialogViewModel:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;

.field private changeFriendshipForm:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;",
            ">;"
        }
    .end annotation
.end field

.field private isAddingUserToBlockList:Z

.field private isAddingUserToFollowingList:Z

.field private isAddingUserToMutedList:Z

.field private isAddingUserToShareIdentityList:Z

.field private isBlocked:Z

.field private isFavorite:Z

.field private isFollowing:Z

.field private isLoadingUserMutedList:Z

.field private isLoadingUserNeverList:Z

.field private isLoadingUserProfile:Z

.field private isMuted:Z

.field private isRemovingUserFromBlockList:Z

.field private isRemovingUserFromMutedList:Z

.field private isShowingFailureDialog:Z

.field private loadMeProfileTask:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$LoadUserProfileAsyncTask;

.field private loadUserMutedListTask:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$LoadUserMutedListAsyncTask;

.field private loadUserNeverListTask:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$LoadUserNeverListAsyncTask;

.field private loadUserProfileTask:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$LoadUserProfileAsyncTask;

.field protected model:Lcom/microsoft/xbox/service/model/ProfileModel;

.field private removeUserFromMutedListAsyncTask:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$RemoveUserFromMutedListAsyncTask;

.field private removeUserToNeverListAsyncTask:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$RemoveUserToNeverListAsyncTask;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;-><init>(Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;)V

    .line 38
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->changeFriendshipForm:Ljava/util/HashSet;

    const/4 p1, 0x0

    .line 39
    iput-boolean p1, p0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->isFollowing:Z

    .line 40
    iput-boolean p1, p0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->isFavorite:Z

    .line 41
    iput-boolean p1, p0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->isBlocked:Z

    .line 42
    iput-boolean p1, p0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->isMuted:Z

    .line 69
    invoke-static {}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getInstance()Lcom/microsoft/xbox/toolkit/ui/NavigationManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getActivityParameters()Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;

    move-result-object p1

    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;->getSelectedProfile()Ljava/lang/String;

    move-result-object p1

    .line 70
    invoke-static {p1}, Lcom/microsoft/xbox/service/model/ProfileModel;->getProfileModel(Ljava/lang/String;)Lcom/microsoft/xbox/service/model/ProfileModel;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->model:Lcom/microsoft/xbox/service/model/ProfileModel;

    .line 71
    new-instance p1, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;

    invoke-direct {p1, p0}, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;-><init>(Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;)V

    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->adapter:Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;

    return-void
.end method

.method static synthetic access$1002(Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;Z)Z
    .locals 0

    .line 35
    iput-boolean p1, p0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->isAddingUserToFollowingList:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;)V
    .locals 0

    .line 35
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->updateAdapter()V

    return-void
.end method

.method static synthetic access$1202(Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;Z)Z
    .locals 0

    .line 35
    iput-boolean p1, p0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->isAddingUserToShareIdentityList:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;)V
    .locals 0

    .line 35
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->updateAdapter()V

    return-void
.end method

.method static synthetic access$1400(Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->onAddUseToShareIdentityListCompleted(Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->onAddUserToBlockListCompleted(Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V

    return-void
.end method

.method static synthetic access$1602(Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;Z)Z
    .locals 0

    .line 35
    iput-boolean p1, p0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->isAddingUserToBlockList:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;)V
    .locals 0

    .line 35
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->updateAdapter()V

    return-void
.end method

.method static synthetic access$1800(Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->onRemoveUserFromBlockListCompleted(Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V

    return-void
.end method

.method static synthetic access$1902(Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;Z)Z
    .locals 0

    .line 35
    iput-boolean p1, p0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->isRemovingUserFromBlockList:Z

    return p1
.end method

.method static synthetic access$2000(Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;)V
    .locals 0

    .line 35
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->updateAdapter()V

    return-void
.end method

.method static synthetic access$2100(Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->onAddUserToMutedListCompleted(Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V

    return-void
.end method

.method static synthetic access$2202(Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;Z)Z
    .locals 0

    .line 35
    iput-boolean p1, p0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->isAddingUserToMutedList:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;)V
    .locals 0

    .line 35
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->updateAdapter()V

    return-void
.end method

.method static synthetic access$2400(Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->onRemoveUserFromMutedListCompleted(Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V

    return-void
.end method

.method static synthetic access$2502(Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;Z)Z
    .locals 0

    .line 35
    iput-boolean p1, p0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->isRemovingUserFromMutedList:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;)V
    .locals 0

    .line 35
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->updateAdapter()V

    return-void
.end method

.method static synthetic access$302(Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;Z)Z
    .locals 0

    .line 35
    iput-boolean p1, p0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->isLoadingUserProfile:Z

    return p1
.end method

.method static synthetic access$400(Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;)V
    .locals 0

    .line 35
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->updateAdapter()V

    return-void
.end method

.method static synthetic access$502(Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;Z)Z
    .locals 0

    .line 35
    iput-boolean p1, p0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->isLoadingUserNeverList:Z

    return p1
.end method

.method static synthetic access$600(Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;)V
    .locals 0

    .line 35
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->updateAdapter()V

    return-void
.end method

.method static synthetic access$702(Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;Z)Z
    .locals 0

    .line 35
    iput-boolean p1, p0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->isLoadingUserMutedList:Z

    return p1
.end method

.method static synthetic access$800(Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;)V
    .locals 0

    .line 35
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->updateAdapter()V

    return-void
.end method

.method static synthetic access$900(Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;Lcom/microsoft/xbox/toolkit/AsyncActionStatus;Z)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->onAddUserToFollowingListCompleted(Lcom/microsoft/xbox/toolkit/AsyncActionStatus;Z)V

    return-void
.end method

.method private notifyDialogAsyncTaskCompleted()V
    .locals 1

    .line 267
    invoke-static {}, Lcom/microsoft/xbox/toolkit/DialogManager;->getInstance()Lcom/microsoft/xbox/toolkit/DialogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/DialogManager;->getManager()Lcom/microsoft/xbox/toolkit/IProjectSpecificDialogManager;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/xle/app/SGProjectSpecificDialogManager;

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/app/SGProjectSpecificDialogManager;->notifyChangeFriendshipDialogAsyncTaskCompleted()V

    return-void
.end method

.method private notifyDialogAsyncTaskFailed(Ljava/lang/String;)V
    .locals 1

    .line 271
    invoke-static {}, Lcom/microsoft/xbox/toolkit/DialogManager;->getInstance()Lcom/microsoft/xbox/toolkit/DialogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/DialogManager;->getManager()Lcom/microsoft/xbox/toolkit/IProjectSpecificDialogManager;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/xle/app/SGProjectSpecificDialogManager;

    invoke-virtual {v0, p1}, Lcom/microsoft/xbox/xle/app/SGProjectSpecificDialogManager;->notifyChangeFriendshipDialogAsyncTaskFailed(Ljava/lang/String;)V

    return-void
.end method

.method private onAddUseToShareIdentityListCompleted(Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V
    .locals 1

    const/4 v0, 0x0

    .line 477
    iput-boolean v0, p0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->isAddingUserToShareIdentityList:Z

    .line 478
    sget-object v0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$4;->$SwitchMap$com$microsoft$xbox$toolkit$AsyncActionStatus:[I

    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 486
    :cond_0
    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/microsoft/xboxtcui/R$string;->RealNameSharing_ErrorChangeRemove:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->notifyDialogAsyncTaskFailed(Ljava/lang/String;)V

    goto :goto_0

    .line 482
    :cond_1
    invoke-direct {p0}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->notifyDialogAsyncTaskCompleted()V

    .line 490
    :goto_0
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->updateAdapter()V

    return-void
.end method

.method private onAddUserToBlockListCompleted(Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V
    .locals 2

    const/4 v0, 0x0

    .line 494
    iput-boolean v0, p0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->isAddingUserToBlockList:Z

    .line 496
    sget-object v1, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$4;->$SwitchMap$com$microsoft$xbox$toolkit$AsyncActionStatus:[I

    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 513
    :cond_0
    sget p1, Lcom/microsoft/xboxtcui/R$string;->Messages_Error_FailedToBlockUser:I

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->showError(I)V

    goto :goto_0

    .line 500
    :cond_1
    invoke-static {}, Lcom/microsoft/xbox/service/model/ProfileModel;->getMeProfileModel()Lcom/microsoft/xbox/service/model/ProfileModel;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 502
    iput-boolean v0, p0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->isBlocked:Z

    .line 503
    invoke-virtual {p1}, Lcom/microsoft/xbox/service/model/ProfileModel;->getNeverListData()Lcom/microsoft/xbox/service/network/managers/NeverListResultContainer$NeverListResult;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 505
    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->model:Lcom/microsoft/xbox/service/model/ProfileModel;

    invoke-virtual {v1}, Lcom/microsoft/xbox/service/model/ProfileModel;->getXuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/microsoft/xbox/service/network/managers/NeverListResultContainer$NeverListResult;->contains(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->isBlocked:Z

    .line 508
    :cond_2
    iput-boolean v0, p0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->isFollowing:Z

    .line 516
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->updateAdapter()V

    return-void
.end method

.method private onAddUserToFollowingListCompleted(Lcom/microsoft/xbox/toolkit/AsyncActionStatus;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 449
    iput-boolean v0, p0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->isAddingUserToFollowingList:Z

    .line 451
    sget-object v0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$4;->$SwitchMap$com$microsoft$xbox$toolkit$AsyncActionStatus:[I

    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 p2, 0x4

    if-eq p1, p2, :cond_0

    const/4 p2, 0x5

    if-eq p1, p2, :cond_0

    goto :goto_1

    .line 462
    :cond_0
    invoke-static {}, Lcom/microsoft/xbox/service/model/ProfileModel;->getMeProfileModel()Lcom/microsoft/xbox/service/model/ProfileModel;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 464
    invoke-virtual {p1}, Lcom/microsoft/xbox/service/model/ProfileModel;->getAddUserToFollowingResult()Lcom/microsoft/xbox/service/network/managers/AddFollowingUserResponseContainer$AddFollowingUserResponse;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 467
    invoke-virtual {p1}, Lcom/microsoft/xbox/service/network/managers/AddFollowingUserResponseContainer$AddFollowingUserResponse;->getAddFollowingRequestStatus()Z

    move-result p2

    if-nez p2, :cond_2

    iget p2, p1, Lcom/microsoft/xbox/service/network/managers/AddFollowingUserResponseContainer$AddFollowingUserResponse;->code:I

    const/16 v0, 0x404

    if-ne p2, v0, :cond_2

    .line 468
    iget-object p1, p1, Lcom/microsoft/xbox/service/network/managers/AddFollowingUserResponseContainer$AddFollowingUserResponse;->description:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->notifyDialogAsyncTaskFailed(Ljava/lang/String;)V

    goto :goto_1

    .line 470
    :cond_2
    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/microsoft/xboxtcui/R$string;->RealNameSharing_ErrorAddingFriend:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->notifyDialogAsyncTaskFailed(Ljava/lang/String;)V

    goto :goto_1

    .line 455
    :cond_3
    iput-boolean p2, p0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->isFollowing:Z

    .line 456
    invoke-static {}, Lcom/microsoft/xbox/xle/viewmodel/XLEGlobalData;->getInstance()Lcom/microsoft/xbox/xle/viewmodel/XLEGlobalData;

    move-result-object p1

    const-class p2, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;

    invoke-virtual {p1, p2}, Lcom/microsoft/xbox/xle/viewmodel/XLEGlobalData;->AddForceRefresh(Ljava/lang/Class;)V

    .line 457
    invoke-direct {p0}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->notifyDialogAsyncTaskCompleted()V

    .line 473
    :goto_1
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->updateAdapter()V

    return-void
.end method

.method private onAddUserToMutedListCompleted(Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V
    .locals 2

    const/4 v0, 0x0

    .line 544
    iput-boolean v0, p0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->isAddingUserToMutedList:Z

    .line 546
    sget-object v0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$4;->$SwitchMap$com$microsoft$xbox$toolkit$AsyncActionStatus:[I

    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 558
    :cond_0
    sget p1, Lcom/microsoft/xboxtcui/R$string;->Messages_Error_FailedToMuteUser:I

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->showError(I)V

    goto :goto_0

    .line 550
    :cond_1
    invoke-static {}, Lcom/microsoft/xbox/service/model/ProfileModel;->getMeProfileModel()Lcom/microsoft/xbox/service/model/ProfileModel;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 552
    iput-boolean v0, p0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->isMuted:Z

    .line 561
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->updateAdapter()V

    return-void
.end method

.method private onRemoveUserFromBlockListCompleted(Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V
    .locals 2

    const/4 v0, 0x0

    .line 520
    iput-boolean v0, p0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->isRemovingUserFromBlockList:Z

    .line 522
    sget-object v1, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$4;->$SwitchMap$com$microsoft$xbox$toolkit$AsyncActionStatus:[I

    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 537
    :cond_0
    sget p1, Lcom/microsoft/xboxtcui/R$string;->Messages_Error_FailedToUnblockUser:I

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->showError(I)V

    goto :goto_0

    .line 526
    :cond_1
    invoke-static {}, Lcom/microsoft/xbox/service/model/ProfileModel;->getMeProfileModel()Lcom/microsoft/xbox/service/model/ProfileModel;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 528
    iput-boolean v0, p0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->isBlocked:Z

    .line 529
    invoke-virtual {p1}, Lcom/microsoft/xbox/service/model/ProfileModel;->getNeverListData()Lcom/microsoft/xbox/service/network/managers/NeverListResultContainer$NeverListResult;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 531
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->model:Lcom/microsoft/xbox/service/model/ProfileModel;

    invoke-virtual {v0}, Lcom/microsoft/xbox/service/model/ProfileModel;->getXuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/microsoft/xbox/service/network/managers/NeverListResultContainer$NeverListResult;->contains(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->isBlocked:Z

    .line 540
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->updateAdapter()V

    return-void
.end method

.method private onRemoveUserFromMutedListCompleted(Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V
    .locals 2

    const/4 v0, 0x0

    .line 565
    iput-boolean v0, p0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->isRemovingUserFromMutedList:Z

    .line 567
    sget-object v1, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$4;->$SwitchMap$com$microsoft$xbox$toolkit$AsyncActionStatus:[I

    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 579
    :cond_0
    sget p1, Lcom/microsoft/xboxtcui/R$string;->Messages_Error_FailedToUnmuteUser:I

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->showError(I)V

    goto :goto_0

    .line 571
    :cond_1
    invoke-static {}, Lcom/microsoft/xbox/service/model/ProfileModel;->getMeProfileModel()Lcom/microsoft/xbox/service/model/ProfileModel;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 573
    iput-boolean v0, p0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->isMuted:Z

    .line 582
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->updateAdapter()V

    return-void
.end method


# virtual methods
.method public addFollowingUser()V
    .locals 2

    .line 244
    invoke-static {}, Lcom/microsoft/xbox/service/model/ProfileModel;->hasPrivilegeToAddFriend()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 245
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->addUserToFollowingListAsyncTask:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$AddUserToFollowingListAsyncTask;

    if-eqz v0, :cond_0

    .line 246
    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$AddUserToFollowingListAsyncTask;->cancel()V

    .line 248
    :cond_0
    new-instance v0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$AddUserToFollowingListAsyncTask;

    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->model:Lcom/microsoft/xbox/service/model/ProfileModel;

    invoke-virtual {v1}, Lcom/microsoft/xbox/service/model/ProfileModel;->getXuid()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$AddUserToFollowingListAsyncTask;-><init>(Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->addUserToFollowingListAsyncTask:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$AddUserToFollowingListAsyncTask;

    const/4 v1, 0x1

    .line 249
    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$AddUserToFollowingListAsyncTask;->load(Z)V

    goto :goto_0

    .line 252
    :cond_1
    sget v0, Lcom/microsoft/xboxtcui/R$string;->Global_MissingPrivilegeError_DialogBody:I

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->showError(I)V

    :goto_0
    return-void
.end method

.method public addUserToShareIdentityList()V
    .locals 2

    .line 257
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->addUserToShareIdentityListAsyncTask:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$AddUserToShareIdentityListAsyncTask;

    if-eqz v0, :cond_0

    .line 258
    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$AddUserToShareIdentityListAsyncTask;->cancel()V

    .line 260
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 261
    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->model:Lcom/microsoft/xbox/service/model/ProfileModel;

    invoke-virtual {v1}, Lcom/microsoft/xbox/service/model/ProfileModel;->getXuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    new-instance v1, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$AddUserToShareIdentityListAsyncTask;

    invoke-direct {v1, p0, v0}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$AddUserToShareIdentityListAsyncTask;-><init>(Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->addUserToShareIdentityListAsyncTask:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$AddUserToShareIdentityListAsyncTask;

    const/4 v0, 0x1

    .line 263
    invoke-virtual {v1, v0}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$AddUserToShareIdentityListAsyncTask;->load(Z)V

    return-void
.end method

.method public blockUser()V
    .locals 9

    .line 283
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

    .line 285
    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/microsoft/xboxtcui/R$string;->Messages_BlockUserConfirmation_DialogTitle:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/microsoft/xboxtcui/R$string;->Messages_BlockUserConfirmation_DialogBody:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/microsoft/xboxtcui/R$string;->OK_Text:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$1;

    invoke-direct {v6, p0}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$1;-><init>(Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;)V

    .line 290
    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/microsoft/xboxtcui/R$string;->MessageDialog_Cancel:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    move-object v2, p0

    .line 285
    invoke-virtual/range {v2 .. v8}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->showOkCancelDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 292
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->updateAdapter()V

    return-void
.end method

.method public blockUserInternal()V
    .locals 2

    .line 296
    invoke-static {}, Lcom/microsoft/xbox/telemetry/helpers/UTCPeopleHub;->trackBlockDialogComplete()V

    .line 297
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->addUserToNeverListAsyncTask:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$AddUserToNeverListAsyncTask;

    if-eqz v0, :cond_0

    .line 298
    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$AddUserToNeverListAsyncTask;->cancel()V

    .line 300
    :cond_0
    new-instance v0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$AddUserToNeverListAsyncTask;

    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->model:Lcom/microsoft/xbox/service/model/ProfileModel;

    invoke-virtual {v1}, Lcom/microsoft/xbox/service/model/ProfileModel;->getXuid()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$AddUserToNeverListAsyncTask;-><init>(Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->addUserToNeverListAsyncTask:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$AddUserToNeverListAsyncTask;

    const/4 v1, 0x1

    .line 301
    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$AddUserToNeverListAsyncTask;->load(Z)V

    return-void
.end method

.method public getGamerPicUrl()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->model:Lcom/microsoft/xbox/service/model/ProfileModel;

    invoke-virtual {v0}, Lcom/microsoft/xbox/service/model/ProfileModel;->getGamerPicImageUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGamerScore()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->model:Lcom/microsoft/xbox/service/model/ProfileModel;

    invoke-virtual {v0}, Lcom/microsoft/xbox/service/model/ProfileModel;->getGamerScore()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGamerTag()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->model:Lcom/microsoft/xbox/service/model/ProfileModel;

    invoke-virtual {v0}, Lcom/microsoft/xbox/service/model/ProfileModel;->getGamerTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIsAddingUserToBlockList()Z
    .locals 1

    .line 214
    iget-boolean v0, p0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->isAddingUserToBlockList:Z

    return v0
.end method

.method public getIsAddingUserToMutedList()Z
    .locals 1

    .line 222
    iget-boolean v0, p0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->isAddingUserToMutedList:Z

    return v0
.end method

.method public getIsBlocked()Z
    .locals 1

    .line 206
    iget-boolean v0, p0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->isBlocked:Z

    return v0
.end method

.method public getIsFavorite()Z
    .locals 1

    .line 202
    iget-boolean v0, p0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->isFavorite:Z

    return v0
.end method

.method public getIsMuted()Z
    .locals 1

    .line 210
    iget-boolean v0, p0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->isMuted:Z

    return v0
.end method

.method public getIsRemovingUserFromBlockList()Z
    .locals 1

    .line 218
    iget-boolean v0, p0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->isRemovingUserFromBlockList:Z

    return v0
.end method

.method public getIsRemovingUserFromMutedList()Z
    .locals 1

    .line 226
    iget-boolean v0, p0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->isRemovingUserFromMutedList:Z

    return v0
.end method

.method public getPreferredColor()I
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->model:Lcom/microsoft/xbox/service/model/ProfileModel;

    invoke-virtual {v0}, Lcom/microsoft/xbox/service/model/ProfileModel;->getPreferedColor()I

    move-result v0

    return v0
.end method

.method public getRealName()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->model:Lcom/microsoft/xbox/service/model/ProfileModel;

    invoke-virtual {v0}, Lcom/microsoft/xbox/service/model/ProfileModel;->getRealName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getXuid()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->model:Lcom/microsoft/xbox/service/model/ProfileModel;

    invoke-virtual {v0}, Lcom/microsoft/xbox/service/model/ProfileModel;->getXuid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isBusy()Z
    .locals 1

    .line 118
    iget-boolean v0, p0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->isLoadingUserProfile:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->isLoadingUserNeverList:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->isLoadingUserMutedList:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->isAddingUserToFollowingList:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->isAddingUserToShareIdentityList:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->isRemovingUserFromBlockList:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->isAddingUserToBlockList:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->isAddingUserToMutedList:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->isRemovingUserFromMutedList:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isCallerFollowingTarget()Z
    .locals 1

    .line 100
    iget-boolean v0, p0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->isFollowing:Z

    return v0
.end method

.method public isFacebookFriend()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isMeProfile()Z
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->model:Lcom/microsoft/xbox/service/model/ProfileModel;

    invoke-virtual {v0}, Lcom/microsoft/xbox/service/model/ProfileModel;->isMeProfile()Z

    move-result v0

    return v0
.end method

.method public launchXboxApp()V
    .locals 9

    .line 344
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

    .line 346
    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/microsoft/xboxtcui/R$string;->Messages_BlockUserConfirmation_DialogTitle:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/microsoft/xboxtcui/R$string;->Messages_ViewInXboxApp_DialogBody:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/microsoft/xboxtcui/R$string;->ConnectDialog_ContinueAsGuest:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$2;

    invoke-direct {v6, p0}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$2;-><init>(Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;)V

    .line 352
    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/microsoft/xboxtcui/R$string;->MessageDialog_Cancel:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    move-object v2, p0

    .line 346
    invoke-virtual/range {v2 .. v8}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->showOkCancelDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 354
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->updateAdapter()V

    return-void
.end method

.method public load(Z)V
    .locals 3

    .line 174
    iget-object p1, p0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->loadUserProfileTask:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$LoadUserProfileAsyncTask;

    if-eqz p1, :cond_0

    .line 175
    invoke-virtual {p1}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$LoadUserProfileAsyncTask;->cancel()V

    .line 178
    :cond_0
    new-instance p1, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$LoadUserProfileAsyncTask;

    invoke-static {}, Lcom/microsoft/xbox/service/model/ProfileModel;->getMeProfileModel()Lcom/microsoft/xbox/service/model/ProfileModel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p1, p0, v0, v1}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$LoadUserProfileAsyncTask;-><init>(Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;Lcom/microsoft/xbox/service/model/ProfileModel;Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$1;)V

    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->loadMeProfileTask:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$LoadUserProfileAsyncTask;

    const/4 v0, 0x1

    .line 179
    invoke-virtual {p1, v0}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$LoadUserProfileAsyncTask;->load(Z)V

    .line 181
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->isMeProfile()Z

    move-result p1

    if-nez p1, :cond_3

    .line 182
    iget-object p1, p0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->loadUserNeverListTask:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$LoadUserNeverListAsyncTask;

    if-eqz p1, :cond_1

    .line 183
    invoke-virtual {p1}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$LoadUserNeverListAsyncTask;->cancel()V

    .line 186
    :cond_1
    new-instance p1, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$LoadUserNeverListAsyncTask;

    invoke-static {}, Lcom/microsoft/xbox/service/model/ProfileModel;->getMeProfileModel()Lcom/microsoft/xbox/service/model/ProfileModel;

    move-result-object v2

    invoke-direct {p1, p0, v2, v1}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$LoadUserNeverListAsyncTask;-><init>(Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;Lcom/microsoft/xbox/service/model/ProfileModel;Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$1;)V

    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->loadUserNeverListTask:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$LoadUserNeverListAsyncTask;

    .line 187
    invoke-virtual {p1, v0}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$LoadUserNeverListAsyncTask;->load(Z)V

    .line 189
    iget-object p1, p0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->loadUserMutedListTask:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$LoadUserMutedListAsyncTask;

    if-eqz p1, :cond_2

    .line 190
    invoke-virtual {p1}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$LoadUserMutedListAsyncTask;->cancel()V

    .line 193
    :cond_2
    new-instance p1, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$LoadUserMutedListAsyncTask;

    invoke-static {}, Lcom/microsoft/xbox/service/model/ProfileModel;->getMeProfileModel()Lcom/microsoft/xbox/service/model/ProfileModel;

    move-result-object v2

    invoke-direct {p1, p0, v2, v1}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$LoadUserMutedListAsyncTask;-><init>(Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;Lcom/microsoft/xbox/service/model/ProfileModel;Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$1;)V

    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->loadUserMutedListTask:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$LoadUserMutedListAsyncTask;

    .line 194
    invoke-virtual {p1, v0}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$LoadUserMutedListAsyncTask;->load(Z)V

    .line 196
    new-instance p1, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$LoadUserProfileAsyncTask;

    iget-object v2, p0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->model:Lcom/microsoft/xbox/service/model/ProfileModel;

    invoke-direct {p1, p0, v2, v1}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$LoadUserProfileAsyncTask;-><init>(Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;Lcom/microsoft/xbox/service/model/ProfileModel;Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$1;)V

    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->loadUserProfileTask:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$LoadUserProfileAsyncTask;

    .line 197
    invoke-virtual {p1, v0}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$LoadUserProfileAsyncTask;->load(Z)V

    :cond_3
    return-void
.end method

.method public muteUser()V
    .locals 2

    .line 313
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->addUserToMutedListAsyncTask:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$AddUserToMutedListAsyncTask;

    if-eqz v0, :cond_0

    .line 314
    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$AddUserToMutedListAsyncTask;->cancel()V

    .line 317
    :cond_0
    new-instance v0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$AddUserToMutedListAsyncTask;

    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->model:Lcom/microsoft/xbox/service/model/ProfileModel;

    invoke-virtual {v1}, Lcom/microsoft/xbox/service/model/ProfileModel;->getXuid()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$AddUserToMutedListAsyncTask;-><init>(Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->addUserToMutedListAsyncTask:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$AddUserToMutedListAsyncTask;

    const/4 v1, 0x1

    .line 318
    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$AddUserToMutedListAsyncTask;->load(Z)V

    return-void
.end method

.method public navigateToChangeRelationship()V
    .locals 4

    .line 230
    invoke-static {}, Lcom/microsoft/xbox/service/model/ProfileModel;->hasPrivilegeToAddFriend()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->getScreen()Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->getName()Ljava/lang/String;

    move-result-object v0

    .line 233
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->getXuid()Ljava/lang/String;

    move-result-object v1

    .line 234
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->isCallerFollowingTarget()Z

    move-result v2

    .line 235
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->isFacebookFriend()Z

    move-result v3

    .line 231
    invoke-static {v0, v1, v2, v3}, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship;->trackChangeRelationshipAction(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)V

    .line 237
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->showChangeFriendshipDialog()V

    goto :goto_0

    .line 239
    :cond_0
    sget v0, Lcom/microsoft/xboxtcui/R$string;->Global_MissingPrivilegeError_DialogBody:I

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->showError(I)V

    :goto_0
    return-void
.end method

.method public onLoadUserMutedListCompleted(Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V
    .locals 2

    const/4 v0, 0x0

    .line 426
    iput-boolean v0, p0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->isLoadingUserMutedList:Z

    .line 428
    sget-object v1, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$4;->$SwitchMap$com$microsoft$xbox$toolkit$AsyncActionStatus:[I

    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 433
    :cond_0
    invoke-static {}, Lcom/microsoft/xbox/service/model/ProfileModel;->getMeProfileModel()Lcom/microsoft/xbox/service/model/ProfileModel;

    move-result-object p1

    .line 434
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->isMeProfile()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p1, :cond_1

    .line 435
    iput-boolean v0, p0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->isMuted:Z

    .line 436
    invoke-virtual {p1}, Lcom/microsoft/xbox/service/model/ProfileModel;->getMutedList()Lcom/microsoft/xbox/service/network/managers/MutedListResultContainer$MutedListResult;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 438
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->model:Lcom/microsoft/xbox/service/model/ProfileModel;

    invoke-virtual {v0}, Lcom/microsoft/xbox/service/model/ProfileModel;->getXuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/microsoft/xbox/service/network/managers/MutedListResultContainer$MutedListResult;->contains(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->isMuted:Z

    .line 445
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->updateAdapter()V

    return-void
.end method

.method public onLoadUserNeverListCompleted(Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V
    .locals 2

    const/4 v0, 0x0

    .line 403
    iput-boolean v0, p0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->isLoadingUserNeverList:Z

    .line 405
    sget-object v1, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$4;->$SwitchMap$com$microsoft$xbox$toolkit$AsyncActionStatus:[I

    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 410
    :cond_0
    invoke-static {}, Lcom/microsoft/xbox/service/model/ProfileModel;->getMeProfileModel()Lcom/microsoft/xbox/service/model/ProfileModel;

    move-result-object p1

    .line 411
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->isMeProfile()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p1, :cond_1

    .line 412
    iput-boolean v0, p0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->isBlocked:Z

    .line 413
    invoke-virtual {p1}, Lcom/microsoft/xbox/service/model/ProfileModel;->getNeverListData()Lcom/microsoft/xbox/service/network/managers/NeverListResultContainer$NeverListResult;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 415
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->model:Lcom/microsoft/xbox/service/model/ProfileModel;

    invoke-virtual {v0}, Lcom/microsoft/xbox/service/model/ProfileModel;->getXuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/microsoft/xbox/service/network/managers/NeverListResultContainer$NeverListResult;->contains(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->isBlocked:Z

    .line 422
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->updateAdapter()V

    return-void
.end method

.method public onLoadUserProfileCompleted(Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V
    .locals 3

    const/4 v0, 0x0

    .line 363
    iput-boolean v0, p0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->isLoadingUserProfile:Z

    .line 365
    sget-object v1, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$4;->$SwitchMap$com$microsoft$xbox$toolkit$AsyncActionStatus:[I

    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    const/4 v2, 0x4

    if-eq p1, v2, :cond_0

    const/4 v2, 0x5

    if-eq p1, v2, :cond_0

    goto :goto_0

    .line 377
    :cond_0
    iget-boolean p1, p0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->isShowingFailureDialog:Z

    if-nez p1, :cond_2

    .line 378
    iput-boolean v1, p0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->isShowingFailureDialog:Z

    .line 380
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 381
    sget v1, Lcom/microsoft/xboxtcui/R$string;->Service_ErrorText:I

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 382
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 383
    sget v0, Lcom/microsoft/xboxtcui/R$string;->OK_Text:I

    new-instance v1, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$3;

    invoke-direct {v1, p0}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$3;-><init>(Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 393
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 369
    :cond_1
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->isMeProfile()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {}, Lcom/microsoft/xbox/service/model/ProfileModel;->getMeProfileModel()Lcom/microsoft/xbox/service/model/ProfileModel;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 370
    iget-object p1, p0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->model:Lcom/microsoft/xbox/service/model/ProfileModel;

    invoke-virtual {p1}, Lcom/microsoft/xbox/service/model/ProfileModel;->isCallerFollowingTarget()Z

    move-result p1

    iput-boolean p1, p0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->isFollowing:Z

    .line 399
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->updateAdapter()V

    return-void
.end method

.method public onRehydrate()V
    .locals 1

    .line 76
    new-instance v0, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;

    invoke-direct {v0, p0}, Lcom/microsoft/xbox/xle/app/adapter/ProfileScreenAdapter;-><init>(Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;)V

    iput-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->adapter:Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;

    return-void
.end method

.method protected onStartOverride()V
    .locals 1

    const/4 v0, 0x0

    .line 113
    iput-boolean v0, p0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->isShowingFailureDialog:Z

    return-void
.end method

.method protected onStopOverride()V
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->loadMeProfileTask:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$LoadUserProfileAsyncTask;

    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$LoadUserProfileAsyncTask;->cancel()V

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->loadUserNeverListTask:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$LoadUserNeverListAsyncTask;

    if-eqz v0, :cond_1

    .line 136
    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$LoadUserNeverListAsyncTask;->cancel()V

    .line 139
    :cond_1
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->loadUserMutedListTask:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$LoadUserMutedListAsyncTask;

    if-eqz v0, :cond_2

    .line 140
    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$LoadUserMutedListAsyncTask;->cancel()V

    .line 143
    :cond_2
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->loadUserProfileTask:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$LoadUserProfileAsyncTask;

    if-eqz v0, :cond_3

    .line 144
    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$LoadUserProfileAsyncTask;->cancel()V

    .line 147
    :cond_3
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->addUserToFollowingListAsyncTask:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$AddUserToFollowingListAsyncTask;

    if-eqz v0, :cond_4

    .line 148
    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$AddUserToFollowingListAsyncTask;->cancel()V

    .line 151
    :cond_4
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->addUserToShareIdentityListAsyncTask:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$AddUserToShareIdentityListAsyncTask;

    if-eqz v0, :cond_5

    .line 152
    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$AddUserToShareIdentityListAsyncTask;->cancel()V

    .line 155
    :cond_5
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->addUserToNeverListAsyncTask:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$AddUserToNeverListAsyncTask;

    if-eqz v0, :cond_6

    .line 156
    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$AddUserToNeverListAsyncTask;->cancel()V

    .line 159
    :cond_6
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->removeUserToNeverListAsyncTask:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$RemoveUserToNeverListAsyncTask;

    if-eqz v0, :cond_7

    .line 160
    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$RemoveUserToNeverListAsyncTask;->cancel()V

    .line 163
    :cond_7
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->addUserToMutedListAsyncTask:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$AddUserToMutedListAsyncTask;

    if-eqz v0, :cond_8

    .line 164
    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$AddUserToMutedListAsyncTask;->cancel()V

    .line 167
    :cond_8
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->removeUserFromMutedListAsyncTask:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$RemoveUserFromMutedListAsyncTask;

    if-eqz v0, :cond_9

    .line 168
    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$RemoveUserFromMutedListAsyncTask;->cancel()V

    :cond_9
    return-void
.end method

.method public showChangeFriendshipDialog()V
    .locals 2

    .line 275
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->changeFriendshipDialogViewModel:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;

    if-nez v0, :cond_0

    .line 276
    new-instance v0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;

    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->model:Lcom/microsoft/xbox/service/model/ProfileModel;

    invoke-direct {v0, v1}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;-><init>(Lcom/microsoft/xbox/service/model/ProfileModel;)V

    iput-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->changeFriendshipDialogViewModel:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;

    .line 279
    :cond_0
    invoke-static {}, Lcom/microsoft/xbox/toolkit/DialogManager;->getInstance()Lcom/microsoft/xbox/toolkit/DialogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/DialogManager;->getManager()Lcom/microsoft/xbox/toolkit/IProjectSpecificDialogManager;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/xle/app/SGProjectSpecificDialogManager;

    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->changeFriendshipDialogViewModel:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;

    invoke-virtual {v0, v1, p0}, Lcom/microsoft/xbox/xle/app/SGProjectSpecificDialogManager;->showChangeFriendshipDialog(Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;)V

    return-void
.end method

.method public showReportDialog()V
    .locals 7

    .line 332
    :try_start_0
    invoke-static {}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getInstance()Lcom/microsoft/xbox/toolkit/ui/NavigationManager;

    move-result-object v0

    const-class v2, Lcom/microsoft/xbox/xle/app/activity/ReportUserScreen;

    .line 338
    invoke-static {}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getInstance()Lcom/microsoft/xbox/toolkit/ui/NavigationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getActivityParameters()Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;

    move-result-object v6

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 332
    invoke-virtual/range {v0 .. v6}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->PopScreensAndReplace(ILjava/lang/Class;ZZZLcom/microsoft/xbox/toolkit/ui/ActivityParameters;)V

    :try_end_0
    .catch Lcom/microsoft/xbox/toolkit/XLEException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public unblockUser()V
    .locals 2

    .line 305
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->removeUserToNeverListAsyncTask:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$RemoveUserToNeverListAsyncTask;

    if-eqz v0, :cond_0

    .line 306
    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$RemoveUserToNeverListAsyncTask;->cancel()V

    .line 308
    :cond_0
    new-instance v0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$RemoveUserToNeverListAsyncTask;

    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->model:Lcom/microsoft/xbox/service/model/ProfileModel;

    invoke-virtual {v1}, Lcom/microsoft/xbox/service/model/ProfileModel;->getXuid()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$RemoveUserToNeverListAsyncTask;-><init>(Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->removeUserToNeverListAsyncTask:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$RemoveUserToNeverListAsyncTask;

    const/4 v1, 0x1

    .line 309
    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$RemoveUserToNeverListAsyncTask;->load(Z)V

    return-void
.end method

.method public unmuteUser()V
    .locals 2

    .line 322
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->removeUserFromMutedListAsyncTask:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$RemoveUserFromMutedListAsyncTask;

    if-eqz v0, :cond_0

    .line 323
    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$RemoveUserFromMutedListAsyncTask;->cancel()V

    .line 326
    :cond_0
    new-instance v0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$RemoveUserFromMutedListAsyncTask;

    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->model:Lcom/microsoft/xbox/service/model/ProfileModel;

    invoke-virtual {v1}, Lcom/microsoft/xbox/service/model/ProfileModel;->getXuid()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$RemoveUserFromMutedListAsyncTask;-><init>(Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->removeUserFromMutedListAsyncTask:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$RemoveUserFromMutedListAsyncTask;

    const/4 v1, 0x1

    .line 327
    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$RemoveUserFromMutedListAsyncTask;->load(Z)V

    return-void
.end method
