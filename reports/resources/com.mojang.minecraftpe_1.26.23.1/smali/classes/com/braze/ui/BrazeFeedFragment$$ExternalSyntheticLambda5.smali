.class public final synthetic Lcom/braze/ui/BrazeFeedFragment$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/braze/ui/BrazeFeedFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/braze/ui/BrazeFeedFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/braze/ui/BrazeFeedFragment$$ExternalSyntheticLambda5;->f$0:Lcom/braze/ui/BrazeFeedFragment;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/braze/ui/BrazeFeedFragment$$ExternalSyntheticLambda5;->f$0:Lcom/braze/ui/BrazeFeedFragment;

    invoke-virtual {v0}, Lcom/braze/ui/BrazeFeedFragment;->lambda$onRefresh$5$com-braze-ui-BrazeFeedFragment()V

    return-void
.end method
