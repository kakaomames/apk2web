.class public Lcom/braze/ui/widget/BannerImageCardView;
.super Lcom/braze/ui/feed/view/BaseFeedCardView;
.source "BannerImageCardView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/braze/ui/feed/view/BaseFeedCardView<",
        "Lcom/braze/models/cards/BannerImageCard;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAspectRatio:F

.field private mCardAction:Lcom/braze/ui/actions/IAction;

.field private final mImage:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    const-class v0, Lcom/braze/ui/widget/BannerImageCardView;

    invoke-static {v0}, Lcom/braze/support/BrazeLogger;->getBrazeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/braze/ui/widget/BannerImageCardView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 22
    invoke-direct {p0, p1, v0}, Lcom/braze/ui/widget/BannerImageCardView;-><init>(Landroid/content/Context;Lcom/braze/models/cards/BannerImageCard;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/braze/models/cards/BannerImageCard;)V
    .locals 1

    .line 27
    invoke-direct {p0, p1}, Lcom/braze/ui/feed/view/BaseFeedCardView;-><init>(Landroid/content/Context;)V

    const/high16 p1, 0x40c00000    # 6.0f

    .line 19
    iput p1, p0, Lcom/braze/ui/widget/BannerImageCardView;->mAspectRatio:F

    .line 28
    sget p1, Lcom/braze/ui/R$id;->com_braze_banner_image_card_imageview_stub:I

    invoke-virtual {p0, p1}, Lcom/braze/ui/widget/BannerImageCardView;->getProperViewFromInflatedStub(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/braze/ui/widget/BannerImageCardView;->mImage:Landroid/widget/ImageView;

    .line 29
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/4 v0, 0x1

    .line 30
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    if-eqz p2, :cond_0

    .line 33
    invoke-virtual {p0, p2}, Lcom/braze/ui/widget/BannerImageCardView;->setCard(Lcom/braze/models/cards/Card;)V

    .line 36
    :cond_0
    invoke-virtual {p0}, Lcom/braze/ui/widget/BannerImageCardView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/braze/ui/R$drawable;->com_braze_card_background:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/braze/ui/widget/BannerImageCardView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method protected getLayoutResource()I
    .locals 1

    .line 41
    sget v0, Lcom/braze/ui/R$layout;->com_braze_banner_image_card:I

    return v0
.end method

.method synthetic lambda$onSetCard$0$com-braze-ui-widget-BannerImageCardView(Lcom/braze/models/cards/BannerImageCard;Landroid/view/View;)V
    .locals 1

    .line 52
    iget-object p2, p0, Lcom/braze/ui/widget/BannerImageCardView;->applicationContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/braze/ui/widget/BannerImageCardView;->mCardAction:Lcom/braze/ui/actions/IAction;

    invoke-virtual {p0, p2, p1, v0}, Lcom/braze/ui/widget/BannerImageCardView;->handleCardClick(Landroid/content/Context;Lcom/braze/models/cards/Card;Lcom/braze/ui/actions/IAction;)V

    return-void
.end method

.method public onSetCard(Lcom/braze/models/cards/BannerImageCard;)V
    .locals 3

    .line 46
    invoke-virtual {p1}, Lcom/braze/models/cards/BannerImageCard;->getAspectRatio()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {p1}, Lcom/braze/models/cards/BannerImageCard;->getAspectRatio()F

    move-result v0

    iput v0, p0, Lcom/braze/ui/widget/BannerImageCardView;->mAspectRatio:F

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/braze/ui/widget/BannerImageCardView;->mImage:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/braze/models/cards/BannerImageCard;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/braze/ui/widget/BannerImageCardView;->mAspectRatio:F

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/braze/ui/widget/BannerImageCardView;->setImageViewToUrl(Landroid/widget/ImageView;Ljava/lang/String;FLcom/braze/models/cards/Card;)V

    .line 51
    invoke-static {p1}, Lcom/braze/ui/widget/BannerImageCardView;->getUriActionForCard(Lcom/braze/models/cards/Card;)Lcom/braze/ui/actions/UriAction;

    move-result-object v0

    iput-object v0, p0, Lcom/braze/ui/widget/BannerImageCardView;->mCardAction:Lcom/braze/ui/actions/IAction;

    .line 52
    new-instance v0, Lcom/braze/ui/widget/BannerImageCardView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/braze/ui/widget/BannerImageCardView$$ExternalSyntheticLambda0;-><init>(Lcom/braze/ui/widget/BannerImageCardView;Lcom/braze/models/cards/BannerImageCard;)V

    invoke-virtual {p0, v0}, Lcom/braze/ui/widget/BannerImageCardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onSetCard(Lcom/braze/models/cards/Card;)V
    .locals 0

    .line 12
    check-cast p1, Lcom/braze/models/cards/BannerImageCard;

    invoke-virtual {p0, p1}, Lcom/braze/ui/widget/BannerImageCardView;->onSetCard(Lcom/braze/models/cards/BannerImageCard;)V

    return-void
.end method
