.class public final Lcom/braze/support/BrazeImageUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a \u0010\t\u001a\u00020\u00012\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u00012\u0006\u0010\r\u001a\u00020\u0001H\u0007\u001a,\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0012\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u00012\u0006\u0010\r\u001a\u00020\u0001H\u0002\u001a\"\u0010\u0013\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u0019\u001a\u0010\u0010\u001a\u001a\u00020\u000b2\u0006\u0010\u0010\u001a\u00020\u0011H\u0007\u001a\u000e\u0010\u001b\u001a\u00020\u00012\u0006\u0010\u0014\u001a\u00020\u0015\u001a$\u0010\u001c\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00010\u001d2\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u0019H\u0002\u001a\u001c\u0010\u001e\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00010\u001d2\u0006\u0010\u0014\u001a\u00020\u0015H\u0000\u001a\u000e\u0010\u001f\u001a\u00020\u00012\u0006\u0010\u0014\u001a\u00020\u0015\u001a\u0006\u0010 \u001a\u00020\u0001\u001a \u0010!\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u000c\u001a\u00020\u00012\u0006\u0010\r\u001a\u00020\u0001\u001a\u0016\u0010\"\u001a\u00020\u00012\u0006\u0010#\u001a\u00020\u00012\u0006\u0010$\u001a\u00020\u0001\u001a\"\u0010%\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u000c\u001a\u00020\u00012\u0006\u0010\r\u001a\u00020\u0001H\u0002\u001a\u0010\u0010&\u001a\u00020\'2\u0006\u0010\u0014\u001a\u00020\u0015H\u0002\u001a\u0018\u0010(\u001a\u00020)2\u0008\u0010*\u001a\u0004\u0018\u00010\u000f2\u0006\u0010+\u001a\u00020,\u001a\u0014\u0010-\u001a\u00020)*\u00020,2\u0008\u0010*\u001a\u0004\u0018\u00010\u000f\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0003\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u0016\u0010\u0004\u001a\u00020\u00018\u0006X\u0087T\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u0005\u0010\u0006\"\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006."
    }
    d2 = {
        "MAX_IMAGE_CACHE_SIZE_BYTES",
        "",
        "MIN_IMAGE_CACHE_SIZE_BYTES",
        "QUARTER_MAX_SAMPLED_IMAGE_BYTES",
        "RUNTIME_MEMORY_IMAGE_LOADER_USAGE_QUOTIENT",
        "getRUNTIME_MEMORY_IMAGE_LOADER_USAGE_QUOTIENT$annotations",
        "()V",
        "TAG",
        "",
        "calculateInSampleSize",
        "options",
        "Landroid/graphics/BitmapFactory$Options;",
        "destinationWidth",
        "destinationHeight",
        "decodeSampledBitmapFromStream",
        "Landroid/graphics/Bitmap;",
        "inputStream",
        "Ljava/io/InputStream;",
        "imageMetadata",
        "getBitmap",
        "context",
        "Landroid/content/Context;",
        "uri",
        "Landroid/net/Uri;",
        "viewBounds",
        "Lcom/braze/enums/BrazeViewBounds;",
        "getBitmapMetadataFromStream",
        "getDensityDpi",
        "getDestinationHeightAndWidthPixels",
        "Lkotlin/Pair;",
        "getDisplayHeightAndWidthPixels",
        "getDisplayWidthPixels",
        "getImageLoaderCacheSize",
        "getLocalBitmap",
        "getPixelsFromDensityAndDp",
        "dpi",
        "dp",
        "getRemoteBitmap",
        "populateDisplayMetricsFromDisplay",
        "Landroid/util/DisplayMetrics;",
        "resizeImageViewToBitmapDimensions",
        "",
        "bitmap",
        "imageView",
        "Landroid/widget/ImageView;",
        "resizeToBitmapDimensions",
        "android-sdk-base_release"
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
.field private static final MAX_IMAGE_CACHE_SIZE_BYTES:I = 0x2000000

.field private static final MIN_IMAGE_CACHE_SIZE_BYTES:I = 0x400

.field private static final QUARTER_MAX_SAMPLED_IMAGE_BYTES:I = 0x400000

.field public static final RUNTIME_MEMORY_IMAGE_LOADER_USAGE_QUOTIENT:I = 0x8

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    const-string v1, "BrazeImageUtils"

    invoke-virtual {v0, v1}, Lcom/braze/support/BrazeLogger;->getBrazeLogTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/braze/support/BrazeImageUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static final calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 26

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    const-string v3, "options"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x1

    if-eqz v2, :cond_6

    if-nez v1, :cond_0

    goto/16 :goto_4

    .line 1
    :cond_0
    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-long v9, v4

    .line 2
    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-long v7, v4

    .line 3
    sget-object v11, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v12, Lcom/braze/support/BrazeImageUtils;->TAG:Ljava/lang/String;

    new-instance v15, Lcom/braze/support/BrazeImageUtils$b;

    invoke-direct {v15, v0, v1, v2}, Lcom/braze/support/BrazeImageUtils$b;-><init>(Landroid/graphics/BitmapFactory$Options;II)V

    const/16 v16, 0x6

    const/16 v17, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v11 .. v17}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/String;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 7
    new-instance v0, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    iput v3, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    int-to-long v4, v2

    cmp-long v2, v9, v4

    if-gtz v2, :cond_2

    int-to-long v2, v1

    cmp-long v2, v7, v2

    if-lez v2, :cond_1

    goto :goto_0

    :cond_1
    move-wide v15, v7

    goto :goto_2

    :cond_2
    :goto_0
    const/4 v2, 0x2

    int-to-long v2, v2

    .line 9
    div-long v11, v9, v2

    .line 10
    div-long v13, v7, v2

    .line 21
    :goto_1
    iget v2, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    move-wide v15, v7

    int-to-long v6, v2

    div-long v17, v11, v6

    cmp-long v3, v17, v4

    if-gez v3, :cond_4

    .line 22
    div-long v6, v13, v6

    move-wide/from16 v17, v4

    int-to-long v3, v1

    cmp-long v3, v6, v3

    if-gez v3, :cond_5

    mul-long v7, v15, v9

    mul-int v3, v2, v2

    int-to-long v3, v3

    .line 23
    div-long/2addr v7, v3

    const-wide/32 v3, 0x400000

    cmp-long v3, v7, v3

    if-lez v3, :cond_3

    goto :goto_3

    .line 28
    :cond_3
    :goto_2
    sget-object v19, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v20, Lcom/braze/support/BrazeImageUtils;->TAG:Ljava/lang/String;

    new-instance v23, Lcom/braze/support/BrazeImageUtils$c;

    move-object/from16 v5, v23

    move-object v6, v0

    move-wide v7, v15

    invoke-direct/range {v5 .. v10}, Lcom/braze/support/BrazeImageUtils$c;-><init>(Lkotlin/jvm/internal/Ref$IntRef;JJ)V

    const/16 v24, 0x6

    const/16 v25, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-static/range {v19 .. v25}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/String;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 33
    iget v0, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    return v0

    :cond_4
    move-wide/from16 v17, v4

    :cond_5
    :goto_3
    mul-int/lit8 v2, v2, 0x2

    .line 34
    iput v2, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    move-wide v7, v15

    move-wide/from16 v4, v17

    goto :goto_1

    .line 35
    :cond_6
    :goto_4
    sget-object v19, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v20, Lcom/braze/support/BrazeImageUtils;->TAG:Ljava/lang/String;

    sget-object v23, Lcom/braze/support/BrazeImageUtils$a;->b:Lcom/braze/support/BrazeImageUtils$a;

    const/16 v24, 0x6

    const/16 v25, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-static/range {v19 .. v25}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/String;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return v3
.end method

.method private static final decodeSampledBitmapFromStream(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;II)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    invoke-static {p1, p2, p3}, Lcom/braze/support/BrazeImageUtils;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result p2

    .line 2
    iput p2, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 p2, 0x0

    .line 7
    iput-boolean p2, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 p2, 0x0

    .line 8
    invoke-static {p0, p2, p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static final getBitmap(Landroid/content/Context;Landroid/net/Uri;Lcom/braze/enums/BrazeViewBounds;)Landroid/graphics/Bitmap;
    .locals 7

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewBounds"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0, p2}, Lcom/braze/support/BrazeImageUtils;->getDestinationHeightAndWidthPixels(Landroid/content/Context;Lcom/braze/enums/BrazeViewBounds;)Lkotlin/Pair;

    move-result-object p0

    invoke-virtual {p0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    .line 3
    invoke-static {p1}, Lcom/braze/support/BrazeFileUtils;->isLocalUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {p1, p0, p2}, Lcom/braze/support/BrazeImageUtils;->getLocalBitmap(Landroid/net/Uri;II)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {p1}, Lcom/braze/support/BrazeFileUtils;->isRemoteUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    invoke-static {p1, p0, p2}, Lcom/braze/support/BrazeImageUtils;->getRemoteBitmap(Landroid/net/Uri;II)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0

    .line 10
    :cond_1
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v1, Lcom/braze/support/BrazeImageUtils;->TAG:Ljava/lang/String;

    sget-object v2, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v4, Lcom/braze/support/BrazeImageUtils$d;

    invoke-direct {v4, p1}, Lcom/braze/support/BrazeImageUtils$d;-><init>(Landroid/net/Uri;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v6}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/String;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static synthetic getBitmap$default(Landroid/content/Context;Landroid/net/Uri;Lcom/braze/enums/BrazeViewBounds;ILjava/lang/Object;)Landroid/graphics/Bitmap;
    .locals 0

    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_0

    .line 1
    sget-object p2, Lcom/braze/enums/BrazeViewBounds;->NO_BOUNDS:Lcom/braze/enums/BrazeViewBounds;

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/braze/support/BrazeImageUtils;->getBitmap(Landroid/content/Context;Landroid/net/Uri;Lcom/braze/enums/BrazeViewBounds;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static final getBitmapMetadataFromStream(Ljava/io/InputStream;)Landroid/graphics/BitmapFactory$Options;
    .locals 2

    const-string v0, "inputStream"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v1, 0x0

    .line 5
    invoke-static {p0, v1, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public static final getDensityDpi(Landroid/content/Context;)I
    .locals 1

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->densityDpi:I

    return p0
.end method

.method private static final getDestinationHeightAndWidthPixels(Landroid/content/Context;Lcom/braze/enums/BrazeViewBounds;)Lkotlin/Pair;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/braze/enums/BrazeViewBounds;",
            ")",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/braze/support/BrazeImageUtils;->getDisplayHeightAndWidthPixels(Landroid/content/Context;)Lkotlin/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 2
    sget-object v2, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v3, Lcom/braze/support/BrazeImageUtils;->TAG:Ljava/lang/String;

    sget-object v4, Lcom/braze/support/BrazeLogger$Priority;->V:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v6, Lcom/braze/support/BrazeImageUtils$e;

    invoke-direct {v6, v0, v1}, Lcom/braze/support/BrazeImageUtils$e;-><init>(II)V

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/String;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 4
    sget-object v2, Lcom/braze/enums/BrazeViewBounds;->NO_BOUNDS:Lcom/braze/enums/BrazeViewBounds;

    if-ne v2, p1, :cond_0

    .line 6
    new-instance p0, Lkotlin/Pair;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    .line 8
    :cond_0
    invoke-static {p0}, Lcom/braze/support/BrazeImageUtils;->getDensityDpi(Landroid/content/Context;)I

    move-result p0

    .line 9
    invoke-virtual {p1}, Lcom/braze/enums/BrazeViewBounds;->getHeightDp()I

    move-result v2

    invoke-static {p0, v2}, Lcom/braze/support/BrazeImageUtils;->getPixelsFromDensityAndDp(II)I

    move-result v2

    .line 10
    invoke-virtual {p1}, Lcom/braze/enums/BrazeViewBounds;->getWidthDp()I

    move-result p1

    invoke-static {p0, p1}, Lcom/braze/support/BrazeImageUtils;->getPixelsFromDensityAndDp(II)I

    move-result p0

    .line 12
    new-instance p1, Lkotlin/Pair;

    .line 13
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 14
    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 15
    invoke-direct {p1, v1, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method public static final getDisplayHeightAndWidthPixels(Landroid/content/Context;)Lkotlin/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    .line 2
    new-instance v0, Lkotlin/Pair;

    iget v1, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget p0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static final getDisplayWidthPixels(Landroid/content/Context;)I
    .locals 1

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Lcom/braze/support/BrazeImageUtils;->getDisplayHeightAndWidthPixels(Landroid/content/Context;)Lkotlin/Pair;

    move-result-object p0

    invoke-virtual {p0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public static final getImageLoaderCacheSize()I
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    const/16 v2, 0x8

    int-to-long v2, v2

    div-long/2addr v0, v2

    const-wide/32 v2, 0x7fffffff

    .line 5
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    const/high16 v1, 0x2000000

    .line 6
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/16 v1, 0x400

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public static final getLocalBitmap(Landroid/net/Uri;II)Landroid/graphics/Bitmap;
    .locals 13

    const/4 v0, 0x0

    sget-object v0, Lorg/spongycastle/asn1/cms/ecc/ERP/JpmwdoMtPrsbO;->tFQ:Ljava/lang/String;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 2
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_4

    .line 6
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 8
    sget-object v3, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v4, Lcom/braze/support/BrazeImageUtils;->TAG:Ljava/lang/String;

    new-instance v7, Lcom/braze/support/BrazeImageUtils$g;

    invoke-direct {v7, p0}, Lcom/braze/support/BrazeImageUtils$g;-><init>(Landroid/net/Uri;)V

    const/4 v8, 0x6

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v9}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/String;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-object v0

    .line 11
    :cond_1
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v10, Lcom/braze/support/BrazeImageUtils;->TAG:Ljava/lang/String;

    sget-object v5, Lcom/braze/support/BrazeLogger$Priority;->I:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v7, Lcom/braze/support/BrazeImageUtils$h;

    invoke-direct {v7, v2}, Lcom/braze/support/BrazeImageUtils$h;-><init>(Ljava/io/File;)V

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v6, 0x0

    move-object v3, v1

    move-object v4, v10

    invoke-static/range {v3 .. v9}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/String;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    if-lez p1, :cond_5

    if-gtz p2, :cond_2

    goto/16 :goto_3

    .line 19
    :cond_2
    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 20
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    new-instance v7, Lcom/braze/support/BrazeImageUtils$j;

    invoke-direct {v7, p1, p2}, Lcom/braze/support/BrazeImageUtils$j;-><init>(II)V

    const/4 v8, 0x6

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, v1

    move-object v4, v10

    invoke-static/range {v3 .. v9}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/String;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 23
    invoke-static {v11}, Lcom/braze/support/BrazeImageUtils;->getBitmapMetadataFromStream(Ljava/io/InputStream;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v8

    .line 24
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V

    .line 28
    new-instance v12, Ljava/io/FileInputStream;

    invoke-direct {v12, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 29
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget v3, v8, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-eqz v3, :cond_4

    iget v3, v8, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-nez v3, :cond_3

    goto :goto_0

    .line 38
    :cond_3
    sget-object v5, Lcom/braze/support/BrazeImageUtils$l;->b:Lcom/braze/support/BrazeImageUtils$l;

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, v10

    invoke-static/range {v1 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/String;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 39
    invoke-static {v12, v8, p1, p2}, Lcom/braze/support/BrazeImageUtils;->decodeSampledBitmapFromStream(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;II)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_1

    .line 40
    :cond_4
    :goto_0
    sget-object v5, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v7, Lcom/braze/support/BrazeImageUtils$k;

    invoke-direct {v7, p0, v8}, Lcom/braze/support/BrazeImageUtils$k;-><init>(Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)V

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v6, 0x0

    move-object v3, v1

    move-object v4, v10

    invoke-static/range {v3 .. v9}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/String;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 46
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 60
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    :try_start_3
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 62
    sget-object p2, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v0, Lcom/braze/support/BrazeImageUtils;->TAG:Ljava/lang/String;

    sget-object v1, Lcom/braze/support/BrazeLogger$Priority;->E:Lcom/braze/support/BrazeLogger$Priority;

    sget-object v2, Lcom/braze/support/BrazeImageUtils$n;->b:Lcom/braze/support/BrazeImageUtils$n;

    invoke-virtual {p2, v0, v1, p1, v2}, Lcom/braze/support/BrazeLogger;->brazelog(Ljava/lang/String;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V

    :goto_2
    return-object p0

    :catchall_0
    move-exception p0

    move-object v11, v12

    goto :goto_8

    :catch_1
    move-exception p0

    move-object v11, v12

    goto :goto_5

    :catchall_1
    move-exception p0

    goto :goto_8

    :catch_2
    move-exception p0

    goto :goto_5

    .line 63
    :cond_5
    :goto_3
    :try_start_4
    sget-object v7, Lcom/braze/support/BrazeImageUtils$i;->b:Lcom/braze/support/BrazeImageUtils$i;

    const/4 v8, 0x6

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, v1

    move-object v4, v10

    invoke-static/range {v3 .. v9}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/String;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 64
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 3
    :cond_6
    :goto_4
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v2, Lcom/braze/support/BrazeImageUtils;->TAG:Ljava/lang/String;

    new-instance v5, Lcom/braze/support/BrazeImageUtils$f;

    invoke-direct {v5, p0}, Lcom/braze/support/BrazeImageUtils$f;-><init>(Landroid/net/Uri;)V

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/String;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    return-object v0

    :catchall_2
    move-exception p0

    goto :goto_7

    :catch_3
    move-exception p0

    move-object v11, v0

    .line 96
    :goto_5
    :try_start_5
    sget-object p1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object p2, Lcom/braze/support/BrazeImageUtils;->TAG:Ljava/lang/String;

    sget-object v1, Lcom/braze/support/BrazeLogger$Priority;->E:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v2, Lcom/braze/support/BrazeImageUtils$m;

    invoke-direct {v2, p0}, Lcom/braze/support/BrazeImageUtils$m;-><init>(Ljava/lang/Exception;)V

    invoke-virtual {p1, p2, v1, p0, v2}, Lcom/braze/support/BrazeLogger;->brazelog(Ljava/lang/String;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V

    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz v11, :cond_7

    .line 99
    :try_start_6
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V

    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_6

    :catch_4
    move-exception p0

    .line 101
    sget-object p1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object p2, Lcom/braze/support/BrazeImageUtils;->TAG:Ljava/lang/String;

    sget-object v1, Lcom/braze/support/BrazeLogger$Priority;->E:Lcom/braze/support/BrazeLogger$Priority;

    sget-object v2, Lcom/braze/support/BrazeImageUtils$n;->b:Lcom/braze/support/BrazeImageUtils$n;

    invoke-virtual {p1, p2, v1, p0, v2}, Lcom/braze/support/BrazeLogger;->brazelog(Ljava/lang/String;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V

    :cond_7
    :goto_6
    return-object v0

    :catchall_3
    move-exception p0

    move-object v0, v11

    :goto_7
    move-object v11, v0

    :goto_8
    if-eqz v11, :cond_8

    .line 102
    :try_start_7
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V

    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_9

    :catch_5
    move-exception p1

    .line 104
    sget-object p2, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v0, Lcom/braze/support/BrazeImageUtils;->TAG:Ljava/lang/String;

    sget-object v1, Lcom/braze/support/BrazeLogger$Priority;->E:Lcom/braze/support/BrazeLogger$Priority;

    sget-object v2, Lcom/braze/support/BrazeImageUtils$n;->b:Lcom/braze/support/BrazeImageUtils$n;

    invoke-virtual {p2, v0, v1, p1, v2}, Lcom/braze/support/BrazeLogger;->brazelog(Ljava/lang/String;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V

    :cond_8
    :goto_9
    throw p0
.end method

.method public static final getPixelsFromDensityAndDp(II)I
    .locals 0

    mul-int/2addr p0, p1

    .line 1
    div-int/lit16 p0, p0, 0xa0

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    return p0
.end method

.method public static synthetic getRUNTIME_MEMORY_IMAGE_LOADER_USAGE_QUOTIENT$annotations()V
    .locals 0

    return-void
.end method

.method private static final getRemoteBitmap(Landroid/net/Uri;II)Landroid/graphics/Bitmap;
    .locals 17

    move/from16 v0, p1

    move/from16 v1, p2

    const/16 v2, 0x539

    .line 1
    invoke-static {v2}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "uri.toString()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object v3, Lcom/braze/Braze;->Companion:Lcom/braze/Braze$Companion;

    invoke-virtual {v3}, Lcom/braze/Braze$Companion;->getOutboundNetworkRequestsOffline()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 4
    sget-object v5, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v6, Lcom/braze/support/BrazeImageUtils;->TAG:Ljava/lang/String;

    sget-object v7, Lcom/braze/support/BrazeLogger$Priority;->I:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v9, Lcom/braze/support/BrazeImageUtils$o;

    invoke-direct {v9, v2}, Lcom/braze/support/BrazeImageUtils$o;-><init>(Ljava/lang/String;)V

    const/4 v10, 0x4

    const/4 v11, 0x0

    const/4 v8, 0x0

    invoke-static/range {v5 .. v11}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/String;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-object v4

    .line 11
    :cond_0
    :try_start_0
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 12
    sget-object v5, Lbo/app/l6;->a:Lbo/app/l6;

    invoke-virtual {v5, v3}, Lbo/app/l6;->a(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v6

    .line 13
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    const/16 v8, 0xc8

    if-eq v7, v8, :cond_1

    .line 16
    sget-object v9, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v10, Lcom/braze/support/BrazeImageUtils;->TAG:Ljava/lang/String;

    sget-object v11, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v13, Lcom/braze/support/BrazeImageUtils$p;

    invoke-direct {v13, v7, v3}, Lcom/braze/support/BrazeImageUtils$p;-><init>(ILjava/net/URL;)V

    const/4 v14, 0x4

    const/4 v15, 0x0

    const/4 v12, 0x0

    invoke-static/range {v9 .. v15}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/String;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 55
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v4

    .line 56
    :cond_1
    :try_start_2
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    .line 58
    :try_start_3
    sget-object v15, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v16, Lcom/braze/support/BrazeImageUtils;->TAG:Ljava/lang/String;

    new-instance v12, Lcom/braze/support/BrazeImageUtils$q;

    invoke-direct {v12, v1, v0}, Lcom/braze/support/BrazeImageUtils$q;-><init>(II)V

    const/4 v13, 0x6

    const/4 v14, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v8, v15

    move-object/from16 v9, v16

    invoke-static/range {v8 .. v14}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/String;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 61
    invoke-static {v7}, Lcom/braze/support/BrazeImageUtils;->getBitmapMetadataFromStream(Ljava/io/InputStream;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v8

    .line 66
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 67
    invoke-virtual {v5, v3}, Lbo/app/l6;->a(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v6

    .line 68
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    .line 69
    iget v5, v8, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-eqz v5, :cond_3

    iget v5, v8, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-nez v5, :cond_2

    goto :goto_0

    .line 76
    :cond_2
    invoke-static {v7, v8, v0, v1}, Lcom/braze/support/BrazeImageUtils;->decodeSampledBitmapFromStream(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;II)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    .line 77
    :cond_3
    :goto_0
    sget-object v10, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v12, Lcom/braze/support/BrazeImageUtils$r;

    invoke-direct {v12, v3, v8}, Lcom/braze/support/BrazeImageUtils$r;-><init>(Ljava/net/URL;Landroid/graphics/BitmapFactory$Options;)V

    const/4 v13, 0x4

    const/4 v14, 0x0

    const/4 v11, 0x0

    move-object v8, v15

    move-object/from16 v9, v16

    invoke-static/range {v8 .. v14}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/String;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 81
    invoke-static {v7}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    .line 92
    :cond_4
    invoke-static {v7}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :goto_1
    move-object v1, v0

    .line 97
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    if-eqz v7, :cond_5

    .line 99
    :try_start_4
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 101
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v3, Lcom/braze/support/BrazeImageUtils;->TAG:Ljava/lang/String;

    sget-object v4, Lcom/braze/support/BrazeLogger$Priority;->E:Lcom/braze/support/BrazeLogger$Priority;

    sget-object v5, Lcom/braze/support/BrazeImageUtils$t;->b:Lcom/braze/support/BrazeImageUtils$t;

    invoke-virtual {v0, v3, v4, v2, v5}, Lcom/braze/support/BrazeLogger;->brazelog(Ljava/lang/String;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V

    :cond_5
    :goto_2
    return-object v1

    :catch_1
    move-exception v0

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object v7, v4

    goto :goto_5

    :catch_2
    move-exception v0

    move-object v7, v4

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v1, v0

    move-object v7, v4

    goto :goto_6

    :catch_3
    move-exception v0

    move-object v6, v4

    move-object v7, v6

    .line 102
    :goto_3
    :try_start_5
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v3, Lcom/braze/support/BrazeImageUtils;->TAG:Ljava/lang/String;

    sget-object v5, Lcom/braze/support/BrazeLogger$Priority;->E:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v8, Lcom/braze/support/BrazeImageUtils$s;

    invoke-direct {v8, v2, v0}, Lcom/braze/support/BrazeImageUtils$s;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-virtual {v1, v3, v5, v0, v8}, Lcom/braze/support/BrazeLogger;->brazelog(Ljava/lang/String;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V

    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v6, :cond_6

    .line 104
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_6
    if-eqz v7, :cond_7

    .line 106
    :try_start_6
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_4

    :catch_4
    move-exception v0

    move-object v1, v0

    .line 108
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v2, Lcom/braze/support/BrazeImageUtils;->TAG:Ljava/lang/String;

    sget-object v3, Lcom/braze/support/BrazeLogger$Priority;->E:Lcom/braze/support/BrazeLogger$Priority;

    sget-object v5, Lcom/braze/support/BrazeImageUtils$t;->b:Lcom/braze/support/BrazeImageUtils$t;

    invoke-virtual {v0, v2, v3, v1, v5}, Lcom/braze/support/BrazeLogger;->brazelog(Ljava/lang/String;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V

    :cond_7
    :goto_4
    return-object v4

    :catchall_2
    move-exception v0

    move-object v1, v0

    :goto_5
    move-object v4, v6

    :goto_6
    if-eqz v4, :cond_8

    .line 109
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_8
    if-eqz v7, :cond_9

    .line 111
    :try_start_7
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_7

    :catch_5
    move-exception v0

    move-object v2, v0

    .line 113
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v3, Lcom/braze/support/BrazeImageUtils;->TAG:Ljava/lang/String;

    sget-object v4, Lcom/braze/support/BrazeLogger$Priority;->E:Lcom/braze/support/BrazeLogger$Priority;

    sget-object v5, Lcom/braze/support/BrazeImageUtils$t;->b:Lcom/braze/support/BrazeImageUtils$t;

    invoke-virtual {v0, v3, v4, v2, v5}, Lcom/braze/support/BrazeLogger;->brazelog(Ljava/lang/String;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V

    :cond_9
    :goto_7
    throw v1
.end method

.method private static final populateDisplayMetricsFromDisplay(Landroid/content/Context;)Landroid/util/DisplayMetrics;
    .locals 1

    .line 1
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    check-cast p0, Landroid/view/WindowManager;

    .line 2
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 3
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    return-object v0

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type android.view.WindowManager"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final resizeImageViewToBitmapDimensions(Landroid/graphics/Bitmap;Landroid/widget/ImageView;)V
    .locals 1

    const-string v0, "imageView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1, p0}, Lcom/braze/support/BrazeImageUtils;->resizeToBitmapDimensions(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static final resizeToBitmapDimensions(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 14

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 1
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v2, Lcom/braze/support/BrazeImageUtils;->TAG:Ljava/lang/String;

    sget-object v3, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    sget-object v5, Lcom/braze/support/BrazeImageUtils$u;->b:Lcom/braze/support/BrazeImageUtils$u;

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/String;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    goto :goto_2

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v0, p1

    .line 8
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v2, Lcom/braze/support/BrazeImageUtils;->TAG:Ljava/lang/String;

    new-instance v5, Lcom/braze/support/BrazeImageUtils$x;

    invoke-direct {v5, v0}, Lcom/braze/support/BrazeImageUtils$x;-><init>(F)V

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/String;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 9
    invoke-virtual {p0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, v0

    float-to-int p0, p0

    iput p0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_2

    .line 10
    :cond_3
    :goto_0
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v1, Lcom/braze/support/BrazeImageUtils;->TAG:Ljava/lang/String;

    sget-object v2, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    sget-object v4, Lcom/braze/support/BrazeImageUtils$w;->b:Lcom/braze/support/BrazeImageUtils$w;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v6}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/String;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    goto :goto_2

    .line 11
    :cond_4
    :goto_1
    sget-object v7, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v8, Lcom/braze/support/BrazeImageUtils;->TAG:Ljava/lang/String;

    sget-object v9, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    sget-object v11, Lcom/braze/support/BrazeImageUtils$v;->b:Lcom/braze/support/BrazeImageUtils$v;

    const/4 v12, 0x4

    const/4 v13, 0x0

    const/4 v10, 0x0

    invoke-static/range {v7 .. v13}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/String;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    :goto_2
    return-void
.end method
