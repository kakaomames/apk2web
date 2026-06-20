.class public Lcom/microsoft/xbox/toolkit/XLEManagedDialog;
.super Landroid/app/Dialog;
.source "XLEManagedDialog.java"

# interfaces
.implements Lcom/microsoft/xbox/toolkit/IXLEManagedDialog;


# static fields
.field protected static final BODY_ANIMATION_NAME:Ljava/lang/String; = "Dialog"


# instance fields
.field protected bodyAnimationName:Ljava/lang/String;

.field final callAfterAnimationIn:Ljava/lang/Runnable;

.field final callAfterAnimationOut:Ljava/lang/Runnable;

.field protected dialogBody:Landroid/view/View;

.field private dialogType:Lcom/microsoft/xbox/toolkit/IXLEManagedDialog$DialogType;

.field protected onAnimateOutCompletedRunable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 21
    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/XLEManagedDialog;->dialogBody:Landroid/view/View;

    .line 22
    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/XLEManagedDialog;->onAnimateOutCompletedRunable:Ljava/lang/Runnable;

    .line 23
    sget-object p1, Lcom/microsoft/xbox/toolkit/IXLEManagedDialog$DialogType;->NORMAL:Lcom/microsoft/xbox/toolkit/IXLEManagedDialog$DialogType;

    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/XLEManagedDialog;->dialogType:Lcom/microsoft/xbox/toolkit/IXLEManagedDialog$DialogType;

    .line 25
    const-string p1, "Dialog"

    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/XLEManagedDialog;->bodyAnimationName:Ljava/lang/String;

    .line 35
    new-instance p1, Lcom/microsoft/xbox/toolkit/XLEManagedDialog$1;

    invoke-direct {p1, p0}, Lcom/microsoft/xbox/toolkit/XLEManagedDialog$1;-><init>(Lcom/microsoft/xbox/toolkit/XLEManagedDialog;)V

    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/XLEManagedDialog;->callAfterAnimationIn:Ljava/lang/Runnable;

    .line 42
    new-instance p1, Lcom/microsoft/xbox/toolkit/XLEManagedDialog$2;

    invoke-direct {p1, p0}, Lcom/microsoft/xbox/toolkit/XLEManagedDialog$2;-><init>(Lcom/microsoft/xbox/toolkit/XLEManagedDialog;)V

    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/XLEManagedDialog;->callAfterAnimationOut:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x0

    .line 21
    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/XLEManagedDialog;->dialogBody:Landroid/view/View;

    .line 22
    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/XLEManagedDialog;->onAnimateOutCompletedRunable:Ljava/lang/Runnable;

    .line 23
    sget-object p1, Lcom/microsoft/xbox/toolkit/IXLEManagedDialog$DialogType;->NORMAL:Lcom/microsoft/xbox/toolkit/IXLEManagedDialog$DialogType;

    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/XLEManagedDialog;->dialogType:Lcom/microsoft/xbox/toolkit/IXLEManagedDialog$DialogType;

    .line 25
    const-string p1, "Dialog"

    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/XLEManagedDialog;->bodyAnimationName:Ljava/lang/String;

    .line 35
    new-instance p1, Lcom/microsoft/xbox/toolkit/XLEManagedDialog$1;

    invoke-direct {p1, p0}, Lcom/microsoft/xbox/toolkit/XLEManagedDialog$1;-><init>(Lcom/microsoft/xbox/toolkit/XLEManagedDialog;)V

    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/XLEManagedDialog;->callAfterAnimationIn:Ljava/lang/Runnable;

    .line 42
    new-instance p1, Lcom/microsoft/xbox/toolkit/XLEManagedDialog$2;

    invoke-direct {p1, p0}, Lcom/microsoft/xbox/toolkit/XLEManagedDialog$2;-><init>(Lcom/microsoft/xbox/toolkit/XLEManagedDialog;)V

    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/XLEManagedDialog;->callAfterAnimationOut:Ljava/lang/Runnable;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V

    const/4 p1, 0x0

    .line 21
    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/XLEManagedDialog;->dialogBody:Landroid/view/View;

    .line 22
    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/XLEManagedDialog;->onAnimateOutCompletedRunable:Ljava/lang/Runnable;

    .line 23
    sget-object p1, Lcom/microsoft/xbox/toolkit/IXLEManagedDialog$DialogType;->NORMAL:Lcom/microsoft/xbox/toolkit/IXLEManagedDialog$DialogType;

    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/XLEManagedDialog;->dialogType:Lcom/microsoft/xbox/toolkit/IXLEManagedDialog$DialogType;

    .line 25
    const-string p1, "Dialog"

    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/XLEManagedDialog;->bodyAnimationName:Ljava/lang/String;

    .line 35
    new-instance p1, Lcom/microsoft/xbox/toolkit/XLEManagedDialog$1;

    invoke-direct {p1, p0}, Lcom/microsoft/xbox/toolkit/XLEManagedDialog$1;-><init>(Lcom/microsoft/xbox/toolkit/XLEManagedDialog;)V

    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/XLEManagedDialog;->callAfterAnimationIn:Ljava/lang/Runnable;

    .line 42
    new-instance p1, Lcom/microsoft/xbox/toolkit/XLEManagedDialog$2;

    invoke-direct {p1, p0}, Lcom/microsoft/xbox/toolkit/XLEManagedDialog$2;-><init>(Lcom/microsoft/xbox/toolkit/XLEManagedDialog;)V

    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/XLEManagedDialog;->callAfterAnimationOut:Ljava/lang/Runnable;

    return-void
.end method

.method protected static isKindle()Z
    .locals 1

    .line 206
    invoke-static {}, Lcom/microsoft/xbox/toolkit/system/SystemUtil;->isKindle()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public OnAnimationInEnd()V
    .locals 2

    .line 127
    invoke-static {}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getInstance()Lcom/microsoft/xbox/toolkit/ui/NavigationManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->setAnimationBlocking(Z)V

    return-void
.end method

.method public OnAnimationOutEnd()V
    .locals 2

    .line 131
    invoke-static {}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getInstance()Lcom/microsoft/xbox/toolkit/ui/NavigationManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->setAnimationBlocking(Z)V

    .line 132
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 133
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/XLEManagedDialog;->onAnimateOutCompletedRunable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 135
    :try_start_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public dismiss()V
    .locals 3

    .line 164
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/XLEManagedDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 165
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void

    .line 170
    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/XLEManagedDialog;->getAnimateOut()Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage;

    move-result-object v0

    .line 171
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/XLEManagedDialog;->getDialogBody()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 172
    invoke-static {}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getInstance()Lcom/microsoft/xbox/toolkit/ui/NavigationManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->setAnimationBlocking(Z)V

    .line 173
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/XLEManagedDialog;->callAfterAnimationOut:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage;->setOnAnimationEndRunnable(Ljava/lang/Runnable;)V

    .line 174
    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage;->startAnimation()V

    goto :goto_0

    .line 177
    :cond_1
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/XLEManagedDialog;->onAnimateOutCompletedRunable:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 178
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 180
    :cond_2
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    :goto_0
    return-void
.end method

.method protected forceKindleRespectDimOptions()V
    .locals 4

    .line 196
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 197
    new-instance v1, Lcom/microsoft/xbox/toolkit/XLEManagedDialog$3;

    invoke-direct {v1, p0}, Lcom/microsoft/xbox/toolkit/XLEManagedDialog$3;-><init>(Lcom/microsoft/xbox/toolkit/XLEManagedDialog;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public getAnimateIn()Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage;
    .locals 2

    .line 115
    sget-object v0, Lcom/microsoft/xbox/toolkit/anim/MAAS$MAASAnimationType;->ANIMATE_IN:Lcom/microsoft/xbox/toolkit/anim/MAAS$MAASAnimationType;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/microsoft/xbox/toolkit/XLEManagedDialog;->getBodyAnimation(Lcom/microsoft/xbox/toolkit/anim/MAAS$MAASAnimationType;Z)Lcom/microsoft/xbox/toolkit/anim/XLEAnimation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 118
    new-instance v1, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage;

    invoke-direct {v1}, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage;-><init>()V

    .line 119
    invoke-virtual {v1, v0}, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage;->add(Lcom/microsoft/xbox/toolkit/anim/XLEAnimation;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAnimateOut()Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage;
    .locals 2

    .line 101
    sget-object v0, Lcom/microsoft/xbox/toolkit/anim/MAAS$MAASAnimationType;->ANIMATE_OUT:Lcom/microsoft/xbox/toolkit/anim/MAAS$MAASAnimationType;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/microsoft/xbox/toolkit/XLEManagedDialog;->getBodyAnimation(Lcom/microsoft/xbox/toolkit/anim/MAAS$MAASAnimationType;Z)Lcom/microsoft/xbox/toolkit/anim/XLEAnimation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 104
    new-instance v1, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage;

    invoke-direct {v1}, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage;-><init>()V

    .line 105
    invoke-virtual {v1, v0}, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage;->add(Lcom/microsoft/xbox/toolkit/anim/XLEAnimation;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getBodyAnimation(Lcom/microsoft/xbox/toolkit/anim/MAAS$MAASAnimationType;Z)Lcom/microsoft/xbox/toolkit/anim/XLEAnimation;
    .locals 2

    .line 188
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/XLEManagedDialog;->getDialogBody()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 190
    invoke-static {}, Lcom/microsoft/xbox/toolkit/anim/MAAS;->getInstance()Lcom/microsoft/xbox/toolkit/anim/MAAS;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/XLEManagedDialog;->bodyAnimationName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/toolkit/anim/MAAS;->getAnimation(Ljava/lang/String;)Lcom/microsoft/xbox/toolkit/anim/MAASAnimation;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/xle/anim/XLEMAASAnimationPackageNavigationManager;

    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/XLEManagedDialog;->getDialogBody()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/microsoft/xbox/xle/anim/XLEMAASAnimationPackageNavigationManager;->compile(Lcom/microsoft/xbox/toolkit/anim/MAAS$MAASAnimationType;ZLandroid/view/View;)Lcom/microsoft/xbox/toolkit/anim/XLEAnimation;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getBodyAnimationName()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/XLEManagedDialog;->bodyAnimationName:Ljava/lang/String;

    return-object v0
.end method

.method public getDialog()Landroid/app/Dialog;
    .locals 0

    return-object p0
.end method

.method public getDialogBody()Landroid/view/View;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/XLEManagedDialog;->dialogBody:Landroid/view/View;

    return-object v0
.end method

.method public getDialogType()Lcom/microsoft/xbox/toolkit/IXLEManagedDialog$DialogType;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/XLEManagedDialog;->dialogType:Lcom/microsoft/xbox/toolkit/IXLEManagedDialog$DialogType;

    return-object v0
.end method

.method public makeFullScreen()V
    .locals 3

    .line 78
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/XLEManagedDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 3

    .line 151
    invoke-super {p0}, Landroid/app/Dialog;->onAttachedToWindow()V

    .line 152
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/XLEManagedDialog;->getAnimateIn()Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage;

    move-result-object v0

    .line 154
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/XLEManagedDialog;->getDialogBody()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 156
    invoke-static {}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->getInstance()Lcom/microsoft/xbox/toolkit/ui/NavigationManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager;->setAnimationBlocking(Z)V

    .line 157
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/XLEManagedDialog;->callAfterAnimationIn:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage;->setOnAnimationEndRunnable(Ljava/lang/Runnable;)V

    .line 158
    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage;->startAnimation()V

    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    if-nez p1, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/XLEManagedDialog;->safeDismiss()V

    :cond_0
    return-void
.end method

.method public quickDismiss()V
    .locals 0

    .line 90
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public safeDismiss()V
    .locals 1

    .line 83
    invoke-static {}, Lcom/microsoft/xbox/toolkit/DialogManager;->getInstance()Lcom/microsoft/xbox/toolkit/DialogManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/microsoft/xbox/toolkit/DialogManager;->dismissManagedDialog(Lcom/microsoft/xbox/toolkit/IXLEManagedDialog;)V

    return-void
.end method

.method public setAnimateOutRunnable(Ljava/lang/Runnable;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/XLEManagedDialog;->onAnimateOutCompletedRunable:Ljava/lang/Runnable;

    return-void
.end method

.method public setBodyAnimationName(Ljava/lang/String;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/XLEManagedDialog;->bodyAnimationName:Ljava/lang/String;

    return-void
.end method

.method public setDialogType(Lcom/microsoft/xbox/toolkit/IXLEManagedDialog$DialogType;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/XLEManagedDialog;->dialogType:Lcom/microsoft/xbox/toolkit/IXLEManagedDialog$DialogType;

    return-void
.end method
