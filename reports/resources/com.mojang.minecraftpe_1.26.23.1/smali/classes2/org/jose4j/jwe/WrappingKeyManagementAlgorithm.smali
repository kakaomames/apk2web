.class public abstract Lorg/jose4j/jwe/WrappingKeyManagementAlgorithm;
.super Lorg/jose4j/jwa/AlgorithmInfo;
.source "WrappingKeyManagementAlgorithm.java"

# interfaces
.implements Lorg/jose4j/jwe/KeyManagementAlgorithm;


# instance fields
.field private algorithmParameterSpec:Ljava/security/spec/AlgorithmParameterSpec;

.field protected final log:Lorg/slf4j/Logger;

.field protected useSuppliedKeyProviderContext:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 48
    invoke-direct {p0}, Lorg/jose4j/jwa/AlgorithmInfo;-><init>()V

    .line 42
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lorg/jose4j/jwe/WrappingKeyManagementAlgorithm;->log:Lorg/slf4j/Logger;

    const/4 v0, 0x1

    .line 45
    iput-boolean v0, p0, Lorg/jose4j/jwe/WrappingKeyManagementAlgorithm;->useSuppliedKeyProviderContext:Z

    .line 49
    invoke-virtual {p0, p1}, Lorg/jose4j/jwe/WrappingKeyManagementAlgorithm;->setJavaAlgorithm(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0, p2}, Lorg/jose4j/jwe/WrappingKeyManagementAlgorithm;->setAlgorithmIdentifier(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method initCipher(Ljavax/crypto/Cipher;ILjava/security/Key;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lorg/jose4j/jwe/WrappingKeyManagementAlgorithm;->algorithmParameterSpec:Ljava/security/spec/AlgorithmParameterSpec;

    if-nez v0, :cond_0

    .line 92
    invoke-virtual {p1, p2, p3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    goto :goto_0

    .line 96
    :cond_0
    invoke-virtual {p1, p2, p3, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    :goto_0
    return-void
.end method

.method public manageForDecrypt(Lorg/jose4j/jwa/CryptoPrimitive;[BLorg/jose4j/jwe/ContentEncryptionKeyDescriptor;Lorg/jose4j/jwx/Headers;Lorg/jose4j/jca/ProviderContext;)Ljava/security/Key;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .line 124
    invoke-virtual {p1}, Lorg/jose4j/jwa/CryptoPrimitive;->getCipher()Ljavax/crypto/Cipher;

    move-result-object p1

    .line 126
    invoke-virtual {p3}, Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;->getContentEncryptionKeyAlgorithm()Ljava/lang/String;

    move-result-object p4

    const/4 p5, 0x3

    .line 130
    :try_start_0
    invoke-virtual {p1, p2, p4, p5}, Ljavax/crypto/Cipher;->unwrap([BLjava/lang/String;I)Ljava/security/Key;

    move-result-object p1

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 134
    iget-object p2, p0, Lorg/jose4j/jwe/WrappingKeyManagementAlgorithm;->log:Lorg/slf4j/Logger;

    invoke-interface {p2}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 136
    const-class p2, Lorg/jose4j/jwe/JsonWebEncryption;

    invoke-static {p1, p2}, Lorg/jose4j/lang/ExceptionHelp;->toStringWithCausesAndAbbreviatedStack(Ljava/lang/Throwable;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    .line 137
    iget-object p2, p0, Lorg/jose4j/jwe/WrappingKeyManagementAlgorithm;->log:Lorg/slf4j/Logger;

    const-string p5, "Key unwrap failed. Substituting a randomly generated CEK and proceeding. {}"

    invoke-interface {p2, p5, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 149
    :cond_0
    invoke-virtual {p3}, Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;->getContentEncryptionKeyByteLength()I

    move-result p1

    invoke-static {p1}, Lorg/jose4j/lang/ByteUtil;->randomBytes(I)[B

    move-result-object p1

    .line 150
    new-instance p2, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {p2, p1, p4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object p2
.end method

.method protected manageForEnc(Ljava/security/Key;Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;[BLorg/jose4j/jca/ProviderContext;)Lorg/jose4j/jwe/ContentEncryptionKeys;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .line 66
    const-string v0, ") the Content Encryption Key: "

    const-string v1, "Unable to encrypt ("

    iget-boolean v2, p0, Lorg/jose4j/jwe/WrappingKeyManagementAlgorithm;->useSuppliedKeyProviderContext:Z

    if-eqz v2, :cond_0

    invoke-virtual {p4}, Lorg/jose4j/jca/ProviderContext;->getSuppliedKeyProviderContext()Lorg/jose4j/jca/ProviderContext$Context;

    move-result-object p4

    goto :goto_0

    :cond_0
    invoke-virtual {p4}, Lorg/jose4j/jca/ProviderContext;->getGeneralProviderContext()Lorg/jose4j/jca/ProviderContext$Context;

    move-result-object p4

    .line 67
    :goto_0
    invoke-virtual {p4}, Lorg/jose4j/jca/ProviderContext$Context;->getCipherProvider()Ljava/lang/String;

    move-result-object p4

    .line 69
    invoke-virtual {p0}, Lorg/jose4j/jwe/WrappingKeyManagementAlgorithm;->getJavaAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p4}, Lorg/jose4j/jwe/CipherUtil;->getCipher(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p4

    const/4 v2, 0x3

    .line 73
    :try_start_0
    invoke-virtual {p0, p4, v2, p1}, Lorg/jose4j/jwe/WrappingKeyManagementAlgorithm;->initCipher(Ljavax/crypto/Cipher;ILjava/security/Key;)V

    .line 74
    invoke-virtual {p2}, Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;->getContentEncryptionKeyAlgorithm()Ljava/lang/String;

    move-result-object p1

    .line 75
    new-instance p2, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {p2, p3, p1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {p4, p2}, Ljavax/crypto/Cipher;->wrap(Ljava/security/Key;)[B

    move-result-object p1

    .line 76
    new-instance p2, Lorg/jose4j/jwe/ContentEncryptionKeys;

    invoke-direct {p2, p3, p1}, Lorg/jose4j/jwe/ContentEncryptionKeys;-><init>([B[B)V

    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 84
    :goto_1
    new-instance p2, Lorg/jose4j/lang/JoseException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Ljavax/crypto/Cipher;->getAlgorithm()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lorg/jose4j/lang/JoseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_2
    move-exception p1

    .line 80
    new-instance p2, Lorg/jose4j/lang/InvalidKeyException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Ljavax/crypto/Cipher;->getAlgorithm()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lorg/jose4j/lang/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public manageForEncrypt(Ljava/security/Key;Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;Lorg/jose4j/jwx/Headers;[BLorg/jose4j/jca/ProviderContext;)Lorg/jose4j/jwe/ContentEncryptionKeys;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    if-nez p4, :cond_0

    .line 60
    invoke-virtual {p2}, Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;->getContentEncryptionKeyByteLength()I

    move-result p3

    invoke-static {p3}, Lorg/jose4j/lang/ByteUtil;->randomBytes(I)[B

    move-result-object p4

    .line 61
    :cond_0
    invoke-virtual {p0, p1, p2, p4, p5}, Lorg/jose4j/jwe/WrappingKeyManagementAlgorithm;->manageForEnc(Ljava/security/Key;Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;[BLorg/jose4j/jca/ProviderContext;)Lorg/jose4j/jwe/ContentEncryptionKeys;

    move-result-object p1

    return-object p1
.end method

.method public prepareForDecrypt(Ljava/security/Key;Lorg/jose4j/jwx/Headers;Lorg/jose4j/jca/ProviderContext;)Lorg/jose4j/jwa/CryptoPrimitive;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .line 103
    const-string p2, ") for key decryption - "

    const-string v0, "Unable to initialize cipher ("

    invoke-virtual {p3}, Lorg/jose4j/jca/ProviderContext;->getSuppliedKeyProviderContext()Lorg/jose4j/jca/ProviderContext$Context;

    move-result-object p3

    invoke-virtual {p3}, Lorg/jose4j/jca/ProviderContext$Context;->getCipherProvider()Ljava/lang/String;

    move-result-object p3

    .line 104
    invoke-virtual {p0}, Lorg/jose4j/jwe/WrappingKeyManagementAlgorithm;->getJavaAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p3}, Lorg/jose4j/jwe/CipherUtil;->getCipher(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p3

    const/4 v1, 0x4

    .line 108
    :try_start_0
    invoke-virtual {p0, p3, v1, p1}, Lorg/jose4j/jwe/WrappingKeyManagementAlgorithm;->initCipher(Ljavax/crypto/Cipher;ILjava/security/Key;)V

    .line 119
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance p1, Lorg/jose4j/jwa/CryptoPrimitive;

    invoke-direct {p1, p3}, Lorg/jose4j/jwa/CryptoPrimitive;-><init>(Ljavax/crypto/Cipher;)V

    return-object p1

    :catch_0
    move-exception p1

    .line 116
    new-instance v1, Lorg/jose4j/lang/JoseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljavax/crypto/Cipher;->getAlgorithm()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p2, p1}, Lorg/jose4j/lang/JoseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception p1

    .line 112
    new-instance v1, Lorg/jose4j/lang/InvalidKeyException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljavax/crypto/Cipher;->getAlgorithm()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p2, p1}, Lorg/jose4j/lang/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setAlgorithmParameterSpec(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lorg/jose4j/jwe/WrappingKeyManagementAlgorithm;->algorithmParameterSpec:Ljava/security/spec/AlgorithmParameterSpec;

    return-void
.end method
