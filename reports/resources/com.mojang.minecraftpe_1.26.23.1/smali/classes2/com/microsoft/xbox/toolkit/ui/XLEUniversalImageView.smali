.class public Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;
.super Lcom/microsoft/xbox/toolkit/ui/XLEImageView;
.source "XLEUniversalImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$TypefaceXml;,
        Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;
    }
.end annotation


# static fields
.field private static final JELLY_BEAN_MR1:I = 0x11

.field private static final TAG:Ljava/lang/String; = "XLEUniversalImageView"


# instance fields
.field private adjustViewBounds:Z

.field private arg:Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;

.field private final listener:Landroid/view/View$OnLayoutChangeListener;

.field private maxHeight:I

.field private maxWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 28
    new-instance v0, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;

    invoke-direct {v0}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;-><init>(Landroid/content/Context;Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/microsoft/xbox/toolkit/ui/XLEImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 313
    new-instance v0, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$1;

    invoke-direct {v0, p0}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$1;-><init>(Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;)V

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->listener:Landroid/view/View$OnLayoutChangeListener;

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, p2, v0}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->initializeAttributes(Landroid/content/Context;Landroid/util/AttributeSet;I)Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->arg:Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;

    .line 41
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->updateImage()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/microsoft/xbox/toolkit/ui/XLEImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 313
    new-instance v0, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$1;

    invoke-direct {v0, p0}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$1;-><init>(Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;)V

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->listener:Landroid/view/View$OnLayoutChangeListener;

    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->initializeAttributes(Landroid/content/Context;Landroid/util/AttributeSet;I)Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->arg:Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;

    .line 47
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->updateImage()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/microsoft/xbox/toolkit/ui/XLEImageView;-><init>(Landroid/content/Context;)V

    .line 313
    new-instance p1, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$1;

    invoke-direct {p1, p0}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$1;-><init>(Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;)V

    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->listener:Landroid/view/View$OnLayoutChangeListener;

    const p1, 0x7fffffff

    .line 33
    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->setMaxWidth(I)V

    .line 34
    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->setMaxHeight(I)V

    .line 35
    iput-object p2, p0, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->arg:Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;

    return-void
.end method

.method static synthetic access$100(Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;)Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->arg:Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;

    return-object p0
.end method

.method private initializeAttributes(Landroid/content/Context;Landroid/util/AttributeSet;I)Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;
    .locals 12

    .line 88
    const-string v0, "XLEUniversalImageView_textAspectRatio"

    .line 0
    const-string v1, "Error parsing URI \'"

    .line 88
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const-string v3, "XLEUniversalImageView"

    invoke-static {v3}, Lcom/microsoft/xbox/toolkit/XLERValueHelper;->getStyleableRValueArray(Ljava/lang/String;)[I

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, p2, v3, p3, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 92
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    iget p3, p3, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 95
    const-string v2, "XLEUniversalImageView_android_textSize"

    invoke-static {v2}, Lcom/microsoft/xbox/toolkit/XLERValueHelper;->getStyleableRValue(Ljava/lang/String;)I

    move-result v2

    const/high16 v3, 0x41000000    # 8.0f

    mul-float/2addr p3, v3

    invoke-virtual {p2, v2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    .line 96
    const-string p3, "XLEUniversalImageView_android_textColor"

    invoke-static {p3}, Lcom/microsoft/xbox/toolkit/XLERValueHelper;->getStyleableRValue(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p2, p3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v7

    .line 97
    const-string p3, "XLEUniversalImageView_android_typeface"

    invoke-static {p3}, Lcom/microsoft/xbox/toolkit/XLERValueHelper;->getStyleableRValue(Ljava/lang/String;)I

    move-result p3

    const/4 v2, -0x1

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    .line 98
    const-string v2, "XLEUniversalImageView_android_textStyle"

    invoke-static {v2}, Lcom/microsoft/xbox/toolkit/XLERValueHelper;->getStyleableRValue(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 99
    const-string v3, "XLEUniversalImageView_typefaceSource"

    invoke-static {v3}, Lcom/microsoft/xbox/toolkit/XLERValueHelper;->getStyleableRValue(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    .line 100
    invoke-static {p3}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$TypefaceXml;->typefaceFromIndex(I)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-static {p1, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/microsoft/xbox/toolkit/ui/FontManager;->Instance()Lcom/microsoft/xbox/toolkit/ui/FontManager;

    move-result-object p3

    invoke-virtual {p3, p1, v3}, Lcom/microsoft/xbox/toolkit/ui/FontManager;->getTypeface(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    :goto_0
    move-object v8, p1

    .line 101
    const-string p1, "XLEUniversalImageView_eraseColor"

    invoke-static {p1}, Lcom/microsoft/xbox/toolkit/XLERValueHelper;->getStyleableRValue(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v9

    .line 102
    const-string p1, "XLEUniversalImageView_adjustForImageSize"

    invoke-static {p1}, Lcom/microsoft/xbox/toolkit/XLERValueHelper;->getStyleableRValue(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    .line 103
    const-string p3, "XLEUniversalImageView_android_src"

    invoke-static {p3}, Lcom/microsoft/xbox/toolkit/XLERValueHelper;->getStyleableRValue(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    .line 105
    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLERValueHelper;->getStyleableRValue(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 106
    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLERValueHelper;->getStyleableRValue(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    move-object v11, v0

    .line 108
    new-instance v0, Lcom/microsoft/xbox/toolkit/ui/XLETextArg$Params;

    move-object v5, v0

    move v10, p1

    invoke-direct/range {v5 .. v11}, Lcom/microsoft/xbox/toolkit/ui/XLETextArg$Params;-><init>(FILandroid/graphics/Typeface;IZLjava/lang/Float;)V

    .line 112
    const-string v2, "XLEUniversalImageView_android_text"

    invoke-static {v2}, Lcom/microsoft/xbox/toolkit/XLERValueHelper;->getStyleableRValue(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 113
    new-instance p3, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;

    new-instance v1, Lcom/microsoft/xbox/toolkit/ui/XLETextArg;

    invoke-direct {v1, v2, v0}, Lcom/microsoft/xbox/toolkit/ui/XLETextArg;-><init>(Ljava/lang/String;Lcom/microsoft/xbox/toolkit/ui/XLETextArg$Params;)V

    invoke-direct {p3, v1, v4}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;-><init>(Lcom/microsoft/xbox/toolkit/ui/XLETextArg;Z)V

    goto :goto_2

    .line 114
    :cond_2
    const-string v2, "XLEUniversalImageView_uri"

    invoke-static {v2}, Lcom/microsoft/xbox/toolkit/XLERValueHelper;->getStyleableRValue(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_3

    .line 116
    :try_start_1
    new-instance p3, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;

    new-instance v3, Lcom/microsoft/xbox/toolkit/ui/XLETextArg;

    invoke-direct {v3, v0}, Lcom/microsoft/xbox/toolkit/ui/XLETextArg;-><init>(Lcom/microsoft/xbox/toolkit/ui/XLETextArg$Params;)V

    new-instance v0, Lcom/microsoft/xbox/toolkit/ui/XLEURIArg;

    new-instance v4, Ljava/net/URI;

    invoke-direct {v4, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v4}, Lcom/microsoft/xbox/toolkit/ui/XLEURIArg;-><init>(Ljava/net/URI;)V

    invoke-direct {p3, v3, v0}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;-><init>(Lcom/microsoft/xbox/toolkit/ui/XLETextArg;Lcom/microsoft/xbox/toolkit/ui/XLEURIArg;)V

    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 118
    :try_start_2
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, "\'"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 119
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 122
    :cond_3
    new-instance v1, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;

    new-instance v2, Lcom/microsoft/xbox/toolkit/ui/XLETextArg;

    invoke-direct {v2, v0}, Lcom/microsoft/xbox/toolkit/ui/XLETextArg;-><init>(Lcom/microsoft/xbox/toolkit/ui/XLETextArg$Params;)V

    invoke-direct {v1, v2, p3}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;-><init>(Lcom/microsoft/xbox/toolkit/ui/XLETextArg;Z)V

    move-object p3, v1

    :goto_2
    if-eqz p1, :cond_4

    .line 126
    iget-object p1, p0, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->listener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 131
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_4
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-object p3

    :catchall_0
    move-exception p1

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 132
    throw p1
.end method

.method private resolveAdjustedSize(III)I
    .locals 2

    .line 290
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 291
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p3

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_2

    if-eqz v0, :cond_1

    const/high16 p2, 0x40000000

    if-eq v0, p2, :cond_0

    goto :goto_0

    :cond_0
    move p1, p3

    goto :goto_0

    .line 297
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0

    .line 303
    :cond_2
    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    :goto_0
    return p1
.end method

.method private updateImage()V
    .locals 4

    .line 77
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->arg:Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;->hasText()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    new-instance v0, Lcom/microsoft/xbox/toolkit/ui/XLETextTask;

    invoke-direct {v0, p0}, Lcom/microsoft/xbox/toolkit/ui/XLETextTask;-><init>(Landroid/widget/ImageView;)V

    const/4 v1, 0x1

    .line 79
    new-array v1, v1, [Lcom/microsoft/xbox/toolkit/ui/XLETextArg;

    iget-object v2, p0, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->arg:Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;

    invoke-virtual {v2}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;->getArgText()Lcom/microsoft/xbox/toolkit/ui/XLETextArg;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/toolkit/ui/XLETextTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->arg:Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;->hasArgUri()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    invoke-static {}, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->Instance()Lcom/microsoft/xbox/toolkit/ui/TextureManager;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->arg:Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;

    invoke-virtual {v1}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;->getArgUri()Lcom/microsoft/xbox/toolkit/ui/XLEURIArg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/xbox/toolkit/ui/XLEURIArg;->getUri()Ljava/net/URI;

    move-result-object v1

    iget-object v2, p0, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->arg:Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;

    invoke-virtual {v2}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;->getArgUri()Lcom/microsoft/xbox/toolkit/ui/XLEURIArg;

    move-result-object v2

    invoke-virtual {v2}, Lcom/microsoft/xbox/toolkit/ui/XLEURIArg;->getTextureBindingOption()Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;

    move-result-object v2

    invoke-virtual {v0, v1, p0, v2}, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->bindToView(Ljava/net/URI;Landroid/widget/ImageView;Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;)V

    goto :goto_0

    .line 82
    :cond_1
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->arg:Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;->hasSrc()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 83
    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public clearImage()V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->arg:Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;->cloneEmpty()Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->arg:Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;

    .line 73
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->updateImage()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 170
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 171
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 173
    invoke-virtual/range {p0 .. p0}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    if-nez v5, :cond_0

    move v10, v7

    move v3, v8

    move v4, v3

    move v5, v4

    move v9, v5

    goto :goto_3

    .line 178
    :cond_0
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    .line 179
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    if-gtz v9, :cond_1

    const/4 v9, 0x1

    :cond_1
    if-gtz v5, :cond_2

    const/4 v5, 0x1

    .line 188
    :cond_2
    iget-boolean v10, v0, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->adjustViewBounds:Z

    if-eqz v10, :cond_6

    const/high16 v10, 0x40000000

    if-eq v3, v10, :cond_3

    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    move v3, v8

    :goto_0
    if-eq v4, v10, :cond_4

    const/4 v4, 0x1

    goto :goto_1

    :cond_4
    move v4, v8

    .line 192
    :goto_1
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    .line 193
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v11

    if-le v10, v11, :cond_5

    mul-int/2addr v5, v10

    .line 201
    div-int/2addr v5, v9

    move v9, v10

    goto :goto_2

    :cond_5
    mul-int/2addr v9, v11

    .line 204
    div-int/2addr v9, v5

    move v5, v11

    :goto_2
    int-to-float v10, v9

    int-to-float v11, v5

    div-float/2addr v10, v11

    goto :goto_3

    :cond_6
    move v10, v7

    move v3, v8

    move v4, v3

    .line 212
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->getPaddingLeft()I

    move-result v11

    .line 213
    invoke-virtual/range {p0 .. p0}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->getPaddingRight()I

    move-result v12

    .line 214
    invoke-virtual/range {p0 .. p0}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->getPaddingTop()I

    move-result v13

    .line 215
    invoke-virtual/range {p0 .. p0}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->getPaddingBottom()I

    move-result v14

    .line 217
    invoke-virtual/range {p0 .. p0}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v15

    iget v15, v15, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v6, 0x11

    if-gt v15, v6, :cond_7

    const/4 v6, 0x1

    goto :goto_4

    :cond_7
    move v6, v8

    :goto_4
    if-nez v3, :cond_9

    if-eqz v4, :cond_8

    goto :goto_5

    :cond_8
    add-int/2addr v11, v12

    add-int/2addr v9, v11

    add-int/2addr v13, v14

    add-int/2addr v5, v13

    .line 278
    invoke-virtual/range {p0 .. p0}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->getSuggestedMinimumWidth()I

    move-result v3

    invoke-static {v9, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 279
    invoke-virtual/range {p0 .. p0}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->getSuggestedMinimumHeight()I

    move-result v4

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 281
    invoke-static {v3, v1, v8}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->resolveSizeAndState(III)I

    move-result v1

    .line 282
    invoke-static {v4, v2, v8}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->resolveSizeAndState(III)I

    move-result v2

    goto/16 :goto_9

    :cond_9
    :goto_5
    add-int/2addr v9, v11

    add-int/2addr v9, v12

    .line 228
    iget v15, v0, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->maxWidth:I

    invoke-direct {v0, v9, v15, v1}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->resolveAdjustedSize(III)I

    move-result v9

    add-int/2addr v5, v13

    add-int/2addr v5, v14

    .line 231
    iget v15, v0, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->maxHeight:I

    invoke-direct {v0, v5, v15, v2}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->resolveAdjustedSize(III)I

    move-result v5

    cmpl-float v7, v10, v7

    if-eqz v7, :cond_f

    sub-int v7, v9, v11

    sub-int/2addr v7, v12

    int-to-float v7, v7

    sub-int v15, v5, v13

    sub-int/2addr v15, v14

    int-to-float v15, v15

    div-float/2addr v7, v15

    sub-float/2addr v7, v10

    .line 237
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    move/from16 v17, v9

    float-to-double v8, v7

    const-wide v18, 0x3e7ad7f29abcaf48L    # 1.0E-7

    cmpl-double v7, v8, v18

    if-lez v7, :cond_10

    if-eqz v3, :cond_b

    mul-float/2addr v15, v10

    float-to-int v7, v15

    add-int/2addr v7, v11

    add-int/2addr v7, v12

    if-nez v4, :cond_a

    if-nez v6, :cond_a

    .line 247
    iget v8, v0, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->maxWidth:I

    invoke-direct {v0, v7, v8, v1}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->resolveAdjustedSize(III)I

    move-result v1

    move v9, v1

    goto :goto_6

    :cond_a
    move/from16 v9, v17

    :goto_6
    if-gt v7, v9, :cond_c

    move v9, v7

    const/16 v16, 0x1

    goto :goto_7

    :cond_b
    move/from16 v9, v17

    :cond_c
    const/16 v16, 0x0

    :goto_7
    if-nez v16, :cond_e

    if-eqz v4, :cond_e

    sub-int v1, v9, v11

    sub-int/2addr v1, v12

    int-to-float v1, v1

    div-float/2addr v1, v10

    float-to-int v1, v1

    add-int/2addr v1, v13

    add-int/2addr v1, v14

    if-nez v3, :cond_d

    if-nez v6, :cond_d

    .line 262
    iget v3, v0, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->maxHeight:I

    invoke-direct {v0, v1, v3, v2}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->resolveAdjustedSize(III)I

    move-result v5

    :cond_d
    if-gt v1, v5, :cond_e

    move v2, v1

    goto :goto_8

    :cond_e
    move v2, v5

    :goto_8
    move v1, v9

    goto :goto_9

    :cond_f
    move/from16 v17, v9

    :cond_10
    move v2, v5

    move/from16 v1, v17

    .line 285
    :goto_9
    invoke-virtual {v0, v1, v2}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->setMeasuredDimension(II)V

    return-void
.end method

.method public setAdjustViewBounds(Z)V
    .locals 0

    .line 149
    iput-boolean p1, p0, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->adjustViewBounds:Z

    .line 150
    invoke-super {p0, p1}, Lcom/microsoft/xbox/toolkit/ui/XLEImageView;->setAdjustViewBounds(Z)V

    return-void
.end method

.method public setImageURI2(Ljava/net/URI;)V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->arg:Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;

    invoke-virtual {v0, p1}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;->cloneWithUri(Ljava/net/URI;)Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->arg:Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;

    .line 68
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->updateImage()V

    return-void
.end method

.method public setImageURI2(Ljava/net/URI;II)V
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->arg:Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;

    invoke-virtual {v0, p1, p2, p3}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;->cloneWithUri(Ljava/net/URI;II)Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->arg:Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;

    .line 63
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->updateImage()V

    return-void
.end method

.method public setMaxHeight(I)V
    .locals 0

    .line 143
    invoke-super {p0, p1}, Lcom/microsoft/xbox/toolkit/ui/XLEImageView;->setMaxHeight(I)V

    .line 144
    iput p1, p0, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->maxHeight:I

    return-void
.end method

.method public setMaxWidth(I)V
    .locals 0

    .line 137
    invoke-super {p0, p1}, Lcom/microsoft/xbox/toolkit/ui/XLEImageView;->setMaxWidth(I)V

    .line 138
    iput p1, p0, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->maxWidth:I

    return-void
.end method

.method public setText(I)V
    .locals 1

    .line 58
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->setText(Ljava/lang/String;)V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->arg:Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;->getArgText()Lcom/microsoft/xbox/toolkit/ui/XLETextArg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/ui/XLETextArg;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->arg:Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;

    invoke-static {v0, p1}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;->access$000(Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;Ljava/lang/String;)Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->arg:Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;

    .line 53
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->updateImage()V

    :cond_0
    return-void
.end method
