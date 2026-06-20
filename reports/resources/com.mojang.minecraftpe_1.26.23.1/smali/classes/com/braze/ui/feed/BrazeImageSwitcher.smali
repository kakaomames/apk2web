.class public final Lcom/braze/ui/feed/BrazeImageSwitcher;
.super Landroid/widget/ImageSwitcher;
.source "BrazeImageSwitcher.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006R(\u0010\t\u001a\u0004\u0018\u00010\u00082\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008@GX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR(\u0010\u000e\u001a\u0004\u0018\u00010\u00082\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008@GX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u000b\"\u0004\u0008\u0010\u0010\r\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/braze/ui/feed/BrazeImageSwitcher;",
        "Landroid/widget/ImageSwitcher;",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "<set-?>",
        "Landroid/graphics/drawable/Drawable;",
        "readIcon",
        "getReadIcon",
        "()Landroid/graphics/drawable/Drawable;",
        "setReadIcon",
        "(Landroid/graphics/drawable/Drawable;)V",
        "unReadIcon",
        "getUnReadIcon",
        "setUnReadIcon",
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
.field private readIcon:Landroid/graphics/drawable/Drawable;

.field private unReadIcon:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageSwitcher;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    :try_start_0
    sget-object v0, Lcom/braze/ui/R$styleable;->com_braze_ui_feed_BrazeImageSwitcher:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const-string p2, "context.obtainStyledAttr\u2026_feed_BrazeImageSwitcher)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_2

    .line 31
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    .line 32
    sget v2, Lcom/braze/ui/R$styleable;->com_braze_ui_feed_BrazeImageSwitcher_brazeFeedCustomReadIcon:I

    if-ne v1, v2, :cond_0

    .line 33
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 35
    iput-object v1, p0, Lcom/braze/ui/feed/BrazeImageSwitcher;->readIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 37
    :cond_0
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    sget v3, Lcom/braze/ui/R$styleable;->com_braze_ui_feed_BrazeImageSwitcher_brazeFeedCustomUnReadIcon:I

    if-ne v2, v3, :cond_1

    .line 38
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 40
    iput-object v1, p0, Lcom/braze/ui/feed/BrazeImageSwitcher;->unReadIcon:Landroid/graphics/drawable/Drawable;

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 44
    :cond_2
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 46
    sget-object p2, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v0, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    check-cast p1, Ljava/lang/Throwable;

    sget-object v1, Lcom/braze/ui/feed/BrazeImageSwitcher$1;->INSTANCE:Lcom/braze/ui/feed/BrazeImageSwitcher$1;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-virtual {p2, p0, v0, p1, v1}, Lcom/braze/support/BrazeLogger;->brazelog(Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V

    :goto_2
    return-void
.end method


# virtual methods
.method public final getReadIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/braze/ui/feed/BrazeImageSwitcher;->readIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final getUnReadIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/braze/ui/feed/BrazeImageSwitcher;->unReadIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final setReadIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/braze/ui/feed/BrazeImageSwitcher;->readIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public final setUnReadIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/braze/ui/feed/BrazeImageSwitcher;->unReadIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method
