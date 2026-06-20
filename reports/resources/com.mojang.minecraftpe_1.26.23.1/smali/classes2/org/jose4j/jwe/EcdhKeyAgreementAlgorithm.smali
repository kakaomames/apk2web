.class public Lorg/jose4j/jwe/EcdhKeyAgreementAlgorithm;
.super Lorg/jose4j/jwa/AlgorithmInfo;
.source "EcdhKeyAgreementAlgorithm.java"

# interfaces
.implements Lorg/jose4j/jwe/KeyManagementAlgorithm;


# instance fields
.field algorithmIdHeaderName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 62
    invoke-direct {p0}, Lorg/jose4j/jwa/AlgorithmInfo;-><init>()V

    .line 59
    const-string v0, "enc"

    iput-object v0, p0, Lorg/jose4j/jwe/EcdhKeyAgreementAlgorithm;->algorithmIdHeaderName:Ljava/lang/String;

    .line 63
    const-string v0, "ECDH-ES"

    invoke-virtual {p0, v0}, Lorg/jose4j/jwe/EcdhKeyAgreementAlgorithm;->setAlgorithmIdentifier(Ljava/lang/String;)V

    .line 64
    const-string v0, "ECDH"

    invoke-virtual {p0, v0}, Lorg/jose4j/jwe/EcdhKeyAgreementAlgorithm;->setJavaAlgorithm(Ljava/lang/String;)V

    .line 65
    const-string v0, "EC"

    invoke-virtual {p0, v0}, Lorg/jose4j/jwe/EcdhKeyAgreementAlgorithm;->setKeyType(Ljava/lang/String;)V

    .line 66
    sget-object v0, Lorg/jose4j/keys/KeyPersuasion;->ASYMMETRIC:Lorg/jose4j/keys/KeyPersuasion;

    invoke-virtual {p0, v0}, Lorg/jose4j/jwe/EcdhKeyAgreementAlgorithm;->setKeyPersuasion(Lorg/jose4j/keys/KeyPersuasion;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Lorg/jose4j/jwe/EcdhKeyAgreementAlgorithm;-><init>()V

    .line 72
    iput-object p1, p0, Lorg/jose4j/jwe/EcdhKeyAgreementAlgorithm;->algorithmIdHeaderName:Ljava/lang/String;

    return-void
.end method

.method private checkPointIsOnCurve(Ljava/security/interfaces/ECPublicKey;Ljava/security/interfaces/ECPrivateKey;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .line 123
    invoke-interface {p2}, Ljava/security/interfaces/ECPrivateKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object p2

    .line 124
    invoke-virtual {p2}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object p2

    .line 125
    invoke-interface {p1}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object p1

    .line 126
    invoke-virtual {p1}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    move-result-object v0

    .line 127
    invoke-virtual {p1}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    move-result-object p1

    .line 128
    invoke-virtual {p2}, Ljava/security/spec/EllipticCurve;->getA()Ljava/math/BigInteger;

    move-result-object v1

    .line 129
    invoke-virtual {p2}, Ljava/security/spec/EllipticCurve;->getB()Ljava/math/BigInteger;

    move-result-object v2

    .line 130
    invoke-virtual {p2}, Ljava/security/spec/EllipticCurve;->getField()Ljava/security/spec/ECField;

    move-result-object v3

    check-cast v3, Ljava/security/spec/ECFieldFp;

    invoke-virtual {v3}, Ljava/security/spec/ECFieldFp;->getP()Ljava/math/BigInteger;

    move-result-object v3

    const/4 v4, 0x2

    .line 131
    invoke-virtual {p1, v4}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    const/4 v4, 0x3

    .line 132
    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 133
    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 136
    :cond_0
    new-instance p1, Lorg/jose4j/lang/JoseException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "epk is invalid for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lorg/jose4j/keys/EllipticCurves;->getName(Ljava/security/spec/EllipticCurve;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/jose4j/lang/JoseException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private createKeyAgreement(Ljava/security/PrivateKey;Ljava/security/PublicKey;Lorg/jose4j/jca/ProviderContext;)Ljavax/crypto/KeyAgreement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .line 177
    invoke-virtual {p3}, Lorg/jose4j/jca/ProviderContext;->getSuppliedKeyProviderContext()Lorg/jose4j/jca/ProviderContext$Context;

    move-result-object p3

    invoke-virtual {p3}, Lorg/jose4j/jca/ProviderContext$Context;->getKeyAgreementProvider()Ljava/lang/String;

    move-result-object p3

    .line 178
    invoke-direct {p0, p3}, Lorg/jose4j/jwe/EcdhKeyAgreementAlgorithm;->getKeyAgreement(Ljava/lang/String;)Ljavax/crypto/KeyAgreement;

    move-result-object p3

    .line 182
    :try_start_0
    invoke-virtual {p3, p1}, Ljavax/crypto/KeyAgreement;->init(Ljava/security/Key;)V

    const/4 p1, 0x1

    .line 183
    invoke-virtual {p3, p2, p1}, Ljavax/crypto/KeyAgreement;->doPhase(Ljava/security/Key;Z)Ljava/security/Key;

    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p3

    :catch_0
    move-exception p1

    .line 187
    new-instance p2, Lorg/jose4j/lang/InvalidKeyException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Invalid Key for "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/jose4j/jwe/EcdhKeyAgreementAlgorithm;->getJavaAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, " key agreement - "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lorg/jose4j/lang/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method private generateEcdhSecret(Ljava/security/PrivateKey;Ljava/security/PublicKey;Lorg/jose4j/jca/ProviderContext;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .line 195
    invoke-direct {p0, p1, p2, p3}, Lorg/jose4j/jwe/EcdhKeyAgreementAlgorithm;->createKeyAgreement(Ljava/security/PrivateKey;Ljava/security/PublicKey;Lorg/jose4j/jca/ProviderContext;)Ljavax/crypto/KeyAgreement;

    move-result-object p1

    .line 196
    invoke-virtual {p1}, Ljavax/crypto/KeyAgreement;->generateSecret()[B

    move-result-object p1

    return-object p1
.end method

.method private getKeyAgreement(Ljava/lang/String;)Ljavax/crypto/KeyAgreement;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .line 160
    invoke-virtual {p0}, Lorg/jose4j/jwe/EcdhKeyAgreementAlgorithm;->getJavaAlgorithm()Ljava/lang/String;

    move-result-object v0

    if-nez p1, :cond_0

    .line 163
    :try_start_0
    invoke-static {v0}, Ljavax/crypto/KeyAgreement;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyAgreement;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {v0, p1}, Ljavax/crypto/KeyAgreement;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/KeyAgreement;

    move-result-object p1

    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p1

    :catch_0
    move-exception v1

    .line 171
    new-instance v2, Lorg/jose4j/lang/JoseException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Cannot get "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " KeyAgreement with provider "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1, v1}, Lorg/jose4j/lang/JoseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_1
    move-exception p1

    .line 167
    new-instance v1, Lorg/jose4j/lang/UncheckedJoseException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "No "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " KeyAgreement available."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Lorg/jose4j/lang/UncheckedJoseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private kdf(Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;Lorg/jose4j/jwx/Headers;[BLorg/jose4j/jca/ProviderContext;)[B
    .locals 6

    .line 142
    invoke-virtual {p4}, Lorg/jose4j/jca/ProviderContext;->getGeneralProviderContext()Lorg/jose4j/jca/ProviderContext$Context;

    move-result-object p4

    invoke-virtual {p4}, Lorg/jose4j/jca/ProviderContext$Context;->getMessageDigestProvider()Ljava/lang/String;

    move-result-object p4

    .line 143
    new-instance v0, Lorg/jose4j/jwe/kdf/KdfUtil;

    invoke-direct {v0, p4}, Lorg/jose4j/jwe/kdf/KdfUtil;-><init>(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p1}, Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;->getContentEncryptionKeyByteLength()I

    move-result p1

    invoke-static {p1}, Lorg/jose4j/lang/ByteUtil;->bitLength(I)I

    move-result v2

    .line 151
    iget-object p1, p0, Lorg/jose4j/jwe/EcdhKeyAgreementAlgorithm;->algorithmIdHeaderName:Ljava/lang/String;

    invoke-virtual {p2, p1}, Lorg/jose4j/jwx/Headers;->getStringHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 152
    const-string p1, "apu"

    invoke-virtual {p2, p1}, Lorg/jose4j/jwx/Headers;->getStringHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 153
    const-string p1, "apv"

    invoke-virtual {p2, p1}, Lorg/jose4j/jwx/Headers;->getStringHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v1, p3

    .line 154
    invoke-virtual/range {v0 .. v5}, Lorg/jose4j/jwe/kdf/KdfUtil;->kdf([BILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public isAvailable()Z
    .locals 2

    .line 214
    new-instance v0, Lorg/jose4j/keys/EcKeyUtil;

    invoke-direct {v0}, Lorg/jose4j/keys/EcKeyUtil;-><init>()V

    .line 215
    invoke-virtual {v0}, Lorg/jose4j/keys/EcKeyUtil;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "KeyAgreement"

    invoke-virtual {p0}, Lorg/jose4j/jwe/EcdhKeyAgreementAlgorithm;->getJavaAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/jose4j/jwa/AlgorithmAvailability;->isAvailable(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public manageForDecrypt(Lorg/jose4j/jwa/CryptoPrimitive;[BLorg/jose4j/jwe/ContentEncryptionKeyDescriptor;Lorg/jose4j/jwx/Headers;Lorg/jose4j/jca/ProviderContext;)Ljava/security/Key;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .line 106
    invoke-virtual {p1}, Lorg/jose4j/jwa/CryptoPrimitive;->getKeyAgreement()Ljavax/crypto/KeyAgreement;

    move-result-object p1

    .line 107
    invoke-virtual {p1}, Ljavax/crypto/KeyAgreement;->generateSecret()[B

    move-result-object p1

    .line 108
    invoke-direct {p0, p3, p4, p1, p5}, Lorg/jose4j/jwe/EcdhKeyAgreementAlgorithm;->kdf(Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;Lorg/jose4j/jwx/Headers;[BLorg/jose4j/jca/ProviderContext;)[B

    move-result-object p1

    .line 109
    invoke-virtual {p3}, Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;->getContentEncryptionKeyAlgorithm()Ljava/lang/String;

    move-result-object p2

    .line 110
    new-instance p3, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {p3, p1, p2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object p3
.end method

.method manageForEncrypt(Ljava/security/Key;Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;Lorg/jose4j/jwx/Headers;Lorg/jose4j/jwk/PublicJsonWebKey;Lorg/jose4j/jca/ProviderContext;)Lorg/jose4j/jwe/ContentEncryptionKeys;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .line 87
    const-string v0, "epk"

    invoke-virtual {p3, v0, p4}, Lorg/jose4j/jwx/Headers;->setJwkHeaderValue(Ljava/lang/String;Lorg/jose4j/jwk/JsonWebKey;)V

    .line 88
    invoke-virtual {p4}, Lorg/jose4j/jwk/PublicJsonWebKey;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object p4

    check-cast p1, Ljava/security/PublicKey;

    invoke-direct {p0, p4, p1, p5}, Lorg/jose4j/jwe/EcdhKeyAgreementAlgorithm;->generateEcdhSecret(Ljava/security/PrivateKey;Ljava/security/PublicKey;Lorg/jose4j/jca/ProviderContext;)[B

    move-result-object p1

    .line 89
    invoke-direct {p0, p2, p3, p1, p5}, Lorg/jose4j/jwe/EcdhKeyAgreementAlgorithm;->kdf(Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;Lorg/jose4j/jwx/Headers;[BLorg/jose4j/jca/ProviderContext;)[B

    move-result-object p1

    .line 90
    new-instance p2, Lorg/jose4j/jwe/ContentEncryptionKeys;

    const/4 p3, 0x0

    invoke-direct {p2, p1, p3}, Lorg/jose4j/jwe/ContentEncryptionKeys;-><init>([B[B)V

    return-object p2
.end method

.method public manageForEncrypt(Ljava/security/Key;Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;Lorg/jose4j/jwx/Headers;[BLorg/jose4j/jca/ProviderContext;)Lorg/jose4j/jwe/ContentEncryptionKeys;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .line 77
    invoke-virtual {p0}, Lorg/jose4j/jwe/EcdhKeyAgreementAlgorithm;->getAlgorithmIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0}, Lorg/jose4j/jwx/KeyValidationSupport;->cekNotAllowed([BLjava/lang/String;)V

    .line 78
    move-object p4, p1

    check-cast p4, Ljava/security/interfaces/ECPublicKey;

    .line 79
    invoke-virtual {p5}, Lorg/jose4j/jca/ProviderContext;->getGeneralProviderContext()Lorg/jose4j/jca/ProviderContext$Context;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jose4j/jca/ProviderContext$Context;->getKeyPairGeneratorProvider()Ljava/lang/String;

    move-result-object v0

    .line 80
    invoke-virtual {p5}, Lorg/jose4j/jca/ProviderContext;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v1

    .line 81
    invoke-interface {p4}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object p4

    invoke-static {p4, v0, v1}, Lorg/jose4j/jwk/EcJwkGenerator;->generateJwk(Ljava/security/spec/ECParameterSpec;Ljava/lang/String;Ljava/security/SecureRandom;)Lorg/jose4j/jwk/EllipticCurveJsonWebKey;

    move-result-object v6

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v7, p5

    .line 82
    invoke-virtual/range {v2 .. v7}, Lorg/jose4j/jwe/EcdhKeyAgreementAlgorithm;->manageForEncrypt(Ljava/security/Key;Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;Lorg/jose4j/jwx/Headers;Lorg/jose4j/jwk/PublicJsonWebKey;Lorg/jose4j/jca/ProviderContext;)Lorg/jose4j/jwe/ContentEncryptionKeys;

    move-result-object p1

    return-object p1
.end method

.method public prepareForDecrypt(Ljava/security/Key;Lorg/jose4j/jwx/Headers;Lorg/jose4j/jca/ProviderContext;)Lorg/jose4j/jwa/CryptoPrimitive;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .line 95
    invoke-virtual {p3}, Lorg/jose4j/jca/ProviderContext;->getGeneralProviderContext()Lorg/jose4j/jca/ProviderContext$Context;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jose4j/jca/ProviderContext$Context;->getKeyFactoryProvider()Ljava/lang/String;

    move-result-object v0

    .line 96
    const-string v1, "epk"

    invoke-virtual {p2, v1, v0}, Lorg/jose4j/jwx/Headers;->getPublicJwkHeaderValue(Ljava/lang/String;Ljava/lang/String;)Lorg/jose4j/jwk/PublicJsonWebKey;

    move-result-object p2

    .line 97
    invoke-virtual {p2}, Lorg/jose4j/jwk/JsonWebKey;->getKey()Ljava/security/Key;

    move-result-object p2

    check-cast p2, Ljava/security/interfaces/ECPublicKey;

    .line 98
    check-cast p1, Ljava/security/interfaces/ECPrivateKey;

    .line 99
    invoke-direct {p0, p2, p1}, Lorg/jose4j/jwe/EcdhKeyAgreementAlgorithm;->checkPointIsOnCurve(Ljava/security/interfaces/ECPublicKey;Ljava/security/interfaces/ECPrivateKey;)V

    .line 100
    invoke-direct {p0, p1, p2, p3}, Lorg/jose4j/jwe/EcdhKeyAgreementAlgorithm;->createKeyAgreement(Ljava/security/PrivateKey;Ljava/security/PublicKey;Lorg/jose4j/jca/ProviderContext;)Ljavax/crypto/KeyAgreement;

    move-result-object p1

    .line 101
    new-instance p2, Lorg/jose4j/jwa/CryptoPrimitive;

    invoke-direct {p2, p1}, Lorg/jose4j/jwa/CryptoPrimitive;-><init>(Ljavax/crypto/KeyAgreement;)V

    return-object p2
.end method

.method public validateDecryptionKey(Ljava/security/Key;Lorg/jose4j/jwe/ContentEncryptionAlgorithm;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/InvalidKeyException;
        }
    .end annotation

    .line 208
    const-class p2, Ljava/security/interfaces/ECPrivateKey;

    invoke-static {p1, p2}, Lorg/jose4j/jwx/KeyValidationSupport;->castKey(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/Key;

    return-void
.end method

.method public validateEncryptionKey(Ljava/security/Key;Lorg/jose4j/jwe/ContentEncryptionAlgorithm;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/InvalidKeyException;
        }
    .end annotation

    .line 202
    const-class p2, Ljava/security/interfaces/ECPublicKey;

    invoke-static {p1, p2}, Lorg/jose4j/jwx/KeyValidationSupport;->castKey(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/Key;

    return-void
.end method
