.class public final synthetic Lcom/braze/ui/BrazeXamarinFormsFeedFragment$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/braze/ui/BrazeXamarinFormsFeedFragment;

.field public final synthetic f$1:Lcom/braze/events/FeedUpdatedEvent;

.field public final synthetic f$2:Landroid/widget/ListView;


# direct methods
.method public synthetic constructor <init>(Lcom/braze/ui/BrazeXamarinFormsFeedFragment;Lcom/braze/events/FeedUpdatedEvent;Landroid/widget/ListView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/braze/ui/BrazeXamarinFormsFeedFragment$$ExternalSyntheticLambda4;->f$0:Lcom/braze/ui/BrazeXamarinFormsFeedFragment;

    iput-object p2, p0, Lcom/braze/ui/BrazeXamarinFormsFeedFragment$$ExternalSyntheticLambda4;->f$1:Lcom/braze/events/FeedUpdatedEvent;

    iput-object p3, p0, Lcom/braze/ui/BrazeXamarinFormsFeedFragment$$ExternalSyntheticLambda4;->f$2:Landroid/widget/ListView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/braze/ui/BrazeXamarinFormsFeedFragment$$ExternalSyntheticLambda4;->f$0:Lcom/braze/ui/BrazeXamarinFormsFeedFragment;

    iget-object v1, p0, Lcom/braze/ui/BrazeXamarinFormsFeedFragment$$ExternalSyntheticLambda4;->f$1:Lcom/braze/events/FeedUpdatedEvent;

    iget-object v2, p0, Lcom/braze/ui/BrazeXamarinFormsFeedFragment$$ExternalSyntheticLambda4;->f$2:Landroid/widget/ListView;

    invoke-virtual {v0, v1, v2}, Lcom/braze/ui/BrazeXamarinFormsFeedFragment;->lambda$onActivityCreated$2$com-braze-ui-BrazeXamarinFormsFeedFragment(Lcom/braze/events/FeedUpdatedEvent;Landroid/widget/ListView;)V

    return-void
.end method
