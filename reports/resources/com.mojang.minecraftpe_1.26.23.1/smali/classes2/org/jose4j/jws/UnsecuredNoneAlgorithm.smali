.class public Lorg/jose4j/jws/UnsecuredNoneAlgorithm;
.super Lorg/jose4j/jwa/AlgorithmInfo;
.source "UnsecuredNoneAlgorithm.java"

# interfaces
.implements Lorg/jose4j/jws/JsonWebSignatureAlgorithm;


# static fields
.field private static final CANNOT_HAVE_KEY_MESSAGE:Ljava/lang/String; = "JWS Plaintext (alg=none) must not use a key."


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lorg/jose4j/jwa/AlgorithmInfo;-><init>()V

    .line 36
    const-string v0, "none"

    invoke-virtual {p0, v0}, Lorg/jose4j/jws/UnsecuredNoneAlgorithm;->setAlgorithmIdentifier(Ljava/lang/String;)V

    .line 37
    sget-object v0, Lorg/jose4j/keys/KeyPersuasion;->NONE:Lorg/jose4j/keys/KeyPersuasion;

    invoke-virtual {p0, v0}, Lorg/jose4j/jws/UnsecuredNoneAlgorithm;->setKeyPersuasion(Lorg/jose4j/keys/KeyPersuasion;)V

    return-void
.end method

.method private validateKey(Ljava/security/Key;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/InvalidKeyException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 77
    :cond_0
    new-instance p1, Lorg/jose4j/lang/InvalidKeyException;

    const-string v0, "JWS Plaintext (alg=none) must not use a key."

    invoke-direct {p1, v0}, Lorg/jose4j/lang/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public isAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public prepareForSign(Ljava/security/Key;Lorg/jose4j/jca/ProviderContext;)Lorg/jose4j/jwa/CryptoPrimitive;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .line 51
    invoke-direct {p0, p1}, Lorg/jose4j/jws/UnsecuredNoneAlgorithm;->validateKey(Ljava/security/Key;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public sign(Lorg/jose4j/jwa/CryptoPrimitive;[B)[B
    .locals 0

    .line 58
    sget-object p1, Lorg/jose4j/lang/ByteUtil;->EMPTY_BYTES:[B

    return-object p1
.end method

.method public validateSigningKey(Ljava/security/Key;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/InvalidKeyException;
        }
    .end annotation

    .line 64
    invoke-direct {p0, p1}, Lorg/jose4j/jws/UnsecuredNoneAlgorithm;->validateKey(Ljava/security/Key;)V

    return-void
.end method

.method public validateVerificationKey(Ljava/security/Key;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/InvalidKeyException;
        }
    .end annotation

    .line 70
    invoke-direct {p0, p1}, Lorg/jose4j/jws/UnsecuredNoneAlgorithm;->validateKey(Ljava/security/Key;)V

    return-void
.end method

.method public verifySignature([BLjava/security/Key;[BLorg/jose4j/jca/ProviderContext;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .line 43
    invoke-direct {p0, p2}, Lorg/jose4j/jws/UnsecuredNoneAlgorithm;->validateKey(Ljava/security/Key;)V

    .line 45
    array-length p1, p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
