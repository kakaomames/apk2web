.class public Lcom/mojang/minecraftpe/MainActivity$5;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mojang/minecraftpe/MainActivity;->createTextWidget()Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/mojang/minecraftpe/MainActivity;

.field public final synthetic val$textWidget:Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;


# direct methods
.method public constructor <init>(Lcom/mojang/minecraftpe/MainActivity;Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 718
    iput-object p1, p0, Lcom/mojang/minecraftpe/MainActivity$5;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    iput-object p2, p0, Lcom/mojang/minecraftpe/MainActivity$5;->val$textWidget:Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 3

    .line 721
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onEditorAction: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    sget-object v0, Landroidx/core/internal/view/aLy/wbXUZvT;->iTegzAmFB:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p2, p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    if-nez p2, :cond_1

    if-eqz p3, :cond_1

    .line 725
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p3

    if-nez p3, :cond_1

    move p3, v0

    goto :goto_1

    :cond_1
    move p3, v1

    :goto_1
    if-nez p1, :cond_4

    if-eqz p3, :cond_2

    goto :goto_2

    :cond_2
    const/4 p1, 0x7

    if-ne p2, p1, :cond_3

    .line 754
    iget-object p1, p0, Lcom/mojang/minecraftpe/MainActivity$5;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    invoke-virtual {p1}, Lcom/mojang/minecraftpe/MainActivity;->nativeBackPressed()V

    goto :goto_3

    :cond_3
    move v0, v1

    goto :goto_3

    :cond_4
    :goto_2
    if-eqz p1, :cond_5

    .line 730
    iget-object p1, p0, Lcom/mojang/minecraftpe/MainActivity$5;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    invoke-virtual {p1}, Lcom/mojang/minecraftpe/MainActivity;->nativeReturnKeyPressed()V

    .line 734
    :cond_5
    iget-object p1, p0, Lcom/mojang/minecraftpe/MainActivity$5;->val$textWidget:Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;

    invoke-virtual {p1}, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 736
    iget-object p2, p0, Lcom/mojang/minecraftpe/MainActivity$5;->val$textWidget:Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;

    invoke-virtual {p2}, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;->getSelectionEnd()I

    move-result p2

    if-ltz p2, :cond_6

    .line 737
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    if-le p2, p3, :cond_7

    .line 738
    :cond_6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    .line 741
    :cond_7
    iget-object p3, p0, Lcom/mojang/minecraftpe/MainActivity$5;->val$textWidget:Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;

    invoke-virtual {p3}, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;->getInputType()I

    move-result p3

    const/high16 v2, 0x20000

    and-int/2addr p3, v2

    if-eqz p3, :cond_8

    .line 743
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v1, "\n"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, p2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 744
    iget-object p3, p0, Lcom/mojang/minecraftpe/MainActivity$5;->val$textWidget:Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;

    invoke-virtual {p3, p1}, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;->setText(Ljava/lang/CharSequence;)V

    add-int/2addr p2, v0

    .line 745
    iget-object p1, p0, Lcom/mojang/minecraftpe/MainActivity$5;->val$textWidget:Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;

    invoke-virtual {p1}, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 746
    iget-object p2, p0, Lcom/mojang/minecraftpe/MainActivity$5;->val$textWidget:Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;

    invoke-virtual {p2, p1}, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;->setSelection(I)V

    :cond_8
    :goto_3
    return v0
.end method
