.class final Lorg/apache/james/mime4j/storage/CipherStorageProvider$CipherStorage;
.super Ljava/lang/Object;
.source "CipherStorageProvider.java"

# interfaces
.implements Lorg/apache/james/mime4j/storage/Storage;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/james/mime4j/storage/CipherStorageProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CipherStorage"
.end annotation


# instance fields
.field private final algorithm:Ljava/lang/String;

.field private encrypted:Lorg/apache/james/mime4j/storage/Storage;

.field private final skeySpec:Ljavax/crypto/spec/SecretKeySpec;


# direct methods
.method public constructor <init>(Lorg/apache/james/mime4j/storage/Storage;Ljava/lang/String;Ljavax/crypto/spec/SecretKeySpec;)V
    .locals 0

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    iput-object p1, p0, Lorg/apache/james/mime4j/storage/CipherStorageProvider$CipherStorage;->encrypted:Lorg/apache/james/mime4j/storage/Storage;

    .line 150
    iput-object p2, p0, Lorg/apache/james/mime4j/storage/CipherStorageProvider$CipherStorage;->algorithm:Ljava/lang/String;

    .line 151
    iput-object p3, p0, Lorg/apache/james/mime4j/storage/CipherStorageProvider$CipherStorage;->skeySpec:Ljavax/crypto/spec/SecretKeySpec;

    return-void
.end method


# virtual methods
.method public delete()V
    .locals 1

    .line 155
    iget-object v0, p0, Lorg/apache/james/mime4j/storage/CipherStorageProvider$CipherStorage;->encrypted:Lorg/apache/james/mime4j/storage/Storage;

    if-eqz v0, :cond_0

    .line 156
    invoke-interface {v0}, Lorg/apache/james/mime4j/storage/Storage;->delete()V

    const/4 v0, 0x0

    .line 157
    iput-object v0, p0, Lorg/apache/james/mime4j/storage/CipherStorageProvider$CipherStorage;->encrypted:Lorg/apache/james/mime4j/storage/Storage;

    :cond_0
    return-void
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 162
    iget-object v0, p0, Lorg/apache/james/mime4j/storage/CipherStorageProvider$CipherStorage;->encrypted:Lorg/apache/james/mime4j/storage/Storage;

    if-eqz v0, :cond_0

    .line 166
    :try_start_0
    iget-object v0, p0, Lorg/apache/james/mime4j/storage/CipherStorageProvider$CipherStorage;->algorithm:Ljava/lang/String;

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 167
    iget-object v1, p0, Lorg/apache/james/mime4j/storage/CipherStorageProvider$CipherStorage;->skeySpec:Ljavax/crypto/spec/SecretKeySpec;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 169
    iget-object v1, p0, Lorg/apache/james/mime4j/storage/CipherStorageProvider$CipherStorage;->encrypted:Lorg/apache/james/mime4j/storage/Storage;

    invoke-interface {v1}, Lorg/apache/james/mime4j/storage/Storage;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 170
    new-instance v2, Ljavax/crypto/CipherInputStream;

    invoke-direct {v2, v1, v0}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    .line 172
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/io/IOException;

    throw v0

    .line 163
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "storage has been deleted"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
