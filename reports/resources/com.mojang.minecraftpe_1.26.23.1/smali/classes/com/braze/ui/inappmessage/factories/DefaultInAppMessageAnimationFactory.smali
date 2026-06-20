.class public Lcom/braze/ui/inappmessage/factories/DefaultInAppMessageAnimationFactory;
.super Ljava/lang/Object;
.source "DefaultInAppMessageAnimationFactory.kt"

# interfaces
.implements Lcom/braze/ui/inappmessage/IInAppMessageAnimationFactory;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0016\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0016J\u0012\u0010\t\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/braze/ui/inappmessage/factories/DefaultInAppMessageAnimationFactory;",
        "Lcom/braze/ui/inappmessage/IInAppMessageAnimationFactory;",
        "()V",
        "shortAnimationDurationMs",
        "",
        "getClosingAnimation",
        "Landroid/view/animation/Animation;",
        "inAppMessage",
        "Lcom/braze/models/inappmessage/IInAppMessage;",
        "getOpeningAnimation",
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
.field private final shortAnimationDurationMs:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x10e0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/braze/ui/inappmessage/factories/DefaultInAppMessageAnimationFactory;->shortAnimationDurationMs:J

    return-void
.end method


# virtual methods
.method public getClosingAnimation(Lcom/braze/models/inappmessage/IInAppMessage;)Landroid/view/animation/Animation;
    .locals 6

    const-string v0, "inAppMessage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    instance-of v0, p1, Lcom/braze/models/inappmessage/InAppMessageSlideup;

    const/high16 v1, 0x3f800000

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 31
    check-cast p1, Lcom/braze/models/inappmessage/InAppMessageSlideup;

    invoke-virtual {p1}, Lcom/braze/models/inappmessage/InAppMessageSlideup;->getSlideFrom()Lcom/braze/enums/inappmessage/SlideFrom;

    move-result-object p1

    sget-object v0, Lcom/braze/enums/inappmessage/SlideFrom;->TOP:Lcom/braze/enums/inappmessage/SlideFrom;

    if-ne p1, v0, :cond_0

    const/high16 p1, -0x40800000

    .line 32
    iget-wide v0, p0, Lcom/braze/ui/inappmessage/factories/DefaultInAppMessageAnimationFactory;->shortAnimationDurationMs:J

    invoke-static {v3, p1, v0, v1, v2}, Lcom/braze/ui/support/AnimationUtils;->createVerticalAnimation(FFJZ)Landroid/view/animation/Animation;

    move-result-object p1

    goto :goto_0

    .line 34
    :cond_0
    iget-wide v4, p0, Lcom/braze/ui/inappmessage/factories/DefaultInAppMessageAnimationFactory;->shortAnimationDurationMs:J

    invoke-static {v3, v1, v4, v5, v2}, Lcom/braze/ui/support/AnimationUtils;->createVerticalAnimation(FFJZ)Landroid/view/animation/Animation;

    move-result-object p1

    goto :goto_0

    .line 37
    :cond_1
    new-instance p1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {p1, v1, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    check-cast p1, Landroid/view/animation/Animation;

    iget-wide v0, p0, Lcom/braze/ui/inappmessage/factories/DefaultInAppMessageAnimationFactory;->shortAnimationDurationMs:J

    invoke-static {p1, v0, v1, v2}, Lcom/braze/ui/support/AnimationUtils;->setAnimationParams(Landroid/view/animation/Animation;JZ)Landroid/view/animation/Animation;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getOpeningAnimation(Lcom/braze/models/inappmessage/IInAppMessage;)Landroid/view/animation/Animation;
    .locals 6

    const-string v0, "inAppMessage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    instance-of v0, p1, Lcom/braze/models/inappmessage/InAppMessageSlideup;

    const/high16 v1, 0x3f800000

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 19
    check-cast p1, Lcom/braze/models/inappmessage/InAppMessageSlideup;

    invoke-virtual {p1}, Lcom/braze/models/inappmessage/InAppMessageSlideup;->getSlideFrom()Lcom/braze/enums/inappmessage/SlideFrom;

    move-result-object p1

    sget-object v0, Lcom/braze/enums/inappmessage/SlideFrom;->TOP:Lcom/braze/enums/inappmessage/SlideFrom;

    const/4 v3, 0x0

    if-ne p1, v0, :cond_0

    const/high16 p1, -0x40800000

    .line 20
    iget-wide v0, p0, Lcom/braze/ui/inappmessage/factories/DefaultInAppMessageAnimationFactory;->shortAnimationDurationMs:J

    invoke-static {p1, v2, v0, v1, v3}, Lcom/braze/ui/support/AnimationUtils;->createVerticalAnimation(FFJZ)Landroid/view/animation/Animation;

    move-result-object p1

    goto :goto_0

    .line 22
    :cond_0
    iget-wide v4, p0, Lcom/braze/ui/inappmessage/factories/DefaultInAppMessageAnimationFactory;->shortAnimationDurationMs:J

    invoke-static {v1, v2, v4, v5, v3}, Lcom/braze/ui/support/AnimationUtils;->createVerticalAnimation(FFJZ)Landroid/view/animation/Animation;

    move-result-object p1

    goto :goto_0

    .line 25
    :cond_1
    new-instance p1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {p1, v2, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    check-cast p1, Landroid/view/animation/Animation;

    iget-wide v0, p0, Lcom/braze/ui/inappmessage/factories/DefaultInAppMessageAnimationFactory;->shortAnimationDurationMs:J

    const/4 v2, 0x1

    invoke-static {p1, v0, v1, v2}, Lcom/braze/ui/support/AnimationUtils;->setAnimationParams(Landroid/view/animation/Animation;JZ)Landroid/view/animation/Animation;

    move-result-object p1

    :goto_0
    return-object p1
.end method
