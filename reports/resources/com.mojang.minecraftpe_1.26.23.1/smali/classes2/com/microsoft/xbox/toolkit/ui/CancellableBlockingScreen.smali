.class public Lcom/microsoft/xbox/toolkit/ui/CancellableBlockingScreen;
.super Landroid/app/Dialog;
.source "CancellableBlockingScreen.java"


# instance fields
.field private cancelButton:Lcom/microsoft/xbox/toolkit/ui/XLEButton;

.field private container:Landroid/view/View;

.field private statusText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 24
    const-string v0, "cancellable_dialog_style"

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLERValueHelper;->getStyleRValue(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x0

    .line 26
    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/toolkit/ui/CancellableBlockingScreen;->setCancelable(Z)V

    const/4 p1, 0x0

    .line 27
    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/toolkit/ui/CancellableBlockingScreen;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    const/4 p1, 0x1

    .line 28
    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/toolkit/ui/CancellableBlockingScreen;->requestWindowFeature(I)Z

    .line 29
    const-string p1, "cancellable_blocking_dialog"

    invoke-static {p1}, Lcom/microsoft/xbox/toolkit/XLERValueHelper;->getLayoutRValue(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/toolkit/ui/CancellableBlockingScreen;->setContentView(I)V

    .line 31
    const-string p1, "blocking_dialog_container"

    invoke-static {p1}, Lcom/microsoft/xbox/toolkit/XLERValueHelper;->getIdRValue(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/toolkit/ui/CancellableBlockingScreen;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/ui/CancellableBlockingScreen;->container:Landroid/view/View;

    .line 32
    const-string p1, "blocking_dialog_cancel"

    invoke-static {p1}, Lcom/microsoft/xbox/toolkit/XLERValueHelper;->getIdRValue(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/toolkit/ui/CancellableBlockingScreen;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/microsoft/xbox/toolkit/ui/XLEButton;

    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/ui/CancellableBlockingScreen;->cancelButton:Lcom/microsoft/xbox/toolkit/ui/XLEButton;

    .line 33
    const-string p1, "blocking_dialog_status_text"

    invoke-static {p1}, Lcom/microsoft/xbox/toolkit/XLERValueHelper;->getIdRValue(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/toolkit/ui/CancellableBlockingScreen;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/ui/CancellableBlockingScreen;->statusText:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public setCancelButtonAction(Landroid/view/View$OnClickListener;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 60
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/CancellableBlockingScreen;->cancelButton:Lcom/microsoft/xbox/toolkit/ui/XLEButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/CancellableBlockingScreen;->cancelButton:Lcom/microsoft/xbox/toolkit/ui/XLEButton;

    invoke-virtual {v0, p1}, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/CancellableBlockingScreen;->statusText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public show(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 2

    .line 38
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/CancellableBlockingScreen;->isShowing()Z

    move-result p1

    .line 40
    invoke-virtual {p0, p2}, Lcom/microsoft/xbox/toolkit/ui/CancellableBlockingScreen;->setMessage(Ljava/lang/CharSequence;)V

    .line 42
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/CancellableBlockingScreen;->show()V

    if-nez p1, :cond_0

    .line 45
    new-instance p1, Landroid/view/animation/AlphaAnimation;

    const/4 p2, 0x0

    const/high16 v0, 0x3f800000

    invoke-direct {p1, p2, v0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const/4 p2, 0x1

    .line 46
    invoke-virtual {p1, p2}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    const-wide/16 v0, 0x3e8

    .line 47
    invoke-virtual {p1, v0, v1}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    .line 48
    invoke-virtual {p1, v0, v1}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 50
    iget-object p2, p0, Lcom/microsoft/xbox/toolkit/ui/CancellableBlockingScreen;->container:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method
