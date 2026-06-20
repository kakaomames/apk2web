.class public Lcom/mojang/minecraftpe/MainActivity$14;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mojang/minecraftpe/MainActivity;->setCaretPosition(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/mojang/minecraftpe/MainActivity;

.field public final synthetic val$caretPosition:I


# direct methods
.method public constructor <init>(Lcom/mojang/minecraftpe/MainActivity;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 949
    iput-object p1, p0, Lcom/mojang/minecraftpe/MainActivity$14;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    iput p2, p0, Lcom/mojang/minecraftpe/MainActivity$14;->val$caretPosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 952
    iget v0, p0, Lcom/mojang/minecraftpe/MainActivity$14;->val$caretPosition:I

    .line 953
    iget-object v1, p0, Lcom/mojang/minecraftpe/MainActivity$14;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    iget-object v1, v1, Lcom/mojang/minecraftpe/MainActivity;->textInputWidget:Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;

    invoke-virtual {v1}, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ltz v0, :cond_0

    if-le v0, v1, :cond_1

    :cond_0
    move v0, v1

    .line 957
    :cond_1
    iget-object v1, p0, Lcom/mojang/minecraftpe/MainActivity$14;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/mojang/minecraftpe/MainActivity;->-$$Nest$fputmPauseTextboxUIUpdates(Lcom/mojang/minecraftpe/MainActivity;Z)V

    .line 958
    iget-object v1, p0, Lcom/mojang/minecraftpe/MainActivity$14;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    iget-object v1, v1, Lcom/mojang/minecraftpe/MainActivity;->textInputWidget:Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;

    invoke-virtual {v1, v0}, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;->setSelection(I)V

    .line 959
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity$14;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mojang/minecraftpe/MainActivity;->-$$Nest$fputmPauseTextboxUIUpdates(Lcom/mojang/minecraftpe/MainActivity;Z)V

    return-void
.end method
