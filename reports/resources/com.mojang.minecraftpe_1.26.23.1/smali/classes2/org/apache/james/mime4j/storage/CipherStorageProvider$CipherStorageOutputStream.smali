.class final Lorg/apache/james/mime4j/storage/CipherStorageProvider$CipherStorageOutputStream;
.super Lorg/apache/james/mime4j/storage/StorageOutputStream;
.source "CipherStorageProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/james/mime4j/storage/CipherStorageProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CipherStorageOutputStream"
.end annotation


# instance fields
.field private final algorithm:Ljava/lang/String;

.field private final cipherOut:Ljavax/crypto/CipherOutputStream;

.field private final skeySpec:Ljavax/crypto/spec/SecretKeySpec;

.field private final storageOut:Lorg/apache/james/mime4j/storage/StorageOutputStream;


# direct methods
.method public constructor <init>(Lorg/apache/james/mime4j/storage/StorageOutputStream;Ljava/lang/String;Ljavax/crypto/spec/SecretKeySpec;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 107
    invoke-direct {p0}, Lorg/apache/james/mime4j/storage/StorageOutputStream;-><init>()V

    .line 109
    :try_start_0
    iput-object p1, p0, Lorg/apache/james/mime4j/storage/CipherStorageProvider$CipherStorageOutputStream;->storageOut:Lorg/apache/james/mime4j/storage/StorageOutputStream;

    .line 110
    iput-object p2, p0, Lorg/apache/james/mime4j/storage/CipherStorageProvider$CipherStorageOutputStream;->algorithm:Ljava/lang/String;

    .line 111
    iput-object p3, p0, Lorg/apache/james/mime4j/storage/CipherStorageProvider$CipherStorageOutputStream;->skeySpec:Ljavax/crypto/spec/SecretKeySpec;

    .line 113
    invoke-static {p2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p2

    const/4 v0, 0x1

    .line 114
    invoke-virtual {p2, v0, p3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 116
    new-instance p3, Ljavax/crypto/CipherOutputStream;

    invoke-direct {p3, p1, p2}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    iput-object p3, p0, Lorg/apache/james/mime4j/storage/CipherStorageProvider$CipherStorageOutputStream;->cipherOut:Ljavax/crypto/CipherOutputStream;

    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 118
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2}, Ljava/io/IOException;-><init>()V

    invoke-virtual {p2, p1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Ljava/io/IOException;

    throw p1
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 124
    invoke-super {p0}, Lorg/apache/james/mime4j/storage/StorageOutputStream;->close()V

    .line 125
    iget-object v0, p0, Lorg/apache/james/mime4j/storage/CipherStorageProvider$CipherStorageOutputStream;->cipherOut:Ljavax/crypto/CipherOutputStream;

    invoke-virtual {v0}, Ljavax/crypto/CipherOutputStream;->close()V

    return-void
.end method

.method protected toStorage0()Lorg/apache/james/mime4j/storage/Storage;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 137
    iget-object v0, p0, Lorg/apache/james/mime4j/storage/CipherStorageProvider$CipherStorageOutputStream;->storageOut:Lorg/apache/james/mime4j/storage/StorageOutputStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/storage/StorageOutputStream;->toStorage()Lorg/apache/james/mime4j/storage/Storage;

    move-result-object v0

    .line 138
    new-instance v1, Lorg/apache/james/mime4j/storage/CipherStorageProvider$CipherStorage;

    iget-object v2, p0, Lorg/apache/james/mime4j/storage/CipherStorageProvider$CipherStorageOutputStream;->algorithm:Ljava/lang/String;

    iget-object v3, p0, Lorg/apache/james/mime4j/storage/CipherStorageProvider$CipherStorageOutputStream;->skeySpec:Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v1, v0, v2, v3}, Lorg/apache/james/mime4j/storage/CipherStorageProvider$CipherStorage;-><init>(Lorg/apache/james/mime4j/storage/Storage;Ljava/lang/String;Ljavax/crypto/spec/SecretKeySpec;)V

    return-object v1
.end method

.method protected write0([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lorg/apache/james/mime4j/storage/CipherStorageProvider$CipherStorageOutputStream;->cipherOut:Ljavax/crypto/CipherOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/CipherOutputStream;->write([BII)V

    return-void
.end method
