.class public Lcom/braze/ui/inappmessage/factories/DefaultInAppMessageFullViewFactory;
.super Ljava/lang/Object;
.source "DefaultInAppMessageFullViewFactory.kt"

# interfaces
.implements Lcom/braze/ui/inappmessage/IInAppMessageViewFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/braze/ui/inappmessage/factories/DefaultInAppMessageFullViewFactory$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDefaultInAppMessageFullViewFactory.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DefaultInAppMessageFullViewFactory.kt\ncom/braze/ui/inappmessage/factories/DefaultInAppMessageFullViewFactory\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,171:1\n1#2:172\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0016\u0018\u0000 \u000e2\u00020\u0001:\u0001\u000eB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0016J\u0018\u0010\t\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u000bH\u0007J \u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\r\u001a\u00020\u0004H\u0002\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/braze/ui/inappmessage/factories/DefaultInAppMessageFullViewFactory;",
        "Lcom/braze/ui/inappmessage/IInAppMessageViewFactory;",
        "()V",
        "createInAppMessageView",
        "Lcom/braze/ui/inappmessage/views/InAppMessageFullView;",
        "activity",
        "Landroid/app/Activity;",
        "inAppMessage",
        "Lcom/braze/models/inappmessage/IInAppMessage;",
        "getAppropriateFullView",
        "isGraphic",
        "",
        "resetLayoutParamsIfAppropriate",
        "view",
        "Companion",
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


# static fields
.field private static final BUTTONS_PRESENT_SCROLLVIEW_EXCESS_HEIGHT_VALUE_IN_DP:I = 0x40

.field public static final Companion:Lcom/braze/ui/inappmessage/factories/DefaultInAppMessageFullViewFactory$Companion;


# direct methods
.method public static synthetic $r8$lambda$1joCwXvx0HBUnc9CZrSd1_GKBdw(Landroid/view/View;Lcom/braze/ui/inappmessage/views/InAppMessageFullView;Lcom/braze/models/inappmessage/InAppMessageFull;Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/braze/ui/inappmessage/factories/DefaultInAppMessageFullViewFactory;->createInAppMessageView$lambda-4(Landroid/view/View;Lcom/braze/ui/inappmessage/views/InAppMessageFullView;Lcom/braze/models/inappmessage/InAppMessageFull;Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/braze/ui/inappmessage/factories/DefaultInAppMessageFullViewFactory$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/braze/ui/inappmessage/factories/DefaultInAppMessageFullViewFactory$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/braze/ui/inappmessage/factories/DefaultInAppMessageFullViewFactory;->Companion:Lcom/braze/ui/inappmessage/factories/DefaultInAppMessageFullViewFactory$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final createInAppMessageView$lambda-4(Landroid/view/View;Lcom/braze/ui/inappmessage/views/InAppMessageFullView;Lcom/braze/models/inappmessage/InAppMessageFull;Landroid/content/Context;Landroid/view/View;)V
    .locals 4

    const-string v0, "$view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$inAppMessageFull"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    .line 83
    div-int/lit8 p0, p0, 0x2

    .line 86
    sget v0, Lcom/braze/ui/R$id;->com_braze_inappmessage_full_text_and_button_content_parent:I

    invoke-virtual {p1, v0}, Lcom/braze/ui/inappmessage/views/InAppMessageFullView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 87
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 88
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v1, v0

    .line 89
    invoke-virtual {p2}, Lcom/braze/models/inappmessage/InAppMessageFull;->getMessageButtons()Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/util/Collection;

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    .line 92
    const-string p2, "applicationContext"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/high16 v2, 0x4050000000000000L    # 64.0

    .line 91
    invoke-static {p3, v2, v3}, Lcom/braze/ui/support/ViewUtils;->convertDpToPixels(Landroid/content/Context;D)D

    move-result-wide p2

    double-to-int p2, p2

    add-int/2addr v1, p2

    .line 99
    :cond_0
    invoke-virtual {p4}, Landroid/view/View;->getHeight()I

    move-result p2

    sub-int/2addr p0, v1

    invoke-static {p2, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    .line 102
    const-string p2, "scrollView"

    invoke-static {p4, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p4, p0}, Lcom/braze/ui/support/ViewUtils;->setHeightOnViewLayoutParams(Landroid/view/View;I)V

    .line 105
    invoke-virtual {p4}, Landroid/view/View;->requestLayout()V

    .line 106
    invoke-virtual {p1}, Lcom/braze/ui/inappmessage/views/InAppMessageFullView;->getMessageImageView()Landroid/widget/ImageView;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    :cond_1
    return-void

    .line 87
    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final resetLayoutParamsIfAppropriate(Landroid/app/Activity;Lcom/braze/models/inappmessage/IInAppMessage;Lcom/braze/ui/inappmessage/views/InAppMessageFullView;)Z
    .locals 2

    .line 127
    invoke-static {p1}, Lcom/braze/ui/support/ViewUtils;->isRunningOnTablet(Landroid/app/Activity;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 130
    :cond_0
    invoke-interface {p2}, Lcom/braze/models/inappmessage/IInAppMessage;->getOrientation()Lcom/braze/enums/inappmessage/Orientation;

    move-result-object p1

    sget-object v1, Lcom/braze/enums/inappmessage/Orientation;->ANY:Lcom/braze/enums/inappmessage/Orientation;

    if-ne p1, v1, :cond_1

    return v0

    .line 133
    :cond_1
    invoke-virtual {p3}, Lcom/braze/ui/inappmessage/views/InAppMessageFullView;->getLongEdge()I

    move-result p1

    .line 134
    invoke-virtual {p3}, Lcom/braze/ui/inappmessage/views/InAppMessageFullView;->getShortEdge()I

    move-result v1

    if-lez p1, :cond_4

    if-lez v1, :cond_4

    .line 136
    invoke-interface {p2}, Lcom/braze/models/inappmessage/IInAppMessage;->getOrientation()Lcom/braze/enums/inappmessage/Orientation;

    move-result-object p2

    sget-object v0, Lcom/braze/enums/inappmessage/Orientation;->LANDSCAPE:Lcom/braze/enums/inappmessage/Orientation;

    if-ne p2, v0, :cond_2

    .line 137
    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p2, p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    goto :goto_0

    .line 139
    :cond_2
    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p2, v1, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    :goto_0
    const/16 p1, 0xd

    const/4 v0, -0x1

    .line 141
    invoke-virtual {p2, p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 142
    invoke-virtual {p3}, Lcom/braze/ui/inappmessage/views/InAppMessageFullView;->getMessageBackgroundObject()Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    check-cast p2, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_1
    const/4 p1, 0x1

    return p1

    :cond_4
    return v0
.end method


# virtual methods
.method public bridge synthetic createInAppMessageView(Landroid/app/Activity;Lcom/braze/models/inappmessage/IInAppMessage;)Landroid/view/View;
    .locals 0

    .line 24
    invoke-virtual {p0, p1, p2}, Lcom/braze/ui/inappmessage/factories/DefaultInAppMessageFullViewFactory;->createInAppMessageView(Landroid/app/Activity;Lcom/braze/models/inappmessage/IInAppMessage;)Lcom/braze/ui/inappmessage/views/InAppMessageFullView;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    return-object p1
.end method

.method public createInAppMessageView(Landroid/app/Activity;Lcom/braze/models/inappmessage/IInAppMessage;)Lcom/braze/ui/inappmessage/views/InAppMessageFullView;
    .locals 11

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inAppMessage"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 31
    move-object v7, p2

    check-cast v7, Lcom/braze/models/inappmessage/InAppMessageFull;

    .line 32
    invoke-virtual {v7}, Lcom/braze/models/inappmessage/InAppMessageFull;->getImageStyle()Lcom/braze/enums/inappmessage/ImageStyle;

    move-result-object v1

    sget-object v2, Lcom/braze/enums/inappmessage/ImageStyle;->GRAPHIC:Lcom/braze/enums/inappmessage/ImageStyle;

    const/4 v8, 0x1

    if-ne v1, v2, :cond_0

    move v9, v8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    move v9, v1

    .line 33
    :goto_0
    invoke-virtual {p0, p1, v9}, Lcom/braze/ui/inappmessage/factories/DefaultInAppMessageFullViewFactory;->getAppropriateFullView(Landroid/app/Activity;Z)Lcom/braze/ui/inappmessage/views/InAppMessageFullView;

    move-result-object v10

    .line 34
    move-object v1, v7

    check-cast v1, Lcom/braze/models/inappmessage/IInAppMessageImmersive;

    invoke-virtual {v10, p1, v1, v9}, Lcom/braze/ui/inappmessage/views/InAppMessageFullView;->createAppropriateViews(Landroid/app/Activity;Lcom/braze/models/inappmessage/IInAppMessageImmersive;Z)V

    .line 37
    sget-object v1, Lcom/braze/ui/inappmessage/views/InAppMessageBaseView;->Companion:Lcom/braze/ui/inappmessage/views/InAppMessageBaseView$Companion;

    move-object v2, v7

    check-cast v2, Lcom/braze/models/inappmessage/IInAppMessageWithImage;

    invoke-virtual {v1, v2}, Lcom/braze/ui/inappmessage/views/InAppMessageBaseView$Companion;->getAppropriateImageUrl(Lcom/braze/models/inappmessage/IInAppMessageWithImage;)Ljava/lang/String;

    move-result-object v4

    .line 38
    move-object v1, v4

    check-cast v1, Ljava/lang/CharSequence;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 39
    :cond_1
    sget-object v1, Lcom/braze/Braze;->Companion:Lcom/braze/Braze$Companion;

    const-string v2, "applicationContext"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/braze/Braze$Companion;->getInstance(Landroid/content/Context;)Lcom/braze/Braze;

    move-result-object v1

    invoke-virtual {v1}, Lcom/braze/Braze;->getImageLoader()Lcom/braze/images/IBrazeImageLoader;

    move-result-object v1

    .line 40
    invoke-virtual {v10}, Lcom/braze/ui/inappmessage/views/InAppMessageFullView;->getMessageImageView()Landroid/widget/ImageView;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 46
    sget-object v6, Lcom/braze/enums/BrazeViewBounds;->NO_BOUNDS:Lcom/braze/enums/BrazeViewBounds;

    move-object v2, v0

    move-object v3, p2

    .line 41
    invoke-interface/range {v1 .. v6}, Lcom/braze/images/IBrazeImageLoader;->renderUrlIntoInAppMessageView(Landroid/content/Context;Lcom/braze/models/inappmessage/IInAppMessage;Ljava/lang/String;Landroid/widget/ImageView;Lcom/braze/enums/BrazeViewBounds;)V

    .line 52
    :cond_2
    :goto_1
    invoke-virtual {v10}, Lcom/braze/ui/inappmessage/views/InAppMessageFullView;->getFrameView()Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_3

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    :cond_3
    invoke-virtual {v7}, Lcom/braze/models/inappmessage/InAppMessageFull;->getBackgroundColor()I

    move-result p2

    invoke-virtual {v10, p2}, Lcom/braze/ui/inappmessage/views/InAppMessageFullView;->setMessageBackgroundColor(I)V

    .line 54
    invoke-virtual {v7}, Lcom/braze/models/inappmessage/InAppMessageFull;->getFrameColor()Ljava/lang/Integer;

    move-result-object p2

    if-eqz p2, :cond_4

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {v10, p2}, Lcom/braze/ui/inappmessage/views/InAppMessageFullView;->setFrameColor(I)V

    .line 55
    :cond_4
    invoke-virtual {v7}, Lcom/braze/models/inappmessage/InAppMessageFull;->getMessageButtons()Ljava/util/List;

    move-result-object p2

    invoke-virtual {v10, p2}, Lcom/braze/ui/inappmessage/views/InAppMessageFullView;->setMessageButtons(Ljava/util/List;)V

    .line 56
    invoke-virtual {v7}, Lcom/braze/models/inappmessage/InAppMessageFull;->getCloseButtonColor()I

    move-result p2

    invoke-virtual {v10, p2}, Lcom/braze/ui/inappmessage/views/InAppMessageFullView;->setMessageCloseButtonColor(I)V

    if-nez v9, :cond_8

    .line 58
    invoke-virtual {v7}, Lcom/braze/models/inappmessage/InAppMessageFull;->getMessage()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_5

    invoke-virtual {v10, p2}, Lcom/braze/ui/inappmessage/views/InAppMessageFullView;->setMessage(Ljava/lang/String;)V

    .line 59
    :cond_5
    invoke-virtual {v7}, Lcom/braze/models/inappmessage/InAppMessageFull;->getMessageTextColor()I

    move-result p2

    invoke-virtual {v10, p2}, Lcom/braze/ui/inappmessage/views/InAppMessageFullView;->setMessageTextColor(I)V

    .line 60
    invoke-virtual {v7}, Lcom/braze/models/inappmessage/InAppMessageFull;->getHeader()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_6

    invoke-virtual {v10, p2}, Lcom/braze/ui/inappmessage/views/InAppMessageFullView;->setMessageHeaderText(Ljava/lang/String;)V

    .line 61
    :cond_6
    invoke-virtual {v7}, Lcom/braze/models/inappmessage/InAppMessageFull;->getHeaderTextColor()I

    move-result p2

    invoke-virtual {v10, p2}, Lcom/braze/ui/inappmessage/views/InAppMessageFullView;->setMessageHeaderTextColor(I)V

    .line 62
    invoke-virtual {v7}, Lcom/braze/models/inappmessage/InAppMessageFull;->getHeaderTextAlign()Lcom/braze/enums/inappmessage/TextAlign;

    move-result-object p2

    invoke-virtual {v10, p2}, Lcom/braze/ui/inappmessage/views/InAppMessageFullView;->setMessageHeaderTextAlignment(Lcom/braze/enums/inappmessage/TextAlign;)V

    .line 63
    invoke-virtual {v7}, Lcom/braze/models/inappmessage/InAppMessageFull;->getMessageTextAlign()Lcom/braze/enums/inappmessage/TextAlign;

    move-result-object p2

    invoke-virtual {v10, p2}, Lcom/braze/ui/inappmessage/views/InAppMessageFullView;->setMessageTextAlign(Lcom/braze/enums/inappmessage/TextAlign;)V

    .line 64
    invoke-virtual {v7}, Lcom/braze/models/inappmessage/InAppMessageFull;->getImageDownloadSuccessful()Z

    move-result p2

    invoke-virtual {v10, p2}, Lcom/braze/ui/inappmessage/views/InAppMessageFullView;->resetMessageMargins(Z)V

    .line 67
    invoke-virtual {v10}, Lcom/braze/ui/inappmessage/views/InAppMessageFullView;->getMessageImageView()Landroid/widget/ImageView;

    move-result-object p2

    if-eqz p2, :cond_7

    check-cast p2, Lcom/braze/ui/inappmessage/views/InAppMessageImageView;

    invoke-virtual {p2, v8}, Lcom/braze/ui/inappmessage/views/InAppMessageImageView;->setToHalfParentHeight(Z)V

    goto :goto_2

    :cond_7
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type com.braze.ui.inappmessage.views.InAppMessageImageView"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 69
    :cond_8
    :goto_2
    invoke-virtual {v10}, Lcom/braze/ui/inappmessage/views/InAppMessageFullView;->getMessageCloseButtonView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {v10, p2}, Lcom/braze/ui/inappmessage/views/InAppMessageFullView;->setLargerCloseButtonClickArea(Landroid/view/View;)V

    .line 70
    move-object p2, v7

    check-cast p2, Lcom/braze/models/inappmessage/IInAppMessage;

    invoke-direct {p0, p1, p2, v10}, Lcom/braze/ui/inappmessage/factories/DefaultInAppMessageFullViewFactory;->resetLayoutParamsIfAppropriate(Landroid/app/Activity;Lcom/braze/models/inappmessage/IInAppMessage;Lcom/braze/ui/inappmessage/views/InAppMessageFullView;)Z

    .line 71
    invoke-virtual {v7}, Lcom/braze/models/inappmessage/InAppMessageFull;->getMessageButtons()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v10, p1}, Lcom/braze/ui/inappmessage/views/InAppMessageFullView;->setupDirectionalNavigation(I)V

    .line 74
    sget p1, Lcom/braze/ui/R$id;->com_braze_inappmessage_full_scrollview:I

    invoke-virtual {v10, p1}, Lcom/braze/ui/inappmessage/views/InAppMessageFullView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 76
    sget p2, Lcom/braze/ui/R$id;->com_braze_inappmessage_full_all_content_parent:I

    invoke-virtual {v10, p2}, Lcom/braze/ui/inappmessage/views/InAppMessageFullView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 77
    new-instance p2, Lcom/braze/ui/inappmessage/factories/DefaultInAppMessageFullViewFactory$$ExternalSyntheticLambda0;

    move-object v1, p2

    move-object v3, v10

    move-object v4, v7

    move-object v5, v0

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/braze/ui/inappmessage/factories/DefaultInAppMessageFullViewFactory$$ExternalSyntheticLambda0;-><init>(Landroid/view/View;Lcom/braze/ui/inappmessage/views/InAppMessageFullView;Lcom/braze/models/inappmessage/InAppMessageFull;Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_9
    return-object v10
.end method

.method public final getAppropriateFullView(Landroid/app/Activity;Z)Lcom/braze/ui/inappmessage/views/InAppMessageFullView;
    .locals 2

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    const-string v0, "null cannot be cast to non-null type com.braze.ui.inappmessage.views.InAppMessageFullView"

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    .line 151
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    .line 152
    sget p2, Lcom/braze/ui/R$layout;->com_braze_inappmessage_full_graphic:I

    .line 151
    invoke-virtual {p1, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Lcom/braze/ui/inappmessage/views/InAppMessageFullView;

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 156
    :cond_1
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    .line 157
    sget p2, Lcom/braze/ui/R$layout;->com_braze_inappmessage_full:I

    .line 156
    invoke-virtual {p1, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    check-cast p1, Lcom/braze/ui/inappmessage/views/InAppMessageFullView;

    :goto_0
    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
