.class public Lorg/jose4j/jws/HmacUsingShaAlgorithm;
.super Lorg/jose4j/jwa/AlgorithmInfo;
.source "HmacUsingShaAlgorithm.java"

# interfaces
.implements Lorg/jose4j/jws/JsonWebSignatureAlgorithm;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jose4j/jws/HmacUsingShaAlgorithm$HmacSha512;,
        Lorg/jose4j/jws/HmacUsingShaAlgorithm$HmacSha384;,
        Lorg/jose4j/jws/HmacUsingShaAlgorithm$HmacSha256;
    }
.end annotation


# instance fields
.field private minimumKeyLength:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lorg/jose4j/jwa/AlgorithmInfo;-><init>()V

    .line 43
    invoke-virtual {p0, p1}, Lorg/jose4j/jws/HmacUsingShaAlgorithm;->setAlgorithmIdentifier(Ljava/lang/String;)V

    .line 44
    invoke-virtual {p0, p2}, Lorg/jose4j/jws/HmacUsingShaAlgorithm;->setJavaAlgorithm(Ljava/lang/String;)V

    .line 45
    sget-object p1, Lorg/jose4j/keys/KeyPersuasion;->SYMMETRIC:Lorg/jose4j/keys/KeyPersuasion;

    invoke-virtual {p0, p1}, Lorg/jose4j/jws/HmacUsingShaAlgorithm;->setKeyPersuasion(Lorg/jose4j/keys/KeyPersuasion;)V

    .line 46
    const-string p1, "oct"

    invoke-virtual {p0, p1}, Lorg/jose4j/jws/HmacUsingShaAlgorithm;->setKeyType(Ljava/lang/String;)V

    .line 47
    iput p3, p0, Lorg/jose4j/jws/HmacUsingShaAlgorithm;->minimumKeyLength:I

    return-void
.end method

.method private getMacInstance(Ljava/security/Key;Lorg/jose4j/jca/ProviderContext;)Ljavax/crypto/Mac;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .line 78
    invoke-virtual {p2}, Lorg/jose4j/jca/ProviderContext;->getSuppliedKeyProviderContext()Lorg/jose4j/jca/ProviderContext$Context;

    move-result-object p2

    invoke-virtual {p2}, Lorg/jose4j/jca/ProviderContext$Context;->getMacProvider()Ljava/lang/String;

    move-result-object p2

    .line 79
    invoke-virtual {p0}, Lorg/jose4j/jws/HmacUsingShaAlgorithm;->getJavaAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lorg/jose4j/mac/MacUtil;->getInitializedMac(Ljava/lang/String;Ljava/security/Key;Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public isAvailable()Z
    .locals 1

    .line 116
    :try_start_0
    invoke-virtual {p0}, Lorg/jose4j/jws/HmacUsingShaAlgorithm;->getJavaAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public prepareForSign(Ljava/security/Key;Lorg/jose4j/jca/ProviderContext;)Lorg/jose4j/jwa/CryptoPrimitive;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .line 66
    invoke-direct {p0, p1, p2}, Lorg/jose4j/jws/HmacUsingShaAlgorithm;->getMacInstance(Ljava/security/Key;Lorg/jose4j/jca/ProviderContext;)Ljavax/crypto/Mac;

    move-result-object p1

    .line 67
    new-instance p2, Lorg/jose4j/jwa/CryptoPrimitive;

    invoke-direct {p2, p1}, Lorg/jose4j/jwa/CryptoPrimitive;-><init>(Ljavax/crypto/Mac;)V

    return-object p2
.end method

.method public sign(Lorg/jose4j/jwa/CryptoPrimitive;[B)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .line 72
    invoke-virtual {p1}, Lorg/jose4j/jwa/CryptoPrimitive;->getMac()Ljavax/crypto/Mac;

    move-result-object p1

    .line 73
    invoke-virtual {p1, p2}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object p1

    return-object p1
.end method

.method validateKey(Ljava/security/Key;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/InvalidKeyException;
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 89
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    if-eqz v0, :cond_1

    .line 91
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object p1

    invoke-static {p1}, Lorg/jose4j/lang/ByteUtil;->bitLength([B)I

    move-result p1

    .line 92
    iget v0, p0, Lorg/jose4j/jws/HmacUsingShaAlgorithm;->minimumKeyLength:I

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 94
    :cond_0
    new-instance v0, Lorg/jose4j/lang/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "A key of the same size as the hash output (i.e. "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/jose4j/jws/HmacUsingShaAlgorithm;->minimumKeyLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bits for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 95
    invoke-virtual {p0}, Lorg/jose4j/jws/HmacUsingShaAlgorithm;->getAlgorithmIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") or larger MUST be used with the HMAC SHA algorithms but this key is only "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " bits"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/jose4j/lang/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void

    .line 86
    :cond_2
    new-instance p1, Lorg/jose4j/lang/InvalidKeyException;

    const-string v0, "key is null"

    invoke-direct {p1, v0}, Lorg/jose4j/lang/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public validateSigningKey(Ljava/security/Key;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/InvalidKeyException;
        }
    .end annotation

    .line 103
    invoke-virtual {p0, p1}, Lorg/jose4j/jws/HmacUsingShaAlgorithm;->validateKey(Ljava/security/Key;)V

    return-void
.end method

.method public validateVerificationKey(Ljava/security/Key;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/InvalidKeyException;
        }
    .end annotation

    .line 108
    invoke-virtual {p0, p1}, Lorg/jose4j/jws/HmacUsingShaAlgorithm;->validateKey(Ljava/security/Key;)V

    return-void
.end method

.method public verifySignature([BLjava/security/Key;[BLorg/jose4j/jca/ProviderContext;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .line 52
    instance-of v0, p2, Ljavax/crypto/SecretKey;

    if-eqz v0, :cond_0

    .line 57
    invoke-direct {p0, p2, p4}, Lorg/jose4j/jws/HmacUsingShaAlgorithm;->getMacInstance(Ljava/security/Key;Lorg/jose4j/jca/ProviderContext;)Ljavax/crypto/Mac;

    move-result-object p2

    .line 58
    invoke-virtual {p2, p3}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object p2

    .line 60
    invoke-static {p1, p2}, Lorg/jose4j/lang/ByteUtil;->secureEquals([B[B)Z

    move-result p1

    return p1

    .line 54
    :cond_0
    new-instance p1, Lorg/jose4j/lang/InvalidKeyException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " cannot be used for HMAC verification."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/jose4j/lang/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
