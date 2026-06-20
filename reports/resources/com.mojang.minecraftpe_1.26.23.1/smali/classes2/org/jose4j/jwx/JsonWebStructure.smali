.class public abstract Lorg/jose4j/jwx/JsonWebStructure;
.super Ljava/lang/Object;
.source "JsonWebStructure.java"


# static fields
.field private static final DEFAULT_PROVIDER_CONTEXT:Lorg/jose4j/jca/ProviderContext;


# instance fields
.field private algorithmConstraints:Lorg/jose4j/jwa/AlgorithmConstraints;

.field protected base64url:Lorg/jose4j/base64url/Base64Url;

.field protected doKeyValidation:Z

.field protected headers:Lorg/jose4j/jwx/Headers;

.field private integrity:[B

.field private key:Ljava/security/Key;

.field private knownCriticalHeaders:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private providerCtx:Lorg/jose4j/jca/ProviderContext;

.field protected rawCompactSerialization:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 64
    new-instance v0, Lorg/jose4j/jca/ProviderContext;

    invoke-direct {v0}, Lorg/jose4j/jca/ProviderContext;-><init>()V

    sput-object v0, Lorg/jose4j/jwx/JsonWebStructure;->DEFAULT_PROVIDER_CONTEXT:Lorg/jose4j/jca/ProviderContext;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Lorg/jose4j/base64url/Base64Url;

    invoke-direct {v0}, Lorg/jose4j/base64url/Base64Url;-><init>()V

    iput-object v0, p0, Lorg/jose4j/jwx/JsonWebStructure;->base64url:Lorg/jose4j/base64url/Base64Url;

    .line 50
    new-instance v0, Lorg/jose4j/jwx/Headers;

    invoke-direct {v0}, Lorg/jose4j/jwx/Headers;-><init>()V

    iput-object v0, p0, Lorg/jose4j/jwx/JsonWebStructure;->headers:Lorg/jose4j/jwx/Headers;

    const/4 v0, 0x1

    .line 56
    iput-boolean v0, p0, Lorg/jose4j/jwx/JsonWebStructure;->doKeyValidation:Z

    .line 60
    sget-object v0, Lorg/jose4j/jwa/AlgorithmConstraints;->NO_CONSTRAINTS:Lorg/jose4j/jwa/AlgorithmConstraints;

    iput-object v0, p0, Lorg/jose4j/jwx/JsonWebStructure;->algorithmConstraints:Lorg/jose4j/jwa/AlgorithmConstraints;

    .line 62
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/jose4j/jwx/JsonWebStructure;->knownCriticalHeaders:Ljava/util/Set;

    .line 65
    sget-object v0, Lorg/jose4j/jwx/JsonWebStructure;->DEFAULT_PROVIDER_CONTEXT:Lorg/jose4j/jca/ProviderContext;

    iput-object v0, p0, Lorg/jose4j/jwx/JsonWebStructure;->providerCtx:Lorg/jose4j/jca/ProviderContext;

    return-void
.end method

.method public static fromCompactSerialization(Ljava/lang/String;)Lorg/jose4j/jwx/JsonWebStructure;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .line 79
    invoke-static {p0}, Lorg/jose4j/jwx/CompactSerializer;->deserialize(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 80
    array-length v1, v0

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 82
    new-instance v1, Lorg/jose4j/jwe/JsonWebEncryption;

    invoke-direct {v1}, Lorg/jose4j/jwe/JsonWebEncryption;-><init>()V

    goto :goto_0

    .line 84
    :cond_0
    array-length v1, v0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 86
    new-instance v1, Lorg/jose4j/jws/JsonWebSignature;

    invoke-direct {v1}, Lorg/jose4j/jws/JsonWebSignature;-><init>()V

    .line 96
    :goto_0
    invoke-virtual {v1, v0}, Lorg/jose4j/jwx/JsonWebStructure;->setCompactSerializationParts([Ljava/lang/String;)V

    .line 97
    iput-object p0, v1, Lorg/jose4j/jwx/JsonWebStructure;->rawCompactSerialization:Ljava/lang/String;

    return-object v1

    .line 90
    :cond_1
    new-instance p0, Lorg/jose4j/lang/JoseException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid JOSE Compact Serialization. Expecting either 3 or 5 parts for JWS or JWE respectively but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jose4j/lang/JoseException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method protected checkCrit()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .line 360
    iget-object v0, p0, Lorg/jose4j/jwx/JsonWebStructure;->headers:Lorg/jose4j/jwx/Headers;

    const-string v1, "crit"

    invoke-virtual {v0, v1}, Lorg/jose4j/jwx/Headers;->getObjectHeaderValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 365
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 367
    check-cast v0, Ljava/util/List;

    goto :goto_0

    .line 369
    :cond_0
    instance-of v1, v0, [Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 371
    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 378
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 380
    iget-object v2, p0, Lorg/jose4j/jwx/JsonWebStructure;->knownCriticalHeaders:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0, v1}, Lorg/jose4j/jwx/JsonWebStructure;->isSupportedCriticalHeader(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    .line 382
    :cond_2
    new-instance v0, Lorg/jose4j/lang/JoseException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unrecognized header \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' marked as critical."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jose4j/lang/JoseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 375
    :cond_3
    new-instance v1, Lorg/jose4j/lang/JoseException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "crit header value not an array ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/jose4j/lang/JoseException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    return-void
.end method

.method protected checkNotEmptyPart(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 140
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 142
    :cond_0
    new-instance p1, Lorg/jose4j/lang/JoseException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "The "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " cannot be empty."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/jose4j/lang/JoseException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract getAlgorithm()Lorg/jose4j/jwa/Algorithm;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/InvalidAlgorithmException;
        }
    .end annotation
.end method

.method protected getAlgorithmConstraints()Lorg/jose4j/jwa/AlgorithmConstraints;
    .locals 1

    .line 328
    iget-object v0, p0, Lorg/jose4j/jwx/JsonWebStructure;->algorithmConstraints:Lorg/jose4j/jwa/AlgorithmConstraints;

    return-object v0
.end method

.method public getAlgorithmHeaderValue()Ljava/lang/String;
    .locals 1

    .line 168
    const-string v0, "alg"

    invoke-virtual {p0, v0}, Lorg/jose4j/jwx/JsonWebStructure;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract getAlgorithmNoConstraintCheck()Lorg/jose4j/jwa/Algorithm;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/InvalidAlgorithmException;
        }
    .end annotation
.end method

.method public getCertificateChainHeaderValue()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .line 223
    iget-object v0, p0, Lorg/jose4j/jwx/JsonWebStructure;->headers:Lorg/jose4j/jwx/Headers;

    const-string/jumbo v1, "x5c"

    invoke-virtual {v0, v1}, Lorg/jose4j/jwx/Headers;->getObjectHeaderValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 225
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_1

    .line 227
    check-cast v0, Ljava/util/List;

    .line 228
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 229
    new-instance v2, Lorg/jose4j/keys/X509Util;

    invoke-direct {v2}, Lorg/jose4j/keys/X509Util;-><init>()V

    .line 230
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 232
    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/jose4j/keys/X509Util;->fromBase64Der(Ljava/lang/String;)Ljava/security/cert/X509Certificate;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getCompactSerialization()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation
.end method

.method public getContentTypeHeaderValue()Ljava/lang/String;
    .locals 1

    .line 178
    const-string v0, "cty"

    invoke-virtual {p0, v0}, Lorg/jose4j/jwx/JsonWebStructure;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getEncodedHeader()Ljava/lang/String;
    .locals 1

    .line 119
    iget-object v0, p0, Lorg/jose4j/jwx/JsonWebStructure;->headers:Lorg/jose4j/jwx/Headers;

    invoke-virtual {v0}, Lorg/jose4j/jwx/Headers;->getEncodedHeader()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeader()Ljava/lang/String;
    .locals 1

    .line 114
    invoke-virtual {p0}, Lorg/jose4j/jwx/JsonWebStructure;->getHeaders()Lorg/jose4j/jwx/Headers;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jose4j/jwx/Headers;->getFullHeaderAsJsonString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 148
    iget-object v0, p0, Lorg/jose4j/jwx/JsonWebStructure;->headers:Lorg/jose4j/jwx/Headers;

    invoke-virtual {v0, p1}, Lorg/jose4j/jwx/Headers;->getStringHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getHeaders()Lorg/jose4j/jwx/Headers;
    .locals 1

    .line 135
    iget-object v0, p0, Lorg/jose4j/jwx/JsonWebStructure;->headers:Lorg/jose4j/jwx/Headers;

    return-object v0
.end method

.method protected getIntegrity()[B
    .locals 1

    .line 308
    iget-object v0, p0, Lorg/jose4j/jwx/JsonWebStructure;->integrity:[B

    return-object v0
.end method

.method public getJwkHeader()Lorg/jose4j/jwk/PublicJsonWebKey;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .line 200
    iget-object v0, p0, Lorg/jose4j/jwx/JsonWebStructure;->headers:Lorg/jose4j/jwx/Headers;

    const-string v1, "jwk"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/jose4j/jwx/Headers;->getPublicJwkHeaderValue(Ljava/lang/String;Ljava/lang/String;)Lorg/jose4j/jwk/PublicJsonWebKey;

    move-result-object v0

    return-object v0
.end method

.method public getKey()Ljava/security/Key;
    .locals 1

    .line 287
    iget-object v0, p0, Lorg/jose4j/jwx/JsonWebStructure;->key:Ljava/security/Key;

    return-object v0
.end method

.method public getKeyIdHeaderValue()Ljava/lang/String;
    .locals 1

    .line 188
    const-string v0, "kid"

    invoke-virtual {p0, v0}, Lorg/jose4j/jwx/JsonWebStructure;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLeafCertificateHeaderValue()Ljava/security/cert/X509Certificate;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .line 216
    invoke-virtual {p0}, Lorg/jose4j/jwx/JsonWebStructure;->getCertificateChainHeaderValue()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 218
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method public getObjectHeader(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 158
    iget-object v0, p0, Lorg/jose4j/jwx/JsonWebStructure;->headers:Lorg/jose4j/jwx/Headers;

    invoke-virtual {v0, p1}, Lorg/jose4j/jwx/Headers;->getObjectHeaderValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public abstract getPayload()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation
.end method

.method protected getProviderCtx()Lorg/jose4j/jca/ProviderContext;
    .locals 1

    .line 395
    iget-object v0, p0, Lorg/jose4j/jwx/JsonWebStructure;->providerCtx:Lorg/jose4j/jca/ProviderContext;

    return-object v0
.end method

.method public getX509CertSha1ThumbprintHeaderValue()Ljava/lang/String;
    .locals 1

    .line 255
    const-string/jumbo v0, "x5t"

    invoke-virtual {p0, v0}, Lorg/jose4j/jwx/JsonWebStructure;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getX509CertSha256ThumbprintHeaderValue()Ljava/lang/String;
    .locals 1

    .line 271
    const-string/jumbo v0, "x5t#S256"

    invoke-virtual {p0, v0}, Lorg/jose4j/jwx/JsonWebStructure;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isDoKeyValidation()Z
    .locals 1

    .line 318
    iget-boolean v0, p0, Lorg/jose4j/jwx/JsonWebStructure;->doKeyValidation:Z

    return v0
.end method

.method protected isSupportedCriticalHeader(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected onNewKey()V
    .locals 0

    return-void
.end method

.method public setAlgorithmConstraints(Lorg/jose4j/jwa/AlgorithmConstraints;)V
    .locals 0

    .line 333
    iput-object p1, p0, Lorg/jose4j/jwx/JsonWebStructure;->algorithmConstraints:Lorg/jose4j/jwa/AlgorithmConstraints;

    return-void
.end method

.method public setAlgorithmHeaderValue(Ljava/lang/String;)V
    .locals 1

    .line 163
    const-string v0, "alg"

    invoke-virtual {p0, v0, p1}, Lorg/jose4j/jwx/JsonWebStructure;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public varargs setCertificateChainHeaderValue([Ljava/security/cert/X509Certificate;)V
    .locals 5

    .line 243
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 244
    new-instance v1, Lorg/jose4j/keys/X509Util;

    invoke-direct {v1}, Lorg/jose4j/keys/X509Util;-><init>()V

    .line 245
    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, p1, v3

    .line 247
    invoke-virtual {v1, v4}, Lorg/jose4j/keys/X509Util;->toBase64(Ljava/security/cert/X509Certificate;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 250
    :cond_0
    iget-object p1, p0, Lorg/jose4j/jwx/JsonWebStructure;->headers:Lorg/jose4j/jwx/Headers;

    const-string/jumbo v1, "x5c"

    invoke-virtual {p1, v1, v0}, Lorg/jose4j/jwx/Headers;->setObjectHeaderValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setCompactSerialization(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .line 103
    invoke-static {p1}, Lorg/jose4j/jwx/CompactSerializer;->deserialize(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 104
    invoke-virtual {p0, v0}, Lorg/jose4j/jwx/JsonWebStructure;->setCompactSerializationParts([Ljava/lang/String;)V

    .line 105
    iput-object p1, p0, Lorg/jose4j/jwx/JsonWebStructure;->rawCompactSerialization:Ljava/lang/String;

    return-void
.end method

.method protected abstract setCompactSerializationParts([Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation
.end method

.method public setContentTypeHeaderValue(Ljava/lang/String;)V
    .locals 1

    .line 173
    const-string v0, "cty"

    invoke-virtual {p0, v0, p1}, Lorg/jose4j/jwx/JsonWebStructure;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public varargs setCriticalHeaderNames([Ljava/lang/String;)V
    .locals 2

    .line 344
    iget-object v0, p0, Lorg/jose4j/jwx/JsonWebStructure;->headers:Lorg/jose4j/jwx/Headers;

    const-string v1, "crit"

    invoke-virtual {v0, v1, p1}, Lorg/jose4j/jwx/Headers;->setObjectHeaderValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setDoKeyValidation(Z)V
    .locals 0

    .line 323
    iput-boolean p1, p0, Lorg/jose4j/jwx/JsonWebStructure;->doKeyValidation:Z

    return-void
.end method

.method protected setEncodedHeader(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .line 129
    const-string v0, "Encoded Header"

    invoke-virtual {p0, p1, v0}, Lorg/jose4j/jwx/JsonWebStructure;->checkNotEmptyPart(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lorg/jose4j/jwx/JsonWebStructure;->headers:Lorg/jose4j/jwx/Headers;

    invoke-virtual {v0, p1}, Lorg/jose4j/jwx/Headers;->setEncodedHeader(Ljava/lang/String;)V

    return-void
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 153
    iget-object v0, p0, Lorg/jose4j/jwx/JsonWebStructure;->headers:Lorg/jose4j/jwx/Headers;

    invoke-virtual {v0, p1, p2}, Lorg/jose4j/jwx/Headers;->setObjectHeaderValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 124
    iget-object v0, p0, Lorg/jose4j/jwx/JsonWebStructure;->headers:Lorg/jose4j/jwx/Headers;

    invoke-virtual {v0, p1, p2}, Lorg/jose4j/jwx/Headers;->setStringHeaderValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected setIntegrity([B)V
    .locals 0

    .line 313
    iput-object p1, p0, Lorg/jose4j/jwx/JsonWebStructure;->integrity:[B

    return-void
.end method

.method public setJwkHeader(Lorg/jose4j/jwk/PublicJsonWebKey;)V
    .locals 2

    .line 211
    iget-object v0, p0, Lorg/jose4j/jwx/JsonWebStructure;->headers:Lorg/jose4j/jwx/Headers;

    const-string v1, "jwk"

    invoke-virtual {v0, v1, p1}, Lorg/jose4j/jwx/Headers;->setJwkHeaderValue(Ljava/lang/String;Lorg/jose4j/jwk/JsonWebKey;)V

    return-void
.end method

.method public setKey(Ljava/security/Key;)V
    .locals 1

    .line 292
    iget-object v0, p0, Lorg/jose4j/jwx/JsonWebStructure;->key:Ljava/security/Key;

    if-nez p1, :cond_0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 295
    :cond_1
    invoke-virtual {p0}, Lorg/jose4j/jwx/JsonWebStructure;->onNewKey()V

    .line 298
    :goto_0
    iput-object p1, p0, Lorg/jose4j/jwx/JsonWebStructure;->key:Ljava/security/Key;

    return-void
.end method

.method public setKeyIdHeaderValue(Ljava/lang/String;)V
    .locals 1

    .line 183
    const-string v0, "kid"

    invoke-virtual {p0, v0, p1}, Lorg/jose4j/jwx/JsonWebStructure;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public varargs setKnownCriticalHeaders([Ljava/lang/String;)V
    .locals 1

    .line 355
    new-instance v0, Ljava/util/HashSet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/jose4j/jwx/JsonWebStructure;->knownCriticalHeaders:Ljava/util/Set;

    return-void
.end method

.method public abstract setPayload(Ljava/lang/String;)V
.end method

.method public setProviderContext(Lorg/jose4j/jca/ProviderContext;)V
    .locals 0

    .line 409
    iput-object p1, p0, Lorg/jose4j/jwx/JsonWebStructure;->providerCtx:Lorg/jose4j/jca/ProviderContext;

    return-void
.end method

.method public setX509CertSha1ThumbprintHeaderValue(Ljava/lang/String;)V
    .locals 1

    .line 260
    const-string/jumbo v0, "x5t"

    invoke-virtual {p0, v0, p1}, Lorg/jose4j/jwx/JsonWebStructure;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setX509CertSha1ThumbprintHeaderValue(Ljava/security/cert/X509Certificate;)V
    .locals 0

    .line 265
    invoke-static {p1}, Lorg/jose4j/keys/X509Util;->x5t(Ljava/security/cert/X509Certificate;)Ljava/lang/String;

    move-result-object p1

    .line 266
    invoke-virtual {p0, p1}, Lorg/jose4j/jwx/JsonWebStructure;->setX509CertSha1ThumbprintHeaderValue(Ljava/lang/String;)V

    return-void
.end method

.method public setX509CertSha256ThumbprintHeaderValue(Ljava/lang/String;)V
    .locals 1

    .line 276
    const-string/jumbo v0, "x5t#S256"

    invoke-virtual {p0, v0, p1}, Lorg/jose4j/jwx/JsonWebStructure;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setX509CertSha256ThumbprintHeaderValue(Ljava/security/cert/X509Certificate;)V
    .locals 0

    .line 281
    invoke-static {p1}, Lorg/jose4j/keys/X509Util;->x5tS256(Ljava/security/cert/X509Certificate;)Ljava/lang/String;

    move-result-object p1

    .line 282
    invoke-virtual {p0, p1}, Lorg/jose4j/jwx/JsonWebStructure;->setX509CertSha256ThumbprintHeaderValue(Ljava/lang/String;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 415
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 416
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jose4j/jwx/JsonWebStructure;->getHeaders()Lorg/jose4j/jwx/Headers;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jose4j/jwx/Headers;->getFullHeaderAsJsonString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    iget-object v1, p0, Lorg/jose4j/jwx/JsonWebStructure;->rawCompactSerialization:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 419
    const-string v1, "->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/jose4j/jwx/JsonWebStructure;->rawCompactSerialization:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
