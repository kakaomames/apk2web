.class public Lcom/microsoft/xboxtcui/XboxTcuiWindow;
.super Landroid/widget/FrameLayout;
.source "XboxTcuiWindow.java"

# interfaces
.implements Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationCallbacks;
.implements Lcom/microsoft/xbox/toolkit/ui/NavigationManager$OnNavigatedListener;


# static fields
.field private static final NAVIGATION_BLOCK_TIMEOUT_MS:I = 0x1388

.field private static final TAG:Ljava/lang/String; = "XboxTcuiWindow"


# instance fields
.field private activity:Landroid/app/Activity;

.field private animationBlocking:Z

.field private final launchParams:Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;

.field private final launchScreenClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;",
            ">;"
        }
    .end annotation
.end field

.field private final screens:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;",
            ">;"
        }
    .end annotation
.end field

.field private wasRestarted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/Class;Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;",
            ">;",
            "Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;",
            ")V"
        }
    .end annotation

    .line 46
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 40
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/microsoft/xboxtcui/XboxTcuiWindow;->screens:Ljava/util/Stack;

    .line 48
    invoke-virtual {p3}, Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;->getMeXuid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    .line 50
    iput-object p1, p0, Lcom/microsoft/xboxtcui/XboxTcuiWindow;->activity:Landroid/app/Activity;

    .line 51
    iput-object p2, p0, Lcom/microsoft/xboxtcui/XboxTcuiWindow;->launchScreenClass:Ljava/lang/Class;

    .line 52
    iput-object p3, p0, Lcom/microsoft/xboxtcui/XboxTcuiWindow;->launchParams:Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;

    .line 54
    sget p1, Lcom/microsoft/xboxtcui/R$color;->backgroundColor:I

    invoke-virtual {p0, p1}, Lcom/microsoft/xboxtcui/XboxTcuiWindow;->setBackgroundResource(I)V

    return-void
.end method

.method private setupNavigationManager()V
    .locals 4

    .line 165
    invoke-static {}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getInstance()Lcom/microsoft/xbox/toolkit/ui/NavigationManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->setNavigationCallbacks(Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationCallbacks;)V

    .line 166
    invoke-static {}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getInstance()Lcom/microsoft/xbox/toolkit/ui/NavigationManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->setOnNavigatedListener(Lcom/microsoft/xbox/toolkit/ui/NavigationManager$OnNavigatedListener;)V

    .line 169
    :try_start_0
    invoke-static {}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getInstance()Lcom/microsoft/xbox/toolkit/ui/NavigationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->PopAllScreens()V

    :try_end_0
    .catch Lcom/microsoft/xbox/toolkit/XLEException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 171
    sget-object v1, Lcom/microsoft/xboxtcui/XboxTcuiWindow;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setupNavigationManager: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private setupThreadManager()V
    .locals 1

    .line 157
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sput-object v0, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    .line 158
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/microsoft/xbox/toolkit/ThreadManager;->Handler:Landroid/os/Handler;

    .line 161
    sget-object v0, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    sget-object v0, Lcom/microsoft/xbox/toolkit/XLEUnhandledExceptionHandler;->Instance:Lcom/microsoft/xbox/toolkit/XLEUnhandledExceptionHandler;

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-void
.end method


# virtual methods
.method public addContentViewXLE(Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;)V
    .locals 2

    .line 177
    iget-object v0, p0, Lcom/microsoft/xboxtcui/XboxTcuiWindow;->screens:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 178
    iget-object v0, p0, Lcom/microsoft/xboxtcui/XboxTcuiWindow;->screens:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    .line 179
    invoke-virtual {p1, v0}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->setAllEventsEnabled(Z)V

    return-void

    .line 182
    :cond_0
    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->isKeepPreviousScreen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 184
    iget-object v0, p0, Lcom/microsoft/xboxtcui/XboxTcuiWindow;->screens:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->setAllEventsEnabled(Z)V

    goto :goto_0

    .line 186
    :cond_1
    iget-object v0, p0, Lcom/microsoft/xboxtcui/XboxTcuiWindow;->screens:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/microsoft/xboxtcui/XboxTcuiWindow;->removeView(Landroid/view/View;)V

    .line 190
    :cond_2
    :goto_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xa

    .line 191
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0xc

    .line 192
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 194
    invoke-virtual {p0, p1, v0}, Lcom/microsoft/xboxtcui/XboxTcuiWindow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 196
    iget-object v0, p0, Lcom/microsoft/xboxtcui/XboxTcuiWindow;->screens:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 114
    invoke-static {}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getInstance()Lcom/microsoft/xbox/toolkit/ui/NavigationManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-virtual {v0, p0, v1, p1}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 3

    if-eq p1, p0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/16 p1, 0x21

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v1, 0x2

    const/16 v2, 0x82

    if-eq p2, v1, :cond_1

    if-eq p2, p1, :cond_2

    if-eq p2, v2, :cond_1

    goto :goto_0

    .line 92
    :cond_1
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/microsoft/xboxtcui/XboxTcuiWindow;->getFocusedChild()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1, p0, p2, v2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 94
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    .line 101
    :cond_2
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object p2

    invoke-virtual {p0}, Lcom/microsoft/xboxtcui/XboxTcuiWindow;->getFocusedChild()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p2, p0, v1, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 103
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    :cond_3
    :goto_0
    return v0
.end method

.method public onBeforeNavigatingIn()V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 58
    :goto_0
    iput-boolean p1, p0, Lcom/microsoft/xboxtcui/XboxTcuiWindow;->wasRestarted:Z

    .line 60
    invoke-direct {p0}, Lcom/microsoft/xboxtcui/XboxTcuiWindow;->setupThreadManager()V

    .line 62
    invoke-static {}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->getInstance()Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;

    move-result-object p1

    invoke-static {}, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->getInstance()Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->setProvider(Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;)V

    .line 64
    invoke-static {}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->getInstance()Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;

    move-result-object p1

    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->getXuidString()Ljava/lang/String;

    move-result-object p1

    .line 66
    invoke-static {p1}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/microsoft/xboxtcui/XboxTcuiWindow;->launchParams:Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;

    invoke-virtual {v1}, Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;->getMeXuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 67
    invoke-static {}, Lcom/microsoft/xbox/service/model/ProfileModel;->getMeProfileModel()Lcom/microsoft/xbox/service/model/ProfileModel;

    invoke-static {}, Lcom/microsoft/xbox/service/model/ProfileModel;->reset()V

    .line 70
    :cond_1
    invoke-static {}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->getInstance()Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;

    move-result-object p1

    iget-object v1, p0, Lcom/microsoft/xboxtcui/XboxTcuiWindow;->launchParams:Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;

    invoke-virtual {v1}, Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;->getMeXuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->setXuidString(Ljava/lang/String;)V

    .line 71
    invoke-static {}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->getInstance()Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;

    move-result-object p1

    iget-object v1, p0, Lcom/microsoft/xboxtcui/XboxTcuiWindow;->launchParams:Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;

    invoke-virtual {v1}, Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;->getPrivileges()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/microsoft/xbox/toolkit/ProjectSpecificDataProvider;->setPrivileges(Ljava/lang/String;)V

    .line 73
    invoke-static {}, Lcom/microsoft/xbox/toolkit/DialogManager;->getInstance()Lcom/microsoft/xbox/toolkit/DialogManager;

    move-result-object p1

    invoke-static {}, Lcom/microsoft/xbox/xle/app/SGProjectSpecificDialogManager;->getInstance()Lcom/microsoft/xbox/toolkit/IProjectSpecificDialogManager;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/microsoft/xbox/toolkit/DialogManager;->setManager(Lcom/microsoft/xbox/toolkit/IProjectSpecificDialogManager;)V

    .line 75
    invoke-virtual {p0, v0}, Lcom/microsoft/xboxtcui/XboxTcuiWindow;->setFocusableInTouchMode(Z)V

    .line 76
    invoke-virtual {p0}, Lcom/microsoft/xboxtcui/XboxTcuiWindow;->requestFocus()Z

    .line 78
    invoke-direct {p0}, Lcom/microsoft/xboxtcui/XboxTcuiWindow;->setupNavigationManager()V

    return-void
.end method

.method public onPageNavigated(Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;)V
    .locals 0

    return-void
.end method

.method public onPageRestarted(Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;)V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 5

    const-string v0, "onStart: "

    .line 122
    iget-object v1, p0, Lcom/microsoft/xboxtcui/XboxTcuiWindow;->activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->sdkInitialize(Landroid/app/Activity;)V

    .line 123
    invoke-static {}, Lcom/microsoft/xbox/toolkit/DialogManager;->getInstance()Lcom/microsoft/xbox/toolkit/DialogManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/microsoft/xbox/toolkit/DialogManager;->setEnabled(Z)V

    const/4 v1, 0x0

    .line 126
    :try_start_0
    iget-boolean v2, p0, Lcom/microsoft/xboxtcui/XboxTcuiWindow;->wasRestarted:Z

    if-eqz v2, :cond_0

    .line 127
    invoke-static {}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getInstance()Lcom/microsoft/xbox/toolkit/ui/NavigationManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getCurrentActivity()Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 130
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 131
    invoke-static {}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getInstance()Lcom/microsoft/xbox/toolkit/ui/NavigationManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getCurrentActivity()Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 133
    invoke-static {}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getInstance()Lcom/microsoft/xbox/toolkit/ui/NavigationManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->RestartCurrentScreen(Z)V

    .line 134
    invoke-virtual {v2, v3}, Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;->onRestoreInstanceState(Landroid/os/Bundle;)V

    goto :goto_0

    .line 137
    :cond_0
    invoke-static {}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getInstance()Lcom/microsoft/xbox/toolkit/ui/NavigationManager;

    move-result-object v2

    iget-object v3, p0, Lcom/microsoft/xboxtcui/XboxTcuiWindow;->launchScreenClass:Ljava/lang/Class;

    iget-object v4, p0, Lcom/microsoft/xboxtcui/XboxTcuiWindow;->launchParams:Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;

    invoke-virtual {v2, v3, v4}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->PushScreen(Ljava/lang/Class;Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;)V

    .line 142
    :try_end_0
    .catch Lcom/microsoft/xbox/toolkit/XLEException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    iput-boolean v1, p0, Lcom/microsoft/xboxtcui/XboxTcuiWindow;->wasRestarted:Z

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v2

    .line 140
    :try_start_1
    sget-object v3, Lcom/microsoft/xboxtcui/XboxTcuiWindow;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    .line 142
    :goto_2
    iput-boolean v1, p0, Lcom/microsoft/xboxtcui/XboxTcuiWindow;->wasRestarted:Z

    .line 143
    throw v0
.end method

.method public onStop()V
    .locals 4

    .line 147
    invoke-static {}, Lcom/microsoft/xbox/toolkit/DialogManager;->getInstance()Lcom/microsoft/xbox/toolkit/DialogManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/toolkit/DialogManager;->setEnabled(Z)V

    .line 150
    :try_start_0
    invoke-static {}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getInstance()Lcom/microsoft/xbox/toolkit/ui/NavigationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->PopAllScreens()V

    :try_end_0
    .catch Lcom/microsoft/xbox/toolkit/XLEException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 152
    sget-object v1, Lcom/microsoft/xboxtcui/XboxTcuiWindow;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onStop: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public removeContentViewXLE(Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;)V
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/microsoft/xboxtcui/XboxTcuiWindow;->screens:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 203
    :goto_0
    iget-object v0, p0, Lcom/microsoft/xboxtcui/XboxTcuiWindow;->screens:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 204
    iget-object v0, p0, Lcom/microsoft/xboxtcui/XboxTcuiWindow;->screens:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/microsoft/xboxtcui/XboxTcuiWindow;->removeView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setAnimationBlocking(Z)V
    .locals 2

    .line 211
    iget-boolean v0, p0, Lcom/microsoft/xboxtcui/XboxTcuiWindow;->animationBlocking:Z

    if-eq v0, p1, :cond_1

    .line 212
    iput-boolean p1, p0, Lcom/microsoft/xboxtcui/XboxTcuiWindow;->animationBlocking:Z

    if-eqz p1, :cond_0

    .line 214
    invoke-static {}, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;->getInstance()Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;

    move-result-object p1

    sget-object v0, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;->Navigation:Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;

    const/16 v1, 0x1388

    invoke-virtual {p1, v0, v1}, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;->setBlocking(Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;I)V

    goto :goto_0

    .line 216
    :cond_0
    invoke-static {}, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;->getInstance()Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;

    move-result-object p1

    sget-object v0, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;->Navigation:Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;

    invoke-virtual {p1, v0}, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;->clearBlocking(Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor$WaitType;)V

    :cond_1
    :goto_0
    return-void
.end method
