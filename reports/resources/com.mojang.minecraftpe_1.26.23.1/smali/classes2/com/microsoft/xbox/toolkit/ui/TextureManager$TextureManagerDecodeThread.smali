.class Lcom/microsoft/xbox/toolkit/ui/TextureManager$TextureManagerDecodeThread;
.super Ljava/lang/Object;
.source "TextureManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/toolkit/ui/TextureManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TextureManagerDecodeThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/xbox/toolkit/ui/TextureManager;


# direct methods
.method private constructor <init>(Lcom/microsoft/xbox/toolkit/ui/TextureManager;)V
    .locals 0

    .line 336
    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager$TextureManagerDecodeThread;->this$0:Lcom/microsoft/xbox/toolkit/ui/TextureManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/microsoft/xbox/toolkit/ui/TextureManager;Lcom/microsoft/xbox/toolkit/ui/TextureManager$1;)V
    .locals 0

    .line 336
    invoke-direct {p0, p1}, Lcom/microsoft/xbox/toolkit/ui/TextureManager$TextureManagerDecodeThread;-><init>(Lcom/microsoft/xbox/toolkit/ui/TextureManager;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 341
    :goto_0
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager$TextureManagerDecodeThread;->this$0:Lcom/microsoft/xbox/toolkit/ui/TextureManager;

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->access$100(Lcom/microsoft/xbox/toolkit/ui/TextureManager;)Lcom/microsoft/xbox/toolkit/ThreadSafePriorityQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/ThreadSafePriorityQueue;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/toolkit/ui/TextureManagerDownloadRequest;

    .line 346
    iget-object v1, v0, Lcom/microsoft/xbox/toolkit/ui/TextureManagerDownloadRequest;->stream:Ljava/io/InputStream;

    const/16 v2, 0xbb8

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 348
    invoke-static {}, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;->getInstance()Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;->waitForReady(I)V

    .line 353
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 354
    iget-object v4, v0, Lcom/microsoft/xbox/toolkit/ui/TextureManagerDownloadRequest;->stream:Ljava/io/InputStream;

    invoke-static {v1, v4}, Lcom/microsoft/xbox/toolkit/StreamUtil;->CopyStream(Ljava/io/OutputStream;Ljava/io/InputStream;)V

    .line 355
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 358
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v5, 0x1

    .line 359
    iput-boolean v5, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 360
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v5, v3, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 362
    iget-object v5, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager$TextureManagerDecodeThread;->this$0:Lcom/microsoft/xbox/toolkit/ui/TextureManager;

    iget-object v6, v0, Lcom/microsoft/xbox/toolkit/ui/TextureManagerDownloadRequest;->key:Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;

    iget-object v6, v6, Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;->bindingOption:Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;

    iget v6, v6, Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;->width:I

    iget-object v7, v0, Lcom/microsoft/xbox/toolkit/ui/TextureManagerDownloadRequest;->key:Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;

    iget-object v7, v7, Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;->bindingOption:Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;

    iget v7, v7, Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;->height:I

    invoke-static {v5, v6, v7, v4}, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->access$200(Lcom/microsoft/xbox/toolkit/ui/TextureManager;IILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v5

    .line 365
    iget v6, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v7, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int/2addr v6, v7

    iget v4, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v6, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int/2addr v4, v6

    .line 367
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v4, v5}, Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;->decodeStream(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;)Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;

    move-result-object v4

    .line 369
    iget-object v5, v0, Lcom/microsoft/xbox/toolkit/ui/TextureManagerDownloadRequest;->key:Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;

    iget-object v5, v5, Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;->bindingOption:Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;

    iget-boolean v5, v5, Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;->useFileCache:Z

    if-eqz v5, :cond_0

    .line 370
    iget-object v5, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager$TextureManagerDecodeThread;->this$0:Lcom/microsoft/xbox/toolkit/ui/TextureManager;

    invoke-static {v5}, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->access$300(Lcom/microsoft/xbox/toolkit/ui/TextureManager;)Lcom/microsoft/xbox/toolkit/XLEFileCache;

    move-result-object v5

    iget-object v6, v0, Lcom/microsoft/xbox/toolkit/ui/TextureManagerDownloadRequest;->key:Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;

    invoke-virtual {v5, v6}, Lcom/microsoft/xbox/toolkit/XLEFileCache;->contains(Lcom/microsoft/xbox/toolkit/XLEFileCacheItemKey;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 371
    iget-object v5, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager$TextureManagerDecodeThread;->this$0:Lcom/microsoft/xbox/toolkit/ui/TextureManager;

    invoke-static {v5}, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->access$300(Lcom/microsoft/xbox/toolkit/ui/TextureManager;)Lcom/microsoft/xbox/toolkit/XLEFileCache;

    move-result-object v5

    iget-object v6, v0, Lcom/microsoft/xbox/toolkit/ui/TextureManagerDownloadRequest;->key:Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;

    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-direct {v7, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v5, v6, v7}, Lcom/microsoft/xbox/toolkit/XLEFileCache;->save(Lcom/microsoft/xbox/toolkit/XLEFileCacheItemKey;Ljava/io/InputStream;)V

    .line 375
    :cond_0
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager$TextureManagerDecodeThread;->this$0:Lcom/microsoft/xbox/toolkit/ui/TextureManager;

    iget-object v5, v0, Lcom/microsoft/xbox/toolkit/ui/TextureManagerDownloadRequest;->key:Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;

    iget-object v5, v5, Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;->bindingOption:Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;

    iget v5, v5, Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;->width:I

    iget-object v6, v0, Lcom/microsoft/xbox/toolkit/ui/TextureManagerDownloadRequest;->key:Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;

    iget-object v6, v6, Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;->bindingOption:Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;

    iget v6, v6, Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;->height:I

    invoke-static {v1, v4, v5, v6}, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->access$400(Lcom/microsoft/xbox/toolkit/ui/TextureManager;Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;II)Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;

    move-result-object v3

    .line 383
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    invoke-static {}, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;->getInstance()Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;->waitForReady(I)V

    .line 385
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager$TextureManagerDecodeThread;->this$0:Lcom/microsoft/xbox/toolkit/ui/TextureManager;

    invoke-static {v1}, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->access$500(Lcom/microsoft/xbox/toolkit/ui/TextureManager;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    if-eqz v3, :cond_2

    .line 388
    :try_start_1
    iget-object v2, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager$TextureManagerDecodeThread;->this$0:Lcom/microsoft/xbox/toolkit/ui/TextureManager;

    invoke-static {v2}, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->access$600(Lcom/microsoft/xbox/toolkit/ui/TextureManager;)Lcom/microsoft/xbox/toolkit/XLEMemoryCache;

    move-result-object v2

    iget-object v4, v0, Lcom/microsoft/xbox/toolkit/ui/TextureManagerDownloadRequest;->key:Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;

    invoke-virtual {v3}, Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;->getByteCount()I

    move-result v5

    invoke-virtual {v2, v4, v3, v5}, Lcom/microsoft/xbox/toolkit/XLEMemoryCache;->add(Ljava/lang/Object;Ljava/lang/Object;I)Z

    .line 389
    iget-object v2, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager$TextureManagerDecodeThread;->this$0:Lcom/microsoft/xbox/toolkit/ui/TextureManager;

    invoke-static {v2}, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->access$700(Lcom/microsoft/xbox/toolkit/ui/TextureManager;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v4, v0, Lcom/microsoft/xbox/toolkit/ui/TextureManagerDownloadRequest;->key:Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 390
    :cond_2
    iget-object v2, v0, Lcom/microsoft/xbox/toolkit/ui/TextureManagerDownloadRequest;->key:Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;

    iget-object v2, v2, Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;->bindingOption:Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;

    iget v2, v2, Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;->resourceIdForError:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_4

    .line 393
    iget-object v2, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager$TextureManagerDecodeThread;->this$0:Lcom/microsoft/xbox/toolkit/ui/TextureManager;

    iget-object v3, v0, Lcom/microsoft/xbox/toolkit/ui/TextureManagerDownloadRequest;->key:Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;

    iget-object v3, v3, Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;->bindingOption:Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;

    iget v3, v3, Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;->resourceIdForError:I

    invoke-virtual {v2, v3}, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->loadResource(I)Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;

    move-result-object v3

    .line 394
    iget-object v2, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager$TextureManagerDecodeThread;->this$0:Lcom/microsoft/xbox/toolkit/ui/TextureManager;

    invoke-static {v2}, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->access$700(Lcom/microsoft/xbox/toolkit/ui/TextureManager;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v4, v0, Lcom/microsoft/xbox/toolkit/ui/TextureManagerDownloadRequest;->key:Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/microsoft/xbox/toolkit/ui/TextureManager$RetryEntry;

    if-eqz v2, :cond_3

    .line 396
    invoke-virtual {v2}, Lcom/microsoft/xbox/toolkit/ui/TextureManager$RetryEntry;->startNext()V

    goto :goto_1

    .line 398
    :cond_3
    iget-object v2, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager$TextureManagerDecodeThread;->this$0:Lcom/microsoft/xbox/toolkit/ui/TextureManager;

    invoke-static {v2}, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->access$700(Lcom/microsoft/xbox/toolkit/ui/TextureManager;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v4, v0, Lcom/microsoft/xbox/toolkit/ui/TextureManagerDownloadRequest;->key:Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;

    new-instance v5, Lcom/microsoft/xbox/toolkit/ui/TextureManager$RetryEntry;

    invoke-direct {v5}, Lcom/microsoft/xbox/toolkit/ui/TextureManager$RetryEntry;-><init>()V

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    :cond_4
    :goto_1
    iget-object v2, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager$TextureManagerDecodeThread;->this$0:Lcom/microsoft/xbox/toolkit/ui/TextureManager;

    iget-object v4, v0, Lcom/microsoft/xbox/toolkit/ui/TextureManagerDownloadRequest;->key:Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;

    invoke-static {v2, v4, v3}, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->access$800(Lcom/microsoft/xbox/toolkit/ui/TextureManager;Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;)V

    .line 405
    iget-object v2, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager$TextureManagerDecodeThread;->this$0:Lcom/microsoft/xbox/toolkit/ui/TextureManager;

    invoke-static {v2}, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->access$900(Lcom/microsoft/xbox/toolkit/ui/TextureManager;)Ljava/util/HashSet;

    move-result-object v2

    iget-object v0, v0, Lcom/microsoft/xbox/toolkit/ui/TextureManagerDownloadRequest;->key:Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 406
    monitor-exit v1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
