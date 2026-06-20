.class public abstract Lorg/apache/james/mime4j/storage/StorageOutputStream;
.super Ljava/io/OutputStream;
.source "StorageOutputStream.java"


# instance fields
.field private closed:Z

.field private singleByte:[B

.field private usedUp:Z


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 134
    iput-boolean v0, p0, Lorg/apache/james/mime4j/storage/StorageOutputStream;->closed:Z

    return-void
.end method

.method public final toStorage()Lorg/apache/james/mime4j/storage/Storage;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    iget-boolean v0, p0, Lorg/apache/james/mime4j/storage/StorageOutputStream;->usedUp:Z

    if-nez v0, :cond_1

    .line 71
    iget-boolean v0, p0, Lorg/apache/james/mime4j/storage/StorageOutputStream;->closed:Z

    if-nez v0, :cond_0

    .line 72
    invoke-virtual {p0}, Lorg/apache/james/mime4j/storage/StorageOutputStream;->close()V

    :cond_0
    const/4 v0, 0x1

    .line 74
    iput-boolean v0, p0, Lorg/apache/james/mime4j/storage/StorageOutputStream;->usedUp:Z

    .line 75
    invoke-virtual {p0}, Lorg/apache/james/mime4j/storage/StorageOutputStream;->toStorage0()Lorg/apache/james/mime4j/storage/Storage;

    move-result-object v0

    return-object v0

    .line 68
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "toStorage may be invoked only once"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected abstract toStorage0()Lorg/apache/james/mime4j/storage/Storage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final write(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 80
    iget-boolean v0, p0, Lorg/apache/james/mime4j/storage/StorageOutputStream;->closed:Z

    if-nez v0, :cond_1

    .line 83
    iget-object v0, p0, Lorg/apache/james/mime4j/storage/StorageOutputStream;->singleByte:[B

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 84
    new-array v0, v1, [B

    iput-object v0, p0, Lorg/apache/james/mime4j/storage/StorageOutputStream;->singleByte:[B

    .line 86
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/storage/StorageOutputStream;->singleByte:[B

    int-to-byte p1, p1

    const/4 v2, 0x0

    aput-byte p1, v0, v2

    .line 87
    invoke-virtual {p0, v0, v2, v1}, Lorg/apache/james/mime4j/storage/StorageOutputStream;->write0([BII)V

    return-void

    .line 81
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "StorageOutputStream has been closed"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final write([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    iget-boolean v0, p0, Lorg/apache/james/mime4j/storage/StorageOutputStream;->closed:Z

    if-nez v0, :cond_1

    .line 96
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 98
    array-length v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 101
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/james/mime4j/storage/StorageOutputStream;->write0([BII)V

    return-void

    .line 93
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "StorageOutputStream has been closed"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final write([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 107
    iget-boolean v0, p0, Lorg/apache/james/mime4j/storage/StorageOutputStream;->closed:Z

    if-nez v0, :cond_2

    .line 111
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ltz p2, :cond_1

    if-ltz p3, :cond_1

    add-int v0, p2, p3

    .line 113
    array-length v1, p1

    if-gt v0, v1, :cond_1

    if-nez p3, :cond_0

    return-void

    .line 119
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/james/mime4j/storage/StorageOutputStream;->write0([BII)V

    return-void

    .line 114
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    .line 108
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "StorageOutputStream has been closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected abstract write0([BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
