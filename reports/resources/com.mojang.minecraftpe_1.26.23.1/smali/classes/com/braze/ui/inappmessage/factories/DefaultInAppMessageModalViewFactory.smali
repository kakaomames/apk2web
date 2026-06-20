.class public Lcom/braze/ui/inappmessage/factories/DefaultInAppMessageModalViewFactory;
.super Ljava/lang/Object;
.source "DefaultInAppMessageModalViewFactory.kt"

# interfaces
.implements Lcom/braze/ui/inappmessage/IInAppMessageViewFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/braze/ui/inappmessage/factories/DefaultInAppMessageModalViewFactory$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDefaultInAppMessageModalViewFactory.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DefaultInAppMessageModalViewFactory.kt\ncom/braze/ui/inappmessage/factories/DefaultInAppMessageModalViewFactory\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,98:1\n1#2:99\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008\u0016\u0018\u0000 \u000c2\u00020\u0001:\u0001\u000cB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0016J\u0018\u0010\t\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u000bH\u0003\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/braze/ui/inappmessage/factories/DefaultInAppMessageModalViewFactory;",
        "Lcom/braze/ui/inappmessage/IInAppMessageViewFactory;",
        "()V",
        "createInAppMessageView",
        "Lcom/braze/ui/inappmessage/views/InAppMessageModalView;",
        "activity",
        "Landroid/app/Activity;",
        "inAppMessage",
        "Lcom/braze/models/inappmessage/IInAppMessage;",
        "getAppropriateModalView",
        "isGraphic",
        "",
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
.field public static final Companion:Lcom/braze/ui/inappmessage/factories/DefaultInAppMessageModalViewFactory$Companion;

.field private static final NON_GRAPHIC_ASPECT_RATIO:F = 2.9f


# direct methods
.method public static synthetic $r8$lambda$Ege6DunrmchOfZNsqQ_3qHGmNrA(Lcom/braze/ui/inappmessage/factories/DefaultInAppMessageModalViewFactory;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/braze/ui/inappmessage/factories/DefaultInAppMessageModalViewFactory;->createInAppMessageView$lambda-1(Lcom/braze/ui/inappmessage/factories/DefaultInAppMessageModalViewFactory;Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/braze/ui/inappmessage/factories/DefaultInAppMessageModalViewFactory$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/braze/ui/inappmessage/factories/DefaultInAppMessageModalViewFactory$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/braze/ui/inappmessage/factories/DefaultInAppMessageModalViewFactory;->Companion:Lcom/braze/ui/inappmessage/factories/DefaultInAppMessageModalViewFactory$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final createInAppMessageView$lambda-1(Lcom/braze/ui/inappmessage/factories/DefaultInAppMessageModalViewFactory;Landroid/view/View;)V
    .locals 7

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    sget-object p1, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;->Companion:Lcom/braze/ui/inappmessage/BrazeInAppMessageManager$Companion;

    invoke-virtual {p1}, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager$Companion;->getInstance()Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;->getDoesClickOutsideModalViewDismissInAppMessageView()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 46
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v2, Lcom/braze/support/BrazeLogger$Priority;->I:Lcom/braze/support/BrazeLogger$Priority;

    sget-object p1, Lcom/braze/ui/inappmessage/factories/DefaultInAppMessageModalViewFactory$createInAppMessageView$2$1;->INSTANCE:Lcom/braze/ui/inappmessage/factories/DefaultInAppMessageModalViewFactory$createInAppMessageView$2$1;

    move-object v4, p1

    check-cast v4, Lkotlin/jvm/functions/Function0;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v6}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 47
    sget-object p0, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;->Companion:Lcom/braze/ui/inappmessage/BrazeInAppMessageManager$Companion;

    invoke-virtual {p0}, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager$Companion;->getInstance()Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;->hideCurrentlyDisplayingInAppMessage(Z)V

    :cond_0
    return-void
.end method

.method private final getAppropriateModalView(Landroid/app/Activity;Z)Lcom/braze/ui/inappmessage/views/InAppMessageModalView;
    .locals 2

    .line 81
    const-string v0, "null cannot be cast to non-null type com.braze.ui.inappmessage.views.InAppMessageModalView"

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    .line 82
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    .line 83
    sget p2, Lcom/braze/ui/R$layout;->com_braze_inappmessage_modal_graphic:I

    .line 82
    invoke-virtual {p1, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Lcom/braze/ui/inappmessage/views/InAppMessageModalView;

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 87
    :cond_1
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    .line 88
    sget p2, Lcom/braze/ui/R$layout;->com_braze_inappmessage_modal:I

    .line 87
    invoke-virtual {p1, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    check-cast p1, Lcom/braze/ui/inappmessage/views/InAppMessageModalView;

    :goto_0
    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public bridge synthetic createInAppMessageView(Landroid/app/Activity;Lcom/braze/models/inappmessage/IInAppMessage;)Landroid/view/View;
    .locals 0

    .line 19
    invoke-virtual {p0, p1, p2}, Lcom/braze/ui/inappmessage/factories/DefaultInAppMessageModalViewFactory;->createInAppMessageView(Landroid/app/Activity;Lcom/braze/models/inappmessage/IInAppMessage;)Lcom/braze/ui/inappmessage/views/InAppMessageModalView;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    return-object p1
.end method

.method public createInAppMessageView(Landroid/app/Activity;Lcom/braze/models/inappmessage/IInAppMessage;)Lcom/braze/ui/inappmessage/views/InAppMessageModalView;
    .locals 8

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inAppMessage"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 25
    move-object v0, p2

    check-cast v0, Lcom/braze/models/inappmessage/InAppMessageModal;

    .line 26
    invoke-virtual {v0}, Lcom/braze/models/inappmessage/InAppMessageModal;->getImageStyle()Lcom/braze/enums/inappmessage/ImageStyle;

    move-result-object v1

    sget-object v3, Lcom/braze/enums/inappmessage/ImageStyle;->GRAPHIC:Lcom/braze/enums/inappmessage/ImageStyle;

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v7, v1

    .line 27
    invoke-direct {p0, p1, v7}, Lcom/braze/ui/inappmessage/factories/DefaultInAppMessageModalViewFactory;->getAppropriateModalView(Landroid/app/Activity;Z)Lcom/braze/ui/inappmessage/views/InAppMessageModalView;

    move-result-object p1

    .line 28
    const-string v1, "applicationContext"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v2, v0}, Lcom/braze/ui/inappmessage/views/InAppMessageModalView;->applyInAppMessageParameters(Landroid/content/Context;Lcom/braze/models/inappmessage/InAppMessageModal;)V

    .line 29
    sget-object v1, Lcom/braze/ui/inappmessage/views/InAppMessageBaseView;->Companion:Lcom/braze/ui/inappmessage/views/InAppMessageBaseView$Companion;

    move-object v3, v0

    check-cast v3, Lcom/braze/models/inappmessage/IInAppMessageWithImage;

    invoke-virtual {v1, v3}, Lcom/braze/ui/inappmessage/views/InAppMessageBaseView$Companion;->getAppropriateImageUrl(Lcom/braze/models/inappmessage/IInAppMessageWithImage;)Ljava/lang/String;

    move-result-object v4

    .line 30
    move-object v1, v4

    check-cast v1, Ljava/lang/CharSequence;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 31
    :cond_1
    sget-object v1, Lcom/braze/Braze;->Companion:Lcom/braze/Braze$Companion;

    invoke-virtual {v1, v2}, Lcom/braze/Braze$Companion;->getInstance(Landroid/content/Context;)Lcom/braze/Braze;

    move-result-object v1

    invoke-virtual {v1}, Lcom/braze/Braze;->getImageLoader()Lcom/braze/images/IBrazeImageLoader;

    move-result-object v1

    .line 32
    invoke-virtual {p1}, Lcom/braze/ui/inappmessage/views/InAppMessageModalView;->getMessageImageView()Landroid/widget/ImageView;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 38
    sget-object v6, Lcom/braze/enums/BrazeViewBounds;->IN_APP_MESSAGE_MODAL:Lcom/braze/enums/BrazeViewBounds;

    move-object v3, p2

    .line 33
    invoke-interface/range {v1 .. v6}, Lcom/braze/images/IBrazeImageLoader;->renderUrlIntoInAppMessageView(Landroid/content/Context;Lcom/braze/models/inappmessage/IInAppMessage;Ljava/lang/String;Landroid/widget/ImageView;Lcom/braze/enums/BrazeViewBounds;)V

    .line 44
    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/braze/ui/inappmessage/views/InAppMessageModalView;->getFrameView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v2, Lcom/braze/ui/inappmessage/factories/DefaultInAppMessageModalViewFactory$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/braze/ui/inappmessage/factories/DefaultInAppMessageModalViewFactory$$ExternalSyntheticLambda0;-><init>(Lcom/braze/ui/inappmessage/factories/DefaultInAppMessageModalViewFactory;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    :cond_3
    invoke-interface {p2}, Lcom/braze/models/inappmessage/IInAppMessage;->getBackgroundColor()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/braze/ui/inappmessage/views/InAppMessageModalView;->setMessageBackgroundColor(I)V

    .line 51
    invoke-virtual {v0}, Lcom/braze/models/inappmessage/InAppMessageModal;->getFrameColor()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_4

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/braze/ui/inappmessage/views/InAppMessageModalView;->setFrameColor(I)V

    .line 52
    :cond_4
    invoke-virtual {v0}, Lcom/braze/models/inappmessage/InAppMessageModal;->getMessageButtons()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/braze/ui/inappmessage/views/InAppMessageModalView;->setMessageButtons(Ljava/util/List;)V

    .line 53
    invoke-virtual {v0}, Lcom/braze/models/inappmessage/InAppMessageModal;->getCloseButtonColor()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/braze/ui/inappmessage/views/InAppMessageModalView;->setMessageCloseButtonColor(I)V

    if-nez v7, :cond_9

    .line 55
    invoke-interface {p2}, Lcom/braze/models/inappmessage/IInAppMessage;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p1, v1}, Lcom/braze/ui/inappmessage/views/InAppMessageModalView;->setMessage(Ljava/lang/String;)V

    .line 56
    :cond_5
    invoke-interface {p2}, Lcom/braze/models/inappmessage/IInAppMessage;->getMessageTextColor()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/braze/ui/inappmessage/views/InAppMessageModalView;->setMessageTextColor(I)V

    .line 57
    invoke-virtual {v0}, Lcom/braze/models/inappmessage/InAppMessageModal;->getHeader()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {p1, v1}, Lcom/braze/ui/inappmessage/views/InAppMessageModalView;->setMessageHeaderText(Ljava/lang/String;)V

    .line 58
    :cond_6
    invoke-virtual {v0}, Lcom/braze/models/inappmessage/InAppMessageModal;->getHeaderTextColor()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/braze/ui/inappmessage/views/InAppMessageModalView;->setMessageHeaderTextColor(I)V

    .line 59
    invoke-interface {p2}, Lcom/braze/models/inappmessage/IInAppMessage;->getIcon()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 62
    invoke-interface {p2}, Lcom/braze/models/inappmessage/IInAppMessage;->getIconColor()I

    move-result v2

    .line 63
    invoke-interface {p2}, Lcom/braze/models/inappmessage/IInAppMessage;->getIconBackgroundColor()I

    move-result p2

    .line 60
    invoke-virtual {p1, v1, v2, p2}, Lcom/braze/ui/inappmessage/views/InAppMessageModalView;->setMessageIcon(Ljava/lang/String;II)V

    .line 66
    :cond_7
    invoke-virtual {v0}, Lcom/braze/models/inappmessage/InAppMessageModal;->getHeaderTextAlign()Lcom/braze/enums/inappmessage/TextAlign;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/braze/ui/inappmessage/views/InAppMessageModalView;->setMessageHeaderTextAlignment(Lcom/braze/enums/inappmessage/TextAlign;)V

    .line 67
    invoke-virtual {v0}, Lcom/braze/models/inappmessage/InAppMessageModal;->getMessageTextAlign()Lcom/braze/enums/inappmessage/TextAlign;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/braze/ui/inappmessage/views/InAppMessageModalView;->setMessageTextAlign(Lcom/braze/enums/inappmessage/TextAlign;)V

    .line 68
    invoke-virtual {v0}, Lcom/braze/models/inappmessage/InAppMessageModal;->getImageDownloadSuccessful()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/braze/ui/inappmessage/views/InAppMessageModalView;->resetMessageMargins(Z)V

    .line 69
    invoke-virtual {p1}, Lcom/braze/ui/inappmessage/views/InAppMessageModalView;->getMessageImageView()Landroid/widget/ImageView;

    move-result-object p2

    if-eqz p2, :cond_8

    check-cast p2, Lcom/braze/ui/inappmessage/views/InAppMessageImageView;

    const v1, 0x4039999a

    invoke-virtual {p2, v1}, Lcom/braze/ui/inappmessage/views/InAppMessageImageView;->setAspectRatio(F)V

    goto :goto_2

    :cond_8
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type com.braze.ui.inappmessage.views.InAppMessageImageView"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 71
    :cond_9
    :goto_2
    invoke-virtual {p1}, Lcom/braze/ui/inappmessage/views/InAppMessageModalView;->getMessageCloseButtonView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/braze/ui/inappmessage/views/InAppMessageModalView;->setLargerCloseButtonClickArea(Landroid/view/View;)V

    .line 72
    invoke-virtual {v0}, Lcom/braze/models/inappmessage/InAppMessageModal;->getMessageButtons()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/braze/ui/inappmessage/views/InAppMessageModalView;->setupDirectionalNavigation(I)V

    return-object p1
.end method
