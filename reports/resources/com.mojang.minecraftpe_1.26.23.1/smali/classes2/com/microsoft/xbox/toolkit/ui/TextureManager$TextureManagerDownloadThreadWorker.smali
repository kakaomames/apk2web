.class Lcom/microsoft/xbox/toolkit/ui/TextureManager$TextureManagerDownloadThreadWorker;
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
    name = "TextureManagerDownloadThreadWorker"
.end annotation


# instance fields
.field private request:Lcom/microsoft/xbox/toolkit/ui/TextureManagerDownloadRequest;

.field final synthetic this$0:Lcom/microsoft/xbox/toolkit/ui/TextureManager;


# direct methods
.method public constructor <init>(Lcom/microsoft/xbox/toolkit/ui/TextureManager;Lcom/microsoft/xbox/toolkit/ui/TextureManagerDownloadRequest;)V
    .locals 0

    .line 576
    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager$TextureManagerDownloadThreadWorker;->this$0:Lcom/microsoft/xbox/toolkit/ui/TextureManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 577
    iput-object p2, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager$TextureManagerDownloadThreadWorker;->request:Lcom/microsoft/xbox/toolkit/ui/TextureManagerDownloadRequest;

    return-void
.end method

.method private downloadFromAssets(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1

    .line 626
    :try_start_0
    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getAssetManager()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private downloadFromWeb(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 3

    const/4 v0, 0x0

    .line 615
    :try_start_0
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/net/URI;)V

    .line 616
    sget-object p1, Lcom/microsoft/xbox/toolkit/network/HttpClientFactory;->textureFactory:Lcom/microsoft/xbox/toolkit/network/HttpClientFactory;

    const/16 v2, 0x3a98

    invoke-virtual {p1, v2}, Lcom/microsoft/xbox/toolkit/network/HttpClientFactory;->getHttpClient(I)Lcom/microsoft/xbox/toolkit/network/AbstractXLEHttpClient;

    move-result-object p1

    const/4 v2, 0x0

    .line 617
    invoke-virtual {p1, v1, v2}, Lcom/microsoft/xbox/toolkit/network/AbstractXLEHttpClient;->getHttpStatusAndStreamInternal(Lorg/apache/http/client/methods/HttpUriRequest;Z)Lcom/microsoft/xbox/toolkit/network/XLEHttpStatusAndStream;

    move-result-object p1

    .line 618
    iget v1, p1, Lcom/microsoft/xbox/toolkit/network/XLEHttpStatusAndStream;->statusCode:I

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    iget-object v0, p1, Lcom/microsoft/xbox/toolkit/network/XLEHttpStatusAndStream;->stream:Ljava/io/InputStream;

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 581
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager$TextureManagerDownloadThreadWorker;->request:Lcom/microsoft/xbox/toolkit/ui/TextureManagerDownloadRequest;

    iget-object v0, v0, Lcom/microsoft/xbox/toolkit/ui/TextureManagerDownloadRequest;->key:Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager$TextureManagerDownloadThreadWorker;->request:Lcom/microsoft/xbox/toolkit/ui/TextureManagerDownloadRequest;

    iget-object v0, v0, Lcom/microsoft/xbox/toolkit/ui/TextureManagerDownloadRequest;->key:Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;

    iget-object v0, v0, Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;->url:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    .line 584
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager$TextureManagerDownloadThreadWorker;->request:Lcom/microsoft/xbox/toolkit/ui/TextureManagerDownloadRequest;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/microsoft/xbox/toolkit/ui/TextureManagerDownloadRequest;->stream:Ljava/io/InputStream;

    .line 587
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager$TextureManagerDownloadThreadWorker;->request:Lcom/microsoft/xbox/toolkit/ui/TextureManagerDownloadRequest;

    iget-object v0, v0, Lcom/microsoft/xbox/toolkit/ui/TextureManagerDownloadRequest;->key:Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;

    iget-object v0, v0, Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;->url:Ljava/lang/String;

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 588
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager$TextureManagerDownloadThreadWorker;->request:Lcom/microsoft/xbox/toolkit/ui/TextureManagerDownloadRequest;

    iget-object v0, v0, Lcom/microsoft/xbox/toolkit/ui/TextureManagerDownloadRequest;->key:Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;

    iget-object v0, v0, Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;->bindingOption:Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;

    iget-boolean v0, v0, Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;->useFileCache:Z

    if-eqz v0, :cond_1

    .line 590
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager$TextureManagerDownloadThreadWorker;->request:Lcom/microsoft/xbox/toolkit/ui/TextureManagerDownloadRequest;

    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager$TextureManagerDownloadThreadWorker;->this$0:Lcom/microsoft/xbox/toolkit/ui/TextureManager;

    invoke-static {v1}, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->access$300(Lcom/microsoft/xbox/toolkit/ui/TextureManager;)Lcom/microsoft/xbox/toolkit/XLEFileCache;

    move-result-object v1

    iget-object v2, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager$TextureManagerDownloadThreadWorker;->request:Lcom/microsoft/xbox/toolkit/ui/TextureManagerDownloadRequest;

    iget-object v2, v2, Lcom/microsoft/xbox/toolkit/ui/TextureManagerDownloadRequest;->key:Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;

    invoke-virtual {v1, v2}, Lcom/microsoft/xbox/toolkit/XLEFileCache;->getInputStreamForRead(Lcom/microsoft/xbox/toolkit/XLEFileCacheItemKey;)Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, v0, Lcom/microsoft/xbox/toolkit/ui/TextureManagerDownloadRequest;->stream:Ljava/io/InputStream;

    .line 591
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager$TextureManagerDownloadThreadWorker;->request:Lcom/microsoft/xbox/toolkit/ui/TextureManagerDownloadRequest;

    iget-object v0, v0, Lcom/microsoft/xbox/toolkit/ui/TextureManagerDownloadRequest;->stream:Ljava/io/InputStream;

    if-nez v0, :cond_3

    .line 593
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager$TextureManagerDownloadThreadWorker;->request:Lcom/microsoft/xbox/toolkit/ui/TextureManagerDownloadRequest;

    iget-object v1, v0, Lcom/microsoft/xbox/toolkit/ui/TextureManagerDownloadRequest;->key:Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;

    iget-object v1, v1, Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;->url:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/microsoft/xbox/toolkit/ui/TextureManager$TextureManagerDownloadThreadWorker;->downloadFromWeb(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, v0, Lcom/microsoft/xbox/toolkit/ui/TextureManagerDownloadRequest;->stream:Ljava/io/InputStream;

    goto :goto_1

    .line 596
    :cond_1
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager$TextureManagerDownloadThreadWorker;->request:Lcom/microsoft/xbox/toolkit/ui/TextureManagerDownloadRequest;

    iget-object v1, v0, Lcom/microsoft/xbox/toolkit/ui/TextureManagerDownloadRequest;->key:Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;

    iget-object v1, v1, Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;->url:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/microsoft/xbox/toolkit/ui/TextureManager$TextureManagerDownloadThreadWorker;->downloadFromWeb(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, v0, Lcom/microsoft/xbox/toolkit/ui/TextureManagerDownloadRequest;->stream:Ljava/io/InputStream;

    goto :goto_1

    .line 599
    :cond_2
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager$TextureManagerDownloadThreadWorker;->request:Lcom/microsoft/xbox/toolkit/ui/TextureManagerDownloadRequest;

    iget-object v1, v0, Lcom/microsoft/xbox/toolkit/ui/TextureManagerDownloadRequest;->key:Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;

    iget-object v1, v1, Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;->url:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/microsoft/xbox/toolkit/ui/TextureManager$TextureManagerDownloadThreadWorker;->downloadFromAssets(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, v0, Lcom/microsoft/xbox/toolkit/ui/TextureManagerDownloadRequest;->stream:Ljava/io/InputStream;

    .line 608
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager$TextureManagerDownloadThreadWorker;->this$0:Lcom/microsoft/xbox/toolkit/ui/TextureManager;

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->access$500(Lcom/microsoft/xbox/toolkit/ui/TextureManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 609
    :try_start_1
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager$TextureManagerDownloadThreadWorker;->this$0:Lcom/microsoft/xbox/toolkit/ui/TextureManager;

    invoke-static {v1}, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->access$100(Lcom/microsoft/xbox/toolkit/ui/TextureManager;)Lcom/microsoft/xbox/toolkit/ThreadSafePriorityQueue;

    move-result-object v1

    iget-object v2, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager$TextureManagerDownloadThreadWorker;->request:Lcom/microsoft/xbox/toolkit/ui/TextureManagerDownloadRequest;

    invoke-virtual {v1, v2}, Lcom/microsoft/xbox/toolkit/ThreadSafePriorityQueue;->push(Ljava/lang/Object;)V

    .line 610
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
