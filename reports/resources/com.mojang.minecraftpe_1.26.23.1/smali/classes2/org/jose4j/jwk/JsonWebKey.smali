.class public abstract Lorg/jose4j/jwk/JsonWebKey;
.super Ljava/lang/Object;
.source "JsonWebKey.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jose4j/jwk/JsonWebKey$Factory;,
        Lorg/jose4j/jwk/JsonWebKey$OutputControlLevel;
    }
.end annotation


# static fields
.field public static final ALGORITHM_PARAMETER:Ljava/lang/String; = "alg"

.field public static final KEY_ID_PARAMETER:Ljava/lang/String; = "kid"

.field public static final KEY_OPERATIONS:Ljava/lang/String; = "key_ops"

.field public static final KEY_TYPE_PARAMETER:Ljava/lang/String; = "kty"

.field public static final USE_PARAMETER:Ljava/lang/String; = "use"


# instance fields
.field private algorithm:Ljava/lang/String;

.field protected key:Ljava/security/Key;

.field private keyId:Ljava/lang/String;

.field private keyOps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected otherParameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private use:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/security/Key;)V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/jose4j/jwk/JsonWebKey;->otherParameters:Ljava/util/Map;

    .line 60
    iput-object p1, p0, Lorg/jose4j/jwk/JsonWebKey;->key:Ljava/security/Key;

    return-void
.end method

.method protected constructor <init>(Ljava/util/Map;)V
    .locals 6
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

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/jose4j/jwk/JsonWebKey;->otherParameters:Ljava/util/Map;

    .line 65
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const/4 v0, 0x5

    .line 66
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "kty"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "use"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v3, "kid"

    aput-object v3, v0, v1

    const/4 v1, 0x3

    const-string v4, "alg"

    aput-object v4, v0, v1

    const/4 v1, 0x4

    const-string v5, "key_ops"

    aput-object v5, v0, v1

    invoke-virtual {p0, v0}, Lorg/jose4j/jwk/JsonWebKey;->removeFromOtherParams([Ljava/lang/String;)V

    .line 67
    invoke-static {p1, v2}, Lorg/jose4j/jwk/JsonWebKey;->getString(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jose4j/jwk/JsonWebKey;->setUse(Ljava/lang/String;)V

    .line 68
    invoke-static {p1, v3}, Lorg/jose4j/jwk/JsonWebKey;->getString(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jose4j/jwk/JsonWebKey;->setKeyId(Ljava/lang/String;)V

    .line 69
    invoke-static {p1, v4}, Lorg/jose4j/jwk/JsonWebKey;->getString(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jose4j/jwk/JsonWebKey;->setAlgorithm(Ljava/lang/String;)V

    .line 70
    invoke-interface {p1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    invoke-static {p1, v5}, Lorg/jose4j/lang/JsonHelp;->getStringArray(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/jose4j/jwk/JsonWebKey;->keyOps:Ljava/util/List;

    :cond_0
    return-void
.end method

.method protected static getString(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .line 215
    invoke-static {p0, p1}, Lorg/jose4j/lang/JsonHelp;->getStringChecked(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected static getString(Ljava/util/Map;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/lang/String;"
        }
    .end annotation
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .line 225
    invoke-static {p0, p1}, Lorg/jose4j/jwk/JsonWebKey;->getString(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 228
    :cond_0
    new-instance p0, Lorg/jose4j/lang/JoseException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Missing required \'"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\' parameter."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/jose4j/lang/JoseException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-object p0
.end method

.method protected static getStringRequired(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 220
    invoke-static {p0, p1, v0}, Lorg/jose4j/jwk/JsonWebKey;->getString(Ljava/util/Map;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public calculateBase64urlEncodedThumbprint(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 191
    invoke-virtual {p0, p1}, Lorg/jose4j/jwk/JsonWebKey;->calculateThumbprint(Ljava/lang/String;)[B

    move-result-object p1

    .line 192
    invoke-static {p1}, Lorg/jose4j/base64url/Base64Url;->encode([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public calculateThumbprint(Ljava/lang/String;)[B
    .locals 1

    .line 197
    invoke-static {p1}, Lorg/jose4j/lang/HashUtil;->getMessageDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    .line 198
    invoke-virtual {p0}, Lorg/jose4j/jwk/JsonWebKey;->produceThumbprintHashInput()Ljava/lang/String;

    move-result-object v0

    .line 199
    invoke-static {v0}, Lorg/jose4j/lang/StringUtil;->getBytesUtf8(Ljava/lang/String;)[B

    move-result-object v0

    .line 200
    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    return-object p1
.end method

.method protected abstract fillTypeSpecificParams(Ljava/util/Map;Lorg/jose4j/jwk/JsonWebKey$OutputControlLevel;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/jose4j/jwk/JsonWebKey$OutputControlLevel;",
            ")V"
        }
    .end annotation
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    .line 122
    iget-object v0, p0, Lorg/jose4j/jwk/JsonWebKey;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/security/Key;
    .locals 1

    .line 97
    iget-object v0, p0, Lorg/jose4j/jwk/JsonWebKey;->key:Ljava/security/Key;

    return-object v0
.end method

.method public getKeyId()Ljava/lang/String;
    .locals 1

    .line 112
    iget-object v0, p0, Lorg/jose4j/jwk/JsonWebKey;->keyId:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyOps()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lorg/jose4j/jwk/JsonWebKey;->keyOps:Ljava/util/List;

    return-object v0
.end method

.method public abstract getKeyType()Ljava/lang/String;
.end method

.method public getOtherParameterValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 147
    iget-object v0, p0, Lorg/jose4j/jwk/JsonWebKey;->otherParameters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 148
    invoke-virtual {p2, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getPublicKey()Ljava/security/PublicKey;
    .locals 1

    .line 87
    :try_start_0
    iget-object v0, p0, Lorg/jose4j/jwk/JsonWebKey;->key:Ljava/security/Key;

    check-cast v0, Ljava/security/PublicKey;

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUse()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lorg/jose4j/jwk/JsonWebKey;->use:Ljava/lang/String;

    return-object v0
.end method

.method protected abstract produceThumbprintHashInput()Ljava/lang/String;
.end method

.method protected putIfNotNull(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 209
    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method protected varargs removeFromOtherParams([Ljava/lang/String;)V
    .locals 4

    .line 153
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 155
    iget-object v3, p0, Lorg/jose4j/jwk/JsonWebKey;->otherParameters:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setAlgorithm(Ljava/lang/String;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lorg/jose4j/jwk/JsonWebKey;->algorithm:Ljava/lang/String;

    return-void
.end method

.method public setKeyId(Ljava/lang/String;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lorg/jose4j/jwk/JsonWebKey;->keyId:Ljava/lang/String;

    return-void
.end method

.method public setKeyOps(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 137
    iput-object p1, p0, Lorg/jose4j/jwk/JsonWebKey;->keyOps:Ljava/util/List;

    return-void
.end method

.method public setOtherParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 142
    iget-object v0, p0, Lorg/jose4j/jwk/JsonWebKey;->otherParameters:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setUse(Ljava/lang/String;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lorg/jose4j/jwk/JsonWebKey;->use:Ljava/lang/String;

    return-void
.end method

.method public toJson()Ljava/lang/String;
    .locals 1

    .line 174
    sget-object v0, Lorg/jose4j/jwk/JsonWebKey$OutputControlLevel;->INCLUDE_SYMMETRIC:Lorg/jose4j/jwk/JsonWebKey$OutputControlLevel;

    invoke-virtual {p0, v0}, Lorg/jose4j/jwk/JsonWebKey;->toJson(Lorg/jose4j/jwk/JsonWebKey$OutputControlLevel;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toJson(Lorg/jose4j/jwk/JsonWebKey$OutputControlLevel;)Ljava/lang/String;
    .locals 0

    .line 179
    invoke-virtual {p0, p1}, Lorg/jose4j/jwk/JsonWebKey;->toParams(Lorg/jose4j/jwk/JsonWebKey$OutputControlLevel;)Ljava/util/Map;

    move-result-object p1

    .line 180
    invoke-static {p1}, Lorg/jose4j/json/JsonUtil;->toJson(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toParams(Lorg/jose4j/jwk/JsonWebKey$OutputControlLevel;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jose4j/jwk/JsonWebKey$OutputControlLevel;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 161
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 162
    const-string v1, "kty"

    invoke-virtual {p0}, Lorg/jose4j/jwk/JsonWebKey;->getKeyType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    const-string v1, "kid"

    invoke-virtual {p0}, Lorg/jose4j/jwk/JsonWebKey;->getKeyId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2, v0}, Lorg/jose4j/jwk/JsonWebKey;->putIfNotNull(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    .line 164
    const-string/jumbo v1, "use"

    invoke-virtual {p0}, Lorg/jose4j/jwk/JsonWebKey;->getUse()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2, v0}, Lorg/jose4j/jwk/JsonWebKey;->putIfNotNull(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    .line 165
    const-string v1, "key_ops"

    iget-object v2, p0, Lorg/jose4j/jwk/JsonWebKey;->keyOps:Ljava/util/List;

    invoke-virtual {p0, v1, v2, v0}, Lorg/jose4j/jwk/JsonWebKey;->putIfNotNull(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    .line 166
    const-string v1, "alg"

    invoke-virtual {p0}, Lorg/jose4j/jwk/JsonWebKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2, v0}, Lorg/jose4j/jwk/JsonWebKey;->putIfNotNull(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    .line 167
    invoke-virtual {p0, v0, p1}, Lorg/jose4j/jwk/JsonWebKey;->fillTypeSpecificParams(Ljava/util/Map;Lorg/jose4j/jwk/JsonWebKey$OutputControlLevel;)V

    .line 168
    iget-object p1, p0, Lorg/jose4j/jwk/JsonWebKey;->otherParameters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lorg/jose4j/jwk/JsonWebKey$OutputControlLevel;->PUBLIC_ONLY:Lorg/jose4j/jwk/JsonWebKey$OutputControlLevel;

    invoke-virtual {p0, v1}, Lorg/jose4j/jwk/JsonWebKey;->toParams(Lorg/jose4j/jwk/JsonWebKey$OutputControlLevel;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
