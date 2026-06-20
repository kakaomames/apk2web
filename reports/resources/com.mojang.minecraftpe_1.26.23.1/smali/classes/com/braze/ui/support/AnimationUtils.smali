.class public final Lcom/braze/ui/support/AnimationUtils;
.super Ljava/lang/Object;
.source "AnimationUtils.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u001a&\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b\u001a&\u0010\u000c\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b\u001a\u001e\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "accelerateInterpolator",
        "Landroid/view/animation/Interpolator;",
        "decelerateInterpolator",
        "createHorizontalAnimation",
        "Landroid/view/animation/Animation;",
        "fromX",
        "",
        "toX",
        "duration",
        "",
        "accelerate",
        "",
        "createVerticalAnimation",
        "fromY",
        "toY",
        "setAnimationParams",
        "animation",
        "android-sdk-ui_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final accelerateInterpolator:Landroid/view/animation/Interpolator;

.field private static final decelerateInterpolator:Landroid/view/animation/Interpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    check-cast v0, Landroid/view/animation/Interpolator;

    sput-object v0, Lcom/braze/ui/support/AnimationUtils;->accelerateInterpolator:Landroid/view/animation/Interpolator;

    .line 12
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    check-cast v0, Landroid/view/animation/Interpolator;

    sput-object v0, Lcom/braze/ui/support/AnimationUtils;->decelerateInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public static final createHorizontalAnimation(FFJZ)Landroid/view/animation/Animation;
    .locals 10

    .line 49
    new-instance v9, Landroid/view/animation/TranslateAnimation;

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v1, 0x1

    const/4 v3, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v0, v9

    move v2, p0

    move v4, p1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 55
    check-cast v9, Landroid/view/animation/Animation;

    invoke-static {v9, p2, p3, p4}, Lcom/braze/ui/support/AnimationUtils;->setAnimationParams(Landroid/view/animation/Animation;JZ)Landroid/view/animation/Animation;

    move-result-object p0

    return-object p0
.end method

.method public static final createVerticalAnimation(FFJZ)Landroid/view/animation/Animation;
    .locals 10

    .line 27
    new-instance v9, Landroid/view/animation/TranslateAnimation;

    const/4 v5, 0x1

    const/4 v7, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    move-object v0, v9

    move v6, p0

    move v8, p1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 33
    check-cast v9, Landroid/view/animation/Animation;

    invoke-static {v9, p2, p3, p4}, Lcom/braze/ui/support/AnimationUtils;->setAnimationParams(Landroid/view/animation/Animation;JZ)Landroid/view/animation/Animation;

    move-result-object p0

    return-object p0
.end method

.method public static final setAnimationParams(Landroid/view/animation/Animation;JZ)Landroid/view/animation/Animation;
    .locals 1

    const-string v0, "animation"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0, p1, p2}, Landroid/view/animation/Animation;->setDuration(J)V

    if-eqz p3, :cond_0

    .line 69
    sget-object p1, Lcom/braze/ui/support/AnimationUtils;->accelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, p1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto :goto_0

    .line 71
    :cond_0
    sget-object p1, Lcom/braze/ui/support/AnimationUtils;->decelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, p1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    :goto_0
    return-object p0
.end method
