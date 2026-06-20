.class public Lcom/microsoft/xbox/toolkit/ui/NavigationManager;
.super Ljava/lang/Object;
.source "NavigationManager.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xbox/toolkit/ui/NavigationManager$RestartRunner;,
        Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerHolder;,
        Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;,
        Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationCallbacks;,
        Lcom/microsoft/xbox/toolkit/ui/NavigationManager$OnNavigatedListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NavigationManager"


# instance fields
.field private animationState:Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;

.field final callAfterAnimation:Ljava/lang/Runnable;

.field private cannotNavigateTripwire:Z

.field private currentAnimation:Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage;

.field private goingBack:Z

.field private navigationCallbacks:Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationCallbacks;

.field private navigationListener:Lcom/microsoft/xbox/toolkit/ui/NavigationManager$OnNavigatedListener;

.field private final navigationParameters:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;",
            ">;"
        }
    .end annotation
.end field

.field private final navigationStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;",
            ">;"
        }
    .end annotation
.end field

.field private transitionAnimate:Z

.field private transitionLambda:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>()V
    .locals 4

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->navigationParameters:Ljava/util/Stack;

    .line 39
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->navigationStack:Ljava/util/Stack;

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->currentAnimation:Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage;

    .line 41
    sget-object v1, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;->NONE:Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;

    iput-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->animationState:Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;

    .line 42
    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->transitionLambda:Ljava/lang/Runnable;

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->goingBack:Z

    const/4 v1, 0x1

    .line 44
    iput-boolean v1, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->transitionAnimate:Z

    .line 45
    iput-boolean v0, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->cannotNavigateTripwire:Z

    .line 577
    new-instance v2, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$2;

    invoke-direct {v2, p0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$2;-><init>(Lcom/microsoft/xbox/toolkit/ui/NavigationManager;)V

    iput-object v2, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->callAfterAnimation:Ljava/lang/Runnable;

    .line 51
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    sget-object v3, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    if-ne v2, v3, :cond_0

    move v0, v1

    :cond_0
    const-string v1, "You must access navigation manager on UI thread."

    invoke-static {v1, v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Ljava/lang/String;Z)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/microsoft/xbox/toolkit/ui/NavigationManager$1;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;-><init>()V

    return-void
.end method

.method private OnAnimationEnd()V
    .locals 2

    .line 585
    sget-object v0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$3;->$SwitchMap$com$microsoft$xbox$toolkit$ui$NavigationManager$NavigationManagerAnimationState:[I

    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->animationState:Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;

    invoke-virtual {v1}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 598
    :cond_0
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->transitionLambda:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 602
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getCurrentActivity()Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 603
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getCurrentActivity()Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    move-result-object v0

    iget-boolean v1, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->goingBack:Z

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->getAnimateIn(Z)Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 606
    :goto_0
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->navigationCallbacks:Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationCallbacks;

    if-eqz v1, :cond_2

    .line 607
    invoke-interface {v1}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationCallbacks;->onBeforeNavigatingIn()V

    .line 610
    :cond_2
    sget-object v1, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;->ANIMATING_IN:Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;

    invoke-direct {p0, v0, v1}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->startAnimation(Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage;Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;)V

    goto :goto_1

    .line 587
    :cond_3
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->navigationCallbacks:Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationCallbacks;

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    .line 588
    invoke-interface {v0, v1}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationCallbacks;->setAnimationBlocking(Z)V

    .line 591
    :cond_4
    sget-object v0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;->NONE:Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->animationState:Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;

    .line 592
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getCurrentActivity()Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 593
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getCurrentActivity()Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->onAnimateInCompleted()V

    :cond_5
    :goto_1
    return-void
.end method

.method private ReplaceOnAnimationEnd(ZLjava/lang/Runnable;Z)V
    .locals 2

    .line 569
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->animationState:Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;

    sget-object v1, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;->ANIMATING_OUT:Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->animationState:Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;

    sget-object v1, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;->ANIMATING_IN:Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    .line 570
    sget-object v0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;->ANIMATING_OUT:Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->animationState:Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;

    .line 572
    iput-object p2, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->transitionLambda:Ljava/lang/Runnable;

    .line 573
    iput-boolean p3, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->transitionAnimate:Z

    .line 574
    iput-boolean p1, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->goingBack:Z

    return-void
.end method

.method private Size()I
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->navigationStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    return v0
.end method

.method private Transition(ZLjava/lang/Runnable;Z)V
    .locals 0

    .line 558
    iput-object p2, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->transitionLambda:Ljava/lang/Runnable;

    .line 559
    iput-boolean p3, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->transitionAnimate:Z

    .line 560
    iput-boolean p1, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->goingBack:Z

    .line 563
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getCurrentActivity()Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getCurrentActivity()Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->getAnimateOut(Z)Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->currentAnimation:Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage;

    .line 565
    sget-object p2, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;->ANIMATING_OUT:Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;

    invoke-direct {p0, p1, p2}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->startAnimation(Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage;Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;)V

    return-void
.end method

.method static synthetic access$102(Lcom/microsoft/xbox/toolkit/ui/NavigationManager;Z)Z
    .locals 0

    .line 15
    iput-boolean p1, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->cannotNavigateTripwire:Z

    return p1
.end method

.method static synthetic access$200(Lcom/microsoft/xbox/toolkit/ui/NavigationManager;)Ljava/util/Stack;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->navigationStack:Ljava/util/Stack;

    return-object p0
.end method

.method static synthetic access$300(Lcom/microsoft/xbox/toolkit/ui/NavigationManager;)Ljava/util/Stack;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->navigationParameters:Ljava/util/Stack;

    return-object p0
.end method

.method static synthetic access$400(Lcom/microsoft/xbox/toolkit/ui/NavigationManager;)Lcom/microsoft/xbox/toolkit/ui/NavigationManager$OnNavigatedListener;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->navigationListener:Lcom/microsoft/xbox/toolkit/ui/NavigationManager$OnNavigatedListener;

    return-object p0
.end method

.method static synthetic access$500(Lcom/microsoft/xbox/toolkit/ui/NavigationManager;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->OnAnimationEnd()V

    return-void
.end method

.method public static getInstance()Lcom/microsoft/xbox/toolkit/ui/NavigationManager;
    .locals 1

    .line 60
    sget-object v0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerHolder;->instance:Lcom/microsoft/xbox/toolkit/ui/NavigationManager;

    return-object v0
.end method

.method private startAnimation(Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage;Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;)V
    .locals 1

    .line 617
    iput-object p2, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->animationState:Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;

    .line 618
    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->currentAnimation:Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage;

    .line 620
    iget-object p2, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->navigationCallbacks:Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationCallbacks;

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    .line 621
    invoke-interface {p2, v0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationCallbacks;->setAnimationBlocking(Z)V

    .line 624
    :cond_0
    iget-boolean p2, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->transitionAnimate:Z

    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    .line 625
    iget-object p2, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->callAfterAnimation:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage;->setOnAnimationEndRunnable(Ljava/lang/Runnable;)V

    .line 626
    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage;->startAnimation()V

    goto :goto_0

    .line 628
    :cond_1
    iget-object p1, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->callAfterAnimation:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method


# virtual methods
.method public CountPopsToScreen(Ljava/lang/Class;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;",
            ">;)I"
        }
    .end annotation

    .line 187
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->navigationStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 189
    iget-object v2, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->navigationStack:Ljava/util/Stack;

    invoke-virtual {v2, v1}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    .line 190
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sub-int/2addr v0, v1

    return v0

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public varargs GotoScreenWithPop(Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;Ljava/lang/Class;[Ljava/lang/Class;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;",
            ">;[",
            "Ljava/lang/Class<",
            "+",
            "Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;",
            ">;)V"
        }
    .end annotation
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    .line 292
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->navigationStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v2, v1

    :goto_0
    const/4 v3, 0x0

    if-ltz v2, :cond_2

    .line 296
    iget-object v4, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->navigationStack:Ljava/util/Stack;

    invoke-virtual {v4, v2}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    .line 297
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 298
    array-length v5, p3

    move v6, v3

    :goto_1
    if-ge v6, v5, :cond_1

    aget-object v7, p3, v6

    if-ne v7, v4, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    :goto_2
    if-eqz v7, :cond_5

    if-ne v7, p2, :cond_4

    if-ne v2, v1, :cond_3

    .line 311
    invoke-virtual {p0, p1, v3}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->RestartCurrentScreen(Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;Z)V

    goto :goto_3

    :cond_3
    sub-int/2addr v1, v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object v0, p0

    move-object v6, p1

    .line 313
    invoke-virtual/range {v0 .. v6}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->PopScreensAndReplace(ILjava/lang/Class;ZZZLcom/microsoft/xbox/toolkit/ui/ActivityParameters;)V

    goto :goto_3

    :cond_4
    sub-int/2addr v1, v2

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v3, 0x1

    move-object v0, p0

    move-object v2, p2

    move v4, v5

    move v5, v7

    move-object v6, p1

    .line 317
    invoke-virtual/range {v0 .. v6}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->PopScreensAndReplace(ILjava/lang/Class;ZZZLcom/microsoft/xbox/toolkit/ui/ActivityParameters;)V

    goto :goto_3

    .line 321
    :cond_5
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->Size()I

    move-result v1

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v3, 0x1

    move-object v0, p0

    move-object v2, p2

    move v4, v5

    move v5, v7

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->PopScreensAndReplace(ILjava/lang/Class;ZZZLcom/microsoft/xbox/toolkit/ui/ActivityParameters;)V

    :goto_3
    return-void
.end method

.method public GotoScreenWithPop(Ljava/lang/Class;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;",
            ">;)V"
        }
    .end annotation
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    .line 267
    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->CountPopsToScreen(Ljava/lang/Class;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object v0, p0

    .line 269
    invoke-virtual/range {v0 .. v5}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->PopScreensAndReplace(ILjava/lang/Class;ZZZ)V

    goto :goto_0

    :cond_0
    if-gez v1, :cond_1

    .line 272
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->Size()I

    move-result v7

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v9, 0x1

    move-object v6, p0

    move-object v8, p1

    invoke-virtual/range {v6 .. v11}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->PopScreensAndReplace(ILjava/lang/Class;ZZZ)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 275
    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->RestartCurrentScreen(Z)V

    :goto_0
    return-void
.end method

.method public GotoScreenWithPush(Ljava/lang/Class;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;",
            ">;)V"
        }
    .end annotation
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    .line 335
    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->CountPopsToScreen(Ljava/lang/Class;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object v0, p0

    .line 337
    invoke-virtual/range {v0 .. v5}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->PopScreensAndReplace(ILjava/lang/Class;ZZZ)V

    goto :goto_0

    :cond_0
    if-gez v1, :cond_1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x1

    move-object v6, p0

    move-object v8, p1

    .line 340
    invoke-virtual/range {v6 .. v11}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->PopScreensAndReplace(ILjava/lang/Class;ZZZ)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 342
    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->RestartCurrentScreen(Z)V

    :goto_0
    return-void
.end method

.method public GotoScreenWithPush(Ljava/lang/Class;Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;)V
    .locals 13
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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    .line 356
    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->CountPopsToScreen(Ljava/lang/Class;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object v0, p0

    move-object v6, p2

    .line 358
    invoke-virtual/range {v0 .. v6}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->PopScreensAndReplace(ILjava/lang/Class;ZZZLcom/microsoft/xbox/toolkit/ui/ActivityParameters;)V

    goto :goto_0

    :cond_0
    if-gez v1, :cond_1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x1

    move-object v6, p0

    move-object v8, p1

    move-object v12, p2

    .line 361
    invoke-virtual/range {v6 .. v12}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->PopScreensAndReplace(ILjava/lang/Class;ZZZLcom/microsoft/xbox/toolkit/ui/ActivityParameters;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 363
    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->RestartCurrentScreen(Z)V

    :goto_0
    return-void
.end method

.method public IsScreenOnStack(Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;",
            ">;)Z"
        }
    .end annotation

    .line 178
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->navigationStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    .line 179
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public NavigateTo(Ljava/lang/Class;Z)V
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

    .line 135
    invoke-virtual {p0, p1, p2, v0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->NavigateTo(Ljava/lang/Class;ZLcom/microsoft/xbox/toolkit/ui/ActivityParameters;)V

    return-void
.end method

.method public NavigateTo(Ljava/lang/Class;ZLcom/microsoft/xbox/toolkit/ui/ActivityParameters;)V
    .locals 0
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

    if-eqz p2, :cond_0

    .line 125
    :try_start_0
    invoke-virtual {p0, p1, p3}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->PushScreen(Ljava/lang/Class;Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    .line 127
    invoke-virtual {p0, p2, p1, p3}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->PopScreensAndReplace(ILjava/lang/Class;Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;)V

    :try_end_0
    .catch Lcom/microsoft/xbox/toolkit/XLEException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method public OnBackButtonPressed()Z
    .locals 8

    .line 139
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->ShouldBackCloseApp()Z

    move-result v0

    .line 141
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getCurrentActivity()Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 142
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getCurrentActivity()Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->onBackButtonPressed()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    .line 148
    :try_start_0
    invoke-virtual/range {v2 .. v7}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->PopScreensAndReplace(ILjava/lang/Class;ZZZ)V

    goto :goto_0

    .line 150
    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->PopScreen()V

    :try_end_0
    .catch Lcom/microsoft/xbox/toolkit/XLEException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return v0
.end method

.method public PopAllScreens()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    .line 229
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->Size()I

    move-result v0

    if-lez v0, :cond_0

    .line 230
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->Size()I

    move-result v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->PopScreensAndReplace(ILjava/lang/Class;ZZZ)V

    :cond_0
    return-void
.end method

.method public PopScreen()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 221
    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->PopScreens(I)V

    return-void
.end method

.method public PopScreens(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 225
    invoke-virtual {p0, p1, v0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->PopScreensAndReplace(ILjava/lang/Class;)V

    return-void
.end method

.method public PopScreensAndReplace(ILjava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "+",
            "Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;",
            ">;)V"
        }
    .end annotation
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 383
    invoke-virtual {p0, p1, p2, v0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->PopScreensAndReplace(ILjava/lang/Class;Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;)V

    return-void
.end method

.method public PopScreensAndReplace(ILjava/lang/Class;Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "+",
            "Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;",
            ">;",
            "Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;",
            ")V"
        }
    .end annotation
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v6, p3

    .line 378
    invoke-virtual/range {v0 .. v6}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->PopScreensAndReplace(ILjava/lang/Class;ZZZLcom/microsoft/xbox/toolkit/ui/ActivityParameters;)V

    return-void
.end method

.method public PopScreensAndReplace(ILjava/lang/Class;ZZ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "+",
            "Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;",
            ">;ZZ)V"
        }
    .end annotation
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    const/4 v4, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v5, p4

    .line 387
    invoke-virtual/range {v0 .. v5}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->PopScreensAndReplace(ILjava/lang/Class;ZZZ)V

    return-void
.end method

.method public PopScreensAndReplace(ILjava/lang/Class;ZZZ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "+",
            "Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;",
            ">;ZZZ)V"
        }
    .end annotation
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 517
    invoke-virtual/range {v0 .. v6}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->PopScreensAndReplace(ILjava/lang/Class;ZZZLcom/microsoft/xbox/toolkit/ui/ActivityParameters;)V

    return-void
.end method

.method public PopScreensAndReplace(ILjava/lang/Class;ZZZLcom/microsoft/xbox/toolkit/ui/ActivityParameters;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "+",
            "Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;",
            ">;ZZZ",
            "Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;",
            ")V"
        }
    .end annotation
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    move-object v7, p0

    move-object v1, p2

    move v0, p4

    .line 392
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    sget-object v3, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    const/4 v8, 0x1

    const/4 v4, 0x0

    if-ne v2, v3, :cond_0

    move v2, v8

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    const-string v3, "You must access navigation manager on UI thread."

    invoke-static {v3, v2}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Ljava/lang/String;Z)V

    .line 393
    iget-boolean v2, v7, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->cannotNavigateTripwire:Z

    if-nez v2, :cond_9

    if-eqz v1, :cond_3

    if-eqz p5, :cond_1

    goto :goto_2

    .line 402
    :cond_1
    :try_start_0
    new-array v2, v4, [Ljava/lang/Class;

    invoke-virtual {p2, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    if-eqz p3, :cond_2

    .line 403
    invoke-virtual {v2}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->isAnimateOnPush()Z

    move-result v1

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_2

    move v1, v8

    goto :goto_1

    :cond_2
    move v1, v4

    :goto_1
    move-object v6, v2

    goto :goto_3

    :catch_0
    move-exception v0

    .line 406
    new-instance v2, Lcom/microsoft/xbox/toolkit/XLEException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "FIXME: Failed to create a screen of type "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v3, 0x13

    invoke-direct {v2, v3, v4, v1, v0}, Lcom/microsoft/xbox/toolkit/XLEException;-><init>(JLjava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_3
    :goto_2
    const/4 v1, 0x0

    move-object v6, v1

    move v1, p3

    .line 409
    :goto_3
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getCurrentActivity()Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    move-result-object v2

    if-eqz v2, :cond_5

    if-eqz v1, :cond_4

    .line 410
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getCurrentActivity()Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->isAnimateOnPop()Z

    move-result v1

    if-eqz v1, :cond_4

    move v4, v8

    :cond_4
    move v9, v4

    goto :goto_4

    :cond_5
    move v9, v1

    :goto_4
    if-nez p6, :cond_6

    .line 414
    new-instance v1, Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;

    invoke-direct {v1}, Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;-><init>()V

    move-object v3, v1

    goto :goto_5

    :cond_6
    move-object/from16 v3, p6

    .line 416
    :goto_5
    iget-object v5, v7, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->navigationCallbacks:Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationCallbacks;

    .line 417
    invoke-static {v5}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    if-eqz p5, :cond_7

    .line 421
    new-instance v1, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$RestartRunner;

    invoke-direct {v1, p0, v3}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$RestartRunner;-><init>(Lcom/microsoft/xbox/toolkit/ui/NavigationManager;Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;)V

    goto :goto_6

    .line 423
    :cond_7
    new-instance v10, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$1;

    move-object v1, v10

    move-object v2, p0

    move v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$1;-><init>(Lcom/microsoft/xbox/toolkit/ui/NavigationManager;Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;ILcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationCallbacks;Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;)V

    .line 492
    :goto_6
    sget-object v2, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$3;->$SwitchMap$com$microsoft$xbox$toolkit$ui$NavigationManager$NavigationManagerAnimationState:[I

    iget-object v3, v7, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->animationState:Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;

    invoke-virtual {v3}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    if-eq v2, v8, :cond_8

    .line 510
    invoke-direct {p0, p4, v1, v9}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->ReplaceOnAnimationEnd(ZLjava/lang/Runnable;Z)V

    goto :goto_7

    .line 495
    :cond_8
    invoke-direct {p0, p4, v1, v9}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->Transition(ZLjava/lang/Runnable;Z)V

    :goto_7
    return-void

    .line 394
    :cond_9
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "NavigationManager: attempted to execute a recursive navigation in the OnStop/OnStart method.  This is forbidden."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public PopTillScreenThenPush(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;",
            ">;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;",
            ">;)V"
        }
    .end annotation
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 256
    invoke-virtual {p0, p1, p2, v0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->PopTillScreenThenPush(Ljava/lang/Class;Ljava/lang/Class;Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;)V

    return-void
.end method

.method public PopTillScreenThenPush(Ljava/lang/Class;Ljava/lang/Class;Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;",
            ">;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;",
            ">;",
            "Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;",
            ")V"
        }
    .end annotation
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    .line 243
    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->CountPopsToScreen(Ljava/lang/Class;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x1

    move-object v0, p0

    move-object v2, p2

    move-object/from16 v6, p3

    .line 245
    invoke-virtual/range {v0 .. v6}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->PopScreensAndReplace(ILjava/lang/Class;ZZZLcom/microsoft/xbox/toolkit/ui/ActivityParameters;)V

    goto :goto_0

    :cond_0
    if-gez v1, :cond_1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x1

    move-object v6, p0

    move-object v8, p2

    move-object/from16 v12, p3

    .line 248
    invoke-virtual/range {v6 .. v12}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->PopScreensAndReplace(ILjava/lang/Class;ZZZLcom/microsoft/xbox/toolkit/ui/ActivityParameters;)V

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x1

    move-object v0, p0

    move-object v2, p2

    move-object/from16 v6, p3

    .line 251
    invoke-virtual/range {v0 .. v6}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->PopScreensAndReplace(ILjava/lang/Class;ZZZLcom/microsoft/xbox/toolkit/ui/ActivityParameters;)V

    :goto_0
    return-void
.end method

.method public PushScreen(Ljava/lang/Class;)V
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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 374
    invoke-virtual {p0, p1, v0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->PushScreen(Ljava/lang/Class;Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;)V

    return-void
.end method

.method public PushScreen(Ljava/lang/Class;Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;)V
    .locals 7
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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v6, p2

    .line 369
    invoke-virtual/range {v0 .. v6}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->PopScreensAndReplace(ILjava/lang/Class;ZZZLcom/microsoft/xbox/toolkit/ui/ActivityParameters;)V

    return-void
.end method

.method public RestartCurrentScreen(Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    .line 206
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->animationState:Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;

    sget-object v1, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;->ANIMATING_OUT:Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;

    if-ne v0, v1, :cond_0

    .line 208
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->OnAnimationEnd()V

    goto :goto_0

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->animationState:Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;

    sget-object v1, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;->ANIMATING_IN:Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;

    if-ne v0, v1, :cond_1

    .line 211
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->OnAnimationEnd()V

    .line 212
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getCurrentActivity()Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v2, 0x1

    move-object v1, p0

    move v4, p2

    move-object v7, p1

    .line 213
    invoke-virtual/range {v1 .. v7}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->PopScreensAndReplace(ILjava/lang/Class;ZZZLcom/microsoft/xbox/toolkit/ui/ActivityParameters;)V

    goto :goto_0

    .line 215
    :cond_1
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getCurrentActivity()Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v2, 0x1

    move-object v1, p0

    move v4, p2

    move-object v7, p1

    .line 216
    invoke-virtual/range {v1 .. v7}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->PopScreensAndReplace(ILjava/lang/Class;ZZZLcom/microsoft/xbox/toolkit/ui/ActivityParameters;)V

    :goto_0
    return-void
.end method

.method public RestartCurrentScreen(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 202
    invoke-virtual {p0, v0, p1}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->RestartCurrentScreen(Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;Z)V

    return-void
.end method

.method public ShouldBackCloseApp()Z
    .locals 3

    .line 174
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->Size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->animationState:Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;

    sget-object v2, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;->NONE:Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public TEST_isAnimatingIn()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public TEST_isAnimatingOut()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getActivityParameters()Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;
    .locals 1

    const/4 v0, 0x0

    .line 106
    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getActivityParameters(I)Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;

    move-result-object v0

    return-object v0
.end method

.method public getActivityParameters(I)Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;
    .locals 3

    const/4 v0, 0x1

    if-ltz p1, :cond_0

    .line 116
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->navigationParameters:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    .line 117
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->navigationParameters:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v2

    sub-int/2addr v2, p1

    sub-int/2addr v2, v0

    invoke-virtual {v1, v2}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;

    return-object p1
.end method

.method public getCurrentActivity()Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->navigationStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->navigationStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    return-object v0
.end method

.method public getCurrentActivityName()Ljava/lang/String;
    .locals 1

    .line 72
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getCurrentActivity()Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPreviousActivity()Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->navigationStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->navigationStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    goto :goto_0

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->navigationStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public isAnimating()Z
    .locals 2

    .line 170
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->animationState:Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;

    sget-object v1, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;->NONE:Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onApplicationPause()V
    .locals 2

    const/4 v0, 0x0

    .line 521
    :goto_0
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->navigationStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 522
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->navigationStack:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    .line 523
    invoke-virtual {v1}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->onApplicationPause()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onApplicationResume()V
    .locals 2

    const/4 v0, 0x0

    .line 528
    :goto_0
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->navigationStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 529
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->navigationStack:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    .line 530
    invoke-virtual {v1}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->onApplicationResume()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 p1, 0x4

    const/4 v0, 0x0

    if-ne p2, p1, :cond_1

    .line 634
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    .line 635
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->OnBackButtonPressed()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 636
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->removeNavigationCallbacks()V

    .line 637
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->removeNaviationListener()V

    return v0

    :cond_0
    return p2

    :cond_1
    return v0
.end method

.method public removeNaviationListener()V
    .locals 1

    const/4 v0, 0x0

    .line 94
    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->navigationListener:Lcom/microsoft/xbox/toolkit/ui/NavigationManager$OnNavigatedListener;

    return-void
.end method

.method public removeNavigationCallbacks()V
    .locals 1

    const/4 v0, 0x0

    .line 102
    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->navigationCallbacks:Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationCallbacks;

    return-void
.end method

.method public setAnimationBlocking(Z)V
    .locals 1

    .line 535
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->navigationCallbacks:Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationCallbacks;

    if-eqz v0, :cond_0

    .line 536
    invoke-interface {v0, p1}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationCallbacks;->setAnimationBlocking(Z)V

    :cond_0
    return-void
.end method

.method public setNavigationCallbacks(Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationCallbacks;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->navigationCallbacks:Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationCallbacks;

    return-void
.end method

.method public setOnNavigatedListener(Lcom/microsoft/xbox/toolkit/ui/NavigationManager$OnNavigatedListener;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->navigationListener:Lcom/microsoft/xbox/toolkit/ui/NavigationManager$OnNavigatedListener;

    return-void
.end method
