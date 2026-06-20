.class public Lcom/braze/ui/widget/CaptionedImageCardView;
.super Lcom/braze/ui/feed/view/BaseFeedCardView;
.source "CaptionedImageCardView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/braze/ui/feed/view/BaseFeedCardView<",
        "Lcom/braze/models/cards/CaptionedImageCard;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAspectRatio:F

.field private mCardAction:Lcom/braze/ui/actions/IAction;

.field private final mDescription:Landroid/widget/TextView;

.field private final mDomain:Landroid/widget/TextView;

.field private final mImage:Landroid/widget/ImageView;

.field private final mTitle:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    const-class v0, Lcom/braze/ui/widget/CaptionedImageCardView;

    invoke-static {v0}, Lcom/braze/support/BrazeLogger;->getBrazeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/braze/ui/widget/CaptionedImageCardView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, p1, v0}, Lcom/braze/ui/widget/CaptionedImageCardView;-><init>(Landroid/content/Context;Lcom/braze/models/cards/CaptionedImageCard;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/braze/models/cards/CaptionedImageCard;)V
    .locals 1

    .line 31
    invoke-direct {p0, p1}, Lcom/braze/ui/feed/view/BaseFeedCardView;-><init>(Landroid/content/Context;)V

    const p1, 0x3faaaaab    # 1.3333334f

    .line 23
    iput p1, p0, Lcom/braze/ui/widget/CaptionedImageCardView;->mAspectRatio:F

    .line 32
    sget p1, Lcom/braze/ui/R$id;->com_braze_captioned_image_card_imageview_stub:I

    invoke-virtual {p0, p1}, Lcom/braze/ui/widget/CaptionedImageCardView;->getProperViewFromInflatedStub(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/braze/ui/widget/CaptionedImageCardView;->mImage:Landroid/widget/ImageView;

    .line 33
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/4 v0, 0x1

    .line 34
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 36
    sget p1, Lcom/braze/ui/R$id;->com_braze_captioned_image_title:I

    invoke-virtual {p0, p1}, Lcom/braze/ui/widget/CaptionedImageCardView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/braze/ui/widget/CaptionedImageCardView;->mTitle:Landroid/widget/TextView;

    .line 37
    sget p1, Lcom/braze/ui/R$id;->com_braze_captioned_image_description:I

    invoke-virtual {p0, p1}, Lcom/braze/ui/widget/CaptionedImageCardView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/braze/ui/widget/CaptionedImageCardView;->mDescription:Landroid/widget/TextView;

    .line 38
    sget p1, Lcom/braze/ui/R$id;->com_braze_captioned_image_card_domain:I

    invoke-virtual {p0, p1}, Lcom/braze/ui/widget/CaptionedImageCardView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/braze/ui/widget/CaptionedImageCardView;->mDomain:Landroid/widget/TextView;

    if-eqz p2, :cond_0

    .line 41
    invoke-virtual {p0, p2}, Lcom/braze/ui/widget/CaptionedImageCardView;->setCard(Lcom/braze/models/cards/Card;)V

    .line 44
    :cond_0
    invoke-virtual {p0}, Lcom/braze/ui/widget/CaptionedImageCardView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/braze/ui/R$drawable;->com_braze_card_background:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/braze/ui/widget/CaptionedImageCardView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method protected getLayoutResource()I
    .locals 1

    .line 49
    sget v0, Lcom/braze/ui/R$layout;->com_braze_captioned_image_card:I

    return v0
.end method

.method synthetic lambda$onSetCard$0$com-braze-ui-widget-CaptionedImageCardView(Lcom/braze/models/cards/CaptionedImageCard;Landroid/view/View;)V
    .locals 1

    .line 58
    iget-object p2, p0, Lcom/braze/ui/widget/CaptionedImageCardView;->applicationContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/braze/ui/widget/CaptionedImageCardView;->mCardAction:Lcom/braze/ui/actions/IAction;

    invoke-virtual {p0, p2, p1, v0}, Lcom/braze/ui/widget/CaptionedImageCardView;->handleCardClick(Landroid/content/Context;Lcom/braze/models/cards/Card;Lcom/braze/ui/actions/IAction;)V

    return-void
.end method

.method public onSetCard(Lcom/braze/models/cards/CaptionedImageCard;)V
    .locals 3

    .line 54
    iget-object v0, p0, Lcom/braze/ui/widget/CaptionedImageCardView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/braze/models/cards/CaptionedImageCard;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    iget-object v0, p0, Lcom/braze/ui/widget/CaptionedImageCardView;->mDescription:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/braze/models/cards/CaptionedImageCard;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    iget-object v0, p0, Lcom/braze/ui/widget/CaptionedImageCardView;->mDomain:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/braze/models/cards/CaptionedImageCard;->getDomain()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/braze/ui/widget/CaptionedImageCardView;->setOptionalTextView(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 57
    invoke-static {p1}, Lcom/braze/ui/widget/CaptionedImageCardView;->getUriActionForCard(Lcom/braze/models/cards/Card;)Lcom/braze/ui/actions/UriAction;

    move-result-object v0

    iput-object v0, p0, Lcom/braze/ui/widget/CaptionedImageCardView;->mCardAction:Lcom/braze/ui/actions/IAction;

    .line 58
    new-instance v0, Lcom/braze/ui/widget/CaptionedImageCardView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/braze/ui/widget/CaptionedImageCardView$$ExternalSyntheticLambda0;-><init>(Lcom/braze/ui/widget/CaptionedImageCardView;Lcom/braze/models/cards/CaptionedImageCard;)V

    invoke-virtual {p0, v0}, Lcom/braze/ui/widget/CaptionedImageCardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    invoke-virtual {p1}, Lcom/braze/models/cards/CaptionedImageCard;->getAspectRatio()F

    move-result v0

    iput v0, p0, Lcom/braze/ui/widget/CaptionedImageCardView;->mAspectRatio:F

    .line 60
    iget-object v0, p0, Lcom/braze/ui/widget/CaptionedImageCardView;->mImage:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/braze/models/cards/CaptionedImageCard;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/braze/ui/widget/CaptionedImageCardView;->mAspectRatio:F

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/braze/ui/widget/CaptionedImageCardView;->setImageViewToUrl(Landroid/widget/ImageView;Ljava/lang/String;FLcom/braze/models/cards/Card;)V

    return-void
.end method

.method public bridge synthetic onSetCard(Lcom/braze/models/cards/Card;)V
    .locals 0

    .line 13
    check-cast p1, Lcom/braze/models/cards/CaptionedImageCard;

    invoke-virtual {p0, p1}, Lcom/braze/ui/widget/CaptionedImageCardView;->onSetCard(Lcom/braze/models/cards/CaptionedImageCard;)V

    return-void
.end method
