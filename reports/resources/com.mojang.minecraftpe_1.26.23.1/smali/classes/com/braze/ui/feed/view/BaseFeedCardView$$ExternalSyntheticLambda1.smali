.class public final synthetic Lcom/braze/ui/feed/view/BaseFeedCardView$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/braze/models/cards/ICardListener;


# instance fields
.field public final synthetic f$0:Lcom/braze/ui/feed/view/BaseFeedCardView;


# direct methods
.method public synthetic constructor <init>(Lcom/braze/ui/feed/view/BaseFeedCardView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/braze/ui/feed/view/BaseFeedCardView$$ExternalSyntheticLambda1;->f$0:Lcom/braze/ui/feed/view/BaseFeedCardView;

    return-void
.end method


# virtual methods
.method public final onCardUpdate()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/braze/ui/feed/view/BaseFeedCardView$$ExternalSyntheticLambda1;->f$0:Lcom/braze/ui/feed/view/BaseFeedCardView;

    invoke-virtual {v0}, Lcom/braze/ui/feed/view/BaseFeedCardView;->lambda$setCard$1$com-braze-ui-feed-view-BaseFeedCardView()V

    return-void
.end method
