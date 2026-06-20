.class public Lcom/mojang/minecraftpe/MainActivity$6;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


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

    .line 761
    iput-object p1, p0, Lcom/mojang/minecraftpe/MainActivity$6;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    iput-object p2, p0, Lcom/mojang/minecraftpe/MainActivity$6;->val$textWidget:Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    .line 771
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 772
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity$6;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    iget-object v0, v0, Lcom/mojang/minecraftpe/MainActivity;->mCurrentTextMirror:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 773
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity$6;->val$textWidget:Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;

    invoke-virtual {v0}, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;->getSelectionStart()I

    move-result v0

    .line 774
    iget-object v1, p0, Lcom/mojang/minecraftpe/MainActivity$6;->val$textWidget:Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;

    invoke-virtual {v1}, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;->getSelectionEnd()I

    move-result v1

    .line 775
    iget-object v2, p0, Lcom/mojang/minecraftpe/MainActivity$6;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    iget-object v2, v2, Lcom/mojang/minecraftpe/MainActivity;->mCaretPositionMirror:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 777
    iget-object v2, p0, Lcom/mojang/minecraftpe/MainActivity$6;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    invoke-static {v2}, Lcom/mojang/minecraftpe/MainActivity;->-$$Nest$fgetmPauseTextboxUIUpdates(Lcom/mojang/minecraftpe/MainActivity;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 779
    iget-object v2, p0, Lcom/mojang/minecraftpe/MainActivity$6;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    invoke-virtual {v2, p1, v0, v1}, Lcom/mojang/minecraftpe/MainActivity;->nativeSetTextboxText(Ljava/lang/String;II)V

    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
