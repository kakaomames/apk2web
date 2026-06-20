.class Lorg/apache/james/mime4j/message/StorageTextBody;
.super Lorg/apache/james/mime4j/message/TextBody;
.source "StorageTextBody.java"


# instance fields
.field private charset:Ljava/nio/charset/Charset;

.field private storage:Lorg/apache/james/mime4j/storage/MultiReferenceStorage;


# direct methods
.method public constructor <init>(Lorg/apache/james/mime4j/storage/MultiReferenceStorage;Ljava/nio/charset/Charset;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lorg/apache/james/mime4j/message/TextBody;-><init>()V

    .line 42
    iput-object p1, p0, Lorg/apache/james/mime4j/message/StorageTextBody;->storage:Lorg/apache/james/mime4j/storage/MultiReferenceStorage;

    .line 43
    iput-object p2, p0, Lorg/apache/james/mime4j/message/StorageTextBody;->charset:Ljava/nio/charset/Charset;

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/james/mime4j/message/SingleBody;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/StorageTextBody;->copy()Lorg/apache/james/mime4j/message/StorageTextBody;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lorg/apache/james/mime4j/message/StorageTextBody;
    .locals 3

    .line 68
    iget-object v0, p0, Lorg/apache/james/mime4j/message/StorageTextBody;->storage:Lorg/apache/james/mime4j/storage/MultiReferenceStorage;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/storage/MultiReferenceStorage;->addReference()V

    .line 69
    new-instance v0, Lorg/apache/james/mime4j/message/StorageTextBody;

    iget-object v1, p0, Lorg/apache/james/mime4j/message/StorageTextBody;->storage:Lorg/apache/james/mime4j/storage/MultiReferenceStorage;

    iget-object v2, p0, Lorg/apache/james/mime4j/message/StorageTextBody;->charset:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Lorg/apache/james/mime4j/message/StorageTextBody;-><init>(Lorg/apache/james/mime4j/storage/MultiReferenceStorage;Ljava/nio/charset/Charset;)V

    return-object v0
.end method

.method public dispose()V
    .locals 1

    .line 79
    iget-object v0, p0, Lorg/apache/james/mime4j/message/StorageTextBody;->storage:Lorg/apache/james/mime4j/storage/MultiReferenceStorage;

    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {v0}, Lorg/apache/james/mime4j/storage/MultiReferenceStorage;->delete()V

    const/4 v0, 0x0

    .line 81
    iput-object v0, p0, Lorg/apache/james/mime4j/message/StorageTextBody;->storage:Lorg/apache/james/mime4j/storage/MultiReferenceStorage;

    :cond_0
    return-void
.end method

.method public getMimeCharset()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lorg/apache/james/mime4j/message/StorageTextBody;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/james/mime4j/util/CharsetUtil;->toMimeCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReader()Ljava/io/Reader;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    new-instance v0, Ljava/io/InputStreamReader;

    iget-object v1, p0, Lorg/apache/james/mime4j/message/StorageTextBody;->storage:Lorg/apache/james/mime4j/storage/MultiReferenceStorage;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/storage/MultiReferenceStorage;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/james/mime4j/message/StorageTextBody;->charset:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

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

    .line 61
    iget-object v0, p0, Lorg/apache/james/mime4j/message/StorageTextBody;->storage:Lorg/apache/james/mime4j/storage/MultiReferenceStorage;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/storage/MultiReferenceStorage;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 62
    invoke-static {v0, p1}, Lorg/apache/james/mime4j/codec/CodecUtil;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 63
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void

    .line 59
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method
