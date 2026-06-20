.class public Lcom/braze/ui/activities/BrazeFeedActivity;
.super Lcom/braze/ui/activities/BrazeBaseFragmentActivity;
.source "BrazeFeedActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/braze/ui/activities/BrazeBaseFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 17
    invoke-super {p0, p1}, Lcom/braze/ui/activities/BrazeBaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    sget p1, Lcom/braze/ui/R$layout;->com_braze_feed_activity:I

    invoke-virtual {p0, p1}, Lcom/braze/ui/activities/BrazeFeedActivity;->setContentView(I)V

    return-void
.end method
