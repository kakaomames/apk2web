.class public abstract Lcom/braze/ui/contentcards/view/BaseContentCardView;
.super Lcom/braze/ui/widget/BaseCardView;
.source "BaseContentCardView.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/braze/models/cards/Card;",
        ">",
        "Lcom/braze/ui/widget/BaseCardView<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008&\u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\u0008\u0012\u0004\u0012\u0002H\u00010\u0003B\r\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0018\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0002H\u0016J\u0010\u0010\u000c\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000eH&J\"\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u00022\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0014J\u0012\u0010\u0013\u001a\u00020\u00082\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0005J*\u0010\u0016\u001a\u00020\u00082\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u0017\u001a\u00020\u00182\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\u0006\u0010\u000b\u001a\u00020\u0002J\u0010\u0010\u001b\u001a\u00020\u00082\u0006\u0010\u001c\u001a\u00020\u001dH\u0004\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/braze/ui/contentcards/view/BaseContentCardView;",
        "T",
        "Lcom/braze/models/cards/Card;",
        "Lcom/braze/ui/widget/BaseCardView;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "bindViewHolder",
        "",
        "viewHolder",
        "Lcom/braze/ui/contentcards/view/ContentCardViewHolder;",
        "card",
        "createViewHolder",
        "viewGroup",
        "Landroid/view/ViewGroup;",
        "isClickHandled",
        "",
        "cardAction",
        "Lcom/braze/ui/actions/IAction;",
        "safeSetClipToOutline",
        "imageView",
        "Landroid/widget/ImageView;",
        "setOptionalCardImage",
        "cardAspectRatio",
        "",
        "cardImageUrl",
        "",
        "setViewBackground",
        "view",
        "Landroid/view/View;",
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
.method public static synthetic $r8$lambda$Zbf7UQd6OanC8om0GxLBM9FxCvo(Lcom/braze/ui/contentcards/view/BaseContentCardView;Lcom/braze/models/cards/Card;Lcom/braze/ui/actions/UriAction;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/braze/ui/contentcards/view/BaseContentCardView;->bindViewHolder$lambda-0(Lcom/braze/ui/contentcards/view/BaseContentCardView;Lcom/braze/models/cards/Card;Lcom/braze/ui/actions/UriAction;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0, p1}, Lcom/braze/ui/widget/BaseCardView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private static final bindViewHolder$lambda-0(Lcom/braze/ui/contentcards/view/BaseContentCardView;Lcom/braze/models/cards/Card;Lcom/braze/ui/actions/UriAction;Landroid/view/View;)V
    .locals 0

    const-string p3, "this$0"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$card"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iget-object p3, p0, Lcom/braze/ui/contentcards/view/BaseContentCardView;->applicationContext:Landroid/content/Context;

    .line 34
    check-cast p2, Lcom/braze/ui/actions/IAction;

    .line 31
    invoke-virtual {p0, p3, p1, p2}, Lcom/braze/ui/contentcards/view/BaseContentCardView;->handleCardClick(Landroid/content/Context;Lcom/braze/models/cards/Card;Lcom/braze/ui/actions/IAction;)V

    return-void
.end method


# virtual methods
.method public bindViewHolder(Lcom/braze/ui/contentcards/view/ContentCardViewHolder;Lcom/braze/models/cards/Card;)V
    .locals 5

    const-string v0, "viewHolder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "card"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-virtual {p2}, Lcom/braze/models/cards/Card;->isPinned()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/braze/ui/contentcards/view/ContentCardViewHolder;->setPinnedIconVisible(Z)V

    .line 26
    iget-object v0, p0, Lcom/braze/ui/contentcards/view/BaseContentCardView;->configurationProvider:Lcom/braze/configuration/BrazeConfigurationProvider;

    invoke-virtual {v0}, Lcom/braze/configuration/BrazeConfigurationProvider;->isContentCardsUnreadVisualIndicatorEnabled()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 27
    invoke-virtual {p2}, Lcom/braze/models/cards/Card;->isIndicatorHighlighted()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 25
    :goto_0
    invoke-virtual {p1, v0}, Lcom/braze/ui/contentcards/view/ContentCardViewHolder;->setUnreadBarVisible(Z)V

    .line 29
    sget-object v0, Lcom/braze/ui/widget/BaseCardView;->Companion:Lcom/braze/ui/widget/BaseCardView$Companion;

    invoke-static {p2}, Lcom/braze/ui/widget/BaseCardView;->getUriActionForCard(Lcom/braze/models/cards/Card;)Lcom/braze/ui/actions/UriAction;

    move-result-object v0

    .line 30
    iget-object v3, p1, Lcom/braze/ui/contentcards/view/ContentCardViewHolder;->itemView:Landroid/view/View;

    new-instance v4, Lcom/braze/ui/contentcards/view/BaseContentCardView$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, p2, v0}, Lcom/braze/ui/contentcards/view/BaseContentCardView$$ExternalSyntheticLambda0;-><init>(Lcom/braze/ui/contentcards/view/BaseContentCardView;Lcom/braze/models/cards/Card;Lcom/braze/ui/actions/UriAction;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    .line 39
    :goto_1
    invoke-virtual {p1, v1}, Lcom/braze/ui/contentcards/view/ContentCardViewHolder;->setActionHintVisible(Z)V

    return-void
.end method

.method public abstract createViewHolder(Landroid/view/ViewGroup;)Lcom/braze/ui/contentcards/view/ContentCardViewHolder;
.end method

.method protected isClickHandled(Landroid/content/Context;Lcom/braze/models/cards/Card;Lcom/braze/ui/actions/IAction;)Z
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "card"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    sget-object v0, Lcom/braze/ui/contentcards/managers/BrazeContentCardsManager;->Companion:Lcom/braze/ui/contentcards/managers/BrazeContentCardsManager$Companion;

    invoke-virtual {v0}, Lcom/braze/ui/contentcards/managers/BrazeContentCardsManager$Companion;->getInstance()Lcom/braze/ui/contentcards/managers/BrazeContentCardsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/braze/ui/contentcards/managers/BrazeContentCardsManager;->getContentCardsActionListener()Lcom/braze/ui/contentcards/listeners/IContentCardsActionListener;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/braze/ui/contentcards/listeners/IContentCardsActionListener;->onContentCardClicked(Landroid/content/Context;Lcom/braze/models/cards/Card;Lcom/braze/ui/actions/IAction;)Z

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    move v1, p2

    :cond_0
    return v1
.end method

.method protected final safeSetClipToOutline(Landroid/widget/ImageView;)V
    .locals 1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 67
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setClipToOutline(Z)V

    :goto_0
    return-void
.end method

.method public final setOptionalCardImage(Landroid/widget/ImageView;FLjava/lang/String;Lcom/braze/models/cards/Card;)V
    .locals 1

    const-string v0, "card"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    .line 57
    invoke-virtual {p0, p1, p3, p2, p4}, Lcom/braze/ui/contentcards/view/BaseContentCardView;->setImageViewToUrl(Landroid/widget/ImageView;Ljava/lang/String;FLcom/braze/models/cards/Card;)V

    :cond_0
    return-void
.end method

.method protected final setViewBackground(Landroid/view/View;)V
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Lcom/braze/ui/contentcards/view/BaseContentCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/braze/ui/R$drawable;->com_braze_content_card_background:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 76
    invoke-virtual {p0}, Lcom/braze/ui/contentcards/view/BaseContentCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/braze/ui/R$drawable;->com_braze_content_card_scrim:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
