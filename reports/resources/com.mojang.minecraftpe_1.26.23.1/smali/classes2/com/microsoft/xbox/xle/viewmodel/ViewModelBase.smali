.class public abstract Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;
.super Ljava/lang/Object;
.source "ViewModelBase.java"

# interfaces
.implements Lcom/microsoft/xbox/toolkit/XLEObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase$NavigationData;,
        Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase$NavigationType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/microsoft/xbox/toolkit/XLEObserver<",
        "Lcom/microsoft/xbox/service/model/UpdateData;",
        ">;"
    }
.end annotation


# static fields
.field protected static LAUNCH_TIME_OUT:I = 0x1388

.field public static final TAG_PAGE_LOADING_TIME:Ljava/lang/String; = "performance_measure_page_loadingtime"


# instance fields
.field protected LifetimeInMinutes:I

.field protected adapter:Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;

.field protected isActive:Z

.field protected isForeground:Z

.field protected isLaunching:Z

.field protected launchTimeoutHandler:Ljava/lang/Runnable;

.field protected listIndex:I

.field private nextScreenData:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase$NavigationData;

.field protected offset:I

.field private onlyProcessExceptionsAndShowToastsWhenActive:Z

.field private parent:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;

.field private final screen:Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

.field private shouldHideScreen:Z

.field private showNoNetworkPopup:Z

.field private updateExceptions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/microsoft/xbox/service/model/UpdateType;",
            "Lcom/microsoft/xbox/toolkit/XLEException;",
            ">;"
        }
    .end annotation
.end field

.field private updateTypesToCheck:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/microsoft/xbox/service/model/UpdateType;",
            ">;"
        }
    .end annotation
.end field

.field private updating:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 100
    invoke-direct {p0, v2, v0, v1}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;-><init>(Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;ZZ)V

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 96
    invoke-direct {p0, p1, v0, v1}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;-><init>(Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;ZZ)V

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;ZZ)V
    .locals 1

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3c

    .line 75
    iput v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->LifetimeInMinutes:I

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->updateExceptions:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 80
    iput-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->nextScreenData:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase$NavigationData;

    const/4 v0, 0x0

    .line 81
    iput-boolean v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->updating:Z

    .line 88
    iput-boolean v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->isLaunching:Z

    .line 108
    iput-object p1, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->screen:Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    .line 109
    iput-boolean p2, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->showNoNetworkPopup:Z

    .line 110
    iput-boolean p3, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->onlyProcessExceptionsAndShowToastsWhenActive:Z

    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 1

    const/4 v0, 0x0

    .line 104
    invoke-direct {p0, v0, p1, p2}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;-><init>(Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;ZZ)V

    return-void
.end method

.method private shouldProcessErrors()Z
    .locals 1

    .line 570
    iget-boolean v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->onlyProcessExceptionsAndShowToastsWhenActive:Z

    if-eqz v0, :cond_0

    .line 571
    iget-boolean v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->isActive:Z

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method protected NavigateTo(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 501
    invoke-virtual {p0, p1, v0}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->NavigateTo(Ljava/lang/Class;Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;)V

    return-void
.end method

.method protected NavigateTo(Ljava/lang/Class;Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;",
            ">;",
            "Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 496
    invoke-virtual {p0, p1, v0, p2}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->NavigateTo(Ljava/lang/Class;ZLcom/microsoft/xbox/toolkit/ui/ActivityParameters;)V

    return-void
.end method

.method protected NavigateTo(Ljava/lang/Class;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;",
            ">;Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 518
    invoke-virtual {p0, p1, p2, v0}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->NavigateTo(Ljava/lang/Class;ZLcom/microsoft/xbox/toolkit/ui/ActivityParameters;)V

    return-void
.end method

.method protected NavigateTo(Ljava/lang/Class;ZLcom/microsoft/xbox/toolkit/ui/ActivityParameters;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;",
            ">;Z",
            "Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;",
            ")V"
        }
    .end annotation

    .line 506
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->cancelLaunchTimeout()V

    .line 507
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->isBlockingBusy()Z

    move-result v0

    const-string v1, "We shouldn\'t navigate to a new screen if the current screen is blocking"

    invoke-static {v1, v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertFalse(Ljava/lang/String;Z)V

    .line 508
    iget-boolean v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->updating:Z

    if-eqz v0, :cond_1

    .line 509
    new-instance p3, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase$NavigationData;

    if-eqz p2, :cond_0

    sget-object p2, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase$NavigationType;->Push:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase$NavigationType;

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase$NavigationType;->PopReplace:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase$NavigationType;

    :goto_0
    invoke-direct {p3, p0, p1, p2}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase$NavigationData;-><init>(Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;Ljava/lang/Class;Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase$NavigationType;)V

    iput-object p3, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->nextScreenData:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase$NavigationData;

    goto :goto_1

    .line 511
    :cond_1
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->isBlockingBusy()Z

    move-result v0

    invoke-static {v1, v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertFalse(Ljava/lang/String;Z)V

    .line 512
    invoke-static {}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getInstance()Lcom/microsoft/xbox/toolkit/ui/NavigationManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->NavigateTo(Ljava/lang/Class;ZLcom/microsoft/xbox/toolkit/ui/ActivityParameters;)V

    :goto_1
    return-void
.end method

.method public TEST_induceGoBack()V
    .locals 0

    return-void
.end method

.method protected adapterUpdateView()V
    .locals 1

    .line 594
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->adapter:Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;

    if-eqz v0, :cond_0

    .line 595
    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->updateView()V

    :cond_0
    return-void
.end method

.method public cancelLaunch()V
    .locals 1

    const/4 v0, 0x0

    .line 590
    iput-boolean v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->isLaunching:Z

    return-void
.end method

.method protected cancelLaunchTimeout()V
    .locals 2

    const/4 v0, 0x0

    .line 583
    iput-boolean v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->isLaunching:Z

    .line 584
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->launchTimeoutHandler:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 585
    sget-object v0, Lcom/microsoft/xbox/toolkit/ThreadManager;->Handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->launchTimeoutHandler:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method protected checkErrorCode(Lcom/microsoft/xbox/service/model/UpdateType;J)Z
    .locals 4

    .line 437
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->updateExceptions:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->updateExceptions:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/toolkit/XLEException;

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/XLEException;->getErrorCode()J

    move-result-wide v2

    cmp-long p2, v2, p2

    if-nez p2, :cond_1

    .line 438
    iget-object p2, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->updateExceptions:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/microsoft/xbox/toolkit/XLEException;

    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/XLEException;->getIsHandled()Z

    move-result p1

    if-eqz p1, :cond_0

    return v1

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->screen:Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    if-eqz v0, :cond_0

    .line 35
    invoke-virtual {v0, p1}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->xleFindViewId(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public forceRefresh()V
    .locals 1

    const/4 v0, 0x1

    .line 319
    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->load(Z)V

    .line 320
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->adapter:Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;

    if-eqz v0, :cond_0

    .line 321
    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->updateView()V

    :cond_0
    return-void
.end method

.method public forceUpdateViewImmediately()V
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->adapter:Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;

    if-eqz v0, :cond_0

    .line 262
    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->forceUpdateViewImmediately()V

    :cond_0
    return-void
.end method

.method public getAdapter()Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->adapter:Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;

    return-object v0
.end method

.method public getAndResetListOffset()I
    .locals 2

    .line 184
    iget v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->offset:I

    const/4 v1, 0x0

    .line 185
    iput v1, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->offset:I

    return v0
.end method

.method public getAndResetListPosition()I
    .locals 2

    .line 178
    iget v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->listIndex:I

    const/4 v1, 0x0

    .line 179
    iput v1, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->listIndex:I

    return v0
.end method

.method public getAnimateIn(Z)Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage;
    .locals 2

    .line 474
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->adapter:Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;

    invoke-virtual {v0, p1}, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->getAnimateIn(Z)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 476
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 477
    new-instance v0, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage;

    invoke-direct {v0}, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage;-><init>()V

    .line 478
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/xbox/toolkit/anim/XLEAnimation;

    .line 479
    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage;->add(Lcom/microsoft/xbox/toolkit/anim/XLEAnimation;)V

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getAnimateOut(Z)Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage;
    .locals 2

    .line 461
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->adapter:Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;

    invoke-virtual {v0, p1}, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->getAnimateOut(Z)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 463
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 464
    new-instance v0, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage;

    invoke-direct {v0}, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage;-><init>()V

    .line 465
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/xbox/toolkit/anim/XLEAnimation;

    .line 466
    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage;->add(Lcom/microsoft/xbox/toolkit/anim/XLEAnimation;)V

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getBlockingStatusText()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getIsActive()Z
    .locals 1

    .line 562
    iget-boolean v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->isActive:Z

    return v0
.end method

.method protected getParent()Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->parent:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;

    return-object v0
.end method

.method public getScreen()Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->screen:Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    return-object v0
.end method

.method public getShouldHideScreen()Z
    .locals 1

    .line 165
    iget-boolean v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->shouldHideScreen:Z

    return v0
.end method

.method public getShowNoNetworkPopup()Z
    .locals 1

    .line 566
    iget-boolean v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->showNoNetworkPopup:Z

    return v0
.end method

.method public isBlockingBusy()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract isBusy()Z
.end method

.method public leaveViewModel(Ljava/lang/Runnable;)V
    .locals 0

    .line 615
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public load()V
    .locals 2

    .line 314
    invoke-static {}, Lcom/microsoft/xbox/xle/viewmodel/XLEGlobalData;->getInstance()Lcom/microsoft/xbox/xle/viewmodel/XLEGlobalData;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/xle/viewmodel/XLEGlobalData;->CheckDrainShouldRefresh(Ljava/lang/Class;)Z

    move-result v0

    .line 315
    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->load(Z)V

    return-void
.end method

.method public abstract load(Z)V
.end method

.method protected logOut(Z)V
    .locals 0

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public onAnimateInCompleted()V
    .locals 1

    .line 490
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->adapter:Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;

    if-eqz v0, :cond_0

    .line 491
    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->onAnimateInCompleted()V

    :cond_0
    return-void
.end method

.method public onApplicationPause()V
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->adapter:Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;

    if-eqz v0, :cond_0

    .line 225
    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->onApplicationPause()V

    :cond_0
    return-void
.end method

.method public onApplicationResume()V
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->adapter:Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;

    if-eqz v0, :cond_0

    .line 231
    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->onApplicationResume()V

    :cond_0
    return-void
.end method

.method public onBackButtonPressed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onChildViewModelChanged(Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;)V
    .locals 0

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->adapter:Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;

    if-eqz v0, :cond_0

    .line 244
    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->onDestroy()V

    :cond_0
    const/4 v0, 0x0

    .line 248
    iput-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->adapter:Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 217
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->cancelLaunchTimeout()V

    .line 218
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->adapter:Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;

    if-eqz v0, :cond_0

    .line 219
    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->onPause()V

    :cond_0
    return-void
.end method

.method public abstract onRehydrate()V
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->adapter:Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;

    if-eqz v0, :cond_0

    .line 237
    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->onResume()V

    .line 238
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->adapter:Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->updateView()V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onSetActive()V
    .locals 1

    const/4 v0, 0x1

    .line 545
    iput-boolean v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->isActive:Z

    .line 546
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->adapter:Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;

    if-eqz v0, :cond_0

    .line 547
    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->onSetActive()V

    :cond_0
    return-void
.end method

.method public onSetInactive()V
    .locals 1

    .line 553
    invoke-static {}, Lcom/microsoft/xbox/toolkit/DialogManager;->getInstance()Lcom/microsoft/xbox/toolkit/DialogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/DialogManager;->dismissToast()V

    const/4 v0, 0x0

    .line 555
    iput-boolean v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->isActive:Z

    .line 556
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->adapter:Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;

    if-eqz v0, :cond_0

    .line 557
    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->onSetInactive()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    const/4 v0, 0x1

    .line 155
    iput-boolean v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->isForeground:Z

    .line 157
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->onStartOverride()V

    .line 159
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->adapter:Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;

    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->onStart()V

    :cond_0
    return-void
.end method

.method protected abstract onStartOverride()V
.end method

.method public onStop()V
    .locals 1

    const/4 v0, 0x0

    .line 195
    iput-boolean v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->isForeground:Z

    .line 198
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->adapter:Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;

    if-eqz v0, :cond_0

    .line 199
    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->onStop()V

    .line 203
    :cond_0
    invoke-static {}, Lcom/microsoft/xbox/toolkit/DialogManager;->getInstance()Lcom/microsoft/xbox/toolkit/DialogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/DialogManager;->dismissBlocking()V

    .line 204
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->shouldDismissTopNoFatalAlert()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 205
    invoke-static {}, Lcom/microsoft/xbox/toolkit/DialogManager;->getInstance()Lcom/microsoft/xbox/toolkit/DialogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/DialogManager;->dismissTopNonFatalAlert()V

    .line 207
    :cond_1
    invoke-static {}, Lcom/microsoft/xbox/toolkit/DialogManager;->getInstance()Lcom/microsoft/xbox/toolkit/DialogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/DialogManager;->dismissToast()V

    .line 209
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->onStopOverride()V

    return-void
.end method

.method protected abstract onStopOverride()V
.end method

.method public onTombstone()V
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->adapter:Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;

    if-eqz v0, :cond_0

    .line 253
    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->onDestroy()V

    :cond_0
    const/4 v0, 0x0

    .line 257
    iput-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->adapter:Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;

    return-void
.end method

.method protected onUpdateFinished()V
    .locals 1

    const/4 v0, 0x0

    .line 456
    iput-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->updateTypesToCheck:Ljava/util/EnumSet;

    .line 457
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->updateExceptions:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public setAsPivotPane()V
    .locals 1

    const/4 v0, 0x1

    .line 578
    iput-boolean v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->showNoNetworkPopup:Z

    .line 579
    iput-boolean v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->onlyProcessExceptionsAndShowToastsWhenActive:Z

    return-void
.end method

.method public setListPosition(II)V
    .locals 0

    .line 173
    iput p1, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->listIndex:I

    .line 174
    iput p2, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->offset:I

    return-void
.end method

.method protected setParent(Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->parent:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;

    return-void
.end method

.method public setScreenState(I)V
    .locals 1

    .line 600
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->adapter:Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;

    if-eqz v0, :cond_0

    .line 601
    invoke-virtual {v0, p1}, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->setScreenState(I)V

    :cond_0
    return-void
.end method

.method public setShouldHideScreen(Z)V
    .locals 0

    .line 169
    iput-boolean p1, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->shouldHideScreen:Z

    return-void
.end method

.method protected setUpdateTypesToCheck(Ljava/util/EnumSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lcom/microsoft/xbox/service/model/UpdateType;",
            ">;)V"
        }
    .end annotation

    .line 432
    iput-object p1, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->updateTypesToCheck:Ljava/util/EnumSet;

    .line 433
    iget-object p1, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->updateExceptions:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method protected shouldDismissTopNoFatalAlert()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public shouldRefreshAsPivotHeader()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected showError(I)V
    .locals 1

    .line 541
    invoke-static {}, Lcom/microsoft/xbox/toolkit/DialogManager;->getInstance()Lcom/microsoft/xbox/toolkit/DialogManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/microsoft/xbox/toolkit/DialogManager;->showToast(I)V

    return-void
.end method

.method protected showMustActDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Z)V
    .locals 0

    return-void
.end method

.method protected showOkCancelDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 7

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 527
    invoke-virtual/range {v0 .. v6}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->showOkCancelDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method protected showOkCancelDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 1

    .line 533
    invoke-direct {p0}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->shouldProcessErrors()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 537
    :cond_0
    invoke-static/range {p1 .. p6}, Lcom/microsoft/xbox/xle/app/XLEUtil;->showOkCancelDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final update(Lcom/microsoft/xbox/toolkit/AsyncResult;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/xbox/toolkit/AsyncResult<",
            "Lcom/microsoft/xbox/service/model/UpdateData;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 340
    iput-boolean v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->updating:Z

    .line 342
    iget-object v1, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->nextScreenData:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase$NavigationData;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-static {v1}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    const/4 v1, 0x0

    .line 344
    iput-object v1, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->nextScreenData:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase$NavigationData;

    .line 346
    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/AsyncResult;->getException()Lcom/microsoft/xbox/toolkit/XLEException;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 347
    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/AsyncResult;->getException()Lcom/microsoft/xbox/toolkit/XLEException;

    move-result-object v3

    invoke-virtual {v3}, Lcom/microsoft/xbox/toolkit/XLEException;->getErrorCode()J

    move-result-wide v3

    .line 348
    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/AsyncResult;->getException()Lcom/microsoft/xbox/toolkit/XLEException;

    move-result-object v5

    invoke-virtual {v5}, Lcom/microsoft/xbox/toolkit/XLEException;->getIsHandled()Z

    move-result v5

    if-nez v5, :cond_1

    const-wide/16 v5, 0x3ed

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    .line 351
    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/AsyncResult;->getException()Lcom/microsoft/xbox/toolkit/XLEException;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/microsoft/xbox/toolkit/XLEException;->setIsHandled(Z)V

    .line 360
    :cond_1
    iget-object v3, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->nextScreenData:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase$NavigationData;

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->adapter:Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;

    if-nez v3, :cond_2

    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->updateWithoutAdapter()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 362
    :cond_2
    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->updateOverride(Lcom/microsoft/xbox/toolkit/AsyncResult;)V

    .line 366
    :cond_3
    iput-boolean v2, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->updating:Z

    .line 369
    iget-object v3, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->nextScreenData:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase$NavigationData;

    if-eqz v3, :cond_7

    .line 371
    :try_start_0
    sget-object p1, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase$1;->$SwitchMap$com$microsoft$xbox$xle$viewmodel$ViewModelBase$NavigationType:[I

    iget-object v3, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->nextScreenData:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase$NavigationData;

    invoke-virtual {v3}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase$NavigationData;->getNavigationType()Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase$NavigationType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase$NavigationType;->ordinal()I

    move-result v3

    aget p1, p1, v3

    if-eq p1, v0, :cond_6

    const/4 v0, 0x2

    if-eq p1, v0, :cond_5

    const/4 v0, 0x3

    if-eq p1, v0, :cond_4

    goto/16 :goto_1

    .line 379
    :cond_4
    invoke-static {}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getInstance()Lcom/microsoft/xbox/toolkit/ui/NavigationManager;

    move-result-object p1

    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->nextScreenData:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase$NavigationData;

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase$NavigationData;->getScreenClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->GotoScreenWithPop(Ljava/lang/Class;)V

    goto/16 :goto_1

    .line 376
    :cond_5
    invoke-static {}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getInstance()Lcom/microsoft/xbox/toolkit/ui/NavigationManager;

    move-result-object p1

    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->nextScreenData:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase$NavigationData;

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase$NavigationData;->getScreenClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0, v2}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->NavigateTo(Ljava/lang/Class;Z)V

    goto/16 :goto_1

    .line 373
    :cond_6
    invoke-static {}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getInstance()Lcom/microsoft/xbox/toolkit/ui/NavigationManager;

    move-result-object p1

    iget-object v2, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->nextScreenData:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase$NavigationData;

    invoke-virtual {v2}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase$NavigationData;->getScreenClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1, v2, v0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->NavigateTo(Ljava/lang/Class;Z)V

    :try_end_0
    .catch Lcom/microsoft/xbox/toolkit/XLEException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 387
    :cond_7
    invoke-direct {p0}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->shouldProcessErrors()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 389
    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/AsyncResult;->getException()Lcom/microsoft/xbox/toolkit/XLEException;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/AsyncResult;->getException()Lcom/microsoft/xbox/toolkit/XLEException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/XLEException;->getIsHandled()Z

    move-result v0

    if-nez v0, :cond_8

    .line 392
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->updateTypesToCheck:Ljava/util/EnumSet;

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/AsyncResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/microsoft/xbox/service/model/UpdateData;

    invoke-virtual {v2}, Lcom/microsoft/xbox/service/model/UpdateData;->getUpdateType()Lcom/microsoft/xbox/service/model/UpdateType;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 393
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->updateExceptions:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/AsyncResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/microsoft/xbox/service/model/UpdateData;

    invoke-virtual {v2}, Lcom/microsoft/xbox/service/model/UpdateData;->getUpdateType()Lcom/microsoft/xbox/service/model/UpdateType;

    move-result-object v2

    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/AsyncResult;->getException()Lcom/microsoft/xbox/toolkit/XLEException;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    :cond_8
    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/AsyncResult;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/service/model/UpdateData;

    invoke-virtual {v0}, Lcom/microsoft/xbox/service/model/UpdateData;->getIsFinal()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 399
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->updateTypesToCheck:Ljava/util/EnumSet;

    if-eqz v0, :cond_9

    .line 400
    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/AsyncResult;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/microsoft/xbox/service/model/UpdateData;

    invoke-virtual {p1}, Lcom/microsoft/xbox/service/model/UpdateData;->getUpdateType()Lcom/microsoft/xbox/service/model/UpdateType;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->remove(Ljava/lang/Object;)Z

    .line 404
    :cond_9
    iget-object p1, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->updateTypesToCheck:Ljava/util/EnumSet;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Ljava/util/EnumSet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 405
    :cond_a
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->onUpdateFinished()V

    .line 406
    iput-object v1, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->updateTypesToCheck:Ljava/util/EnumSet;

    .line 413
    :catch_0
    :cond_b
    :goto_1
    iput-object v1, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->nextScreenData:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase$NavigationData;

    return-void
.end method

.method protected updateAdapter()V
    .locals 1

    const/4 v0, 0x1

    .line 135
    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->updateAdapter(Z)V

    return-void
.end method

.method protected updateAdapter(Z)V
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->adapter:Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;

    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/viewmodel/AdapterBase;->updateView()V

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->parent:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 143
    invoke-virtual {v0, p0}, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->onChildViewModelChanged(Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;)V

    :cond_1
    return-void
.end method

.method protected updateOverride(Lcom/microsoft/xbox/toolkit/AsyncResult;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/xbox/toolkit/AsyncResult<",
            "Lcom/microsoft/xbox/service/model/UpdateData;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method protected updateTypesToCheckHadAnyErrors()Z
    .locals 1

    .line 452
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->updateExceptions:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected updateTypesToCheckIsEmpty()Z
    .locals 1

    .line 448
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;->updateTypesToCheck:Ljava/util/EnumSet;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/EnumSet;->isEmpty()Z

    move-result v0

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

.method protected updateWithoutAdapter()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
