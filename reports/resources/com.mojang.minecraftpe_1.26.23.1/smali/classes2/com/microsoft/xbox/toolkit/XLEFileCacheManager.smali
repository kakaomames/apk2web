.class public Lcom/microsoft/xbox/toolkit/XLEFileCacheManager;
.super Ljava/lang/Object;
.source "XLEFileCacheManager.java"


# static fields
.field public static emptyFileCache:Lcom/microsoft/xbox/toolkit/XLEFileCache;

.field private static sAllCaches:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/microsoft/xbox/toolkit/XLEFileCache;",
            ">;"
        }
    .end annotation
.end field

.field private static sCacheRootDirMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/microsoft/xbox/toolkit/XLEFileCache;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/microsoft/xbox/toolkit/XLEFileCacheManager;->sAllCaches:Ljava/util/HashMap;

    .line 11
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/microsoft/xbox/toolkit/XLEFileCacheManager;->sCacheRootDirMap:Ljava/util/HashMap;

    .line 17
    new-instance v0, Lcom/microsoft/xbox/toolkit/XLEFileCache;

    invoke-direct {v0}, Lcom/microsoft/xbox/toolkit/XLEFileCache;-><init>()V

    sput-object v0, Lcom/microsoft/xbox/toolkit/XLEFileCacheManager;->emptyFileCache:Lcom/microsoft/xbox/toolkit/XLEFileCache;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized createCache(Ljava/lang/String;I)Lcom/microsoft/xbox/toolkit/XLEFileCache;
    .locals 2

    const-class v0, Lcom/microsoft/xbox/toolkit/XLEFileCacheManager;

    monitor-enter v0

    const/4 v1, 0x1

    .line 14
    :try_start_0
    invoke-static {p0, p1, v1}, Lcom/microsoft/xbox/toolkit/XLEFileCacheManager;->createCache(Ljava/lang/String;IZ)Lcom/microsoft/xbox/toolkit/XLEFileCache;

    move-result-object p0

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0

    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static declared-synchronized createCache(Ljava/lang/String;IZ)Lcom/microsoft/xbox/toolkit/XLEFileCache;
    .locals 2

    const-class v0, Lcom/microsoft/xbox/toolkit/XLEFileCacheManager;

    monitor-enter v0

    if-lez p1, :cond_6

    if-eqz p0, :cond_5

    .line 23
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_5

    .line 27
    sget-object v1, Lcom/microsoft/xbox/toolkit/XLEFileCacheManager;->sAllCaches:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/xbox/toolkit/XLEFileCache;

    if-nez v1, :cond_3

    if-nez p2, :cond_0

    .line 31
    sget-object p0, Lcom/microsoft/xbox/toolkit/XLEFileCacheManager;->emptyFileCache:Lcom/microsoft/xbox/toolkit/XLEFileCache;

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    .line 34
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/microsoft/xbox/toolkit/system/SystemUtil;->isSDCardAvailable()Z

    move-result p2

    if-nez p2, :cond_1

    .line 35
    sget-object p0, Lcom/microsoft/xbox/toolkit/XLEFileCacheManager;->emptyFileCache:Lcom/microsoft/xbox/toolkit/XLEFileCache;

    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    .line 38
    :cond_1
    :try_start_2
    new-instance v1, Lcom/microsoft/xbox/toolkit/XLEFileCache;

    invoke-direct {v1, p0, p1}, Lcom/microsoft/xbox/toolkit/XLEFileCache;-><init>(Ljava/lang/String;I)V

    .line 41
    new-instance p1, Ljava/io/File;

    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getCacheDir()Ljava/io/File;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 43
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_2

    .line 44
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 47
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object p2

    array-length p2, p2

    iput p2, v1, Lcom/microsoft/xbox/toolkit/XLEFileCache;->size:I

    .line 49
    sget-object p2, Lcom/microsoft/xbox/toolkit/XLEFileCacheManager;->sAllCaches:Ljava/util/HashMap;

    invoke-virtual {p2, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object p0, Lcom/microsoft/xbox/toolkit/XLEFileCacheManager;->sCacheRootDirMap:Ljava/util/HashMap;

    invoke-virtual {p0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 52
    :cond_3
    iget p0, v1, Lcom/microsoft/xbox/toolkit/XLEFileCache;->maxFileNumber:I

    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne p0, p1, :cond_4

    .line 56
    :goto_0
    monitor-exit v0

    return-object v1

    .line 53
    :cond_4
    :try_start_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The same subDirectory with different maxFileNumber already exist."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 24
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "subDirectory must be not null and at least one character length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 21
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "maxFileNumber must be > 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method static getCacheRootDir(Lcom/microsoft/xbox/toolkit/XLEFileCache;)Ljava/io/File;
    .locals 1

    .line 60
    sget-object v0, Lcom/microsoft/xbox/toolkit/XLEFileCacheManager;->sCacheRootDirMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/File;

    return-object p0
.end method

.method public static getCacheStatus()Ljava/lang/String;
    .locals 1

    .line 64
    sget-object v0, Lcom/microsoft/xbox/toolkit/XLEFileCacheManager;->sAllCaches:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
