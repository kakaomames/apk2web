.class public Lorg/apache/james/mime4j/storage/MultiReferenceStorage;
.super Ljava/lang/Object;
.source "MultiReferenceStorage.java"

# interfaces
.implements Lorg/apache/james/mime4j/storage/Storage;


# instance fields
.field private referenceCounter:I

.field private final storage:Lorg/apache/james/mime4j/storage/Storage;


# direct methods
.method public constructor <init>(Lorg/apache/james/mime4j/storage/Storage;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 64
    iput-object p1, p0, Lorg/apache/james/mime4j/storage/MultiReferenceStorage;->storage:Lorg/apache/james/mime4j/storage/Storage;

    const/4 p1, 0x1

    .line 65
    iput p1, p0, Lorg/apache/james/mime4j/storage/MultiReferenceStorage;->referenceCounter:I

    return-void

    .line 62
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method private declared-synchronized decrementCounter()Z
    .locals 2

    monitor-enter p0

    .line 126
    :try_start_0
    iget v0, p0, Lorg/apache/james/mime4j/storage/MultiReferenceStorage;->referenceCounter:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 129
    iput v0, p0, Lorg/apache/james/mime4j/storage/MultiReferenceStorage;->referenceCounter:I

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit p0

    return v1

    .line 127
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "storage has been deleted"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private declared-synchronized incrementCounter()V
    .locals 2

    monitor-enter p0

    .line 112
    :try_start_0
    iget v0, p0, Lorg/apache/james/mime4j/storage/MultiReferenceStorage;->referenceCounter:I

    if-eqz v0, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 115
    iput v0, p0, Lorg/apache/james/mime4j/storage/MultiReferenceStorage;->referenceCounter:I

    .line 116
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 113
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "storage has been deleted"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public addReference()V
    .locals 0

    .line 76
    invoke-direct {p0}, Lorg/apache/james/mime4j/storage/MultiReferenceStorage;->incrementCounter()V

    return-void
.end method

.method public delete()V
    .locals 1

    .line 91
    invoke-direct {p0}, Lorg/apache/james/mime4j/storage/MultiReferenceStorage;->decrementCounter()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lorg/apache/james/mime4j/storage/MultiReferenceStorage;->storage:Lorg/apache/james/mime4j/storage/Storage;

    invoke-interface {v0}, Lorg/apache/james/mime4j/storage/Storage;->delete()V

    :cond_0
    return-void
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lorg/apache/james/mime4j/storage/MultiReferenceStorage;->storage:Lorg/apache/james/mime4j/storage/Storage;

    invoke-interface {v0}, Lorg/apache/james/mime4j/storage/Storage;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
