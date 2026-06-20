.class public Lorg/jose4j/jwk/RsaJsonWebKey;
.super Lorg/jose4j/jwk/PublicJsonWebKey;
.source "RsaJsonWebKey.java"


# static fields
.field public static final EXPONENT_MEMBER_NAME:Ljava/lang/String; = "e"

.field public static final FACTOR_CRT_COEFFICIENT:Ljava/lang/String; = "t"

.field public static final FACTOR_CRT_EXPONENT_OTHER_MEMBER_NAME:Ljava/lang/String; = "d"

.field public static final FIRST_CRT_COEFFICIENT_MEMBER_NAME:Ljava/lang/String; = "qi"

.field public static final FIRST_FACTOR_CRT_EXPONENT_MEMBER_NAME:Ljava/lang/String; = "dp"

.field public static final FIRST_PRIME_FACTOR_MEMBER_NAME:Ljava/lang/String; = "p"

.field public static final KEY_TYPE:Ljava/lang/String; = "RSA"

.field public static final MODULUS_MEMBER_NAME:Ljava/lang/String; = "n"

.field public static final OTHER_PRIMES_INFO_MEMBER_NAME:Ljava/lang/String; = "oth"

.field public static final PRIME_FACTOR_OTHER_MEMBER_NAME:Ljava/lang/String; = "r"

.field public static final PRIVATE_EXPONENT_MEMBER_NAME:Ljava/lang/String; = "d"

.field public static final SECOND_FACTOR_CRT_EXPONENT_MEMBER_NAME:Ljava/lang/String; = "dq"

.field public static final SECOND_PRIME_FACTOR_MEMBER_NAME:Ljava/lang/String; = "q"


# direct methods
.method public constructor <init>(Ljava/security/interfaces/RSAPublicKey;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lorg/jose4j/jwk/PublicJsonWebKey;-><init>(Ljava/security/PublicKey;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, p1, v0}, Lorg/jose4j/jwk/RsaJsonWebKey;-><init>(Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Ljava/lang/String;)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 64
    invoke-direct/range {p0 .. p2}, Lorg/jose4j/jwk/PublicJsonWebKey;-><init>(Ljava/util/Map;Ljava/lang/String;)V

    .line 66
    const-string v2, "n"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lorg/jose4j/jwk/RsaJsonWebKey;->getBigIntFromBase64UrlEncodedParam(Ljava/util/Map;Ljava/lang/String;Z)Ljava/math/BigInteger;

    move-result-object v5

    .line 68
    const-string v13, "e"

    invoke-virtual {v0, v1, v13, v3}, Lorg/jose4j/jwk/RsaJsonWebKey;->getBigIntFromBase64UrlEncodedParam(Ljava/util/Map;Ljava/lang/String;Z)Ljava/math/BigInteger;

    move-result-object v6

    .line 70
    new-instance v4, Lorg/jose4j/keys/RsaKeyUtil;

    const/4 v7, 0x0

    move-object/from16 v8, p2

    invoke-direct {v4, v8, v7}, Lorg/jose4j/keys/RsaKeyUtil;-><init>(Ljava/lang/String;Ljava/security/SecureRandom;)V

    .line 71
    invoke-virtual {v4, v5, v6}, Lorg/jose4j/keys/RsaKeyUtil;->publicKey(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/security/interfaces/RSAPublicKey;

    move-result-object v7

    iput-object v7, v0, Lorg/jose4j/jwk/RsaJsonWebKey;->key:Ljava/security/Key;

    .line 72
    invoke-virtual/range {p0 .. p0}, Lorg/jose4j/jwk/RsaJsonWebKey;->checkForBareKeyCertMismatch()V

    .line 74
    const-string v14, "d"

    invoke-interface {v1, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    const-string v15, "qi"

    const-string v12, "dq"

    const-string v11, "dp"

    const-string v10, "q"

    const-string v9, "p"

    const/4 v8, 0x0

    if-eqz v7, :cond_1

    .line 76
    invoke-virtual {v0, v1, v14, v8}, Lorg/jose4j/jwk/RsaJsonWebKey;->getBigIntFromBase64UrlEncodedParam(Ljava/util/Map;Ljava/lang/String;Z)Ljava/math/BigInteger;

    move-result-object v7

    .line 78
    invoke-interface {v1, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_0

    .line 80
    invoke-virtual {v0, v1, v9, v8}, Lorg/jose4j/jwk/RsaJsonWebKey;->getBigIntFromBase64UrlEncodedParam(Ljava/util/Map;Ljava/lang/String;Z)Ljava/math/BigInteger;

    move-result-object v16

    .line 81
    invoke-virtual {v0, v1, v10, v8}, Lorg/jose4j/jwk/RsaJsonWebKey;->getBigIntFromBase64UrlEncodedParam(Ljava/util/Map;Ljava/lang/String;Z)Ljava/math/BigInteger;

    move-result-object v17

    .line 82
    invoke-virtual {v0, v1, v11, v8}, Lorg/jose4j/jwk/RsaJsonWebKey;->getBigIntFromBase64UrlEncodedParam(Ljava/util/Map;Ljava/lang/String;Z)Ljava/math/BigInteger;

    move-result-object v18

    .line 83
    invoke-virtual {v0, v1, v12, v8}, Lorg/jose4j/jwk/RsaJsonWebKey;->getBigIntFromBase64UrlEncodedParam(Ljava/util/Map;Ljava/lang/String;Z)Ljava/math/BigInteger;

    move-result-object v19

    .line 84
    invoke-virtual {v0, v1, v15, v8}, Lorg/jose4j/jwk/RsaJsonWebKey;->getBigIntFromBase64UrlEncodedParam(Ljava/util/Map;Ljava/lang/String;Z)Ljava/math/BigInteger;

    move-result-object v1

    move/from16 v20, v8

    move-object/from16 v8, v16

    move-object/from16 v16, v9

    move-object/from16 v9, v17

    move-object/from16 v17, v10

    move-object/from16 v10, v18

    move-object/from16 v18, v11

    move-object/from16 v11, v19

    move-object/from16 v19, v12

    move-object v12, v1

    .line 85
    invoke-virtual/range {v4 .. v12}, Lorg/jose4j/keys/RsaKeyUtil;->privateKey(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/security/interfaces/RSAPrivateKey;

    move-result-object v1

    iput-object v1, v0, Lorg/jose4j/jwk/RsaJsonWebKey;->privateKey:Ljava/security/PrivateKey;

    goto :goto_0

    :cond_0
    move/from16 v20, v8

    move-object/from16 v16, v9

    move-object/from16 v17, v10

    move-object/from16 v18, v11

    move-object/from16 v19, v12

    .line 89
    invoke-virtual {v4, v5, v7}, Lorg/jose4j/keys/RsaKeyUtil;->privateKey(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/security/interfaces/RSAPrivateKey;

    move-result-object v1

    iput-object v1, v0, Lorg/jose4j/jwk/RsaJsonWebKey;->privateKey:Ljava/security/PrivateKey;

    goto :goto_0

    :cond_1
    move/from16 v20, v8

    move-object/from16 v16, v9

    move-object/from16 v17, v10

    move-object/from16 v18, v11

    move-object/from16 v19, v12

    :goto_0
    const/16 v1, 0x8

    .line 93
    new-array v1, v1, [Ljava/lang/String;

    aput-object v2, v1, v20

    aput-object v13, v1, v3

    const/4 v2, 0x2

    aput-object v14, v1, v2

    const/4 v2, 0x3

    aput-object v16, v1, v2

    const/4 v2, 0x4

    aput-object v17, v1, v2

    const/4 v2, 0x5

    aput-object v18, v1, v2

    const/4 v2, 0x6

    aput-object v19, v1, v2

    const/4 v2, 0x7

    aput-object v15, v1, v2

    invoke-virtual {v0, v1}, Lorg/jose4j/jwk/RsaJsonWebKey;->removeFromOtherParams([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected fillPrivateTypeSpecificParams(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 136
    invoke-virtual {p0}, Lorg/jose4j/jwk/RsaJsonWebKey;->getRsaPrivateKey()Ljava/security/interfaces/RSAPrivateKey;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 140
    const-string v1, "d"

    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0, p1, v1, v2}, Lorg/jose4j/jwk/RsaJsonWebKey;->putBigIntAsBase64UrlEncodedParam(Ljava/util/Map;Ljava/lang/String;Ljava/math/BigInteger;)V

    .line 142
    instance-of v1, v0, Ljava/security/interfaces/RSAPrivateCrtKey;

    if-eqz v1, :cond_0

    .line 144
    check-cast v0, Ljava/security/interfaces/RSAPrivateCrtKey;

    .line 145
    const-string v1, "p"

    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0, p1, v1, v2}, Lorg/jose4j/jwk/RsaJsonWebKey;->putBigIntAsBase64UrlEncodedParam(Ljava/util/Map;Ljava/lang/String;Ljava/math/BigInteger;)V

    .line 146
    const-string v1, "q"

    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeQ()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0, p1, v1, v2}, Lorg/jose4j/jwk/RsaJsonWebKey;->putBigIntAsBase64UrlEncodedParam(Ljava/util/Map;Ljava/lang/String;Ljava/math/BigInteger;)V

    .line 147
    const-string v1, "dp"

    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0, p1, v1, v2}, Lorg/jose4j/jwk/RsaJsonWebKey;->putBigIntAsBase64UrlEncodedParam(Ljava/util/Map;Ljava/lang/String;Ljava/math/BigInteger;)V

    .line 148
    const-string v1, "dq"

    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentQ()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0, p1, v1, v2}, Lorg/jose4j/jwk/RsaJsonWebKey;->putBigIntAsBase64UrlEncodedParam(Ljava/util/Map;Ljava/lang/String;Ljava/math/BigInteger;)V

    .line 149
    const-string v1, "qi"

    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getCrtCoefficient()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, p1, v1, v0}, Lorg/jose4j/jwk/RsaJsonWebKey;->putBigIntAsBase64UrlEncodedParam(Ljava/util/Map;Ljava/lang/String;Ljava/math/BigInteger;)V

    :cond_0
    return-void
.end method

.method protected fillPublicTypeSpecificParams(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 129
    invoke-virtual {p0}, Lorg/jose4j/jwk/RsaJsonWebKey;->getRsaPublicKey()Ljava/security/interfaces/RSAPublicKey;

    move-result-object v0

    .line 130
    const-string v1, "n"

    invoke-interface {v0}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0, p1, v1, v2}, Lorg/jose4j/jwk/RsaJsonWebKey;->putBigIntAsBase64UrlEncodedParam(Ljava/util/Map;Ljava/lang/String;Ljava/math/BigInteger;)V

    .line 131
    const-string v1, "e"

    invoke-interface {v0}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, p1, v1, v0}, Lorg/jose4j/jwk/RsaJsonWebKey;->putBigIntAsBase64UrlEncodedParam(Ljava/util/Map;Ljava/lang/String;Ljava/math/BigInteger;)V

    return-void
.end method

.method public getKeyType()Ljava/lang/String;
    .locals 1

    .line 105
    const-string v0, "RSA"

    return-object v0
.end method

.method public getRSAPublicKey()Ljava/security/interfaces/RSAPublicKey;
    .locals 1

    .line 119
    invoke-virtual {p0}, Lorg/jose4j/jwk/RsaJsonWebKey;->getRsaPublicKey()Ljava/security/interfaces/RSAPublicKey;

    move-result-object v0

    return-object v0
.end method

.method public getRsaPrivateKey()Ljava/security/interfaces/RSAPrivateKey;
    .locals 1

    .line 124
    iget-object v0, p0, Lorg/jose4j/jwk/RsaJsonWebKey;->privateKey:Ljava/security/PrivateKey;

    check-cast v0, Ljava/security/interfaces/RSAPrivateKey;

    return-object v0
.end method

.method public getRsaPublicKey()Ljava/security/interfaces/RSAPublicKey;
    .locals 1

    .line 110
    iget-object v0, p0, Lorg/jose4j/jwk/RsaJsonWebKey;->key:Ljava/security/Key;

    check-cast v0, Ljava/security/interfaces/RSAPublicKey;

    return-object v0
.end method

.method protected produceThumbprintHashInput()Ljava/lang/String;
    .locals 3

    .line 158
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 159
    invoke-virtual {p0, v0}, Lorg/jose4j/jwk/RsaJsonWebKey;->fillPublicTypeSpecificParams(Ljava/util/Map;)V

    .line 160
    const/4 v1, 0x0

    sget-object v1, Lorg/spongycastle/pqc/crypto/gmss/util/mbQq/agaLzgk;->SWWdA:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "n"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "{\"e\":\"%s\",\"kty\":\"RSA\",\"n\":\"%s\"}"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
