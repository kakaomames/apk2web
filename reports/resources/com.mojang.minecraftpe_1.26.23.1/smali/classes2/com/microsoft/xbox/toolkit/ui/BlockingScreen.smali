.class public Lcom/microsoft/xbox/toolkit/ui/BlockingScreen;
.super Landroid/app/Dialog;
.source "BlockingScreen.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 18
    const-string v0, "blocking_dialog_style"

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLERValueHelper;->getStyleRValue(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x1

    .line 19
    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/toolkit/ui/BlockingScreen;->requestWindowFeature(I)Z

    return-void
.end method


# virtual methods
.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1

    .line 33
    const-string v0, "blocking_dialog_status_text"

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLERValueHelper;->getIdRValue(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/toolkit/ui/BlockingScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public show(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 0

    const/4 p1, 0x0

    .line 23
    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/toolkit/ui/BlockingScreen;->setCancelable(Z)V

    const/4 p1, 0x0

    .line 24
    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/toolkit/ui/BlockingScreen;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 25
    const-string p1, "blocking_dialog"

    invoke-static {p1}, Lcom/microsoft/xbox/toolkit/XLERValueHelper;->getLayoutRValue(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/toolkit/ui/BlockingScreen;->setContentView(I)V

    .line 27
    invoke-virtual {p0, p2}, Lcom/microsoft/xbox/toolkit/ui/BlockingScreen;->setMessage(Ljava/lang/CharSequence;)V

    .line 29
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/BlockingScreen;->show()V

    return-void
.end method
