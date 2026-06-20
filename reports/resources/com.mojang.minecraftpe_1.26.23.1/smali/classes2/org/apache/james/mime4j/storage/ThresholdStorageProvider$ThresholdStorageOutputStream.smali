.class final Lorg/apache/james/mime4j/storage/ThresholdStorageProvider$ThresholdStorageOutputStream;
.super Lorg/apache/james/mime4j/storage/StorageOutputStream;
.source "ThresholdStorageProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/james/mime4j/storage/ThresholdStorageProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ThresholdStorageOutputStream"
.end annotation


# instance fields
.field private final head:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

.field private tail:Lorg/apache/james/mime4j/storage/StorageOutputStream;

.field final synthetic this$0:Lorg/apache/james/mime4j/storage/ThresholdStorageProvider;


# direct methods
.method public constructor <init>(Lorg/apache/james/mime4j/storage/ThresholdStorageProvider;)V
    .locals 1

    .line 87
    iput-object p1, p0, Lorg/apache/james/mime4j/storage/ThresholdStorageProvider$ThresholdStorageOutputStream;->this$0:Lorg/apache/james/mime4j/storage/ThresholdStorageProvider;

    invoke-direct {p0}, Lorg/apache/james/mime4j/storage/StorageOutputStream;-><init>()V

    .line 88
    invoke-static {p1}, Lorg/apache/james/mime4j/storage/ThresholdStorageProvider;->access$000(Lorg/apache/james/mime4j/storage/ThresholdStorageProvider;)I

    move-result p1

    const/16 v0, 0x400

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 89
    new-instance v0, Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-direct {v0, p1}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/apache/james/mime4j/storage/ThresholdStorageProvider$ThresholdStorageOutputStream;->head:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

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

    .line 94
    invoke-super {p0}, Lorg/apache/james/mime4j/storage/StorageOutputStream;->close()V

    .line 96
    iget-object v0, p0, Lorg/apache/james/mime4j/storage/ThresholdStorageProvider$ThresholdStorageOutputStream;->tail:Lorg/apache/james/mime4j/storage/StorageOutputStream;

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {v0}, Lorg/apache/james/mime4j/storage/StorageOutputStream;->close()V

    :cond_0
    return-void
.end method

.method protected toStorage0()Lorg/apache/james/mime4j/storage/Storage;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lorg/apache/james/mime4j/storage/ThresholdStorageProvider$ThresholdStorageOutputStream;->tail:Lorg/apache/james/mime4j/storage/StorageOutputStream;

    if-nez v0, :cond_0

    .line 122
    new-instance v0, Lorg/apache/james/mime4j/storage/MemoryStorageProvider$MemoryStorage;

    iget-object v1, p0, Lorg/apache/james/mime4j/storage/ThresholdStorageProvider$ThresholdStorageOutputStream;->head:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->buffer()[B

    move-result-object v1

    iget-object v2, p0, Lorg/apache/james/mime4j/storage/ThresholdStorageProvider$ThresholdStorageOutputStream;->head:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->length()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/apache/james/mime4j/storage/MemoryStorageProvider$MemoryStorage;-><init>([BI)V

    return-object v0

    .line 125
    :cond_0
    new-instance v0, Lorg/apache/james/mime4j/storage/ThresholdStorageProvider$ThresholdStorage;

    iget-object v1, p0, Lorg/apache/james/mime4j/storage/ThresholdStorageProvider$ThresholdStorageOutputStream;->head:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->buffer()[B

    move-result-object v1

    iget-object v2, p0, Lorg/apache/james/mime4j/storage/ThresholdStorageProvider$ThresholdStorageOutputStream;->head:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->length()I

    move-result v2

    iget-object v3, p0, Lorg/apache/james/mime4j/storage/ThresholdStorageProvider$ThresholdStorageOutputStream;->tail:Lorg/apache/james/mime4j/storage/StorageOutputStream;

    invoke-virtual {v3}, Lorg/apache/james/mime4j/storage/StorageOutputStream;->toStorage()Lorg/apache/james/mime4j/storage/Storage;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/james/mime4j/storage/ThresholdStorageProvider$ThresholdStorage;-><init>([BILorg/apache/james/mime4j/storage/Storage;)V

    return-object v0
.end method

.method protected write0([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lorg/apache/james/mime4j/storage/ThresholdStorageProvider$ThresholdStorageOutputStream;->this$0:Lorg/apache/james/mime4j/storage/ThresholdStorageProvider;

    invoke-static {v0}, Lorg/apache/james/mime4j/storage/ThresholdStorageProvider;->access$000(Lorg/apache/james/mime4j/storage/ThresholdStorageProvider;)I

    move-result v0

    iget-object v1, p0, Lorg/apache/james/mime4j/storage/ThresholdStorageProvider$ThresholdStorageOutputStream;->head:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->length()I

    move-result v1

    sub-int/2addr v0, v1

    if-lez v0, :cond_0

    .line 105
    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 106
    iget-object v1, p0, Lorg/apache/james/mime4j/storage/ThresholdStorageProvider$ThresholdStorageOutputStream;->head:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-virtual {v1, p1, p2, v0}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->append([BII)V

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    :cond_0
    if-lez p3, :cond_2

    .line 112
    iget-object v0, p0, Lorg/apache/james/mime4j/storage/ThresholdStorageProvider$ThresholdStorageOutputStream;->tail:Lorg/apache/james/mime4j/storage/StorageOutputStream;

    if-nez v0, :cond_1

    .line 113
    iget-object v0, p0, Lorg/apache/james/mime4j/storage/ThresholdStorageProvider$ThresholdStorageOutputStream;->this$0:Lorg/apache/james/mime4j/storage/ThresholdStorageProvider;

    invoke-static {v0}, Lorg/apache/james/mime4j/storage/ThresholdStorageProvider;->access$100(Lorg/apache/james/mime4j/storage/ThresholdStorageProvider;)Lorg/apache/james/mime4j/storage/StorageProvider;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/james/mime4j/storage/StorageProvider;->createStorageOutputStream()Lorg/apache/james/mime4j/storage/StorageOutputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/james/mime4j/storage/ThresholdStorageProvider$ThresholdStorageOutputStream;->tail:Lorg/apache/james/mime4j/storage/StorageOutputStream;

    .line 115
    :cond_1
    iget-object v0, p0, Lorg/apache/james/mime4j/storage/ThresholdStorageProvider$ThresholdStorageOutputStream;->tail:Lorg/apache/james/mime4j/storage/StorageOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/james/mime4j/storage/StorageOutputStream;->write([BII)V

    :cond_2
    return-void
.end method
