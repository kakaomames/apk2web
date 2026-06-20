.class public Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;
.super Ljava/lang/Object;
.source "ChangeFriendshipDialogViewModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$RemoveUserFromFollowingListAsyncTask;,
        Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$AddUserToFollowingListAsyncTask;,
        Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$RemoveUserFromFavoriteListAsyncTask;,
        Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$AddUserToFavoriteListAsyncTask;,
        Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$AddUserToShareIdentityListAsyncTask;,
        Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$RemoveUserFromShareIdentityListAsyncTask;,
        Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$LoadPersonDataAsyncTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ChangeFriendshipDialogViewModel"


# instance fields
.field private addUserToFavoriteListAsyncTask:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$AddUserToFavoriteListAsyncTask;

.field private addUserToFollowingListAsyncTask:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$AddUserToFollowingListAsyncTask;

.field private addUserToShareIdentityListAsyncTask:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$AddUserToShareIdentityListAsyncTask;

.field private changeFriendshipForm:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;",
            ">;"
        }
    .end annotation
.end field

.field private isAddingUserToFavoriteList:Z

.field private isAddingUserToFollowingList:Z

.field private isAddingUserToShareIdentityList:Z

.field private isFavorite:Z

.field private isFollowing:Z

.field private isLoadingUserProfile:Z

.field private isRemovingUserFromFavoriteList:Z

.field private isRemovingUserFromFollowingList:Z

.field private isRemovingUserFromShareIdentityList:Z

.field private isSharingRealNameEnd:Z

.field private isSharingRealNameStart:Z

.field private loadProfileAsyncTask:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$LoadPersonDataAsyncTask;

.field private model:Lcom/microsoft/xbox/service/model/ProfileModel;

.field private removeUserFromFavoriteListAsyncTask:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$RemoveUserFromFavoriteListAsyncTask;

.field private removeUserFromFollowingListAsyncTask:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$RemoveUserFromFollowingListAsyncTask;

.field private removeUserFromShareIdentityListAsyncTask:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$RemoveUserFromShareIdentityListAsyncTask;

.field private viewModelState:Lcom/microsoft/xbox/toolkit/network/ListState;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/xbox/service/model/ProfileModel;)V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->changeFriendshipForm:Ljava/util/HashSet;

    const/4 v0, 0x0

    .line 46
    iput-boolean v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->isFollowing:Z

    .line 47
    iput-boolean v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->isFavorite:Z

    .line 49
    sget-object v0, Lcom/microsoft/xbox/toolkit/network/ListState;->LoadingState:Lcom/microsoft/xbox/toolkit/network/ListState;

    iput-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->viewModelState:Lcom/microsoft/xbox/toolkit/network/ListState;

    .line 52
    invoke-virtual {p1}, Lcom/microsoft/xbox/service/model/ProfileModel;->getXuid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/xbox/service/model/ProfileModel;->isMeXuid(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    .line 53
    iput-object p1, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->model:Lcom/microsoft/xbox/service/model/ProfileModel;

    return-void
.end method

.method static synthetic access$100(Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->onLoadPersonDataCompleted(Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;Lcom/microsoft/xbox/toolkit/AsyncActionStatus;Z)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->onRemoveUserFromFavoriteListCompleted(Lcom/microsoft/xbox/toolkit/AsyncActionStatus;Z)V

    return-void
.end method

.method static synthetic access$1102(Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;Z)Z
    .locals 0

    .line 24
    iput-boolean p1, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->isRemovingUserFromFavoriteList:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;Lcom/microsoft/xbox/toolkit/AsyncActionStatus;Z)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->onAddUserToFollowingListCompleted(Lcom/microsoft/xbox/toolkit/AsyncActionStatus;Z)V

    return-void
.end method

.method static synthetic access$1302(Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;Z)Z
    .locals 0

    .line 24
    iput-boolean p1, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->isAddingUserToFollowingList:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;Lcom/microsoft/xbox/toolkit/AsyncActionStatus;Z)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->onRemoveUserFromFollowingListCompleted(Lcom/microsoft/xbox/toolkit/AsyncActionStatus;Z)V

    return-void
.end method

.method static synthetic access$1502(Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;Z)Z
    .locals 0

    .line 24
    iput-boolean p1, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->isRemovingUserFromFollowingList:Z

    return p1
.end method

.method static synthetic access$202(Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;Z)Z
    .locals 0

    .line 24
    iput-boolean p1, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->isLoadingUserProfile:Z

    return p1
.end method

.method static synthetic access$300(Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;)Lcom/microsoft/xbox/service/model/ProfileModel;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->model:Lcom/microsoft/xbox/service/model/ProfileModel;

    return-object p0
.end method

.method static synthetic access$402(Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;Z)Z
    .locals 0

    .line 24
    iput-boolean p1, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->isRemovingUserFromShareIdentityList:Z

    return p1
.end method

.method static synthetic access$500(Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->onRemoveUserFromShareIdentityListCompleted(Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V

    return-void
.end method

.method static synthetic access$602(Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;Z)Z
    .locals 0

    .line 24
    iput-boolean p1, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->isAddingUserToShareIdentityList:Z

    return p1
.end method

.method static synthetic access$700(Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->onAddUseToShareIdentityListCompleted(Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V

    return-void
.end method

.method static synthetic access$800(Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;Lcom/microsoft/xbox/toolkit/AsyncActionStatus;Z)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->onAddUserToFavoriteListCompleted(Lcom/microsoft/xbox/toolkit/AsyncActionStatus;Z)V

    return-void
.end method

.method static synthetic access$902(Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;Z)Z
    .locals 0

    .line 24
    iput-boolean p1, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->isAddingUserToFavoriteList:Z

    return p1
.end method

.method private notifyDialogAsyncTaskCompleted()V
    .locals 1

    .line 308
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

    .line 312
    invoke-static {}, Lcom/microsoft/xbox/toolkit/DialogManager;->getInstance()Lcom/microsoft/xbox/toolkit/DialogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/DialogManager;->getManager()Lcom/microsoft/xbox/toolkit/IProjectSpecificDialogManager;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/xle/app/SGProjectSpecificDialogManager;

    invoke-virtual {v0, p1}, Lcom/microsoft/xbox/xle/app/SGProjectSpecificDialogManager;->notifyChangeFriendshipDialogAsyncTaskFailed(Ljava/lang/String;)V

    return-void
.end method

.method private notifyDialogUpdateView()V
    .locals 1

    .line 304
    invoke-static {}, Lcom/microsoft/xbox/toolkit/DialogManager;->getInstance()Lcom/microsoft/xbox/toolkit/DialogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/DialogManager;->getManager()Lcom/microsoft/xbox/toolkit/IProjectSpecificDialogManager;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/xle/app/SGProjectSpecificDialogManager;

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/app/SGProjectSpecificDialogManager;->notifyChangeFriendshipDialogUpdateView()V

    return-void
.end method

.method private onAddUseToShareIdentityListCompleted(Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V
    .locals 1

    const/4 v0, 0x0

    .line 362
    iput-boolean v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->isAddingUserToShareIdentityList:Z

    .line 363
    sget-object v0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$1;->$SwitchMap$com$microsoft$xbox$toolkit$AsyncActionStatus:[I

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

    .line 371
    :cond_0
    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/microsoft/xboxtcui/R$string;->RealNameSharing_ErrorChangeRemove:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->notifyDialogAsyncTaskFailed(Ljava/lang/String;)V

    goto :goto_0

    .line 367
    :cond_1
    invoke-direct {p0}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->notifyDialogAsyncTaskCompleted()V

    :goto_0
    return-void
.end method

.method private onAddUserToFavoriteListCompleted(Lcom/microsoft/xbox/toolkit/AsyncActionStatus;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 392
    iput-boolean v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->isAddingUserToFavoriteList:Z

    .line 394
    sget-object v0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$1;->$SwitchMap$com$microsoft$xbox$toolkit$AsyncActionStatus:[I

    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 p2, 0x4

    if-eq p1, p2, :cond_0

    const/4 p2, 0x5

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 403
    :cond_0
    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/microsoft/xboxtcui/R$string;->RealNameSharing_ErrorChangeRemove:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->notifyDialogAsyncTaskFailed(Ljava/lang/String;)V

    goto :goto_0

    .line 398
    :cond_1
    iput-boolean p2, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->isFavorite:Z

    .line 399
    invoke-direct {p0}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->notifyDialogAsyncTaskCompleted()V

    :goto_0
    return-void
.end method

.method private onAddUserToFollowingListCompleted(Lcom/microsoft/xbox/toolkit/AsyncActionStatus;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 424
    iput-boolean v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->isAddingUserToFollowingList:Z

    .line 426
    sget-object v0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$1;->$SwitchMap$com$microsoft$xbox$toolkit$AsyncActionStatus:[I

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

    .line 436
    :cond_0
    invoke-static {}, Lcom/microsoft/xbox/service/model/ProfileModel;->getMeProfileModel()Lcom/microsoft/xbox/service/model/ProfileModel;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 438
    invoke-virtual {p1}, Lcom/microsoft/xbox/service/model/ProfileModel;->getAddUserToFollowingResult()Lcom/microsoft/xbox/service/network/managers/AddFollowingUserResponseContainer$AddFollowingUserResponse;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 441
    invoke-virtual {p1}, Lcom/microsoft/xbox/service/network/managers/AddFollowingUserResponseContainer$AddFollowingUserResponse;->getAddFollowingRequestStatus()Z

    move-result p2

    if-nez p2, :cond_2

    iget p2, p1, Lcom/microsoft/xbox/service/network/managers/AddFollowingUserResponseContainer$AddFollowingUserResponse;->code:I

    const/16 v0, 0x404

    if-ne p2, v0, :cond_2

    .line 442
    iget-object p1, p1, Lcom/microsoft/xbox/service/network/managers/AddFollowingUserResponseContainer$AddFollowingUserResponse;->description:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->notifyDialogAsyncTaskFailed(Ljava/lang/String;)V

    goto :goto_1

    .line 444
    :cond_2
    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/microsoft/xboxtcui/R$string;->RealNameSharing_ErrorAddingFriend:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->notifyDialogAsyncTaskFailed(Ljava/lang/String;)V

    goto :goto_1

    .line 430
    :cond_3
    iput-boolean p2, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->isFollowing:Z

    .line 431
    invoke-direct {p0}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->notifyDialogAsyncTaskCompleted()V

    :goto_1
    return-void
.end method

.method private onLoadPersonDataCompleted(Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V
    .locals 1

    const/4 v0, 0x0

    .line 341
    iput-boolean v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->isLoadingUserProfile:Z

    .line 342
    sget-object v0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$1;->$SwitchMap$com$microsoft$xbox$toolkit$AsyncActionStatus:[I

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

    .line 355
    :cond_0
    sget-object p1, Lcom/microsoft/xbox/toolkit/network/ListState;->ErrorState:Lcom/microsoft/xbox/toolkit/network/ListState;

    iput-object p1, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->viewModelState:Lcom/microsoft/xbox/toolkit/network/ListState;

    goto :goto_0

    .line 346
    :cond_1
    iget-object p1, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->model:Lcom/microsoft/xbox/service/model/ProfileModel;

    invoke-virtual {p1}, Lcom/microsoft/xbox/service/model/ProfileModel;->getProfileSummaryData()Lcom/microsoft/xbox/service/network/managers/ProfileSummaryResultContainer$ProfileSummaryResult;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 348
    sget-object p1, Lcom/microsoft/xbox/toolkit/network/ListState;->ValidContentState:Lcom/microsoft/xbox/toolkit/network/ListState;

    iput-object p1, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->viewModelState:Lcom/microsoft/xbox/toolkit/network/ListState;

    goto :goto_0

    .line 350
    :cond_2
    sget-object p1, Lcom/microsoft/xbox/toolkit/network/ListState;->ErrorState:Lcom/microsoft/xbox/toolkit/network/ListState;

    iput-object p1, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->viewModelState:Lcom/microsoft/xbox/toolkit/network/ListState;

    .line 358
    :goto_0
    invoke-direct {p0}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->notifyDialogUpdateView()V

    return-void
.end method

.method private onRemoveUserFromFavoriteListCompleted(Lcom/microsoft/xbox/toolkit/AsyncActionStatus;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 408
    iput-boolean v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->isRemovingUserFromFavoriteList:Z

    .line 410
    sget-object v0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$1;->$SwitchMap$com$microsoft$xbox$toolkit$AsyncActionStatus:[I

    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 p2, 0x4

    if-eq p1, p2, :cond_0

    const/4 p2, 0x5

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 419
    :cond_0
    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/microsoft/xboxtcui/R$string;->RealNameSharing_ErrorChangeRemove:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->notifyDialogAsyncTaskFailed(Ljava/lang/String;)V

    goto :goto_0

    .line 414
    :cond_1
    iput-boolean p2, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->isFavorite:Z

    .line 415
    invoke-direct {p0}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->notifyDialogAsyncTaskCompleted()V

    :goto_0
    return-void
.end method

.method private onRemoveUserFromFollowingListCompleted(Lcom/microsoft/xbox/toolkit/AsyncActionStatus;Z)V
    .locals 2

    const/4 v0, 0x0

    .line 450
    iput-boolean v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->isRemovingUserFromFollowingList:Z

    .line 452
    sget-object v1, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$1;->$SwitchMap$com$microsoft$xbox$toolkit$AsyncActionStatus:[I

    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 p2, 0x4

    if-eq p1, p2, :cond_0

    const/4 p2, 0x5

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 464
    :cond_0
    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/microsoft/xboxtcui/R$string;->RealNameSharing_ErrorChangeRemove:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->notifyDialogAsyncTaskFailed(Ljava/lang/String;)V

    goto :goto_0

    .line 456
    :cond_1
    iput-boolean p2, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->isFollowing:Z

    .line 457
    iget-boolean p1, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->isFavorite:Z

    if-eqz p1, :cond_2

    if-nez p2, :cond_2

    .line 458
    iput-boolean v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->isFavorite:Z

    .line 460
    :cond_2
    invoke-direct {p0}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->notifyDialogAsyncTaskCompleted()V

    :goto_0
    return-void
.end method

.method private onRemoveUserFromShareIdentityListCompleted(Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)V
    .locals 1

    const/4 v0, 0x0

    .line 377
    iput-boolean v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->isRemovingUserFromShareIdentityList:Z

    .line 378
    sget-object v0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$1;->$SwitchMap$com$microsoft$xbox$toolkit$AsyncActionStatus:[I

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

    .line 386
    :cond_0
    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/microsoft/xboxtcui/R$string;->RealNameSharing_ErrorChangeRemove:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->notifyDialogAsyncTaskFailed(Ljava/lang/String;)V

    goto :goto_0

    .line 382
    :cond_1
    invoke-direct {p0}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->notifyDialogAsyncTaskCompleted()V

    :goto_0
    return-void
.end method

.method private showError(I)V
    .locals 1

    .line 240
    invoke-static {}, Lcom/microsoft/xbox/toolkit/DialogManager;->getInstance()Lcom/microsoft/xbox/toolkit/DialogManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/microsoft/xbox/toolkit/DialogManager;->showToast(I)V

    return-void
.end method


# virtual methods
.method public addFavoriteUser()V
    .locals 2

    .line 268
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->addUserToFavoriteListAsyncTask:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$AddUserToFavoriteListAsyncTask;

    if-eqz v0, :cond_0

    .line 269
    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$AddUserToFavoriteListAsyncTask;->cancel()V

    .line 271
    :cond_0
    new-instance v0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$AddUserToFavoriteListAsyncTask;

    iget-object v1, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->model:Lcom/microsoft/xbox/service/model/ProfileModel;

    invoke-virtual {v1}, Lcom/microsoft/xbox/service/model/ProfileModel;->getXuid()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$AddUserToFavoriteListAsyncTask;-><init>(Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->addUserToFavoriteListAsyncTask:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$AddUserToFavoriteListAsyncTask;

    const/4 v1, 0x1

    .line 272
    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$AddUserToFavoriteListAsyncTask;->load(Z)V

    return-void
.end method

.method public addFollowingUser()V
    .locals 2

    .line 316
    invoke-static {}, Lcom/microsoft/xbox/service/model/ProfileModel;->hasPrivilegeToAddFriend()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 317
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->addUserToFollowingListAsyncTask:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$AddUserToFollowingListAsyncTask;

    if-eqz v0, :cond_0

    .line 318
    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$AddUserToFollowingListAsyncTask;->cancel()V

    .line 320
    :cond_0
    new-instance v0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$AddUserToFollowingListAsyncTask;

    iget-object v1, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->model:Lcom/microsoft/xbox/service/model/ProfileModel;

    invoke-virtual {v1}, Lcom/microsoft/xbox/service/model/ProfileModel;->getXuid()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$AddUserToFollowingListAsyncTask;-><init>(Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->addUserToFollowingListAsyncTask:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$AddUserToFollowingListAsyncTask;

    const/4 v1, 0x1

    .line 321
    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$AddUserToFollowingListAsyncTask;->load(Z)V

    goto :goto_0

    .line 324
    :cond_1
    sget v0, Lcom/microsoft/xboxtcui/R$string;->Global_MissingPrivilegeError_DialogBody:I

    invoke-direct {p0, v0}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->showError(I)V

    :goto_0
    return-void
.end method

.method public addUserToShareIdentityList()V
    .locals 2

    .line 284
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->addUserToShareIdentityListAsyncTask:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$AddUserToShareIdentityListAsyncTask;

    if-eqz v0, :cond_0

    .line 285
    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$AddUserToShareIdentityListAsyncTask;->cancel()V

    .line 287
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 288
    iget-object v1, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->model:Lcom/microsoft/xbox/service/model/ProfileModel;

    invoke-virtual {v1}, Lcom/microsoft/xbox/service/model/ProfileModel;->getXuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 289
    new-instance v1, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$AddUserToShareIdentityListAsyncTask;

    invoke-direct {v1, p0, v0}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$AddUserToShareIdentityListAsyncTask;-><init>(Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->addUserToShareIdentityListAsyncTask:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$AddUserToShareIdentityListAsyncTask;

    const/4 v0, 0x1

    .line 290
    invoke-virtual {v1, v0}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$AddUserToShareIdentityListAsyncTask;->load(Z)V

    return-void
.end method

.method public clearChangeFriendshipForm()V
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->changeFriendshipForm:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    return-void
.end method

.method public getCallerGamerTag()Ljava/lang/String;
    .locals 1

    .line 106
    invoke-static {}, Lcom/microsoft/xbox/service/model/ProfileModel;->getMeProfileModel()Lcom/microsoft/xbox/service/model/ProfileModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {v0}, Lcom/microsoft/xbox/service/model/ProfileModel;->getGamerTag()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 111
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getCallerMarkedTargetAsIdentityShared()Z
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->model:Lcom/microsoft/xbox/service/model/ProfileModel;

    invoke-virtual {v0}, Lcom/microsoft/xbox/service/model/ProfileModel;->hasCallerMarkedTargetAsIdentityShared()Z

    move-result v0

    return v0
.end method

.method public getCallerShareRealNameStatus()Ljava/lang/String;
    .locals 1

    .line 97
    invoke-static {}, Lcom/microsoft/xbox/service/model/ProfileModel;->getMeProfileModel()Lcom/microsoft/xbox/service/model/ProfileModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {v0}, Lcom/microsoft/xbox/service/model/ProfileModel;->getShareRealNameStatus()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 102
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getDialogButtonText()Ljava/lang/String;
    .locals 2

    .line 244
    iget-boolean v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->isFollowing:Z

    if-eqz v0, :cond_0

    .line 245
    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/microsoft/xboxtcui/R$string;->TextInput_Confirm:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 247
    :cond_0
    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/microsoft/xboxtcui/R$string;->OK_Text:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGamerPicUrl()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->model:Lcom/microsoft/xbox/service/model/ProfileModel;

    invoke-virtual {v0}, Lcom/microsoft/xbox/service/model/ProfileModel;->getGamerPicImageUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGamerScore()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->model:Lcom/microsoft/xbox/service/model/ProfileModel;

    invoke-virtual {v0}, Lcom/microsoft/xbox/service/model/ProfileModel;->getGamerScore()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGamerTag()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->model:Lcom/microsoft/xbox/service/model/ProfileModel;

    invoke-virtual {v0}, Lcom/microsoft/xbox/service/model/ProfileModel;->getGamerTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIsFavorite()Z
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->model:Lcom/microsoft/xbox/service/model/ProfileModel;

    invoke-virtual {v0}, Lcom/microsoft/xbox/service/model/ProfileModel;->hasCallerMarkedTargetAsFavorite()Z

    move-result v0

    return v0
.end method

.method public getIsFollowing()Z
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->model:Lcom/microsoft/xbox/service/model/ProfileModel;

    invoke-virtual {v0}, Lcom/microsoft/xbox/service/model/ProfileModel;->isCallerFollowingTarget()Z

    move-result v0

    return v0
.end method

.method public getIsSharingRealNameEnd()Z
    .locals 1

    .line 236
    iget-boolean v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->isSharingRealNameEnd:Z

    return v0
.end method

.method public getIsSharingRealNameStart()Z
    .locals 1

    .line 232
    iget-boolean v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->isSharingRealNameStart:Z

    return v0
.end method

.method public getPreferredColor()I
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->model:Lcom/microsoft/xbox/service/model/ProfileModel;

    invoke-virtual {v0}, Lcom/microsoft/xbox/service/model/ProfileModel;->getPreferedColor()I

    move-result v0

    return v0
.end method

.method public getRealName()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->model:Lcom/microsoft/xbox/service/model/ProfileModel;

    invoke-virtual {v0}, Lcom/microsoft/xbox/service/model/ProfileModel;->getRealName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getViewModelState()Lcom/microsoft/xbox/toolkit/network/ListState;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->viewModelState:Lcom/microsoft/xbox/toolkit/network/ListState;

    return-object v0
.end method

.method public getXuid()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->model:Lcom/microsoft/xbox/service/model/ProfileModel;

    invoke-virtual {v0}, Lcom/microsoft/xbox/service/model/ProfileModel;->getXuid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isBusy()Z
    .locals 1

    .line 251
    iget-boolean v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->isLoadingUserProfile:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->isAddingUserToFavoriteList:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->isRemovingUserFromFavoriteList:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->isAddingUserToFollowingList:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->isRemovingUserFromFollowingList:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->isAddingUserToShareIdentityList:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->isRemovingUserFromShareIdentityList:Z

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

.method public load()V
    .locals 2

    .line 258
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->loadProfileAsyncTask:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$LoadPersonDataAsyncTask;

    if-eqz v0, :cond_0

    .line 259
    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$LoadPersonDataAsyncTask;->cancel()V

    .line 262
    :cond_0
    new-instance v0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$LoadPersonDataAsyncTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$LoadPersonDataAsyncTask;-><init>(Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$1;)V

    iput-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->loadProfileAsyncTask:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$LoadPersonDataAsyncTask;

    const/4 v1, 0x1

    .line 263
    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$LoadPersonDataAsyncTask;->load(Z)V

    return-void
.end method

.method public onChangeRelationshipCompleted()V
    .locals 8

    .line 157
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->model:Lcom/microsoft/xbox/service/model/ProfileModel;

    invoke-virtual {v0}, Lcom/microsoft/xbox/service/model/ProfileModel;->isCallerFollowingTarget()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    sget-object v0, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$Relationship;->EXISTINGFRIEND:Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$Relationship;

    goto :goto_0

    .line 159
    :cond_0
    sget-object v0, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$Relationship;->NOTCHANGED:Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$Relationship;

    .line 162
    :goto_0
    iget-object v1, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->model:Lcom/microsoft/xbox/service/model/ProfileModel;

    invoke-virtual {v1}, Lcom/microsoft/xbox/service/model/ProfileModel;->hasCallerMarkedTargetAsFavorite()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 163
    sget-object v1, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$FavoriteStatus;->EXISTINGFAVORITE:Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$FavoriteStatus;

    goto :goto_1

    .line 164
    :cond_1
    sget-object v1, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$FavoriteStatus;->EXISTINGNOTFAVORITED:Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$FavoriteStatus;

    .line 166
    :goto_1
    iget-object v2, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->model:Lcom/microsoft/xbox/service/model/ProfileModel;

    invoke-virtual {v2}, Lcom/microsoft/xbox/service/model/ProfileModel;->hasCallerMarkedTargetAsIdentityShared()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 167
    sget-object v2, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$RealNameStatus;->EXISTINGSHARED:Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$RealNameStatus;

    goto :goto_2

    .line 168
    :cond_2
    sget-object v2, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$RealNameStatus;->EXISTINGNOTSHARED:Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$RealNameStatus;

    .line 172
    :goto_2
    sget-object v3, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$GamerType;->NORMAL:Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$GamerType;

    .line 174
    iget-object v4, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->changeFriendshipForm:Ljava/util/HashSet;

    sget-object v5, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;->ShouldAddUserToFriendList:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_3

    .line 175
    sget-object v0, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$Relationship;->ADDFRIEND:Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$Relationship;

    .line 176
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->addFollowingUser()V

    move v4, v5

    goto :goto_3

    :cond_3
    const/4 v4, 0x0

    .line 180
    :goto_3
    iget-object v6, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->changeFriendshipForm:Ljava/util/HashSet;

    sget-object v7, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;->ShouldRemoveUserFromFriendList:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 181
    sget-object v0, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$Relationship;->REMOVEFRIEND:Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$Relationship;

    .line 182
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->removeFollowingUser()V

    move v4, v5

    .line 186
    :cond_4
    iget-object v6, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->changeFriendshipForm:Ljava/util/HashSet;

    sget-object v7, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;->ShouldAddUserToFavoriteList:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 187
    sget-object v1, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$FavoriteStatus;->FAVORITED:Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$FavoriteStatus;

    .line 188
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->addFavoriteUser()V

    move v4, v5

    .line 192
    :cond_5
    iget-object v6, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->changeFriendshipForm:Ljava/util/HashSet;

    sget-object v7, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;->ShouldRemoveUserFromFavoriteList:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 193
    sget-object v1, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$FavoriteStatus;->UNFAVORITED:Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$FavoriteStatus;

    .line 194
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->removeFavoriteUser()V

    move v4, v5

    .line 198
    :cond_6
    iget-object v6, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->changeFriendshipForm:Ljava/util/HashSet;

    sget-object v7, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;->ShouldAddUserToShareIdentityList:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 199
    sget-object v2, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$RealNameStatus;->SHARINGON:Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$RealNameStatus;

    .line 200
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->addUserToShareIdentityList()V

    move v4, v5

    .line 204
    :cond_7
    iget-object v6, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->changeFriendshipForm:Ljava/util/HashSet;

    sget-object v7, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;->ShouldRemoveUserFromShareIdentityList:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 205
    sget-object v2, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$RealNameStatus;->SHARINGOFF:Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$RealNameStatus;

    .line 206
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->removeUserFromShareIdentityList()V

    goto :goto_4

    :cond_8
    move v5, v4

    :goto_4
    if-nez v5, :cond_9

    .line 211
    invoke-direct {p0}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->notifyDialogAsyncTaskCompleted()V

    goto :goto_5

    .line 213
    :cond_9
    invoke-static {v0, v2, v1, v3}, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship;->trackChangeRelationshipDone(Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$Relationship;Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$RealNameStatus;Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$FavoriteStatus;Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$GamerType;)V

    :goto_5
    return-void
.end method

.method public removeFavoriteUser()V
    .locals 2

    .line 276
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->removeUserFromFavoriteListAsyncTask:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$RemoveUserFromFavoriteListAsyncTask;

    if-eqz v0, :cond_0

    .line 277
    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$RemoveUserFromFavoriteListAsyncTask;->cancel()V

    .line 279
    :cond_0
    new-instance v0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$RemoveUserFromFavoriteListAsyncTask;

    iget-object v1, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->model:Lcom/microsoft/xbox/service/model/ProfileModel;

    invoke-virtual {v1}, Lcom/microsoft/xbox/service/model/ProfileModel;->getXuid()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$RemoveUserFromFavoriteListAsyncTask;-><init>(Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->removeUserFromFavoriteListAsyncTask:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$RemoveUserFromFavoriteListAsyncTask;

    const/4 v1, 0x1

    .line 280
    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$RemoveUserFromFavoriteListAsyncTask;->load(Z)V

    return-void
.end method

.method public removeFollowingUser()V
    .locals 2

    .line 329
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->removeUserFromFollowingListAsyncTask:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$RemoveUserFromFollowingListAsyncTask;

    if-eqz v0, :cond_0

    .line 330
    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$RemoveUserFromFollowingListAsyncTask;->cancel()V

    .line 333
    :cond_0
    new-instance v0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$RemoveUserFromFollowingListAsyncTask;

    iget-object v1, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->model:Lcom/microsoft/xbox/service/model/ProfileModel;

    invoke-virtual {v1}, Lcom/microsoft/xbox/service/model/ProfileModel;->getXuid()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$RemoveUserFromFollowingListAsyncTask;-><init>(Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->removeUserFromFollowingListAsyncTask:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$RemoveUserFromFollowingListAsyncTask;

    const/4 v1, 0x1

    .line 334
    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$RemoveUserFromFollowingListAsyncTask;->load(Z)V

    return-void
.end method

.method public removeUserFromShareIdentityList()V
    .locals 2

    .line 294
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->removeUserFromFollowingListAsyncTask:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$RemoveUserFromFollowingListAsyncTask;

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->removeUserFromFavoriteListAsyncTask:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$RemoveUserFromFavoriteListAsyncTask;

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$RemoveUserFromFavoriteListAsyncTask;->cancel()V

    .line 297
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 298
    iget-object v1, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->model:Lcom/microsoft/xbox/service/model/ProfileModel;

    invoke-virtual {v1}, Lcom/microsoft/xbox/service/model/ProfileModel;->getXuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 299
    new-instance v1, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$RemoveUserFromShareIdentityListAsyncTask;

    invoke-direct {v1, p0, v0}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$RemoveUserFromShareIdentityListAsyncTask;-><init>(Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->removeUserFromShareIdentityListAsyncTask:Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$RemoveUserFromShareIdentityListAsyncTask;

    const/4 v0, 0x1

    .line 300
    invoke-virtual {v1, v0}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel$RemoveUserFromShareIdentityListAsyncTask;->load(Z)V

    return-void
.end method

.method public setInitialRealNameSharingState(Z)V
    .locals 0

    .line 223
    iput-boolean p1, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->isSharingRealNameStart:Z

    .line 224
    iput-boolean p1, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->isSharingRealNameEnd:Z

    return-void
.end method

.method public setIsSharingRealNameEnd(Z)V
    .locals 0

    .line 228
    iput-boolean p1, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->isSharingRealNameEnd:Z

    return-void
.end method

.method public setShouldAddUserToFavoriteList(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 124
    iget-object p1, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->changeFriendshipForm:Ljava/util/HashSet;

    sget-object v0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;->ShouldAddUserToFavoriteList:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 126
    :cond_0
    iget-object p1, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->changeFriendshipForm:Ljava/util/HashSet;

    sget-object v0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;->ShouldAddUserToFavoriteList:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public setShouldAddUserToFriendList(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 116
    iget-object p1, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->changeFriendshipForm:Ljava/util/HashSet;

    sget-object v0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;->ShouldAddUserToFriendList:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 118
    :cond_0
    iget-object p1, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->changeFriendshipForm:Ljava/util/HashSet;

    sget-object v0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;->ShouldAddUserToFriendList:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public setShouldAddUserToShareIdentityList(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 140
    iget-object p1, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->changeFriendshipForm:Ljava/util/HashSet;

    sget-object v0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;->ShouldAddUserToShareIdentityList:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 142
    :cond_0
    iget-object p1, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->changeFriendshipForm:Ljava/util/HashSet;

    sget-object v0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;->ShouldAddUserToShareIdentityList:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public setShouldRemoveUserFroShareIdentityList(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 148
    iget-object p1, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->changeFriendshipForm:Ljava/util/HashSet;

    sget-object v0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;->ShouldRemoveUserFromShareIdentityList:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 150
    :cond_0
    iget-object p1, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->changeFriendshipForm:Ljava/util/HashSet;

    sget-object v0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;->ShouldRemoveUserFromShareIdentityList:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public setShouldRemoveUserFromFavoriteList(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 132
    iget-object p1, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->changeFriendshipForm:Ljava/util/HashSet;

    sget-object v0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;->ShouldRemoveUserFromFavoriteList:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 134
    :cond_0
    iget-object p1, p0, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->changeFriendshipForm:Ljava/util/HashSet;

    sget-object v0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;->ShouldRemoveUserFromFavoriteList:Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel$ChangeFriendshipFormOptions;

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method
