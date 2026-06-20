.class public Lorg/apache/james/mime4j/message/BodyFactory;
.super Ljava/lang/Object;
.source "BodyFactory.java"


# static fields
.field private static final FALLBACK_CHARSET:Ljava/nio/charset/Charset;

.field private static log:Lorg/apache/commons/logging/Log;


# instance fields
.field private storageProvider:Lorg/apache/james/mime4j/storage/StorageProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    const-class v0, Lorg/apache/james/mime4j/message/BodyFactory;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/message/BodyFactory;->log:Lorg/apache/commons/logging/Log;

    .line 41
    sget-object v0, Lorg/apache/james/mime4j/util/CharsetUtil;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    sput-object v0, Lorg/apache/james/mime4j/message/BodyFactory;->FALLBACK_CHARSET:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-static {}, Lorg/apache/james/mime4j/storage/DefaultStorageProvider;->getInstance()Lorg/apache/james/mime4j/storage/StorageProvider;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/james/mime4j/message/BodyFactory;->storageProvider:Lorg/apache/james/mime4j/storage/StorageProvider;

    return-void
.end method

.method public constructor <init>(Lorg/apache/james/mime4j/storage/StorageProvider;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    .line 63
    invoke-static {}, Lorg/apache/james/mime4j/storage/DefaultStorageProvider;->getInstance()Lorg/apache/james/mime4j/storage/StorageProvider;

    move-result-object p1

    .line 65
    :cond_0
    iput-object p1, p0, Lorg/apache/james/mime4j/message/BodyFactory;->storageProvider:Lorg/apache/james/mime4j/storage/StorageProvider;

    return-void
.end method

.method private static toJavaCharset(Ljava/lang/String;Z)Ljava/nio/charset/Charset;
    .locals 4

    .line 282
    invoke-static {p0}, Lorg/apache/james/mime4j/util/CharsetUtil;->toJavaCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 283
    const-string v1, " instead."

    const-string v2, "MIME charset \'"

    if-nez v0, :cond_1

    .line 284
    sget-object p1, Lorg/apache/james/mime4j/message/BodyFactory;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {p1}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 285
    sget-object p1, Lorg/apache/james/mime4j/message/BodyFactory;->log:Lorg/apache/commons/logging/Log;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "\' has no corresponding Java charset. Using "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-object v0, Lorg/apache/james/mime4j/message/BodyFactory;->FALLBACK_CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 288
    :cond_0
    sget-object p0, Lorg/apache/james/mime4j/message/BodyFactory;->FALLBACK_CHARSET:Ljava/nio/charset/Charset;

    return-object p0

    :cond_1
    if-eqz p1, :cond_3

    .line 291
    invoke-static {v0}, Lorg/apache/james/mime4j/util/CharsetUtil;->isEncodingSupported(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 292
    sget-object p1, Lorg/apache/james/mime4j/message/BodyFactory;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {p1}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 293
    sget-object p1, Lorg/apache/james/mime4j/message/BodyFactory;->log:Lorg/apache/commons/logging/Log;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "\' does not support encoding. Using "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-object v0, Lorg/apache/james/mime4j/message/BodyFactory;->FALLBACK_CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 296
    :cond_2
    sget-object p0, Lorg/apache/james/mime4j/message/BodyFactory;->FALLBACK_CHARSET:Ljava/nio/charset/Charset;

    return-object p0

    :cond_3
    if-nez p1, :cond_5

    .line 299
    invoke-static {v0}, Lorg/apache/james/mime4j/util/CharsetUtil;->isDecodingSupported(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 300
    sget-object p1, Lorg/apache/james/mime4j/message/BodyFactory;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {p1}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 301
    sget-object p1, Lorg/apache/james/mime4j/message/BodyFactory;->log:Lorg/apache/commons/logging/Log;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "\' does not support decoding. Using "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-object v0, Lorg/apache/james/mime4j/message/BodyFactory;->FALLBACK_CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 304
    :cond_4
    sget-object p0, Lorg/apache/james/mime4j/message/BodyFactory;->FALLBACK_CHARSET:Ljava/nio/charset/Charset;

    return-object p0

    .line 307
    :cond_5
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public binaryBody(Ljava/io/InputStream;)Lorg/apache/james/mime4j/message/BinaryBody;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 92
    iget-object v0, p0, Lorg/apache/james/mime4j/message/BodyFactory;->storageProvider:Lorg/apache/james/mime4j/storage/StorageProvider;

    invoke-interface {v0, p1}, Lorg/apache/james/mime4j/storage/StorageProvider;->store(Ljava/io/InputStream;)Lorg/apache/james/mime4j/storage/Storage;

    move-result-object p1

    .line 93
    new-instance v0, Lorg/apache/james/mime4j/message/StorageBinaryBody;

    new-instance v1, Lorg/apache/james/mime4j/storage/MultiReferenceStorage;

    invoke-direct {v1, p1}, Lorg/apache/james/mime4j/storage/MultiReferenceStorage;-><init>(Lorg/apache/james/mime4j/storage/Storage;)V

    invoke-direct {v0, v1}, Lorg/apache/james/mime4j/message/StorageBinaryBody;-><init>(Lorg/apache/james/mime4j/storage/MultiReferenceStorage;)V

    return-object v0

    .line 90
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public binaryBody(Lorg/apache/james/mime4j/storage/Storage;)Lorg/apache/james/mime4j/message/BinaryBody;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 116
    new-instance v0, Lorg/apache/james/mime4j/message/StorageBinaryBody;

    new-instance v1, Lorg/apache/james/mime4j/storage/MultiReferenceStorage;

    invoke-direct {v1, p1}, Lorg/apache/james/mime4j/storage/MultiReferenceStorage;-><init>(Lorg/apache/james/mime4j/storage/Storage;)V

    invoke-direct {v0, v1}, Lorg/apache/james/mime4j/message/StorageBinaryBody;-><init>(Lorg/apache/james/mime4j/storage/MultiReferenceStorage;)V

    return-object v0

    .line 114
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public getStorageProvider()Lorg/apache/james/mime4j/storage/StorageProvider;
    .locals 1

    .line 75
    iget-object v0, p0, Lorg/apache/james/mime4j/message/BodyFactory;->storageProvider:Lorg/apache/james/mime4j/storage/StorageProvider;

    return-object v0
.end method

.method public textBody(Ljava/io/InputStream;)Lorg/apache/james/mime4j/message/TextBody;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 137
    iget-object v0, p0, Lorg/apache/james/mime4j/message/BodyFactory;->storageProvider:Lorg/apache/james/mime4j/storage/StorageProvider;

    invoke-interface {v0, p1}, Lorg/apache/james/mime4j/storage/StorageProvider;->store(Ljava/io/InputStream;)Lorg/apache/james/mime4j/storage/Storage;

    move-result-object p1

    .line 138
    new-instance v0, Lorg/apache/james/mime4j/message/StorageTextBody;

    new-instance v1, Lorg/apache/james/mime4j/storage/MultiReferenceStorage;

    invoke-direct {v1, p1}, Lorg/apache/james/mime4j/storage/MultiReferenceStorage;-><init>(Lorg/apache/james/mime4j/storage/Storage;)V

    sget-object p1, Lorg/apache/james/mime4j/util/CharsetUtil;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, p1}, Lorg/apache/james/mime4j/message/StorageTextBody;-><init>(Lorg/apache/james/mime4j/storage/MultiReferenceStorage;Ljava/nio/charset/Charset;)V

    return-object v0

    .line 135
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public textBody(Ljava/io/InputStream;Ljava/lang/String;)Lorg/apache/james/mime4j/message/TextBody;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 167
    iget-object v0, p0, Lorg/apache/james/mime4j/message/BodyFactory;->storageProvider:Lorg/apache/james/mime4j/storage/StorageProvider;

    invoke-interface {v0, p1}, Lorg/apache/james/mime4j/storage/StorageProvider;->store(Ljava/io/InputStream;)Lorg/apache/james/mime4j/storage/Storage;

    move-result-object p1

    const/4 v0, 0x0

    .line 168
    invoke-static {p2, v0}, Lorg/apache/james/mime4j/message/BodyFactory;->toJavaCharset(Ljava/lang/String;Z)Ljava/nio/charset/Charset;

    move-result-object p2

    .line 169
    new-instance v0, Lorg/apache/james/mime4j/message/StorageTextBody;

    new-instance v1, Lorg/apache/james/mime4j/storage/MultiReferenceStorage;

    invoke-direct {v1, p1}, Lorg/apache/james/mime4j/storage/MultiReferenceStorage;-><init>(Lorg/apache/james/mime4j/storage/Storage;)V

    invoke-direct {v0, v1, p2}, Lorg/apache/james/mime4j/message/StorageTextBody;-><init>(Lorg/apache/james/mime4j/storage/MultiReferenceStorage;Ljava/nio/charset/Charset;)V

    return-object v0

    .line 165
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 163
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public textBody(Ljava/lang/String;)Lorg/apache/james/mime4j/message/TextBody;
    .locals 2

    if-eqz p1, :cond_0

    .line 252
    new-instance v0, Lorg/apache/james/mime4j/message/StringTextBody;

    sget-object v1, Lorg/apache/james/mime4j/util/CharsetUtil;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1}, Lorg/apache/james/mime4j/message/StringTextBody;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    return-object v0

    .line 250
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public textBody(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/james/mime4j/message/TextBody;
    .locals 1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    .line 277
    invoke-static {p2, v0}, Lorg/apache/james/mime4j/message/BodyFactory;->toJavaCharset(Ljava/lang/String;Z)Ljava/nio/charset/Charset;

    move-result-object p2

    .line 278
    new-instance v0, Lorg/apache/james/mime4j/message/StringTextBody;

    invoke-direct {v0, p1, p2}, Lorg/apache/james/mime4j/message/StringTextBody;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    return-object v0

    .line 275
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 273
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public textBody(Lorg/apache/james/mime4j/storage/Storage;)Lorg/apache/james/mime4j/message/TextBody;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 196
    new-instance v0, Lorg/apache/james/mime4j/message/StorageTextBody;

    new-instance v1, Lorg/apache/james/mime4j/storage/MultiReferenceStorage;

    invoke-direct {v1, p1}, Lorg/apache/james/mime4j/storage/MultiReferenceStorage;-><init>(Lorg/apache/james/mime4j/storage/Storage;)V

    sget-object p1, Lorg/apache/james/mime4j/util/CharsetUtil;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, p1}, Lorg/apache/james/mime4j/message/StorageTextBody;-><init>(Lorg/apache/james/mime4j/storage/MultiReferenceStorage;Ljava/nio/charset/Charset;)V

    return-object v0

    .line 194
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public textBody(Lorg/apache/james/mime4j/storage/Storage;Ljava/lang/String;)Lorg/apache/james/mime4j/message/TextBody;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 232
    invoke-static {p2, v0}, Lorg/apache/james/mime4j/message/BodyFactory;->toJavaCharset(Ljava/lang/String;Z)Ljava/nio/charset/Charset;

    move-result-object p2

    .line 233
    new-instance v0, Lorg/apache/james/mime4j/message/StorageTextBody;

    new-instance v1, Lorg/apache/james/mime4j/storage/MultiReferenceStorage;

    invoke-direct {v1, p1}, Lorg/apache/james/mime4j/storage/MultiReferenceStorage;-><init>(Lorg/apache/james/mime4j/storage/Storage;)V

    invoke-direct {v0, v1, p2}, Lorg/apache/james/mime4j/message/StorageTextBody;-><init>(Lorg/apache/james/mime4j/storage/MultiReferenceStorage;Ljava/nio/charset/Charset;)V

    return-object v0

    .line 230
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 228
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method
