.class public Lcom/mojang/minecraftpe/MainActivity$15;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mojang/minecraftpe/MainActivity;->setTextBoxSelection(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/mojang/minecraftpe/MainActivity;

.field public final synthetic val$selectionEnd:I

.field public final synthetic val$selectionStart:I


# direct methods
.method public constructor <init>(Lcom/mojang/minecraftpe/MainActivity;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 965
    iput-object p1, p0, Lcom/mojang/minecraftpe/MainActivity$15;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    iput p2, p0, Lcom/mojang/minecraftpe/MainActivity$15;->val$selectionStart:I

    iput p3, p0, Lcom/mojang/minecraftpe/MainActivity$15;->val$selectionEnd:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 968
    iget v0, p0, Lcom/mojang/minecraftpe/MainActivity$15;->val$selectionStart:I

    .line 969
    iget v1, p0, Lcom/mojang/minecraftpe/MainActivity$15;->val$selectionEnd:I

    .line 970
    iget-object v2, p0, Lcom/mojang/minecraftpe/MainActivity$15;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    iget-object v2, v2, Lcom/mojang/minecraftpe/MainActivity;->textInputWidget:Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;

    invoke-virtual {v2}, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ltz v0, :cond_0

    if-le v0, v2, :cond_1

    :cond_0
    move v0, v2

    :cond_1
    if-ge v1, v0, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    if-le v1, v2, :cond_3

    move v1, v2

    .line 979
    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/mojang/minecraftpe/MainActivity$15;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/mojang/minecraftpe/MainActivity;->-$$Nest$fputmPauseTextboxUIUpdates(Lcom/mojang/minecraftpe/MainActivity;Z)V

    .line 980
    iget-object v2, p0, Lcom/mojang/minecraftpe/MainActivity$15;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    iget-object v2, v2, Lcom/mojang/minecraftpe/MainActivity;->textInputWidget:Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;

    invoke-virtual {v2, v0, v1}, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;->setSelection(II)V

    .line 981
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity$15;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mojang/minecraftpe/MainActivity;->-$$Nest$fputmPauseTextboxUIUpdates(Lcom/mojang/minecraftpe/MainActivity;Z)V

    return-void
.end method
