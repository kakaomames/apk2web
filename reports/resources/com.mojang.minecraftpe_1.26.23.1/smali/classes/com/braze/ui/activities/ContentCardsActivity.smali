.class public Lcom/braze/ui/activities/ContentCardsActivity;
.super Lcom/braze/ui/activities/BrazeBaseFragmentActivity;
.source "ContentCardsActivity.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0016\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/braze/ui/activities/ContentCardsActivity;",
        "Lcom/braze/ui/activities/BrazeBaseFragmentActivity;",
        "()V",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "android-sdk-ui_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/braze/ui/activities/BrazeBaseFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 15
    invoke-super {p0, p1}, Lcom/braze/ui/activities/BrazeBaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 16
    sget p1, Lcom/braze/ui/R$layout;->com_braze_content_cards_activity:I

    invoke-virtual {p0, p1}, Lcom/braze/ui/activities/ContentCardsActivity;->setContentView(I)V

    return-void
.end method
