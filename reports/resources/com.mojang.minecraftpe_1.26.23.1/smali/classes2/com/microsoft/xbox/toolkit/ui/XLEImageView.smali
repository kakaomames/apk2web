.class public Lcom/microsoft/xbox/toolkit/ui/XLEImageView;
.super Landroid/widget/ImageView;
.source "XLEImageView.java"


# static fields
.field public static final IMAGE_ERROR:I = 0x2

.field public static final IMAGE_FINAL:I = 0x0

.field public static final IMAGE_LOADING:I = 0x1


# instance fields
.field public TEST_loadingOrLoadedImageUrl:Ljava/lang/String;

.field protected isFinal:Z

.field protected shouldAnimate:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 18
    invoke-direct {p0, p1, v0, v1}, Lcom/microsoft/xbox/toolkit/ui/XLEImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, p1, p2, v0}, Lcom/microsoft/xbox/toolkit/ui/XLEImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 14
    iput-boolean p1, p0, Lcom/microsoft/xbox/toolkit/ui/XLEImageView;->shouldAnimate:Z

    const/4 p1, 0x0

    .line 15
    iput-boolean p1, p0, Lcom/microsoft/xbox/toolkit/ui/XLEImageView;->isFinal:Z

    .line 36
    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/toolkit/ui/XLEImageView;->setSoundEffectsEnabled(Z)V

    return-void
.end method


# virtual methods
.method public getShouldAnimate()Z
    .locals 1

    .line 26
    iget-boolean v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLEImageView;->shouldAnimate:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLEImageView;->isFinal:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setFinal(Z)V
    .locals 0

    .line 60
    iput-boolean p1, p0, Lcom/microsoft/xbox/toolkit/ui/XLEImageView;->isFinal:Z

    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    if-nez p1, :cond_0

    goto :goto_0

    .line 45
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_0
    return-void
.end method

.method public setImageSource(Landroid/graphics/Bitmap;I)V
    .locals 0

    if-nez p1, :cond_0

    goto :goto_0

    .line 54
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_0
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 65
    invoke-static {p1}, Lcom/microsoft/xbox/toolkit/ui/TouchUtil;->createOnClickListener(Landroid/view/View$OnClickListener;)Landroid/view/View$OnClickListener;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setShouldAnimate(Z)V
    .locals 0

    .line 22
    iput-boolean p1, p0, Lcom/microsoft/xbox/toolkit/ui/XLEImageView;->shouldAnimate:Z

    return-void
.end method
