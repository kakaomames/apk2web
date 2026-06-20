.class public final Lcom/microsoft/xbox/idp/util/CacheUtil;
.super Ljava/lang/Object;
.source "CacheUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CacheUtil"

.field private static final bitmapCache:Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Cache;

.field private static final objectLoaderCache:Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Cache;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 14
    new-instance v0, Lcom/microsoft/xbox/idp/util/ObjectLoaderCache;

    invoke-direct {v0}, Lcom/microsoft/xbox/idp/util/ObjectLoaderCache;-><init>()V

    sput-object v0, Lcom/microsoft/xbox/idp/util/CacheUtil;->objectLoaderCache:Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Cache;

    .line 15
    new-instance v0, Lcom/microsoft/xbox/idp/util/BitmapLoaderCache;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Lcom/microsoft/xbox/idp/util/BitmapLoaderCache;-><init>(I)V

    sput-object v0, Lcom/microsoft/xbox/idp/util/CacheUtil;->bitmapCache:Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Cache;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearCaches()V
    .locals 2

    .line 26
    sget-object v0, Lcom/microsoft/xbox/idp/util/CacheUtil;->TAG:Ljava/lang/String;

    const-string v1, "clearCaches"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    sget-object v0, Lcom/microsoft/xbox/idp/util/CacheUtil;->objectLoaderCache:Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Cache;

    monitor-enter v0

    .line 28
    :try_start_0
    invoke-interface {v0}, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Cache;->clear()V

    .line 29
    monitor-exit v0

    .line 30
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    sget-object v1, Lcom/microsoft/xbox/idp/util/CacheUtil;->bitmapCache:Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Cache;

    monitor-enter v1

    .line 31
    :try_start_1
    invoke-interface {v1}, Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Cache;->clear()V

    .line 32
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    .line 29
    :try_start_2
    monitor-exit v0

    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public static getBitmapCache()Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Cache;
    .locals 1

    .line 22
    sget-object v0, Lcom/microsoft/xbox/idp/util/CacheUtil;->bitmapCache:Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Cache;

    return-object v0
.end method

.method public static getObjectLoaderCache()Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Cache;
    .locals 1

    .line 18
    sget-object v0, Lcom/microsoft/xbox/idp/util/CacheUtil;->objectLoaderCache:Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Cache;

    return-object v0
.end method
