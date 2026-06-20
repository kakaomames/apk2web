.class Lcom/braze/ui/BrazeXamarinFormsFeedFragment$1;
.super Ljava/lang/Object;
.source "BrazeXamarinFormsFeedFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/braze/ui/BrazeXamarinFormsFeedFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/braze/ui/BrazeXamarinFormsFeedFragment;


# direct methods
.method constructor <init>(Lcom/braze/ui/BrazeXamarinFormsFeedFragment;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/braze/ui/BrazeXamarinFormsFeedFragment$1;->this$0:Lcom/braze/ui/BrazeXamarinFormsFeedFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/braze/ui/BrazeXamarinFormsFeedFragment$1;->this$0:Lcom/braze/ui/BrazeXamarinFormsFeedFragment;

    invoke-static {v0}, Lcom/braze/ui/BrazeXamarinFormsFeedFragment;->access$000(Lcom/braze/ui/BrazeXamarinFormsFeedFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/braze/ui/BrazeXamarinFormsFeedFragment$1;->this$0:Lcom/braze/ui/BrazeXamarinFormsFeedFragment;

    invoke-static {v0}, Lcom/braze/ui/BrazeXamarinFormsFeedFragment;->access$000(Lcom/braze/ui/BrazeXamarinFormsFeedFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/braze/ui/BrazeXamarinFormsFeedFragment$1;->this$0:Lcom/braze/ui/BrazeXamarinFormsFeedFragment;

    invoke-static {v0}, Lcom/braze/ui/BrazeXamarinFormsFeedFragment;->access$100(Lcom/braze/ui/BrazeXamarinFormsFeedFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 51
    iget-object v0, p0, Lcom/braze/ui/BrazeXamarinFormsFeedFragment$1;->this$0:Lcom/braze/ui/BrazeXamarinFormsFeedFragment;

    invoke-static {v0}, Lcom/braze/ui/BrazeXamarinFormsFeedFragment;->access$100(Lcom/braze/ui/BrazeXamarinFormsFeedFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    return-void
.end method
