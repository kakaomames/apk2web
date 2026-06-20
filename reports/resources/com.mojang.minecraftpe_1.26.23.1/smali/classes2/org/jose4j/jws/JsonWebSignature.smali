.class public Lorg/jose4j/jws/JsonWebSignature;
.super Lorg/jose4j/jwx/JsonWebStructure;
.source "JsonWebSignature.java"


# static fields
.field public static final COMPACT_SERIALIZATION_PARTS:S = 0x3S


# instance fields
.field private encodedPayload:Ljava/lang/String;

.field private payloadBytes:[B

.field private payloadCharEncoding:Ljava/lang/String;

.field private signingPrimitive:Lorg/jose4j/jwa/CryptoPrimitive;

.field private validSignature:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Lorg/jose4j/jwx/JsonWebStructure;-><init>()V

    .line 47
    const-string v0, "UTF-8"

    iput-object v0, p0, Lorg/jose4j/jws/JsonWebSignature;->payloadCharEncoding:Ljava/lang/String;

    .line 55
    const-string v0, "org.jose4j.jws.default-allow-none"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    sget-object v0, Lorg/jose4j/jwa/AlgorithmConstraints;->DISALLOW_NONE:Lorg/jose4j/jwa/AlgorithmConstraints;

    invoke-virtual {p0, v0}, Lorg/jose4j/jws/JsonWebSignature;->setAlgorithmConstraints(Lorg/jose4j/jwa/AlgorithmConstraints;)V

    :cond_0
    return-void
.end method

.method private createSigningPrimitive()Lorg/jose4j/jwa/CryptoPrimitive;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .line 201
    invoke-virtual {p0}, Lorg/jose4j/jws/JsonWebSignature;->getAlgorithm()Lorg/jose4j/jws/JsonWebSignatureAlgorithm;

    move-result-object v0

    .line 202
    invoke-virtual {p0}, Lorg/jose4j/jws/JsonWebSignature;->getKey()Ljava/security/Key;

    move-result-object v1

    .line 203
    invoke-virtual {p0}, Lorg/jose4j/jws/JsonWebSignature;->isDoKeyValidation()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 205
    invoke-interface {v0, v1}, Lorg/jose4j/jws/JsonWebSignatureAlgorithm;->validateSigningKey(Ljava/security/Key;)V

    .line 207
    :cond_0
    invoke-virtual {p0}, Lorg/jose4j/jws/JsonWebSignature;->getProviderCtx()Lorg/jose4j/jca/ProviderContext;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/jose4j/jws/JsonWebSignatureAlgorithm;->prepareForSign(Ljava/security/Key;Lorg/jose4j/jca/ProviderContext;)Lorg/jose4j/jwa/CryptoPrimitive;

    move-result-object v0

    return-object v0
.end method

.method private getAlgorithm(Z)Lorg/jose4j/jws/JsonWebSignatureAlgorithm;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/InvalidAlgorithmException;
        }
    .end annotation

    .line 272
    invoke-virtual {p0}, Lorg/jose4j/jws/JsonWebSignature;->getAlgorithmHeaderValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 280
    invoke-virtual {p0}, Lorg/jose4j/jws/JsonWebSignature;->getAlgorithmConstraints()Lorg/jose4j/jwa/AlgorithmConstraints;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/jose4j/jwa/AlgorithmConstraints;->checkConstraint(Ljava/lang/String;)V

    .line 283
    :cond_0
    invoke-static {}, Lorg/jose4j/jwa/AlgorithmFactoryFactory;->getInstance()Lorg/jose4j/jwa/AlgorithmFactoryFactory;

    move-result-object p1

    .line 284
    invoke-virtual {p1}, Lorg/jose4j/jwa/AlgorithmFactoryFactory;->getJwsAlgorithmFactory()Lorg/jose4j/jwa/AlgorithmFactory;

    move-result-object p1

    .line 285
    invoke-virtual {p1, v0}, Lorg/jose4j/jwa/AlgorithmFactory;->getAlgorithm(Ljava/lang/String;)Lorg/jose4j/jwa/Algorithm;

    move-result-object p1

    check-cast p1, Lorg/jose4j/jws/JsonWebSignatureAlgorithm;

    return-object p1

    .line 275
    :cond_1
    new-instance p1, Lorg/jose4j/lang/InvalidAlgorithmException;

    const-string v0, "Signature algorithm header (alg) not set."

    invoke-direct {p1, v0}, Lorg/jose4j/lang/InvalidAlgorithmException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getSigningInputBytes()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .line 304
    invoke-virtual {p0}, Lorg/jose4j/jws/JsonWebSignature;->isRfc7797UnencodedPayload()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    .line 306
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/jose4j/jws/JsonWebSignature;->getEncodedHeader()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Lorg/jose4j/jws/JsonWebSignature;->getEncodedPayload()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lorg/jose4j/jwx/CompactSerializer;->serialize([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 307
    invoke-static {v0}, Lorg/jose4j/lang/StringUtil;->getBytesAscii(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0

    .line 313
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 314
    invoke-virtual {p0}, Lorg/jose4j/jws/JsonWebSignature;->getEncodedHeader()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/jose4j/lang/StringUtil;->getBytesAscii(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const/16 v1, 0x2e

    .line 315
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 316
    iget-object v1, p0, Lorg/jose4j/jws/JsonWebSignature;->payloadBytes:[B

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 317
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 321
    new-instance v1, Lorg/jose4j/lang/JoseException;

    const-string v2, "This should never happen from a ByteArrayOutputStream"

    invoke-direct {v1, v2, v0}, Lorg/jose4j/lang/JoseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private getStringPayload()Ljava/lang/String;
    .locals 2

    .line 363
    iget-object v0, p0, Lorg/jose4j/jws/JsonWebSignature;->payloadBytes:[B

    iget-object v1, p0, Lorg/jose4j/jws/JsonWebSignature;->payloadCharEncoding:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/jose4j/lang/StringUtil;->newString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getAlgorithm()Lorg/jose4j/jwa/Algorithm;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/InvalidAlgorithmException;
        }
    .end annotation

    .line 42
    invoke-virtual {p0}, Lorg/jose4j/jws/JsonWebSignature;->getAlgorithm()Lorg/jose4j/jws/JsonWebSignatureAlgorithm;

    move-result-object v0

    return-object v0
.end method

.method public getAlgorithm()Lorg/jose4j/jws/JsonWebSignatureAlgorithm;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/InvalidAlgorithmException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 261
    invoke-direct {p0, v0}, Lorg/jose4j/jws/JsonWebSignature;->getAlgorithm(Z)Lorg/jose4j/jws/JsonWebSignatureAlgorithm;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAlgorithmNoConstraintCheck()Lorg/jose4j/jwa/Algorithm;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/InvalidAlgorithmException;
        }
    .end annotation

    .line 42
    invoke-virtual {p0}, Lorg/jose4j/jws/JsonWebSignature;->getAlgorithmNoConstraintCheck()Lorg/jose4j/jws/JsonWebSignatureAlgorithm;

    move-result-object v0

    return-object v0
.end method

.method public getAlgorithmNoConstraintCheck()Lorg/jose4j/jws/JsonWebSignatureAlgorithm;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/InvalidAlgorithmException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 267
    invoke-direct {p0, v0}, Lorg/jose4j/jws/JsonWebSignature;->getAlgorithm(Z)Lorg/jose4j/jws/JsonWebSignatureAlgorithm;

    move-result-object v0

    return-object v0
.end method

.method public getCompactSerialization()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .line 145
    invoke-virtual {p0}, Lorg/jose4j/jws/JsonWebSignature;->sign()V

    .line 147
    invoke-virtual {p0}, Lorg/jose4j/jws/JsonWebSignature;->isRfc7797UnencodedPayload()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    invoke-direct {p0}, Lorg/jose4j/jws/JsonWebSignature;->getStringPayload()Ljava/lang/String;

    move-result-object v0

    .line 150
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 152
    :cond_0
    new-instance v0, Lorg/jose4j/lang/JoseException;

    const-string v1, "per https://tools.ietf.org/html/rfc7797#section-5.2 when using the JWS Compact Serialization, unencoded non-detached payloads using period (\'.\') characters would cause parsing errors; such payloads MUST NOT be used with the JWS Compact Serialization."

    invoke-direct {v0, v1}, Lorg/jose4j/lang/JoseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_1
    invoke-virtual {p0}, Lorg/jose4j/jws/JsonWebSignature;->getEncodedPayload()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v1, 0x3

    .line 162
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lorg/jose4j/jws/JsonWebSignature;->getEncodedHeader()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const/4 v0, 0x2

    invoke-virtual {p0}, Lorg/jose4j/jws/JsonWebSignature;->getEncodedSignature()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-static {v1}, Lorg/jose4j/jwx/CompactSerializer;->serialize([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDetachedContentCompactSerialization()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .line 176
    invoke-virtual {p0}, Lorg/jose4j/jws/JsonWebSignature;->sign()V

    const/4 v0, 0x3

    .line 177
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/jose4j/jws/JsonWebSignature;->getEncodedHeader()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-virtual {p0}, Lorg/jose4j/jws/JsonWebSignature;->getEncodedSignature()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lorg/jose4j/jwx/CompactSerializer;->serialize([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEncodedPayload()Ljava/lang/String;
    .locals 2

    .line 409
    iget-object v0, p0, Lorg/jose4j/jws/JsonWebSignature;->encodedPayload:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/jose4j/jws/JsonWebSignature;->base64url:Lorg/jose4j/base64url/Base64Url;

    iget-object v1, p0, Lorg/jose4j/jws/JsonWebSignature;->payloadBytes:[B

    invoke-virtual {v0, v1}, Lorg/jose4j/base64url/Base64Url;->base64UrlEncode([B)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getEncodedSignature()Ljava/lang/String;
    .locals 2

    .line 414
    iget-object v0, p0, Lorg/jose4j/jws/JsonWebSignature;->base64url:Lorg/jose4j/base64url/Base64Url;

    invoke-virtual {p0}, Lorg/jose4j/jws/JsonWebSignature;->getSignature()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jose4j/base64url/Base64Url;->base64UrlEncode([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKeyPersuasion()Lorg/jose4j/keys/KeyPersuasion;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/InvalidAlgorithmException;
        }
    .end annotation

    .line 394
    invoke-virtual {p0}, Lorg/jose4j/jws/JsonWebSignature;->getAlgorithmNoConstraintCheck()Lorg/jose4j/jws/JsonWebSignatureAlgorithm;

    move-result-object v0

    invoke-interface {v0}, Lorg/jose4j/jws/JsonWebSignatureAlgorithm;->getKeyPersuasion()Lorg/jose4j/keys/KeyPersuasion;

    move-result-object v0

    return-object v0
.end method

.method public getKeyType()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/InvalidAlgorithmException;
        }
    .end annotation

    .line 389
    invoke-virtual {p0}, Lorg/jose4j/jws/JsonWebSignature;->getAlgorithmNoConstraintCheck()Lorg/jose4j/jws/JsonWebSignatureAlgorithm;

    move-result-object v0

    invoke-interface {v0}, Lorg/jose4j/jws/JsonWebSignatureAlgorithm;->getKeyType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPayload()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .line 342
    const-string v0, "org.jose4j.jws.getPayload-skip-verify"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/jose4j/jws/JsonWebSignature;->verifySignature()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 344
    :cond_0
    new-instance v0, Lorg/jose4j/lang/IntegrityException;

    const-string v1, "JWS signature is invalid."

    invoke-direct {v0, v1}, Lorg/jose4j/lang/IntegrityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 346
    :cond_1
    :goto_0
    invoke-direct {p0}, Lorg/jose4j/jws/JsonWebSignature;->getStringPayload()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPayloadBytes()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .line 80
    invoke-virtual {p0}, Lorg/jose4j/jws/JsonWebSignature;->verifySignature()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lorg/jose4j/jws/JsonWebSignature;->payloadBytes:[B

    return-object v0

    .line 82
    :cond_0
    new-instance v0, Lorg/jose4j/lang/IntegrityException;

    const-string v1, "JWS signature is invalid."

    invoke-direct {v0, v1}, Lorg/jose4j/lang/IntegrityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPayloadCharEncoding()Ljava/lang/String;
    .locals 1

    .line 373
    iget-object v0, p0, Lorg/jose4j/jws/JsonWebSignature;->payloadCharEncoding:Ljava/lang/String;

    return-object v0
.end method

.method protected getSignature()[B
    .locals 1

    .line 419
    invoke-virtual {p0}, Lorg/jose4j/jws/JsonWebSignature;->getIntegrity()[B

    move-result-object v0

    return-object v0
.end method

.method public getUnverifiedPayload()Ljava/lang/String;
    .locals 1

    .line 358
    invoke-direct {p0}, Lorg/jose4j/jws/JsonWebSignature;->getStringPayload()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUnverifiedPayloadBytes()[B
    .locals 1

    .line 95
    iget-object v0, p0, Lorg/jose4j/jws/JsonWebSignature;->payloadBytes:[B

    return-object v0
.end method

.method protected isRfc7797UnencodedPayload()Z
    .locals 2

    .line 328
    iget-object v0, p0, Lorg/jose4j/jws/JsonWebSignature;->headers:Lorg/jose4j/jwx/Headers;

    const-string v1, "b64"

    invoke-virtual {v0, v1}, Lorg/jose4j/jwx/Headers;->getObjectHeaderValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 329
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected isSupportedCriticalHeader(Ljava/lang/String;)Z
    .locals 1

    .line 255
    const-string v0, "b64"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected onNewKey()V
    .locals 1

    const/4 v0, 0x0

    .line 225
    iput-object v0, p0, Lorg/jose4j/jws/JsonWebSignature;->validSignature:Ljava/lang/Boolean;

    return-void
.end method

.method public prepareSigningPrimitive()Lorg/jose4j/jwa/CryptoPrimitive;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .line 195
    invoke-direct {p0}, Lorg/jose4j/jws/JsonWebSignature;->createSigningPrimitive()Lorg/jose4j/jwa/CryptoPrimitive;

    move-result-object v0

    iput-object v0, p0, Lorg/jose4j/jws/JsonWebSignature;->signingPrimitive:Lorg/jose4j/jwa/CryptoPrimitive;

    return-object v0
.end method

.method protected setCompactSerializationParts([Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .line 110
    array-length v0, p1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 115
    aget-object v0, p1, v0

    invoke-virtual {p0, v0}, Lorg/jose4j/jws/JsonWebSignature;->setEncodedHeader(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0}, Lorg/jose4j/jws/JsonWebSignature;->isRfc7797UnencodedPayload()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 118
    aget-object v0, p1, v1

    invoke-virtual {p0, v0}, Lorg/jose4j/jws/JsonWebSignature;->setPayload(Ljava/lang/String;)V

    goto :goto_0

    .line 122
    :cond_0
    aget-object v0, p1, v1

    invoke-virtual {p0, v0}, Lorg/jose4j/jws/JsonWebSignature;->setEncodedPayload(Ljava/lang/String;)V

    .line 125
    :goto_0
    iget-object v0, p0, Lorg/jose4j/jws/JsonWebSignature;->base64url:Lorg/jose4j/base64url/Base64Url;

    const/4 v1, 0x2

    aget-object p1, p1, v1

    invoke-virtual {v0, p1}, Lorg/jose4j/base64url/Base64Url;->base64UrlDecode(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jose4j/jws/JsonWebSignature;->setSignature([B)V

    return-void

    .line 112
    :cond_1
    new-instance p1, Lorg/jose4j/lang/JoseException;

    const-string v0, "A JWS Compact Serialization must have exactly 3 parts separated by period (\'.\') characters"

    invoke-direct {p1, v0}, Lorg/jose4j/lang/JoseException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setEncodedPayload(Ljava/lang/String;)V
    .locals 1

    .line 399
    iput-object p1, p0, Lorg/jose4j/jws/JsonWebSignature;->encodedPayload:Ljava/lang/String;

    .line 400
    iget-object v0, p0, Lorg/jose4j/jws/JsonWebSignature;->base64url:Lorg/jose4j/base64url/Base64Url;

    invoke-virtual {v0, p1}, Lorg/jose4j/base64url/Base64Url;->base64UrlDecode(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lorg/jose4j/jws/JsonWebSignature;->payloadBytes:[B

    return-void
.end method

.method public setPayload(Ljava/lang/String;)V
    .locals 1

    .line 69
    iget-object v0, p0, Lorg/jose4j/jws/JsonWebSignature;->payloadCharEncoding:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/jose4j/lang/StringUtil;->getBytesUnchecked(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lorg/jose4j/jws/JsonWebSignature;->payloadBytes:[B

    const/4 p1, 0x0

    .line 70
    iput-object p1, p0, Lorg/jose4j/jws/JsonWebSignature;->encodedPayload:Ljava/lang/String;

    return-void
.end method

.method public setPayloadBytes([B)V
    .locals 0

    .line 105
    iput-object p1, p0, Lorg/jose4j/jws/JsonWebSignature;->payloadBytes:[B

    return-void
.end method

.method public setPayloadCharEncoding(Ljava/lang/String;)V
    .locals 0

    .line 384
    iput-object p1, p0, Lorg/jose4j/jws/JsonWebSignature;->payloadCharEncoding:Ljava/lang/String;

    return-void
.end method

.method protected setSignature([B)V
    .locals 0

    .line 424
    invoke-virtual {p0, p1}, Lorg/jose4j/jws/JsonWebSignature;->setIntegrity([B)V

    return-void
.end method

.method public sign()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .line 216
    iget-object v0, p0, Lorg/jose4j/jws/JsonWebSignature;->signingPrimitive:Lorg/jose4j/jwa/CryptoPrimitive;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/jose4j/jws/JsonWebSignature;->createSigningPrimitive()Lorg/jose4j/jwa/CryptoPrimitive;

    move-result-object v0

    .line 217
    :cond_0
    invoke-direct {p0}, Lorg/jose4j/jws/JsonWebSignature;->getSigningInputBytes()[B

    move-result-object v1

    .line 218
    invoke-virtual {p0}, Lorg/jose4j/jws/JsonWebSignature;->getAlgorithm()Lorg/jose4j/jws/JsonWebSignatureAlgorithm;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lorg/jose4j/jws/JsonWebSignatureAlgorithm;->sign(Lorg/jose4j/jwa/CryptoPrimitive;[B)[B

    move-result-object v0

    .line 219
    invoke-virtual {p0, v0}, Lorg/jose4j/jws/JsonWebSignature;->setSignature([B)V

    return-void
.end method

.method public verifySignature()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .line 235
    invoke-virtual {p0}, Lorg/jose4j/jws/JsonWebSignature;->getAlgorithm()Lorg/jose4j/jws/JsonWebSignatureAlgorithm;

    move-result-object v0

    .line 236
    invoke-virtual {p0}, Lorg/jose4j/jws/JsonWebSignature;->getKey()Ljava/security/Key;

    move-result-object v1

    .line 237
    invoke-virtual {p0}, Lorg/jose4j/jws/JsonWebSignature;->isDoKeyValidation()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 239
    invoke-interface {v0, v1}, Lorg/jose4j/jws/JsonWebSignatureAlgorithm;->validateVerificationKey(Ljava/security/Key;)V

    .line 241
    :cond_0
    iget-object v2, p0, Lorg/jose4j/jws/JsonWebSignature;->validSignature:Ljava/lang/Boolean;

    if-nez v2, :cond_1

    .line 243
    invoke-virtual {p0}, Lorg/jose4j/jws/JsonWebSignature;->checkCrit()V

    .line 244
    invoke-virtual {p0}, Lorg/jose4j/jws/JsonWebSignature;->getSignature()[B

    move-result-object v2

    .line 245
    invoke-direct {p0}, Lorg/jose4j/jws/JsonWebSignature;->getSigningInputBytes()[B

    move-result-object v3

    .line 246
    invoke-virtual {p0}, Lorg/jose4j/jws/JsonWebSignature;->getProviderCtx()Lorg/jose4j/jca/ProviderContext;

    move-result-object v4

    invoke-interface {v0, v2, v1, v3, v4}, Lorg/jose4j/jws/JsonWebSignatureAlgorithm;->verifySignature([BLjava/security/Key;[BLorg/jose4j/jca/ProviderContext;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/jose4j/jws/JsonWebSignature;->validSignature:Ljava/lang/Boolean;

    .line 249
    :cond_1
    iget-object v0, p0, Lorg/jose4j/jws/JsonWebSignature;->validSignature:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
