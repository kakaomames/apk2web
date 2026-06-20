.class public Lcom/microsoft/xbox/toolkit/ui/TextureManager;
.super Ljava/lang/Object;
.source "TextureManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xbox/toolkit/ui/TextureManager$RetryEntry;,
        Lcom/microsoft/xbox/toolkit/ui/TextureManager$TextureManagerDownloadThreadWorker;,
        Lcom/microsoft/xbox/toolkit/ui/TextureManager$TextureManagerDecodeThread;
    }
.end annotation


# static fields
.field private static final ANIM_TIME:I = 0x64

.field private static final BITMAP_CACHE_MAX_FILE_SIZE_IN_BYTES:I = 0x500000

.field private static final BMP_FILE_CACHE_DIR_NAME:Ljava/lang/String; = "texture"

.field private static final BMP_FILE_CACHE_SIZE:I = 0x7d0

.field private static final DECODE_THREAD_WAIT_TIMEOUT_MS:I = 0xbb8

.field private static final TEXTURE_TIMEOUT_MS:I = 0x3a98

.field private static final TIME_TO_RETRY_MS:J = 0x493e0L

.field public static instance:Lcom/microsoft/xbox/toolkit/ui/TextureManager;


# instance fields
.field private bitmapCache:Lcom/microsoft/xbox/toolkit/XLEMemoryCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/microsoft/xbox/toolkit/XLEMemoryCache<",
            "Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;",
            "Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;",
            ">;"
        }
    .end annotation
.end field

.field private bitmapFileCache:Lcom/microsoft/xbox/toolkit/XLEFileCache;

.field private decodeThread:Ljava/lang/Thread;

.field private inProgress:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;",
            ">;"
        }
    .end annotation
.end field

.field private listLock:Ljava/lang/Object;

.field private resourceBitmapCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledResourceBitmapRequest;",
            "Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;",
            ">;"
        }
    .end annotation
.end field

.field private stopwatch:Lcom/microsoft/xbox/toolkit/TimeMonitor;

.field private timeToRetryCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;",
            "Lcom/microsoft/xbox/toolkit/ui/TextureManager$RetryEntry;",
            ">;"
        }
    .end annotation
.end field

.field private toDecode:Lcom/microsoft/xbox/toolkit/ThreadSafePriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/microsoft/xbox/toolkit/ThreadSafePriorityQueue<",
            "Lcom/microsoft/xbox/toolkit/ui/TextureManagerDownloadRequest;",
            ">;"
        }
    .end annotation
.end field

.field private waitingForImage:Lcom/microsoft/xbox/toolkit/MultiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/microsoft/xbox/toolkit/MultiMap<",
            "Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    new-instance v0, Lcom/microsoft/xbox/toolkit/ui/TextureManager;

    invoke-direct {v0}, Lcom/microsoft/xbox/toolkit/ui/TextureManager;-><init>()V

    sput-object v0, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->instance:Lcom/microsoft/xbox/toolkit/ui/TextureManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->listLock:Ljava/lang/Object;

    .line 52
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->inProgress:Ljava/util/HashSet;

    .line 53
    new-instance v0, Lcom/microsoft/xbox/toolkit/MultiMap;

    invoke-direct {v0}, Lcom/microsoft/xbox/toolkit/MultiMap;-><init>()V

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->waitingForImage:Lcom/microsoft/xbox/toolkit/MultiMap;

    .line 56
    const-string/jumbo v0, "texture"

    const/16 v1, 0x7d0

    invoke-static {v0, v1}, Lcom/microsoft/xbox/toolkit/XLEFileCacheManager;->createCache(Ljava/lang/String;I)Lcom/microsoft/xbox/toolkit/XLEFileCache;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->bitmapFileCache:Lcom/microsoft/xbox/toolkit/XLEFileCache;

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->timeToRetryCache:Ljava/util/HashMap;

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->resourceBitmapCache:Ljava/util/HashMap;

    .line 67
    new-instance v0, Lcom/microsoft/xbox/toolkit/ThreadSafePriorityQueue;

    invoke-direct {v0}, Lcom/microsoft/xbox/toolkit/ThreadSafePriorityQueue;-><init>()V

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->toDecode:Lcom/microsoft/xbox/toolkit/ThreadSafePriorityQueue;

    const/4 v0, 0x0

    .line 69
    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->decodeThread:Ljava/lang/Thread;

    .line 70
    new-instance v1, Lcom/microsoft/xbox/toolkit/TimeMonitor;

    invoke-direct {v1}, Lcom/microsoft/xbox/toolkit/TimeMonitor;-><init>()V

    iput-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->stopwatch:Lcom/microsoft/xbox/toolkit/TimeMonitor;

    .line 91
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->getNetworkBitmapCacheSizeInMB()I

    move-result v1

    const/16 v2, 0x32

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/high16 v2, 0x100000

    mul-int/2addr v1, v2

    .line 92
    new-instance v2, Lcom/microsoft/xbox/toolkit/XLEMemoryCache;

    const/high16 v3, 0x500000

    invoke-direct {v2, v1, v3}, Lcom/microsoft/xbox/toolkit/XLEMemoryCache;-><init>(II)V

    iput-object v2, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->bitmapCache:Lcom/microsoft/xbox/toolkit/XLEMemoryCache;

    .line 94
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->stopwatch:Lcom/microsoft/xbox/toolkit/TimeMonitor;

    invoke-virtual {v1}, Lcom/microsoft/xbox/toolkit/TimeMonitor;->start()V

    .line 96
    new-instance v1, Lcom/microsoft/xbox/toolkit/XLEThread;

    new-instance v2, Lcom/microsoft/xbox/toolkit/ui/TextureManager$TextureManagerDecodeThread;

    invoke-direct {v2, p0, v0}, Lcom/microsoft/xbox/toolkit/ui/TextureManager$TextureManagerDecodeThread;-><init>(Lcom/microsoft/xbox/toolkit/ui/TextureManager;Lcom/microsoft/xbox/toolkit/ui/TextureManager$1;)V

    const-string v0, "XLETextureDecodeThread"

    invoke-direct {v1, v2, v0}, Lcom/microsoft/xbox/toolkit/XLEThread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->decodeThread:Ljava/lang/Thread;

    const/4 v0, 0x1

    .line 97
    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 98
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->decodeThread:Ljava/lang/Thread;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 99
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->decodeThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static Instance()Lcom/microsoft/xbox/toolkit/ui/TextureManager;
    .locals 1

    .line 81
    sget-object v0, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->instance:Lcom/microsoft/xbox/toolkit/ui/TextureManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/microsoft/xbox/toolkit/ui/TextureManager;)Lcom/microsoft/xbox/toolkit/ThreadSafePriorityQueue;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->toDecode:Lcom/microsoft/xbox/toolkit/ThreadSafePriorityQueue;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/microsoft/xbox/toolkit/ui/TextureManager;)Lcom/microsoft/xbox/toolkit/MultiMap;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->waitingForImage:Lcom/microsoft/xbox/toolkit/MultiMap;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/microsoft/xbox/toolkit/ui/TextureManager;Landroid/widget/ImageView;Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->setImage(Landroid/widget/ImageView;Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;)V

    return-void
.end method

.method static synthetic access$200(Lcom/microsoft/xbox/toolkit/ui/TextureManager;IILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/BitmapFactory$Options;
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->computeInSampleSizeOptions(IILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/BitmapFactory$Options;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/microsoft/xbox/toolkit/ui/TextureManager;)Lcom/microsoft/xbox/toolkit/XLEFileCache;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->bitmapFileCache:Lcom/microsoft/xbox/toolkit/XLEFileCache;

    return-object p0
.end method

.method static synthetic access$400(Lcom/microsoft/xbox/toolkit/ui/TextureManager;Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;II)Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->createScaledBitmap(Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;II)Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/microsoft/xbox/toolkit/ui/TextureManager;)Ljava/lang/Object;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->listLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$600(Lcom/microsoft/xbox/toolkit/ui/TextureManager;)Lcom/microsoft/xbox/toolkit/XLEMemoryCache;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->bitmapCache:Lcom/microsoft/xbox/toolkit/XLEMemoryCache;

    return-object p0
.end method

.method static synthetic access$700(Lcom/microsoft/xbox/toolkit/ui/TextureManager;)Ljava/util/HashMap;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->timeToRetryCache:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$800(Lcom/microsoft/xbox/toolkit/ui/TextureManager;Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->drainWaitingForImage(Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;)V

    return-void
.end method

.method static synthetic access$900(Lcom/microsoft/xbox/toolkit/ui/TextureManager;)Ljava/util/HashSet;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->inProgress:Ljava/util/HashSet;

    return-object p0
.end method

.method private bindToViewInternal(Ljava/lang/String;Landroid/widget/ImageView;Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;)V
    .locals 7

    .line 264
    new-instance v0, Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;

    invoke-direct {v0, p1, p3}, Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;-><init>(Ljava/lang/String;Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;)V

    .line 269
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->listLock:Ljava/lang/Object;

    monitor-enter v1

    .line 271
    :try_start_0
    iget-object v2, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->waitingForImage:Lcom/microsoft/xbox/toolkit/MultiMap;

    invoke-virtual {v2, p2}, Lcom/microsoft/xbox/toolkit/MultiMap;->containsValue(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 272
    iget-object v2, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->waitingForImage:Lcom/microsoft/xbox/toolkit/MultiMap;

    invoke-virtual {v2, p2}, Lcom/microsoft/xbox/toolkit/MultiMap;->removeValue(Ljava/lang/Object;)V

    .line 275
    :cond_0
    invoke-static {p1}, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->invalidUrl(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    if-nez v2, :cond_3

    .line 276
    iget-object v2, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->bitmapCache:Lcom/microsoft/xbox/toolkit/XLEMemoryCache;

    invoke-virtual {v2, v0}, Lcom/microsoft/xbox/toolkit/XLEMemoryCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;

    if-nez v2, :cond_5

    .line 280
    iget-object v6, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->timeToRetryCache:Ljava/util/HashMap;

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/microsoft/xbox/toolkit/ui/TextureManager$RetryEntry;

    if-eqz v6, :cond_2

    .line 282
    invoke-virtual {v6}, Lcom/microsoft/xbox/toolkit/ui/TextureManager$RetryEntry;->isExpired()Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_0

    .line 287
    :cond_1
    iget v6, p3, Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;->resourceIdForError:I

    if-eq v6, v4, :cond_5

    .line 288
    iget v2, p3, Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;->resourceIdForError:I

    invoke-virtual {p0, v2}, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->loadResource(I)Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;

    move-result-object v2

    goto :goto_1

    :cond_2
    :goto_0
    move v6, v3

    goto :goto_2

    .line 299
    :cond_3
    iget v2, p3, Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;->resourceIdForError:I

    if-eq v2, v4, :cond_4

    .line 301
    iget v2, p3, Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;->resourceIdForError:I

    invoke-virtual {p0, v2}, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->loadResource(I)Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;

    move-result-object v2

    .line 303
    invoke-static {v2}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    :cond_5
    :goto_1
    move v6, v5

    :goto_2
    if-eqz v6, :cond_8

    .line 312
    iget v6, p3, Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;->resourceIdForLoading:I

    if-eq v6, v4, :cond_7

    .line 313
    iget p3, p3, Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;->resourceIdForLoading:I

    invoke-virtual {p0, p3}, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->loadResource(I)Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;

    move-result-object v2

    if-eqz v2, :cond_6

    goto :goto_3

    :cond_6
    move v3, v5

    .line 314
    :goto_3
    invoke-static {v3}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    .line 317
    :cond_7
    iget-object p3, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->waitingForImage:Lcom/microsoft/xbox/toolkit/MultiMap;

    invoke-virtual {p3, v0, p2}, Lcom/microsoft/xbox/toolkit/MultiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 319
    iget-object p3, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->inProgress:Ljava/util/HashSet;

    invoke-virtual {p3, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_8

    .line 320
    iget-object p3, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->inProgress:Ljava/util/HashSet;

    invoke-virtual {p3, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 322
    invoke-direct {p0, v0}, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->load(Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;)V

    .line 325
    :cond_8
    monitor-exit v1

    .line 328
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0, p2, v2}, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->setImage(Landroid/widget/ImageView;Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;)V

    .line 331
    instance-of p3, p2, Lcom/microsoft/xbox/toolkit/ui/XLEImageView;

    if-eqz p3, :cond_9

    .line 332
    check-cast p2, Lcom/microsoft/xbox/toolkit/ui/XLEImageView;

    iput-object p1, p2, Lcom/microsoft/xbox/toolkit/ui/XLEImageView;->TEST_loadingOrLoadedImageUrl:Ljava/lang/String;

    :cond_9
    return-void

    :catchall_0
    move-exception p1

    .line 325
    :try_start_1
    monitor-exit v1

    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private computeInSampleSizeOptions(IILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/BitmapFactory$Options;
    .locals 9

    .line 143
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 146
    invoke-static {p1, p2}, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->validResizeDimention(II)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 147
    iget v1, p3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-le v1, p1, :cond_1

    iget v1, p3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-le v1, p2, :cond_1

    .line 148
    iget v1, p3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v1, v1

    int-to-float p1, p1

    div-float/2addr v1, p1

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->log(D)D

    move-result-wide v3

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    invoke-static {v5, v6}, Ljava/lang/Math;->log(D)D

    move-result-wide v7

    div-double/2addr v3, v7

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int p1, v3

    .line 149
    iget p3, p3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float p3, p3

    int-to-float p2, p2

    div-float/2addr p3, p2

    float-to-double p2, p3

    invoke-static {p2, p3}, Ljava/lang/Math;->log(D)D

    move-result-wide p2

    invoke-static {v5, v6}, Ljava/lang/Math;->log(D)D

    move-result-wide v3

    div-double/2addr p2, v3

    invoke-static {p2, p3}, Ljava/lang/Math;->floor(D)D

    move-result-wide p2

    double-to-int p2, p2

    .line 151
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-double p1, p1

    invoke-static {v5, v6, p1, p2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    double-to-int p1, p1

    if-lt p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 152
    :goto_0
    invoke-static {v2}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    move v2, p1

    .line 156
    :cond_1
    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    return-object v0
.end method

.method private createScaledBitmap(Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;II)Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;
    .locals 5

    .line 418
    invoke-static {p2, p3}, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->validResizeDimention(II)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 419
    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    int-to-float v1, p3

    int-to-float v2, p2

    div-float v3, v1, v2

    cmpg-float v3, v3, v0

    const/4 v4, 0x1

    if-gez v3, :cond_0

    div-float/2addr v1, v0

    float-to-int p2, v1

    .line 425
    invoke-static {v4, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    goto :goto_0

    :cond_0
    mul-float/2addr v2, v0

    float-to-int p3, v2

    .line 429
    invoke-static {v4, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    .line 432
    :goto_0
    invoke-static {p1, p2, p3, v4}, Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;->createScaledBitmap8888(Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;IIZ)Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method private drainWaitingForImage(Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;)V
    .locals 3

    .line 441
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->waitingForImage:Lcom/microsoft/xbox/toolkit/MultiMap;

    invoke-virtual {v0, p1}, Lcom/microsoft/xbox/toolkit/MultiMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 443
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->waitingForImage:Lcom/microsoft/xbox/toolkit/MultiMap;

    invoke-virtual {v0, p1}, Lcom/microsoft/xbox/toolkit/MultiMap;->get(Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 445
    instance-of v2, v1, Lcom/microsoft/xbox/toolkit/ui/XLEImageView;

    if-eqz v2, :cond_1

    .line 446
    check-cast v1, Lcom/microsoft/xbox/toolkit/ui/XLEImageView;

    invoke-direct {p0, p1, v1, p2}, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->setXLEImageView(Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;Lcom/microsoft/xbox/toolkit/ui/XLEImageView;Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;)V

    goto :goto_0

    .line 449
    :cond_1
    invoke-direct {p0, p1, v1, p2}, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->setView(Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;Landroid/widget/ImageView;Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private getNetworkBitmapCacheSizeInMB()I
    .locals 2

    .line 86
    invoke-static {}, Lcom/microsoft/xbox/toolkit/MemoryMonitor;->instance()Lcom/microsoft/xbox/toolkit/MemoryMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/MemoryMonitor;->getMemoryClass()I

    move-result v0

    add-int/lit8 v0, v0, -0x40

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 87
    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0xc

    return v0
.end method

.method private static invalidUrl(Ljava/lang/String;)Z
    .locals 0

    if-eqz p0, :cond_1

    .line 110
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private load(Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;)V
    .locals 2

    .line 122
    iget-object v0, p1, Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;->url:Ljava/lang/String;

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->invalidUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 128
    :cond_0
    new-instance v0, Lcom/microsoft/xbox/toolkit/ui/TextureManager$TextureManagerDownloadThreadWorker;

    new-instance v1, Lcom/microsoft/xbox/toolkit/ui/TextureManagerDownloadRequest;

    invoke-direct {v1, p1}, Lcom/microsoft/xbox/toolkit/ui/TextureManagerDownloadRequest;-><init>(Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;)V

    invoke-direct {v0, p0, v1}, Lcom/microsoft/xbox/toolkit/ui/TextureManager$TextureManagerDownloadThreadWorker;-><init>(Lcom/microsoft/xbox/toolkit/ui/TextureManager;Lcom/microsoft/xbox/toolkit/ui/TextureManagerDownloadRequest;)V

    .line 129
    sget-object p1, Lcom/microsoft/xbox/toolkit/network/XLEThreadPool;->textureThreadPool:Lcom/microsoft/xbox/toolkit/network/XLEThreadPool;

    invoke-virtual {p1, v0}, Lcom/microsoft/xbox/toolkit/network/XLEThreadPool;->run(Ljava/lang/Runnable;)V

    return-void
.end method

.method private setImage(Landroid/widget/ImageView;Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;)V
    .locals 3

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 558
    :cond_0
    invoke-virtual {p2}, Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    .line 559
    :goto_0
    sget v0, Lcom/microsoft/xboxtcui/R$id;->image_callback:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/toolkit/ui/OnBitmapSetListener;

    if-eqz v0, :cond_1

    .line 562
    invoke-interface {v0, p1, p2}, Lcom/microsoft/xbox/toolkit/ui/OnBitmapSetListener;->onBeforeImageSet(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    .line 565
    :cond_1
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 566
    sget v1, Lcom/microsoft/xboxtcui/R$id;->image_bound:I

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    if-eqz v0, :cond_2

    .line 569
    invoke-interface {v0, p1, p2}, Lcom/microsoft/xbox/toolkit/ui/OnBitmapSetListener;->onAfterImageSet(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    :cond_2
    return-void
.end method

.method private setView(Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;Landroid/widget/ImageView;Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;)V
    .locals 1

    .line 464
    new-instance v0, Lcom/microsoft/xbox/toolkit/ui/TextureManager$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/microsoft/xbox/toolkit/ui/TextureManager$1;-><init>(Lcom/microsoft/xbox/toolkit/ui/TextureManager;Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;Landroid/widget/ImageView;Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;)V

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThreadPost(Ljava/lang/Runnable;)V

    return-void
.end method

.method private setXLEImageView(Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;Lcom/microsoft/xbox/toolkit/ui/XLEImageView;Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;)V
    .locals 1

    .line 504
    new-instance v0, Lcom/microsoft/xbox/toolkit/ui/TextureManager$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/microsoft/xbox/toolkit/ui/TextureManager$2;-><init>(Lcom/microsoft/xbox/toolkit/ui/TextureManager;Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;Lcom/microsoft/xbox/toolkit/ui/XLEImageView;Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;)V

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThreadPost(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static validResizeDimention(II)Z
    .locals 0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    if-lez p0, :cond_0

    if-lez p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    .line 115
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method


# virtual methods
.method public bindToView(ILandroid/widget/ImageView;II)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 196
    invoke-virtual/range {v0 .. v5}, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->bindToView(ILandroid/widget/ImageView;IILcom/microsoft/xbox/toolkit/ui/OnBitmapSetListener;)V

    return-void
.end method

.method public bindToView(ILandroid/widget/ImageView;IILcom/microsoft/xbox/toolkit/ui/OnBitmapSetListener;)V
    .locals 1

    .line 200
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p3

    sget-object p4, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    const/4 p5, 0x1

    const/4 v0, 0x0

    if-ne p3, p4, :cond_0

    move p3, p5

    goto :goto_0

    :cond_0
    move p3, v0

    :goto_0
    invoke-static {p3}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    .line 202
    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->loadResource(I)Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;

    move-result-object p3

    if-eqz p3, :cond_1

    goto :goto_1

    :cond_1
    move p5, v0

    .line 204
    :goto_1
    invoke-static {p5}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    .line 207
    instance-of p4, p2, Lcom/microsoft/xbox/toolkit/ui/XLEImageView;

    if-eqz p4, :cond_2

    .line 208
    move-object p4, p2

    check-cast p4, Lcom/microsoft/xbox/toolkit/ui/XLEImageView;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p4, Lcom/microsoft/xbox/toolkit/ui/XLEImageView;->TEST_loadingOrLoadedImageUrl:Ljava/lang/String;

    .line 212
    :cond_2
    invoke-direct {p0, p2, p3}, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->setImage(Landroid/widget/ImageView;Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;)V

    return-void
.end method

.method public bindToView(Ljava/net/URI;Landroid/widget/ImageView;II)V
    .locals 2

    .line 230
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    if-eqz p3, :cond_2

    if-eqz p4, :cond_2

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    .line 235
    :cond_1
    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    new-instance v0, Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;

    invoke-direct {v0, p3, p4}, Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;-><init>(II)V

    invoke-direct {p0, p1, p2, v0}, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->bindToViewInternal(Ljava/lang/String;Landroid/widget/ImageView;Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;)V

    return-void

    .line 232
    :cond_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public bindToView(Ljava/net/URI;Landroid/widget/ImageView;Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;)V
    .locals 2

    .line 239
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    .line 240
    :cond_1
    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-direct {p0, p1, p2, p3}, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->bindToViewInternal(Ljava/lang/String;Landroid/widget/ImageView;Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;)V

    return-void
.end method

.method public bindToViewFromFile(Ljava/lang/String;Landroid/widget/ImageView;II)V
    .locals 2

    .line 221
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    if-eqz p3, :cond_1

    if-eqz p4, :cond_1

    .line 226
    new-instance v0, Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;

    invoke-direct {v0, p3, p4}, Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;-><init>(II)V

    invoke-direct {p0, p1, p2, v0}, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->bindToViewInternal(Ljava/lang/String;Landroid/widget/ImageView;Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;)V

    return-void

    .line 223
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public bindToViewFromFile(Ljava/lang/String;Landroid/widget/ImageView;Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;)V
    .locals 2

    .line 216
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    .line 217
    invoke-direct {p0, p1, p2, p3}, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->bindToViewInternal(Ljava/lang/String;Landroid/widget/ImageView;Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;)V

    return-void
.end method

.method public isBusy()Z
    .locals 2

    .line 257
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->listLock:Ljava/lang/Object;

    monitor-enter v0

    .line 258
    :try_start_0
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->inProgress:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 259
    monitor-exit v0

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public loadResource(I)Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;
    .locals 3

    .line 161
    new-instance v0, Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledResourceBitmapRequest;

    invoke-direct {v0, p1}, Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledResourceBitmapRequest;-><init>(I)V

    .line 162
    iget-object p1, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->resourceBitmapCache:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;

    if-nez p1, :cond_0

    .line 165
    new-instance p1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 166
    iput-boolean v1, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 167
    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, v0, Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledResourceBitmapRequest;->resourceId:I

    invoke-static {v1, v2, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 170
    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget v1, v0, Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledResourceBitmapRequest;->resourceId:I

    invoke-static {p1, v1}, Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;->decodeResource(Landroid/content/res/Resources;I)Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;

    move-result-object p1

    .line 172
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->resourceBitmapCache:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    :cond_0
    invoke-static {p1}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    return-object p1
.end method

.method public loadScaledResourceDrawable(I)Lcom/microsoft/xbox/toolkit/ui/XLEBitmap$XLEBitmapDrawable;
    .locals 0

    .line 133
    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->loadResource(I)Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 138
    :cond_0
    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;->getDrawable()Lcom/microsoft/xbox/toolkit/ui/XLEBitmap$XLEBitmapDrawable;

    move-result-object p1

    return-object p1
.end method

.method public logMemoryUsage()V
    .locals 0

    return-void
.end method

.method public preload(I)V
    .locals 0

    return-void
.end method

.method public preload(Ljava/net/URI;)V
    .locals 0

    return-void
.end method

.method public preloadFromFile(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public purgeResourceBitmapCache()V
    .locals 1

    .line 554
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->resourceBitmapCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public setCachingEnabled(Z)V
    .locals 3

    if-eqz p1, :cond_0

    .line 244
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->getNetworkBitmapCacheSizeInMB()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 246
    :goto_0
    new-instance v1, Lcom/microsoft/xbox/toolkit/XLEMemoryCache;

    const/high16 v2, 0x500000

    invoke-direct {v1, v0, v2}, Lcom/microsoft/xbox/toolkit/XLEMemoryCache;-><init>(II)V

    iput-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->bitmapCache:Lcom/microsoft/xbox/toolkit/XLEMemoryCache;

    .line 247
    const-string/jumbo v0, "texture"

    const/16 v1, 0x7d0

    invoke-static {v0, v1, p1}, Lcom/microsoft/xbox/toolkit/XLEFileCacheManager;->createCache(Ljava/lang/String;IZ)Lcom/microsoft/xbox/toolkit/XLEFileCache;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->bitmapFileCache:Lcom/microsoft/xbox/toolkit/XLEFileCache;

    .line 248
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->resourceBitmapCache:Ljava/util/HashMap;

    return-void
.end method

.method public unsafeClearBitmapCache()V
    .locals 0

    return-void
.end method
