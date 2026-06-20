.class public Lorg/jose4j/jwe/AesGcmKeyEncryptionAlgorithm;
.super Lorg/jose4j/jwa/AlgorithmInfo;
.source "AesGcmKeyEncryptionAlgorithm.java"

# interfaces
.implements Lorg/jose4j/jwe/KeyManagementAlgorithm;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jose4j/jwe/AesGcmKeyEncryptionAlgorithm$Aes256Gcm;,
        Lorg/jose4j/jwe/AesGcmKeyEncryptionAlgorithm$Aes192Gcm;,
        Lorg/jose4j/jwe/AesGcmKeyEncryptionAlgorithm$Aes128Gcm;
    }
.end annotation


# static fields
.field private static final IV_BYTE_LENGTH:I = 0xc

.field private static final TAG_BYTE_LENGTH:I = 0x10


# instance fields
.field private keyByteLength:I

.field private simpleAeadCipher:Lorg/jose4j/jwe/SimpleAeadCipher;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2

    .line 48
    invoke-direct {p0}, Lorg/jose4j/jwa/AlgorithmInfo;-><init>()V

    .line 49
    invoke-virtual {p0, p1}, Lorg/jose4j/jwe/AesGcmKeyEncryptionAlgorithm;->setAlgorithmIdentifier(Ljava/lang/String;)V

    .line 50
    const-string p1, "AES/GCM/NoPadding"

    invoke-virtual {p0, p1}, Lorg/jose4j/jwe/AesGcmKeyEncryptionAlgorithm;->setJavaAlgorithm(Ljava/lang/String;)V

    .line 51
    sget-object p1, Lorg/jose4j/keys/KeyPersuasion;->SYMMETRIC:Lorg/jose4j/keys/KeyPersuasion;

    invoke-virtual {p0, p1}, Lorg/jose4j/jwe/AesGcmKeyEncryptionAlgorithm;->setKeyPersuasion(Lorg/jose4j/keys/KeyPersuasion;)V

    .line 52
    const-string p1, "oct"

    invoke-virtual {p0, p1}, Lorg/jose4j/jwe/AesGcmKeyEncryptionAlgorithm;->setKeyType(Ljava/lang/String;)V

    .line 53
    new-instance p1, Lorg/jose4j/jwe/SimpleAeadCipher;

    invoke-virtual {p0}, Lorg/jose4j/jwe/AesGcmKeyEncryptionAlgorithm;->getJavaAlgorithm()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    invoke-direct {p1, v0, v1}, Lorg/jose4j/jwe/SimpleAeadCipher;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lorg/jose4j/jwe/AesGcmKeyEncryptionAlgorithm;->simpleAeadCipher:Lorg/jose4j/jwe/SimpleAeadCipher;

    .line 54
    iput p2, p0, Lorg/jose4j/jwe/AesGcmKeyEncryptionAlgorithm;->keyByteLength:I

    return-void
.end method


# virtual methods
.method public isAvailable()Z
    .locals 5

    .line 135
    iget-object v0, p0, Lorg/jose4j/jwe/AesGcmKeyEncryptionAlgorithm;->simpleAeadCipher:Lorg/jose4j/jwe/SimpleAeadCipher;

    iget-object v1, p0, Lorg/jose4j/jwe/AesGcmKeyEncryptionAlgorithm;->log:Lorg/slf4j/Logger;

    iget v2, p0, Lorg/jose4j/jwe/AesGcmKeyEncryptionAlgorithm;->keyByteLength:I

    const/16 v3, 0xc

    invoke-virtual {p0}, Lorg/jose4j/jwe/AesGcmKeyEncryptionAlgorithm;->getAlgorithmIdentifier()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/jose4j/jwe/SimpleAeadCipher;->isAvailable(Lorg/slf4j/Logger;IILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public manageForDecrypt(Lorg/jose4j/jwa/CryptoPrimitive;[BLorg/jose4j/jwe/ContentEncryptionKeyDescriptor;Lorg/jose4j/jwx/Headers;Lorg/jose4j/jca/ProviderContext;)Ljava/security/Key;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .line 104
    new-instance p5, Lorg/jose4j/base64url/Base64Url;

    invoke-direct {p5}, Lorg/jose4j/base64url/Base64Url;-><init>()V

    .line 105
    const-string/jumbo v0, "tag"

    invoke-virtual {p4, v0}, Lorg/jose4j/jwx/Headers;->getStringHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 106
    invoke-virtual {p5, p4}, Lorg/jose4j/base64url/Base64Url;->base64UrlDecode(Ljava/lang/String;)[B

    move-result-object p4

    .line 108
    invoke-virtual {p1}, Lorg/jose4j/jwa/CryptoPrimitive;->getCipher()Ljavax/crypto/Cipher;

    move-result-object p1

    .line 109
    iget-object p5, p0, Lorg/jose4j/jwe/AesGcmKeyEncryptionAlgorithm;->simpleAeadCipher:Lorg/jose4j/jwe/SimpleAeadCipher;

    const/4 v0, 0x0

    invoke-virtual {p5, p2, p4, v0, p1}, Lorg/jose4j/jwe/SimpleAeadCipher;->decrypt([B[B[BLjavax/crypto/Cipher;)[B

    move-result-object p1

    .line 111
    new-instance p2, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p3}, Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;->getContentEncryptionKeyAlgorithm()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p1, p3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object p2
.end method

.method public manageForEncrypt(Ljava/security/Key;Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;Lorg/jose4j/jwx/Headers;[BLorg/jose4j/jca/ProviderContext;)Lorg/jose4j/jwe/ContentEncryptionKeys;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .line 60
    invoke-virtual {p5}, Lorg/jose4j/jca/ProviderContext;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v0

    if-nez p4, :cond_0

    .line 61
    invoke-virtual {p2}, Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;->getContentEncryptionKeyByteLength()I

    move-result p2

    invoke-static {p2, v0}, Lorg/jose4j/lang/ByteUtil;->randomBytes(ILjava/security/SecureRandom;)[B

    move-result-object p4

    .line 63
    :cond_0
    new-instance p2, Lorg/jose4j/base64url/Base64Url;

    invoke-direct {p2}, Lorg/jose4j/base64url/Base64Url;-><init>()V

    .line 65
    const-string v1, "iv"

    invoke-virtual {p3, v1}, Lorg/jose4j/jwx/Headers;->getStringHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    const/16 v2, 0xc

    .line 69
    invoke-static {v2, v0}, Lorg/jose4j/lang/ByteUtil;->randomBytes(ILjava/security/SecureRandom;)[B

    move-result-object v0

    .line 70
    invoke-virtual {p2, v0}, Lorg/jose4j/base64url/Base64Url;->base64UrlEncode([B)Ljava/lang/String;

    move-result-object v2

    .line 71
    invoke-virtual {p3, v1, v2}, Lorg/jose4j/jwx/Headers;->setStringHeaderValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 75
    :cond_1
    invoke-virtual {p2, v2}, Lorg/jose4j/base64url/Base64Url;->base64UrlDecode(Ljava/lang/String;)[B

    move-result-object v0

    :goto_0
    move-object v3, v0

    .line 78
    invoke-virtual {p5}, Lorg/jose4j/jca/ProviderContext;->getSuppliedKeyProviderContext()Lorg/jose4j/jca/ProviderContext$Context;

    move-result-object p5

    invoke-virtual {p5}, Lorg/jose4j/jca/ProviderContext$Context;->getCipherProvider()Ljava/lang/String;

    move-result-object v6

    .line 79
    iget-object v1, p0, Lorg/jose4j/jwe/AesGcmKeyEncryptionAlgorithm;->simpleAeadCipher:Lorg/jose4j/jwe/SimpleAeadCipher;

    const/4 v5, 0x0

    move-object v2, p1

    move-object v4, p4

    invoke-virtual/range {v1 .. v6}, Lorg/jose4j/jwe/SimpleAeadCipher;->encrypt(Ljava/security/Key;[B[B[BLjava/lang/String;)Lorg/jose4j/jwe/SimpleAeadCipher$CipherOutput;

    move-result-object p1

    .line 80
    invoke-virtual {p1}, Lorg/jose4j/jwe/SimpleAeadCipher$CipherOutput;->getCiphertext()[B

    move-result-object p5

    .line 81
    invoke-virtual {p1}, Lorg/jose4j/jwe/SimpleAeadCipher$CipherOutput;->getTag()[B

    move-result-object p1

    .line 83
    invoke-virtual {p2, p1}, Lorg/jose4j/base64url/Base64Url;->base64UrlEncode([B)Ljava/lang/String;

    move-result-object p1

    .line 84
    const-string/jumbo p2, "tag"

    invoke-virtual {p3, p2, p1}, Lorg/jose4j/jwx/Headers;->setStringHeaderValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    new-instance p1, Lorg/jose4j/jwe/ContentEncryptionKeys;

    invoke-direct {p1, p4, p5}, Lorg/jose4j/jwe/ContentEncryptionKeys;-><init>([B[B)V

    return-object p1
.end method

.method public prepareForDecrypt(Ljava/security/Key;Lorg/jose4j/jwx/Headers;Lorg/jose4j/jca/ProviderContext;)Lorg/jose4j/jwa/CryptoPrimitive;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .line 91
    new-instance v0, Lorg/jose4j/base64url/Base64Url;

    invoke-direct {v0}, Lorg/jose4j/base64url/Base64Url;-><init>()V

    .line 92
    const-string v1, "iv"

    invoke-virtual {p2, v1}, Lorg/jose4j/jwx/Headers;->getStringHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 93
    invoke-virtual {v0, p2}, Lorg/jose4j/base64url/Base64Url;->base64UrlDecode(Ljava/lang/String;)[B

    move-result-object p2

    .line 95
    invoke-virtual {p3}, Lorg/jose4j/jca/ProviderContext;->getSuppliedKeyProviderContext()Lorg/jose4j/jca/ProviderContext$Context;

    move-result-object p3

    invoke-virtual {p3}, Lorg/jose4j/jca/ProviderContext$Context;->getCipherProvider()Ljava/lang/String;

    move-result-object p3

    .line 96
    iget-object v0, p0, Lorg/jose4j/jwe/AesGcmKeyEncryptionAlgorithm;->simpleAeadCipher:Lorg/jose4j/jwe/SimpleAeadCipher;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, p2, v1, p3}, Lorg/jose4j/jwe/SimpleAeadCipher;->getInitialisedCipher(Ljava/security/Key;[BILjava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p1

    .line 98
    new-instance p2, Lorg/jose4j/jwa/CryptoPrimitive;

    invoke-direct {p2, p1}, Lorg/jose4j/jwa/CryptoPrimitive;-><init>(Ljavax/crypto/Cipher;)V

    return-object p2
.end method

.method public validateDecryptionKey(Ljava/security/Key;Lorg/jose4j/jwe/ContentEncryptionAlgorithm;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/InvalidKeyException;
        }
    .end annotation

    .line 123
    invoke-virtual {p0, p1}, Lorg/jose4j/jwe/AesGcmKeyEncryptionAlgorithm;->validateKey(Ljava/security/Key;)V

    return-void
.end method

.method public validateEncryptionKey(Ljava/security/Key;Lorg/jose4j/jwe/ContentEncryptionAlgorithm;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/InvalidKeyException;
        }
    .end annotation

    .line 117
    invoke-virtual {p0, p1}, Lorg/jose4j/jwe/AesGcmKeyEncryptionAlgorithm;->validateKey(Ljava/security/Key;)V

    return-void
.end method

.method validateKey(Ljava/security/Key;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/InvalidKeyException;
        }
    .end annotation

    .line 128
    invoke-virtual {p0}, Lorg/jose4j/jwe/AesGcmKeyEncryptionAlgorithm;->getAlgorithmIdentifier()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lorg/jose4j/jwe/AesGcmKeyEncryptionAlgorithm;->keyByteLength:I

    invoke-static {p1, v0, v1}, Lorg/jose4j/jwx/KeyValidationSupport;->validateAesWrappingKey(Ljava/security/Key;Ljava/lang/String;I)V

    return-void
.end method
