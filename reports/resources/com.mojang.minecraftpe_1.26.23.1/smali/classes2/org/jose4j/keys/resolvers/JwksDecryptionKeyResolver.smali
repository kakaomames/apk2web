.class public Lorg/jose4j/keys/resolvers/JwksDecryptionKeyResolver;
.super Ljava/lang/Object;
.source "JwksDecryptionKeyResolver.java"

# interfaces
.implements Lorg/jose4j/keys/resolvers/DecryptionKeyResolver;


# instance fields
.field disambiguateWithAttemptDecrypt:Z

.field private final jsonWebKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jose4j/jwk/JsonWebKey;",
            ">;"
        }
    .end annotation
.end field

.field private final selector:Lorg/jose4j/jwk/DecryptionJwkSelector;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/jose4j/jwk/JsonWebKey;",
            ">;)V"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lorg/jose4j/jwk/DecryptionJwkSelector;

    invoke-direct {v0}, Lorg/jose4j/jwk/DecryptionJwkSelector;-><init>()V

    iput-object v0, p0, Lorg/jose4j/keys/resolvers/JwksDecryptionKeyResolver;->selector:Lorg/jose4j/jwk/DecryptionJwkSelector;

    .line 40
    iput-object p1, p0, Lorg/jose4j/keys/resolvers/JwksDecryptionKeyResolver;->jsonWebKeys:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public resolveKey(Lorg/jose4j/jwe/JsonWebEncryption;Ljava/util/List;)Ljava/security/Key;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jose4j/jwe/JsonWebEncryption;",
            "Ljava/util/List<",
            "Lorg/jose4j/jwx/JsonWebStructure;",
            ">;)",
            "Ljava/security/Key;"
        }
    .end annotation
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/UnresolvableKeyException;
        }
    .end annotation

    const-string p2, "Unable to find a suitable key for JWE w/ header "

    .line 49
    :try_start_0
    iget-object v0, p0, Lorg/jose4j/keys/resolvers/JwksDecryptionKeyResolver;->selector:Lorg/jose4j/jwk/DecryptionJwkSelector;

    iget-object v1, p0, Lorg/jose4j/keys/resolvers/JwksDecryptionKeyResolver;->jsonWebKeys:Ljava/util/List;

    invoke-virtual {v0, p1, v1}, Lorg/jose4j/jwk/DecryptionJwkSelector;->selectList(Lorg/jose4j/jwe/JsonWebEncryption;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    .line 50
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    .line 54
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    iget-boolean v1, p0, Lorg/jose4j/keys/resolvers/JwksDecryptionKeyResolver;->disambiguateWithAttemptDecrypt:Z

    if-nez v1, :cond_1

    goto :goto_0

    .line 60
    :cond_1
    iget-object v1, p0, Lorg/jose4j/keys/resolvers/JwksDecryptionKeyResolver;->selector:Lorg/jose4j/jwk/DecryptionJwkSelector;

    invoke-virtual {v1, p1, v0}, Lorg/jose4j/jwk/DecryptionJwkSelector;->attemptDecryptDisambiguate(Lorg/jose4j/jwe/JsonWebEncryption;Ljava/util/List;)Lorg/jose4j/jwk/JsonWebKey;

    move-result-object v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 63
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p1}, Lorg/jose4j/jwe/JsonWebEncryption;->getHeaders()Lorg/jose4j/jwx/Headers;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jose4j/jwx/Headers;->getFullHeaderAsJsonString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    const-string v1, " using attempted decryption to disambiguate from filtered candidate JWKs "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/jose4j/keys/resolvers/JwksDecryptionKeyResolver;->jsonWebKeys:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 66
    new-instance v1, Lorg/jose4j/lang/UnresolvableKeyException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/jose4j/lang/UnresolvableKeyException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    :goto_0
    const/4 v1, 0x0

    .line 56
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jose4j/jwk/JsonWebKey;

    :try_end_0
    .catch Lorg/jose4j/lang/JoseException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    if-eqz v0, :cond_5

    .line 86
    instance-of p1, v0, Lorg/jose4j/jwk/PublicJsonWebKey;

    if-eqz p1, :cond_4

    check-cast v0, Lorg/jose4j/jwk/PublicJsonWebKey;

    invoke-virtual {v0}, Lorg/jose4j/jwk/PublicJsonWebKey;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object p1

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Lorg/jose4j/jwk/JsonWebKey;->getKey()Ljava/security/Key;

    move-result-object p1

    :goto_2
    return-object p1

    .line 80
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p1}, Lorg/jose4j/jwe/JsonWebEncryption;->getHeaders()Lorg/jose4j/jwx/Headers;

    move-result-object p1

    invoke-virtual {p1}, Lorg/jose4j/jwx/Headers;->getFullHeaderAsJsonString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    const-string p1, " from JWKs "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lorg/jose4j/keys/resolvers/JwksDecryptionKeyResolver;->jsonWebKeys:Ljava/util/List;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 83
    new-instance p1, Lorg/jose4j/lang/UnresolvableKeyException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/jose4j/lang/UnresolvableKeyException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    move-exception v0

    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p1}, Lorg/jose4j/jwe/JsonWebEncryption;->getHeaders()Lorg/jose4j/jwx/Headers;

    move-result-object p1

    invoke-virtual {p1}, Lorg/jose4j/jwx/Headers;->getFullHeaderAsJsonString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    const/4 p1, 0x0

    sget-object p1, Lorg/spongycastle/pqc/crypto/gmss/util/mbQq/agaLzgk;->epndBmZwZckzvxh:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ") selecting from keys: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lorg/jose4j/keys/resolvers/JwksDecryptionKeyResolver;->jsonWebKeys:Ljava/util/List;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 75
    new-instance p1, Lorg/jose4j/lang/UnresolvableKeyException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, v0}, Lorg/jose4j/lang/UnresolvableKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public setDisambiguateWithAttemptDecrypt(Z)V
    .locals 0

    .line 95
    iput-boolean p1, p0, Lorg/jose4j/keys/resolvers/JwksDecryptionKeyResolver;->disambiguateWithAttemptDecrypt:Z

    return-void
.end method
