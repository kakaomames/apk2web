.class public final synthetic Lcom/braze/ui/BrazeFeedFragment$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/braze/events/IEventSubscriber;


# instance fields
.field public final synthetic f$0:Lcom/braze/ui/BrazeFeedFragment;

.field public final synthetic f$1:Landroid/widget/ListView;


# direct methods
.method public synthetic constructor <init>(Lcom/braze/ui/BrazeFeedFragment;Landroid/widget/ListView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/braze/ui/BrazeFeedFragment$$ExternalSyntheticLambda4;->f$0:Lcom/braze/ui/BrazeFeedFragment;

    iput-object p2, p0, Lcom/braze/ui/BrazeFeedFragment$$ExternalSyntheticLambda4;->f$1:Landroid/widget/ListView;

    return-void
.end method


# virtual methods
.method public final trigger(Ljava/lang/Object;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/braze/ui/BrazeFeedFragment$$ExternalSyntheticLambda4;->f$0:Lcom/braze/ui/BrazeFeedFragment;

    iget-object v1, p0, Lcom/braze/ui/BrazeFeedFragment$$ExternalSyntheticLambda4;->f$1:Landroid/widget/ListView;

    check-cast p1, Lcom/braze/events/FeedUpdatedEvent;

    invoke-virtual {v0, v1, p1}, Lcom/braze/ui/BrazeFeedFragment;->lambda$onViewCreated$3$com-braze-ui-BrazeFeedFragment(Landroid/widget/ListView;Lcom/braze/events/FeedUpdatedEvent;)V

    return-void
.end method
