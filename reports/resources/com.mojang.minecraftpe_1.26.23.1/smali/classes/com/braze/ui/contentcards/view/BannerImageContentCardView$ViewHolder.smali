.class final Lcom/braze/ui/contentcards/view/BannerImageContentCardView$ViewHolder;
.super Lcom/braze/ui/contentcards/view/ContentCardViewHolder;
.source "BannerImageContentCardView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/braze/ui/contentcards/view/BannerImageContentCardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ViewHolder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0082\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/braze/ui/contentcards/view/BannerImageContentCardView$ViewHolder;",
        "Lcom/braze/ui/contentcards/view/ContentCardViewHolder;",
        "view",
        "Landroid/view/View;",
        "(Lcom/braze/ui/contentcards/view/BannerImageContentCardView;Landroid/view/View;)V",
        "imageView",
        "Landroid/widget/ImageView;",
        "getImageView",
        "()Landroid/widget/ImageView;",
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


# instance fields
.field private final imageView:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/braze/ui/contentcards/view/BannerImageContentCardView;


# direct methods
.method public constructor <init>(Lcom/braze/ui/contentcards/view/BannerImageContentCardView;Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iput-object p1, p0, Lcom/braze/ui/contentcards/view/BannerImageContentCardView$ViewHolder;->this$0:Lcom/braze/ui/contentcards/view/BannerImageContentCardView;

    .line 16
    invoke-virtual {p1}, Lcom/braze/ui/contentcards/view/BannerImageContentCardView;->isUnreadIndicatorEnabled()Z

    move-result p1

    invoke-direct {p0, p2, p1}, Lcom/braze/ui/contentcards/view/ContentCardViewHolder;-><init>(Landroid/view/View;Z)V

    .line 17
    sget p1, Lcom/braze/ui/R$id;->com_braze_content_cards_banner_image_card_image:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/braze/ui/contentcards/view/BannerImageContentCardView$ViewHolder;->imageView:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public final getImageView()Landroid/widget/ImageView;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/braze/ui/contentcards/view/BannerImageContentCardView$ViewHolder;->imageView:Landroid/widget/ImageView;

    return-object v0
.end method
