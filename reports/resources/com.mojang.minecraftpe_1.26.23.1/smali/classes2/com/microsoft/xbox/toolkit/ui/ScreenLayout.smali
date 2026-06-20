.class public abstract Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;
.super Landroid/widget/FrameLayout;
.source "ScreenLayout.java"


# static fields
.field private static badList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private allEventsEnabled:Z

.field private drawerEnabled:Z

.field private isActive:Z

.field private isEditable:Z

.field private isReady:Z

.field private isStarted:Z

.field protected isTombstoned:Z

.field private onLayoutChangedListener:Ljava/lang/Runnable;

.field private orientation:I

.field private screenPercent:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->badList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1, v0}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 34
    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->onLayoutChangedListener:Ljava/lang/Runnable;

    const/4 p1, 0x0

    .line 35
    iput-boolean p1, p0, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->isEditable:Z

    const/16 p1, 0x64

    .line 37
    iput p1, p0, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->screenPercent:I

    const/4 p1, 0x1

    .line 38
    iput-boolean p1, p0, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->drawerEnabled:Z

    .line 39
    iput-boolean p1, p0, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->allEventsEnabled:Z

    .line 51
    invoke-virtual {p0, p2}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->Initialize(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 63
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->onLayoutChangedListener:Ljava/lang/Runnable;

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->isEditable:Z

    const/16 v0, 0x64

    .line 37
    iput v0, p0, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->screenPercent:I

    const/4 v0, 0x1

    .line 38
    iput-boolean v0, p0, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->drawerEnabled:Z

    .line 39
    iput-boolean v0, p0, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->allEventsEnabled:Z

    .line 64
    const-string v0, "ScreenLayout"

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLERValueHelper;->getStyleableRValueArray(Ljava/lang/String;)[I

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 66
    const-string p2, "ScreenLayout_screenDIPs"

    invoke-static {p2}, Lcom/microsoft/xbox/toolkit/XLERValueHelper;->getStyleableRValue(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    invoke-static {p2}, Lcom/microsoft/xbox/toolkit/XLERValueHelper;->getStyleableRValue(Ljava/lang/String;)I

    move-result p2

    invoke-static {}, Lcom/microsoft/xbox/toolkit/system/SystemUtil;->getScreenWidth()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    int-to-float p2, p2

    .line 68
    invoke-static {}, Lcom/microsoft/xbox/toolkit/system/SystemUtil;->getScreenWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p2, v0

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr p2, v0

    float-to-int p2, p2

    iput p2, p0, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->screenPercent:I

    goto :goto_0

    .line 70
    :cond_0
    const-string p2, "ScreenLayout_screenPercent"

    invoke-static {p2}, Lcom/microsoft/xbox/toolkit/XLERValueHelper;->getStyleableRValue(Ljava/lang/String;)I

    move-result p2

    const/4 v0, -0x2

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->screenPercent:I

    .line 72
    :goto_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    const/4 p1, 0x7

    .line 74
    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->Initialize(I)V

    return-void
.end method

.method public static addViewThatCausesAndroidLeaks(Landroid/view/View;)V
    .locals 1

    .line 267
    sget-object v0, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->badList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private removeAllViewsAndWorkaroundAndroidLeaks()V
    .locals 2

    .line 271
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

    .line 273
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->removeAllViews()V

    .line 275
    sget-object v0, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->badList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 276
    invoke-static {v1}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->removeViewAndWorkaroundAndroidLeaks(Landroid/view/View;)V

    goto :goto_1

    .line 279
    :cond_1
    sget-object v0, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->badList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public static removeViewAndWorkaroundAndroidLeaks(Landroid/view/View;)V
    .locals 4

    if-eqz p0, :cond_3

    .line 284
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 285
    instance-of v1, v0, Landroid/view/ViewGroup;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 286
    check-cast v0, Landroid/view/ViewGroup;

    .line 287
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 289
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    .line 292
    :cond_1
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    .line 293
    check-cast p0, Landroid/view/ViewGroup;

    .line 294
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 295
    invoke-virtual {p0}, Landroid/view/ViewGroup;->destroyDrawingCache()V

    .line 297
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p0

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    invoke-static {v2}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    :cond_3
    return-void
.end method


# virtual methods
.method protected Initialize(I)V
    .locals 1

    const/4 v0, 0x0

    .line 55
    iput-boolean v0, p0, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->isReady:Z

    .line 56
    iput-boolean v0, p0, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->isActive:Z

    .line 57
    iput-boolean v0, p0, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->isStarted:Z

    .line 58
    iput p1, p0, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->orientation:I

    return-void
.end method

.method public adjustBottomMargin(I)V
    .locals 0

    return-void
.end method

.method public abstract forceRefresh()V
.end method

.method public abstract forceUpdateViewImmediately()V
.end method

.method public getAnimateIn(Z)Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getAnimateOut(Z)Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getCanAutoLaunch()Z
    .locals 1

    .line 255
    iget-boolean v0, p0, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->isEditable:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getIsActive()Z
    .locals 1

    .line 185
    iget-boolean v0, p0, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->isActive:Z

    return v0
.end method

.method public getIsEditable()Z
    .locals 1

    .line 250
    iget-boolean v0, p0, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->isEditable:Z

    return v0
.end method

.method public getIsReady()Z
    .locals 1

    .line 173
    iget-boolean v0, p0, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->isReady:Z

    return v0
.end method

.method public getIsStarted()Z
    .locals 1

    .line 189
    iget-boolean v0, p0, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->isStarted:Z

    return v0
.end method

.method public getIsTombstoned()Z
    .locals 1

    .line 169
    iget-boolean v0, p0, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->isTombstoned:Z

    return v0
.end method

.method public getLocalClassName()Ljava/lang/String;
    .locals 1

    .line 157
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public getRelativeId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getScreenPercent()I
    .locals 1

    .line 303
    iget v0, p0, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->screenPercent:I

    return v0
.end method

.method public getShouldShowAppbar()Z
    .locals 1

    .line 259
    iget-boolean v0, p0, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->isEditable:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getTrackPage()Ljava/lang/Boolean;
    .locals 1

    const/4 v0, 0x1

    .line 94
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public isAllEventsEnabled()Z
    .locals 1

    .line 359
    iget-boolean v0, p0, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->allEventsEnabled:Z

    return v0
.end method

.method public isAnimateOnPop()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isAnimateOnPush()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isDrawerEnabled()Z
    .locals 1

    .line 326
    iget-boolean v0, p0, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->drawerEnabled:Z

    return v0
.end method

.method public isKeepPreviousScreen()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public leaveScreen(Ljava/lang/Runnable;)V
    .locals 0

    .line 339
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public abstract onAnimateInCompleted()V
.end method

.method public abstract onAnimateInStarted()V
.end method

.method public onApplicationPause()V
    .locals 0

    return-void
.end method

.method public onApplicationResume()V
    .locals 0

    return-void
.end method

.method public abstract onBackButtonPressed()Z
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onCreate()V
    .locals 0

    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 139
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->removeAllViewsAndWorkaroundAndroidLeaks()V

    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 226
    iget-boolean v0, p0, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->allEventsEnabled:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method public onInterceptHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 211
    iget-boolean v0, p0, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->allEventsEnabled:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 216
    iget-boolean v0, p0, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->allEventsEnabled:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method public onLayout(ZIIII)V
    .locals 0

    .line 202
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 204
    iget-object p1, p0, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->onLayoutChangedListener:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 205
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    const/4 v0, 0x0

    .line 126
    iput-boolean v0, p0, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->isReady:Z

    return-void
.end method

.method public onRehydrate()V
    .locals 1

    const/4 v0, 0x0

    .line 148
    iput-boolean v0, p0, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->isTombstoned:Z

    .line 149
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->onRehydrateOverride()V

    return-void
.end method

.method public abstract onRehydrateOverride()V
.end method

.method public onRestart()V
    .locals 0

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 1

    const/4 v0, 0x1

    .line 106
    iput-boolean v0, p0, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->isReady:Z

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onSetActive()V
    .locals 1

    const/4 v0, 0x1

    .line 193
    iput-boolean v0, p0, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->isActive:Z

    return-void
.end method

.method public onSetInactive()V
    .locals 1

    const/4 v0, 0x0

    .line 197
    iput-boolean v0, p0, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->isActive:Z

    return-void
.end method

.method public onStart()V
    .locals 1

    const/4 v0, 0x1

    .line 102
    iput-boolean v0, p0, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->isStarted:Z

    return-void
.end method

.method public onStop()V
    .locals 1

    const/4 v0, 0x0

    .line 130
    iput-boolean v0, p0, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->isStarted:Z

    return-void
.end method

.method public onTombstone()V
    .locals 1

    const/4 v0, 0x1

    .line 143
    iput-boolean v0, p0, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->isTombstoned:Z

    .line 144
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->removeAllViewsAndWorkaroundAndroidLeaks()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 221
    iget-boolean v0, p0, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->allEventsEnabled:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method public removeBottomMargin()V
    .locals 0

    return-void
.end method

.method public resetBottomMargin()V
    .locals 0

    return-void
.end method

.method public setAllEventsEnabled(Z)V
    .locals 0

    .line 355
    iput-boolean p1, p0, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->allEventsEnabled:Z

    return-void
.end method

.method public setContentView(I)V
    .locals 2

    .line 79
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    return-void
.end method

.method public setDrawerEnabled(Z)V
    .locals 0

    .line 312
    iput-boolean p1, p0, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->drawerEnabled:Z

    return-void
.end method

.method public setIsEditable(Z)V
    .locals 0

    .line 263
    iput-boolean p1, p0, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->isEditable:Z

    return-void
.end method

.method public setOnLayoutChangedListener(Ljava/lang/Runnable;)V
    .locals 0

    .line 230
    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->onLayoutChangedListener:Ljava/lang/Runnable;

    return-void
.end method

.method public setScreenPercent(I)Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;
    .locals 0

    .line 307
    iput p1, p0, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->screenPercent:I

    return-object p0
.end method

.method public setScreenState(I)V
    .locals 0

    return-void
.end method

.method public xleFindViewId(I)Landroid/view/View;
    .locals 0

    .line 369
    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
