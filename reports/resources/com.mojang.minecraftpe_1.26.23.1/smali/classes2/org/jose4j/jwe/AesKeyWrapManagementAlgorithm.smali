.class public Lorg/jose4j/jwe/AesKeyWrapManagementAlgorithm;
.super Lorg/jose4j/jwe/WrappingKeyManagementAlgorithm;
.source "AesKeyWrapManagementAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jose4j/jwe/AesKeyWrapManagementAlgorithm$Aes256;,
        Lorg/jose4j/jwe/AesKeyWrapManagementAlgorithm$Aes192;,
        Lorg/jose4j/jwe/AesKeyWrapManagementAlgorithm$Aes128;
    }
.end annotation


# instance fields
.field keyByteLength:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 39
    const-string v0, "AESWrap"

    invoke-direct {p0, v0, p1}, Lorg/jose4j/jwe/WrappingKeyManagementAlgorithm;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    const-string p1, "oct"

    invoke-virtual {p0, p1}, Lorg/jose4j/jwe/AesKeyWrapManagementAlgorithm;->setKeyType(Ljava/lang/String;)V

    .line 41
    sget-object p1, Lorg/jose4j/keys/KeyPersuasion;->SYMMETRIC:Lorg/jose4j/keys/KeyPersuasion;

    invoke-virtual {p0, p1}, Lorg/jose4j/jwe/AesKeyWrapManagementAlgorithm;->setKeyPersuasion(Lorg/jose4j/keys/KeyPersuasion;)V

    .line 42
    iput p2, p0, Lorg/jose4j/jwe/AesKeyWrapManagementAlgorithm;->keyByteLength:I

    return-void
.end method


# virtual methods
.method getKeyByteLength()I
    .locals 1

    .line 47
    iget v0, p0, Lorg/jose4j/jwe/AesKeyWrapManagementAlgorithm;->keyByteLength:I

    return v0
.end method

.method public isAvailable()Z
    .locals 4

    .line 70
    invoke-virtual {p0}, Lorg/jose4j/jwe/AesKeyWrapManagementAlgorithm;->getKeyByteLength()I

    move-result v0

    .line 71
    invoke-virtual {p0}, Lorg/jose4j/jwe/AesKeyWrapManagementAlgorithm;->getJavaAlgorithm()Ljava/lang/String;

    move-result-object v1

    .line 74
    :try_start_0
    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 75
    invoke-static {v1, v0}, Lorg/jose4j/jwe/CipherStrengthSupport;->isAvailable(Ljava/lang/String;I)Z

    move-result v0

    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 79
    :goto_0
    iget-object v2, p0, Lorg/jose4j/jwe/AesKeyWrapManagementAlgorithm;->log:Lorg/slf4j/Logger;

    invoke-virtual {p0}, Lorg/jose4j/jwe/AesKeyWrapManagementAlgorithm;->getAlgorithmIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Lorg/jose4j/lang/ExceptionHelp;->toStringWithCauses(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v1, v3, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "{} for {} is not available ({})."

    invoke-interface {v2, v1, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    return v0
.end method

.method setUseGeneralProviderContext()Lorg/jose4j/jwe/AesKeyWrapManagementAlgorithm;
    .locals 1

    const/4 v0, 0x0

    .line 86
    iput-boolean v0, p0, Lorg/jose4j/jwe/AesKeyWrapManagementAlgorithm;->useSuppliedKeyProviderContext:Z

    return-object p0
.end method

.method public validateDecryptionKey(Ljava/security/Key;Lorg/jose4j/jwe/ContentEncryptionAlgorithm;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/InvalidKeyException;
        }
    .end annotation

    .line 59
    invoke-virtual {p0, p1}, Lorg/jose4j/jwe/AesKeyWrapManagementAlgorithm;->validateKey(Ljava/security/Key;)V

    return-void
.end method

.method public validateEncryptionKey(Ljava/security/Key;Lorg/jose4j/jwe/ContentEncryptionAlgorithm;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/InvalidKeyException;
        }
    .end annotation

    .line 53
    invoke-virtual {p0, p1}, Lorg/jose4j/jwe/AesKeyWrapManagementAlgorithm;->validateKey(Ljava/security/Key;)V

    return-void
.end method

.method validateKey(Ljava/security/Key;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/InvalidKeyException;
        }
    .end annotation

    .line 64
    invoke-virtual {p0}, Lorg/jose4j/jwe/AesKeyWrapManagementAlgorithm;->getAlgorithmIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jose4j/jwe/AesKeyWrapManagementAlgorithm;->getKeyByteLength()I

    move-result v1

    invoke-static {p1, v0, v1}, Lorg/jose4j/jwx/KeyValidationSupport;->validateAesWrappingKey(Ljava/security/Key;Ljava/lang/String;I)V

    return-void
.end method
