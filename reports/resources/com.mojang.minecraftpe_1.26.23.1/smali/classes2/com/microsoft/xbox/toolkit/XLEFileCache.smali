.class public Lcom/microsoft/xbox/toolkit/XLEFileCache;
.super Ljava/lang/Object;
.source "XLEFileCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xbox/toolkit/XLEFileCache$CachedFileOutputStreamItem;,
        Lcom/microsoft/xbox/toolkit/XLEFileCache$CachedFileInputStreamItem;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "XLEFileCache"


# instance fields
.field private enabled:Z

.field private final expiredTimer:J

.field final maxFileNumber:I

.field private readAccessCnt:I

.field private readSuccessfulCnt:I

.field size:I

.field private writeAccessCnt:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 3

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput v0, p0, Lcom/microsoft/xbox/toolkit/XLEFileCache;->size:I

    .line 21
    iput v0, p0, Lcom/microsoft/xbox/toolkit/XLEFileCache;->readAccessCnt:I

    .line 22
    iput v0, p0, Lcom/microsoft/xbox/toolkit/XLEFileCache;->writeAccessCnt:I

    .line 23
    iput v0, p0, Lcom/microsoft/xbox/toolkit/XLEFileCache;->readSuccessfulCnt:I

    const-wide v1, 0x7fffffffffffffffL

    .line 29
    iput-wide v1, p0, Lcom/microsoft/xbox/toolkit/XLEFileCache;->expiredTimer:J

    .line 30
    iput v0, p0, Lcom/microsoft/xbox/toolkit/XLEFileCache;->maxFileNumber:I

    .line 31
    iput-boolean v0, p0, Lcom/microsoft/xbox/toolkit/XLEFileCache;->enabled:Z

    return-void
.end method

.method constructor <init>(Ljava/lang/String;I)V
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    .line 35
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/microsoft/xbox/toolkit/XLEFileCache;-><init>(Ljava/lang/String;IJ)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;IJ)V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 19
    iput p1, p0, Lcom/microsoft/xbox/toolkit/XLEFileCache;->size:I

    const/4 v0, 0x1

    .line 20
    iput-boolean v0, p0, Lcom/microsoft/xbox/toolkit/XLEFileCache;->enabled:Z

    .line 21
    iput p1, p0, Lcom/microsoft/xbox/toolkit/XLEFileCache;->readAccessCnt:I

    .line 22
    iput p1, p0, Lcom/microsoft/xbox/toolkit/XLEFileCache;->writeAccessCnt:I

    .line 23
    iput p1, p0, Lcom/microsoft/xbox/toolkit/XLEFileCache;->readSuccessfulCnt:I

    .line 39
    iput p2, p0, Lcom/microsoft/xbox/toolkit/XLEFileCache;->maxFileNumber:I

    .line 40
    iput-wide p3, p0, Lcom/microsoft/xbox/toolkit/XLEFileCache;->expiredTimer:J

    return-void
.end method

.method static synthetic access$000(Ljava/io/InputStream;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 17
    invoke-static {p0}, Lcom/microsoft/xbox/toolkit/XLEFileCache;->readInt(Ljava/io/InputStream;)I

    move-result p0

    return p0
.end method

.method private checkAndEnsureCapacity()V
    .locals 3

    .line 137
    iget v0, p0, Lcom/microsoft/xbox/toolkit/XLEFileCache;->size:I

    iget v1, p0, Lcom/microsoft/xbox/toolkit/XLEFileCache;->maxFileNumber:I

    if-lt v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/microsoft/xbox/toolkit/XLEFileCache;->enabled:Z

    if-eqz v0, :cond_0

    .line 139
    invoke-static {p0}, Lcom/microsoft/xbox/toolkit/XLEFileCacheManager;->getCacheRootDir(Lcom/microsoft/xbox/toolkit/XLEFileCache;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 140
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 141
    aget-object v1, v0, v1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 142
    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/microsoft/xbox/toolkit/XLEFileCache;->size:I

    :cond_0
    return-void
.end method

.method private getCachedItemFileName(Lcom/microsoft/xbox/toolkit/XLEFileCacheItemKey;)Ljava/lang/String;
    .locals 0

    .line 147
    invoke-interface {p1}, Lcom/microsoft/xbox/toolkit/XLEFileCacheItemKey;->getKeyString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static readInt(Ljava/io/InputStream;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 266
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 267
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 268
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 269
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p0

    or-int v3, v0, v1

    or-int/2addr v3, v2

    or-int/2addr v3, p0

    if-ltz v3, :cond_0

    shl-int/lit8 v0, v0, 0x18

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    shl-int/lit8 v1, v2, 0x8

    add-int/2addr v0, v1

    add-int/2addr v0, p0

    return v0

    .line 271
    :cond_0
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method


# virtual methods
.method public declared-synchronized contains(Lcom/microsoft/xbox/toolkit/XLEFileCacheItemKey;)Z
    .locals 2

    monitor-enter p0

    .line 48
    :try_start_0
    iget-boolean v0, p0, Lcom/microsoft/xbox/toolkit/XLEFileCache;->enabled:Z

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 49
    monitor-exit p0

    const/4 p1, 0x0

    return p1

    .line 51
    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/microsoft/xbox/toolkit/XLEFileCacheManager;->getCacheRootDir(Lcom/microsoft/xbox/toolkit/XLEFileCache;)Ljava/io/File;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/microsoft/xbox/toolkit/XLEFileCache;->getCachedItemFileName(Lcom/microsoft/xbox/toolkit/XLEFileCacheItemKey;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 52
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0

    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public declared-synchronized getInputStreamForRead(Lcom/microsoft/xbox/toolkit/XLEFileCacheItemKey;)Ljava/io/InputStream;
    .locals 10

    monitor-enter p0

    .line 92
    :try_start_0
    iget-boolean v0, p0, Lcom/microsoft/xbox/toolkit/XLEFileCache;->enabled:Z

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 93
    monitor-exit p0

    return-object v1

    .line 95
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v2, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    const/4 v3, 0x1

    if-eq v0, v2, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    .line 96
    iget v0, p0, Lcom/microsoft/xbox/toolkit/XLEFileCache;->readAccessCnt:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/microsoft/xbox/toolkit/XLEFileCache;->readAccessCnt:I

    .line 97
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/microsoft/xbox/toolkit/XLEFileCacheManager;->getCacheRootDir(Lcom/microsoft/xbox/toolkit/XLEFileCache;)Ljava/io/File;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/microsoft/xbox/toolkit/XLEFileCache;->getCachedItemFileName(Lcom/microsoft/xbox/toolkit/XLEFileCacheItemKey;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 98
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 99
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/microsoft/xbox/toolkit/XLEFileCache;->expiredTimer:J

    sub-long/2addr v6, v8

    cmp-long v2, v4, v6

    if-gez v2, :cond_2

    .line 100
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 101
    iget p1, p0, Lcom/microsoft/xbox/toolkit/XLEFileCache;->size:I

    sub-int/2addr p1, v3

    iput p1, p0, Lcom/microsoft/xbox/toolkit/XLEFileCache;->size:I

    .line 102
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1

    .line 106
    :cond_2
    :try_start_2
    new-instance v2, Lcom/microsoft/xbox/toolkit/XLEFileCache$CachedFileInputStreamItem;

    invoke-direct {v2, p0, p1, v0}, Lcom/microsoft/xbox/toolkit/XLEFileCache$CachedFileInputStreamItem;-><init>(Lcom/microsoft/xbox/toolkit/XLEFileCache;Lcom/microsoft/xbox/toolkit/XLEFileCacheItemKey;Ljava/io/File;)V

    .line 107
    invoke-virtual {v2}, Lcom/microsoft/xbox/toolkit/XLEFileCache$CachedFileInputStreamItem;->getContentInputStream()Ljava/io/InputStream;

    move-result-object p1

    .line 108
    iget v0, p0, Lcom/microsoft/xbox/toolkit/XLEFileCache;->readSuccessfulCnt:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/microsoft/xbox/toolkit/XLEFileCache;->readSuccessfulCnt:I

    .line 109
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    .line 113
    :catch_0
    :cond_3
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit p0

    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public getItemsInCache()I
    .locals 1

    .line 44
    iget v0, p0, Lcom/microsoft/xbox/toolkit/XLEFileCache;->size:I

    return v0
.end method

.method public declared-synchronized getOuputStreamForSave(Lcom/microsoft/xbox/toolkit/XLEFileCacheItemKey;)Ljava/io/OutputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 56
    :try_start_0
    iget-boolean v0, p0, Lcom/microsoft/xbox/toolkit/XLEFileCache;->enabled:Z

    if-nez v0, :cond_0

    .line 57
    new-instance p1, Lcom/microsoft/xbox/toolkit/XLEFileCache$1;

    invoke-direct {p1, p0}, Lcom/microsoft/xbox/toolkit/XLEFileCache$1;-><init>(Lcom/microsoft/xbox/toolkit/XLEFileCache;)V

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 65
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    .line 66
    iget v0, p0, Lcom/microsoft/xbox/toolkit/XLEFileCache;->writeAccessCnt:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/microsoft/xbox/toolkit/XLEFileCache;->writeAccessCnt:I

    .line 67
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/XLEFileCache;->checkAndEnsureCapacity()V

    .line 69
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/microsoft/xbox/toolkit/XLEFileCacheManager;->getCacheRootDir(Lcom/microsoft/xbox/toolkit/XLEFileCache;)Ljava/io/File;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/microsoft/xbox/toolkit/XLEFileCache;->getCachedItemFileName(Lcom/microsoft/xbox/toolkit/XLEFileCacheItemKey;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 70
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 71
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 72
    iget v1, p0, Lcom/microsoft/xbox/toolkit/XLEFileCache;->size:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/microsoft/xbox/toolkit/XLEFileCache;->size:I

    .line 74
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 76
    iget v1, p0, Lcom/microsoft/xbox/toolkit/XLEFileCache;->size:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/microsoft/xbox/toolkit/XLEFileCache;->size:I

    .line 78
    :cond_3
    new-instance v1, Lcom/microsoft/xbox/toolkit/XLEFileCache$CachedFileOutputStreamItem;

    invoke-direct {v1, p0, p1, v0}, Lcom/microsoft/xbox/toolkit/XLEFileCache$CachedFileOutputStreamItem;-><init>(Lcom/microsoft/xbox/toolkit/XLEFileCache;Lcom/microsoft/xbox/toolkit/XLEFileCacheItemKey;Ljava/io/File;)V

    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0

    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public declared-synchronized save(Lcom/microsoft/xbox/toolkit/XLEFileCacheItemKey;Ljava/io/InputStream;)V
    .locals 0

    monitor-enter p0

    .line 84
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/toolkit/XLEFileCache;->getOuputStreamForSave(Lcom/microsoft/xbox/toolkit/XLEFileCacheItemKey;)Ljava/io/OutputStream;

    move-result-object p1

    .line 85
    invoke-static {p1, p2}, Lcom/microsoft/xbox/toolkit/StreamUtil;->CopyStream(Ljava/io/OutputStream;Ljava/io/InputStream;)V

    .line 86
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0

    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 89
    :catch_0
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Size="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 119
    iget v1, p0, Lcom/microsoft/xbox/toolkit/XLEFileCache;->size:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 120
    const-string v1, "\tRootDir="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-static {p0}, Lcom/microsoft/xbox/toolkit/XLEFileCacheManager;->getCacheRootDir(Lcom/microsoft/xbox/toolkit/XLEFileCache;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 122
    const-string v1, "\tMaxFileNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    iget v1, p0, Lcom/microsoft/xbox/toolkit/XLEFileCache;->maxFileNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 124
    const-string v1, "\tExpiredTimerInSeconds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    iget-wide v1, p0, Lcom/microsoft/xbox/toolkit/XLEFileCache;->expiredTimer:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 126
    const-string v1, "\tWriteAccessCnt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    iget v1, p0, Lcom/microsoft/xbox/toolkit/XLEFileCache;->writeAccessCnt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 128
    const-string v1, "\tReadAccessCnt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    iget v1, p0, Lcom/microsoft/xbox/toolkit/XLEFileCache;->readAccessCnt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 130
    const-string v1, "\tReadSuccessfulCnt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    iget v1, p0, Lcom/microsoft/xbox/toolkit/XLEFileCache;->readSuccessfulCnt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 133
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
