.class Lcom/braze/ui/BrazeXamarinFormsFeedFragment$2;
.super Ljava/lang/Object;
.source "BrazeXamarinFormsFeedFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/braze/ui/BrazeXamarinFormsFeedFragment;->onActivityCreated(Landroid/os/Bundle;)V
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

    .line 132
    iput-object p1, p0, Lcom/braze/ui/BrazeXamarinFormsFeedFragment$2;->this$0:Lcom/braze/ui/BrazeXamarinFormsFeedFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1

    .line 139
    iget-object p1, p0, Lcom/braze/ui/BrazeXamarinFormsFeedFragment$2;->this$0:Lcom/braze/ui/BrazeXamarinFormsFeedFragment;

    invoke-static {p1}, Lcom/braze/ui/BrazeXamarinFormsFeedFragment;->access$200(Lcom/braze/ui/BrazeXamarinFormsFeedFragment;)Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object p1

    if-nez p2, :cond_0

    const/4 p4, 0x1

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    :goto_0
    invoke-virtual {p1, p4}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setEnabled(Z)V

    if-nez p3, :cond_1

    return-void

    :cond_1
    add-int/lit8 p1, p2, -0x1

    .line 150
    iget-object p4, p0, Lcom/braze/ui/BrazeXamarinFormsFeedFragment$2;->this$0:Lcom/braze/ui/BrazeXamarinFormsFeedFragment;

    invoke-static {p4}, Lcom/braze/ui/BrazeXamarinFormsFeedFragment;->access$300(Lcom/braze/ui/BrazeXamarinFormsFeedFragment;)I

    move-result p4

    if-le p1, p4, :cond_2

    .line 152
    iget-object p4, p0, Lcom/braze/ui/BrazeXamarinFormsFeedFragment$2;->this$0:Lcom/braze/ui/BrazeXamarinFormsFeedFragment;

    invoke-static {p4}, Lcom/braze/ui/BrazeXamarinFormsFeedFragment;->access$400(Lcom/braze/ui/BrazeXamarinFormsFeedFragment;)Lcom/braze/ui/adapters/BrazeListAdapter;

    move-result-object p4

    iget-object v0, p0, Lcom/braze/ui/BrazeXamarinFormsFeedFragment$2;->this$0:Lcom/braze/ui/BrazeXamarinFormsFeedFragment;

    invoke-static {v0}, Lcom/braze/ui/BrazeXamarinFormsFeedFragment;->access$300(Lcom/braze/ui/BrazeXamarinFormsFeedFragment;)I

    move-result v0

    invoke-virtual {p4, v0, p1}, Lcom/braze/ui/adapters/BrazeListAdapter;->batchSetCardsToRead(II)V

    .line 154
    :cond_2
    iget-object p4, p0, Lcom/braze/ui/BrazeXamarinFormsFeedFragment$2;->this$0:Lcom/braze/ui/BrazeXamarinFormsFeedFragment;

    invoke-static {p4, p1}, Lcom/braze/ui/BrazeXamarinFormsFeedFragment;->access$302(Lcom/braze/ui/BrazeXamarinFormsFeedFragment;I)I

    .line 158
    iget-object p1, p0, Lcom/braze/ui/BrazeXamarinFormsFeedFragment$2;->this$0:Lcom/braze/ui/BrazeXamarinFormsFeedFragment;

    add-int/2addr p2, p3

    invoke-static {p1, p2}, Lcom/braze/ui/BrazeXamarinFormsFeedFragment;->access$502(Lcom/braze/ui/BrazeXamarinFormsFeedFragment;I)I

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method
