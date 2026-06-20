.class public Lcom/braze/ui/widget/ShortNewsCardView;
.super Lcom/braze/ui/feed/view/BaseFeedCardView;
.source "ShortNewsCardView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/braze/ui/feed/view/BaseFeedCardView<",
        "Lcom/braze/models/cards/ShortNewsCard;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAspectRatio:F

.field private mCardAction:Lcom/braze/ui/actions/IAction;

.field private final mDescription:Landroid/widget/TextView;

.field private final mDomain:Landroid/widget/TextView;

.field private final mImage:Landroid/widget/ImageView;

.field private final mTitle:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    const-class v0, Lcom/braze/ui/widget/ShortNewsCardView;

    invoke-static {v0}, Lcom/braze/support/BrazeLogger;->getBrazeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/braze/ui/widget/ShortNewsCardView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, p1, v0}, Lcom/braze/ui/widget/ShortNewsCardView;-><init>(Landroid/content/Context;Lcom/braze/models/cards/ShortNewsCard;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/braze/models/cards/ShortNewsCard;)V
    .locals 1

    .line 28
    invoke-direct {p0, p1}, Lcom/braze/ui/feed/view/BaseFeedCardView;-><init>(Landroid/content/Context;)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 20
    iput p1, p0, Lcom/braze/ui/widget/ShortNewsCardView;->mAspectRatio:F

    .line 29
    sget p1, Lcom/braze/ui/R$id;->com_braze_short_news_card_description:I

    invoke-virtual {p0, p1}, Lcom/braze/ui/widget/ShortNewsCardView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/braze/ui/widget/ShortNewsCardView;->mDescription:Landroid/widget/TextView;

    .line 30
    sget p1, Lcom/braze/ui/R$id;->com_braze_short_news_card_title:I

    invoke-virtual {p0, p1}, Lcom/braze/ui/widget/ShortNewsCardView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/braze/ui/widget/ShortNewsCardView;->mTitle:Landroid/widget/TextView;

    .line 31
    sget p1, Lcom/braze/ui/R$id;->com_braze_short_news_card_domain:I

    invoke-virtual {p0, p1}, Lcom/braze/ui/widget/ShortNewsCardView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/braze/ui/widget/ShortNewsCardView;->mDomain:Landroid/widget/TextView;

    .line 33
    sget p1, Lcom/braze/ui/R$id;->com_braze_short_news_card_imageview_stub:I

    invoke-virtual {p0, p1}, Lcom/braze/ui/widget/ShortNewsCardView;->getProperViewFromInflatedStub(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/braze/ui/widget/ShortNewsCardView;->mImage:Landroid/widget/ImageView;

    .line 34
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/4 v0, 0x1

    .line 35
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    if-eqz p2, :cond_0

    .line 38
    invoke-virtual {p0, p2}, Lcom/braze/ui/widget/ShortNewsCardView;->setCard(Lcom/braze/models/cards/Card;)V

    .line 41
    :cond_0
    invoke-virtual {p0}, Lcom/braze/ui/widget/ShortNewsCardView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/braze/ui/R$drawable;->com_braze_card_background:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/braze/ui/widget/ShortNewsCardView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method protected getLayoutResource()I
    .locals 1

    .line 46
    sget v0, Lcom/braze/ui/R$layout;->com_braze_short_news_card:I

    return v0
.end method

.method synthetic lambda$onSetCard$0$com-braze-ui-widget-ShortNewsCardView(Lcom/braze/models/cards/ShortNewsCard;Landroid/view/View;)V
    .locals 1

    .line 56
    iget-object p2, p0, Lcom/braze/ui/widget/ShortNewsCardView;->applicationContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/braze/ui/widget/ShortNewsCardView;->mCardAction:Lcom/braze/ui/actions/IAction;

    invoke-virtual {p0, p2, p1, v0}, Lcom/braze/ui/widget/ShortNewsCardView;->handleCardClick(Landroid/content/Context;Lcom/braze/models/cards/Card;Lcom/braze/ui/actions/IAction;)V

    return-void
.end method

.method public bridge synthetic onSetCard(Lcom/braze/models/cards/Card;)V
    .locals 0

    .line 13
    check-cast p1, Lcom/braze/models/cards/ShortNewsCard;

    invoke-virtual {p0, p1}, Lcom/braze/ui/widget/ShortNewsCardView;->onSetCard(Lcom/braze/models/cards/ShortNewsCard;)V

    return-void
.end method

.method public onSetCard(Lcom/braze/models/cards/ShortNewsCard;)V
    .locals 3

    .line 51
    iget-object v0, p0, Lcom/braze/ui/widget/ShortNewsCardView;->mDescription:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/braze/models/cards/ShortNewsCard;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    iget-object v0, p0, Lcom/braze/ui/widget/ShortNewsCardView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/braze/models/cards/ShortNewsCard;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/braze/ui/widget/ShortNewsCardView;->setOptionalTextView(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/braze/ui/widget/ShortNewsCardView;->mDomain:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/braze/models/cards/ShortNewsCard;->getDomain()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/braze/ui/widget/ShortNewsCardView;->setOptionalTextView(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 54
    invoke-static {p1}, Lcom/braze/ui/widget/ShortNewsCardView;->getUriActionForCard(Lcom/braze/models/cards/Card;)Lcom/braze/ui/actions/UriAction;

    move-result-object v0

    iput-object v0, p0, Lcom/braze/ui/widget/ShortNewsCardView;->mCardAction:Lcom/braze/ui/actions/IAction;

    .line 56
    new-instance v0, Lcom/braze/ui/widget/ShortNewsCardView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/braze/ui/widget/ShortNewsCardView$$ExternalSyntheticLambda0;-><init>(Lcom/braze/ui/widget/ShortNewsCardView;Lcom/braze/models/cards/ShortNewsCard;)V

    invoke-virtual {p0, v0}, Lcom/braze/ui/widget/ShortNewsCardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    iget-object v0, p0, Lcom/braze/ui/widget/ShortNewsCardView;->mImage:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/braze/models/cards/ShortNewsCard;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x3f800000

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/braze/ui/widget/ShortNewsCardView;->setImageViewToUrl(Landroid/widget/ImageView;Ljava/lang/String;FLcom/braze/models/cards/Card;)V

    return-void
.end method
