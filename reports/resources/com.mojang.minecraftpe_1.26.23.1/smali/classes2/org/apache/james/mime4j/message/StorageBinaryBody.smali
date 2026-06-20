.class Lorg/apache/james/mime4j/message/StorageBinaryBody;
.super Lorg/apache/james/mime4j/message/BinaryBody;
.source "StorageBinaryBody.java"


# instance fields
.field private storage:Lorg/apache/james/mime4j/storage/MultiReferenceStorage;


# direct methods
.method public constructor <init>(Lorg/apache/james/mime4j/storage/MultiReferenceStorage;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lorg/apache/james/mime4j/message/BinaryBody;-><init>()V

    .line 38
    iput-object p1, p0, Lorg/apache/james/mime4j/message/StorageBinaryBody;->storage:Lorg/apache/james/mime4j/storage/MultiReferenceStorage;

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/james/mime4j/message/SingleBody;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/StorageBinaryBody;->copy()Lorg/apache/james/mime4j/message/StorageBinaryBody;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lorg/apache/james/mime4j/message/StorageBinaryBody;
    .locals 2

    .line 58
    iget-object v0, p0, Lorg/apache/james/mime4j/message/StorageBinaryBody;->storage:Lorg/apache/james/mime4j/storage/MultiReferenceStorage;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/storage/MultiReferenceStorage;->addReference()V

    .line 59
    new-instance v0, Lorg/apache/james/mime4j/message/StorageBinaryBody;

    iget-object v1, p0, Lorg/apache/james/mime4j/message/StorageBinaryBody;->storage:Lorg/apache/james/mime4j/storage/MultiReferenceStorage;

    invoke-direct {v0, v1}, Lorg/apache/james/mime4j/message/StorageBinaryBody;-><init>(Lorg/apache/james/mime4j/storage/MultiReferenceStorage;)V

    return-object v0
.end method

.method public dispose()V
    .locals 1

    .line 69
    iget-object v0, p0, Lorg/apache/james/mime4j/message/StorageBinaryBody;->storage:Lorg/apache/james/mime4j/storage/MultiReferenceStorage;

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {v0}, Lorg/apache/james/mime4j/storage/MultiReferenceStorage;->delete()V

    const/4 v0, 0x0

    .line 71
    iput-object v0, p0, Lorg/apache/james/mime4j/message/StorageBinaryBody;->storage:Lorg/apache/james/mime4j/storage/MultiReferenceStorage;

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

    .line 43
    iget-object v0, p0, Lorg/apache/james/mime4j/message/StorageBinaryBody;->storage:Lorg/apache/james/mime4j/storage/MultiReferenceStorage;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/storage/MultiReferenceStorage;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 51
    iget-object v0, p0, Lorg/apache/james/mime4j/message/StorageBinaryBody;->storage:Lorg/apache/james/mime4j/storage/MultiReferenceStorage;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/storage/MultiReferenceStorage;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 52
    invoke-static {v0, p1}, Lorg/apache/james/mime4j/codec/CodecUtil;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 53
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void

    .line 49
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method
