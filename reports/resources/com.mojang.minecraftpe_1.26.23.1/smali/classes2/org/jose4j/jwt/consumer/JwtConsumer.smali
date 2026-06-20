.class public Lorg/jose4j/jwt/consumer/JwtConsumer;
.super Ljava/lang/Object;
.source "JwtConsumer.java"


# instance fields
.field private decryptionKeyResolver:Lorg/jose4j/keys/resolvers/DecryptionKeyResolver;

.field private jweAlgorithmConstraints:Lorg/jose4j/jwa/AlgorithmConstraints;

.field private jweContentEncryptionAlgorithmConstraints:Lorg/jose4j/jwa/AlgorithmConstraints;

.field private jweCustomizer:Lorg/jose4j/jwt/consumer/JweCustomizer;

.field private jweProviderContext:Lorg/jose4j/jca/ProviderContext;

.field private jwsAlgorithmConstraints:Lorg/jose4j/jwa/AlgorithmConstraints;

.field private jwsCustomizer:Lorg/jose4j/jwt/consumer/JwsCustomizer;

.field private jwsProviderContext:Lorg/jose4j/jca/ProviderContext;

.field private liberalContentTypeHandling:Z

.field private relaxDecryptionKeyValidation:Z

.field private relaxVerificationKeyValidation:Z

.field private requireEncryption:Z

.field private requireIntegrity:Z

.field private requireSignature:Z

.field private skipSignatureVerification:Z

.field private skipVerificationKeyResolutionOnNone:Z

.field private validators:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jose4j/jwt/consumer/ErrorCodeValidator;",
            ">;"
        }
    .end annotation
.end field

.field private verificationKeyResolver:Lorg/jose4j/keys/resolvers/VerificationKeyResolver;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 55
    iput-boolean v0, p0, Lorg/jose4j/jwt/consumer/JwtConsumer;->requireSignature:Z

    return-void
.end method

.method private isNestedJwt(Lorg/jose4j/jwx/JsonWebStructure;)Z
    .locals 1

    .line 465
    invoke-virtual {p1}, Lorg/jose4j/jwx/JsonWebStructure;->getContentTypeHeaderValue()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 466
    const-string v0, "jwt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "application/jwt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public process(Ljava/lang/String;)Lorg/jose4j/jwt/consumer/JwtContext;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/jwt/consumer/InvalidJwtException;
        }
    .end annotation

    .line 309
    const-string v0, " nested"

    const-string v1, "JWT processing failed."

    const-string v2, "): "

    .line 311
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 313
    new-instance v4, Lorg/jose4j/jwt/consumer/JwtContext;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v4, p1, v6, v5}, Lorg/jose4j/jwt/consumer/JwtContext;-><init>(Ljava/lang/String;Lorg/jose4j/jwt/JwtClaims;Ljava/util/List;)V

    move-object v5, p1

    :goto_0
    if-nez v6, :cond_a

    const/16 v7, 0x11

    .line 320
    :try_start_0
    invoke-static {v5}, Lorg/jose4j/jwx/JsonWebStructure;->fromCompactSerialization(Ljava/lang/String;)Lorg/jose4j/jwx/JsonWebStructure;

    move-result-object v8

    .line 322
    instance-of v9, v8, Lorg/jose4j/jws/JsonWebSignature;

    if-eqz v9, :cond_0

    .line 324
    move-object v9, v8

    check-cast v9, Lorg/jose4j/jws/JsonWebSignature;

    .line 325
    invoke-virtual {v9}, Lorg/jose4j/jws/JsonWebSignature;->getUnverifiedPayload()Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    .line 329
    :cond_0
    move-object v9, v8

    check-cast v9, Lorg/jose4j/jwe/JsonWebEncryption;

    .line 331
    iget-object v10, p0, Lorg/jose4j/jwt/consumer/JwtConsumer;->jweProviderContext:Lorg/jose4j/jca/ProviderContext;

    if-eqz v10, :cond_1

    .line 333
    invoke-virtual {v9, v10}, Lorg/jose4j/jwe/JsonWebEncryption;->setProviderContext(Lorg/jose4j/jca/ProviderContext;)V

    .line 336
    :cond_1
    iget-boolean v10, p0, Lorg/jose4j/jwt/consumer/JwtConsumer;->relaxDecryptionKeyValidation:Z

    if-eqz v10, :cond_2

    const/4 v10, 0x0

    .line 338
    invoke-virtual {v9, v10}, Lorg/jose4j/jwe/JsonWebEncryption;->setDoKeyValidation(Z)V

    .line 341
    :cond_2
    iget-object v10, p0, Lorg/jose4j/jwt/consumer/JwtConsumer;->jweContentEncryptionAlgorithmConstraints:Lorg/jose4j/jwa/AlgorithmConstraints;

    if-eqz v10, :cond_3

    .line 343
    invoke-virtual {v9, v10}, Lorg/jose4j/jwe/JsonWebEncryption;->setContentEncryptionAlgorithmConstraints(Lorg/jose4j/jwa/AlgorithmConstraints;)V

    .line 346
    :cond_3
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v10

    .line 347
    iget-object v11, p0, Lorg/jose4j/jwt/consumer/JwtConsumer;->decryptionKeyResolver:Lorg/jose4j/keys/resolvers/DecryptionKeyResolver;

    invoke-interface {v11, v9, v10}, Lorg/jose4j/keys/resolvers/DecryptionKeyResolver;->resolveKey(Lorg/jose4j/jwe/JsonWebEncryption;Ljava/util/List;)Ljava/security/Key;

    move-result-object v11

    .line 348
    invoke-virtual {v9, v11}, Lorg/jose4j/jwe/JsonWebEncryption;->setKey(Ljava/security/Key;)V

    .line 349
    iget-object v11, p0, Lorg/jose4j/jwt/consumer/JwtConsumer;->jweAlgorithmConstraints:Lorg/jose4j/jwa/AlgorithmConstraints;

    if-eqz v11, :cond_4

    .line 351
    invoke-virtual {v9, v11}, Lorg/jose4j/jwe/JsonWebEncryption;->setAlgorithmConstraints(Lorg/jose4j/jwa/AlgorithmConstraints;)V

    .line 354
    :cond_4
    iget-object v11, p0, Lorg/jose4j/jwt/consumer/JwtConsumer;->jweCustomizer:Lorg/jose4j/jwt/consumer/JweCustomizer;

    if-eqz v11, :cond_5

    .line 356
    invoke-interface {v11, v9, v10}, Lorg/jose4j/jwt/consumer/JweCustomizer;->customize(Lorg/jose4j/jwe/JsonWebEncryption;Ljava/util/List;)V

    .line 359
    :cond_5
    invoke-virtual {v9}, Lorg/jose4j/jwe/JsonWebEncryption;->getPayload()Ljava/lang/String;

    move-result-object v9

    .line 362
    :goto_1
    invoke-direct {p0, v8}, Lorg/jose4j/jwt/consumer/JwtConsumer;->isNestedJwt(Lorg/jose4j/jwx/JsonWebStructure;)Z

    move-result v10

    :try_end_0
    .catch Lorg/jose4j/lang/JoseException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lorg/jose4j/jwt/consumer/InvalidJwtException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v10, :cond_6

    :goto_2
    move-object v5, v9

    goto :goto_3

    .line 370
    :cond_6
    :try_start_1
    invoke-static {v9, v4}, Lorg/jose4j/jwt/JwtClaims;->parse(Ljava/lang/String;Lorg/jose4j/jwt/consumer/JwtContext;)Lorg/jose4j/jwt/JwtClaims;

    move-result-object v6

    .line 371
    invoke-virtual {v4, v6}, Lorg/jose4j/jwt/consumer/JwtContext;->setJwtClaims(Lorg/jose4j/jwt/JwtClaims;)V

    :try_end_1
    .catch Lorg/jose4j/jwt/consumer/InvalidJwtException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/jose4j/lang/JoseException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_3

    :catch_0
    move-exception v10

    .line 375
    :try_start_2
    iget-boolean v11, p0, Lorg/jose4j/jwt/consumer/JwtConsumer;->liberalContentTypeHandling:Z

    :try_end_2
    .catch Lorg/jose4j/lang/JoseException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lorg/jose4j/jwt/consumer/InvalidJwtException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz v11, :cond_7

    .line 379
    :try_start_3
    invoke-static {p1}, Lorg/jose4j/jwx/JsonWebStructure;->fromCompactSerialization(Ljava/lang/String;)Lorg/jose4j/jwx/JsonWebStructure;

    :try_end_3
    .catch Lorg/jose4j/lang/JoseException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/jose4j/jwt/consumer/InvalidJwtException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    .line 394
    :goto_3
    :try_start_4
    invoke-virtual {v3, v8}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_0

    .line 384
    :catch_1
    throw v10

    .line 389
    :cond_7
    throw v10

    :try_end_4
    .catch Lorg/jose4j/lang/JoseException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Lorg/jose4j/jwt/consumer/InvalidJwtException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    move-exception p1

    .line 414
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "Unexpected exception encountered while processing"

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 416
    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_8

    .line 418
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    :cond_8
    const-string v0, " JOSE object ("

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    new-instance v0, Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v7, v2}, Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;-><init>(ILjava/lang/String;)V

    .line 422
    new-instance v2, Lorg/jose4j/jwt/consumer/InvalidJwtException;

    invoke-direct {v2, v1, v0, p1, v4}, Lorg/jose4j/jwt/consumer/InvalidJwtException;-><init>(Ljava/lang/String;Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;Ljava/lang/Throwable;Lorg/jose4j/jwt/consumer/JwtContext;)V

    throw v2

    :catch_3
    move-exception p1

    .line 410
    throw p1

    :catch_4
    move-exception p1

    .line 398
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "Unable to process"

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 400
    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_9

    .line 402
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    :cond_9
    const-string v0, " JOSE object (cause: "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    new-instance v0, Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v7, v2}, Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;-><init>(ILjava/lang/String;)V

    .line 406
    new-instance v2, Lorg/jose4j/jwt/consumer/InvalidJwtException;

    invoke-direct {v2, v1, v0, p1, v4}, Lorg/jose4j/jwt/consumer/InvalidJwtException;-><init>(Ljava/lang/String;Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;Ljava/lang/Throwable;Lorg/jose4j/jwt/consumer/JwtContext;)V

    throw v2

    .line 426
    :cond_a
    invoke-virtual {p0, v4}, Lorg/jose4j/jwt/consumer/JwtConsumer;->processContext(Lorg/jose4j/jwt/consumer/JwtContext;)V

    return-object v4
.end method

.method public processContext(Lorg/jose4j/jwt/consumer/JwtContext;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/jwt/consumer/InvalidJwtException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 176
    const-string v3, " nested"

    const-string v4, "JWT processing failed."

    const-string v5, "): "

    .line 180
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual/range {p1 .. p1}, Lorg/jose4j/jwt/consumer/JwtContext;->getJoseObjects()Ljava/util/List;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 182
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_0
    if-ltz v6, :cond_f

    add-int/lit8 v12, v6, 0x1

    .line 184
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-virtual {v0, v12, v13}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v12

    .line 185
    invoke-static {v12}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v13

    .line 186
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/jose4j/jwx/JsonWebStructure;

    .line 190
    :try_start_0
    instance-of v7, v14, Lorg/jose4j/jws/JsonWebSignature;

    if-eqz v7, :cond_8

    .line 192
    move-object v7, v14

    check-cast v7, Lorg/jose4j/jws/JsonWebSignature;

    .line 193
    const-string v15, "none"

    invoke-virtual {v7}, Lorg/jose4j/jws/JsonWebSignature;->getAlgorithmHeaderValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 194
    iget-boolean v15, v1, Lorg/jose4j/jwt/consumer/JwtConsumer;->skipSignatureVerification:Z

    if-nez v15, :cond_7

    .line 196
    iget-object v15, v1, Lorg/jose4j/jwt/consumer/JwtConsumer;->jwsProviderContext:Lorg/jose4j/jca/ProviderContext;

    if-eqz v15, :cond_0

    .line 198
    invoke-virtual {v7, v15}, Lorg/jose4j/jws/JsonWebSignature;->setProviderContext(Lorg/jose4j/jca/ProviderContext;)V

    .line 201
    :cond_0
    iget-boolean v15, v1, Lorg/jose4j/jwt/consumer/JwtConsumer;->relaxVerificationKeyValidation:Z

    if-eqz v15, :cond_1

    const/4 v15, 0x0

    .line 203
    invoke-virtual {v7, v15}, Lorg/jose4j/jws/JsonWebSignature;->setDoKeyValidation(Z)V

    .line 206
    :cond_1
    iget-object v15, v1, Lorg/jose4j/jwt/consumer/JwtConsumer;->jwsAlgorithmConstraints:Lorg/jose4j/jwa/AlgorithmConstraints;

    if-eqz v15, :cond_2

    .line 208
    invoke-virtual {v7, v15}, Lorg/jose4j/jws/JsonWebSignature;->setAlgorithmConstraints(Lorg/jose4j/jwa/AlgorithmConstraints;)V

    :cond_2
    if-eqz v8, :cond_3

    .line 211
    iget-boolean v15, v1, Lorg/jose4j/jwt/consumer/JwtConsumer;->skipVerificationKeyResolutionOnNone:Z

    if-nez v15, :cond_4

    .line 213
    :cond_3
    iget-object v15, v1, Lorg/jose4j/jwt/consumer/JwtConsumer;->verificationKeyResolver:Lorg/jose4j/keys/resolvers/VerificationKeyResolver;

    invoke-interface {v15, v7, v13}, Lorg/jose4j/keys/resolvers/VerificationKeyResolver;->resolveKey(Lorg/jose4j/jws/JsonWebSignature;Ljava/util/List;)Ljava/security/Key;

    move-result-object v15

    .line 214
    invoke-virtual {v7, v15}, Lorg/jose4j/jws/JsonWebSignature;->setKey(Ljava/security/Key;)V

    .line 217
    :cond_4
    iget-object v15, v1, Lorg/jose4j/jwt/consumer/JwtConsumer;->jwsCustomizer:Lorg/jose4j/jwt/consumer/JwsCustomizer;

    if-eqz v15, :cond_5

    .line 219
    invoke-interface {v15, v7, v13}, Lorg/jose4j/jwt/consumer/JwsCustomizer;->customize(Lorg/jose4j/jws/JsonWebSignature;Ljava/util/List;)V

    .line 222
    :cond_5
    invoke-virtual {v7}, Lorg/jose4j/jws/JsonWebSignature;->verifySignature()Z

    move-result v13

    if-eqz v13, :cond_6

    goto :goto_1

    .line 224
    :cond_6
    new-instance v0, Lorg/jose4j/jwt/consumer/InvalidJwtSignatureException;

    invoke-direct {v0, v7, v2}, Lorg/jose4j/jwt/consumer/InvalidJwtSignatureException;-><init>(Lorg/jose4j/jws/JsonWebSignature;Lorg/jose4j/jwt/consumer/JwtContext;)V

    throw v0

    :cond_7
    :goto_1
    if-nez v8, :cond_c

    const/4 v9, 0x1

    goto :goto_3

    .line 237
    :cond_8
    move-object v7, v14

    check-cast v7, Lorg/jose4j/jwe/JsonWebEncryption;

    .line 239
    iget-object v8, v1, Lorg/jose4j/jwt/consumer/JwtConsumer;->jweAlgorithmConstraints:Lorg/jose4j/jwa/AlgorithmConstraints;

    if-eqz v8, :cond_9

    .line 241
    invoke-virtual {v7}, Lorg/jose4j/jwe/JsonWebEncryption;->getAlgorithmHeaderValue()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lorg/jose4j/jwa/AlgorithmConstraints;->checkConstraint(Ljava/lang/String;)V

    .line 244
    :cond_9
    iget-object v8, v1, Lorg/jose4j/jwt/consumer/JwtConsumer;->jweContentEncryptionAlgorithmConstraints:Lorg/jose4j/jwa/AlgorithmConstraints;

    if-eqz v8, :cond_a

    .line 246
    invoke-virtual {v7}, Lorg/jose4j/jwe/JsonWebEncryption;->getEncryptionMethodHeaderParameter()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lorg/jose4j/jwa/AlgorithmConstraints;->checkConstraint(Ljava/lang/String;)V

    .line 251
    :cond_a
    invoke-virtual {v7}, Lorg/jose4j/jwe/JsonWebEncryption;->getKeyManagementModeAlgorithm()Lorg/jose4j/jwe/KeyManagementAlgorithm;

    move-result-object v7

    invoke-interface {v7}, Lorg/jose4j/jwe/KeyManagementAlgorithm;->getKeyPersuasion()Lorg/jose4j/keys/KeyPersuasion;

    move-result-object v7

    sget-object v8, Lorg/jose4j/keys/KeyPersuasion;->SYMMETRIC:Lorg/jose4j/keys/KeyPersuasion;

    :try_end_0
    .catch Lorg/jose4j/lang/JoseException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/jose4j/jwt/consumer/InvalidJwtException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v7, v8, :cond_b

    const/4 v11, 0x1

    goto :goto_2

    :cond_b
    const/4 v11, 0x0

    :goto_2
    const/4 v10, 0x1

    :cond_c
    :goto_3
    add-int/lit8 v6, v6, -0x1

    const/4 v7, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    .line 272
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Unexpected exception encountered while processing"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 274
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_d

    .line 276
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    :cond_d
    const-string v3, " JOSE object ("

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 279
    new-instance v3, Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x11

    invoke-direct {v3, v6, v5}, Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;-><init>(ILjava/lang/String;)V

    .line 280
    new-instance v5, Lorg/jose4j/jwt/consumer/InvalidJwtException;

    invoke-direct {v5, v4, v3, v0, v2}, Lorg/jose4j/jwt/consumer/InvalidJwtException;-><init>(Ljava/lang/String;Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;Ljava/lang/Throwable;Lorg/jose4j/jwt/consumer/JwtContext;)V

    throw v5

    :catch_1
    move-exception v0

    .line 268
    throw v0

    :catch_2
    move-exception v0

    .line 256
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Unable to process"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 258
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_e

    .line 260
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    :cond_e
    const-string v3, " JOSE object (cause: "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 263
    new-instance v3, Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x11

    invoke-direct {v3, v6, v5}, Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;-><init>(ILjava/lang/String;)V

    .line 264
    new-instance v5, Lorg/jose4j/jwt/consumer/InvalidJwtException;

    invoke-direct {v5, v4, v3, v0, v2}, Lorg/jose4j/jwt/consumer/InvalidJwtException;-><init>(Ljava/lang/String;Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;Ljava/lang/Throwable;Lorg/jose4j/jwt/consumer/JwtContext;)V

    throw v5

    .line 285
    :cond_f
    iget-boolean v0, v1, Lorg/jose4j/jwt/consumer/JwtConsumer;->requireSignature:Z

    if-eqz v0, :cond_11

    if-eqz v9, :cond_10

    goto :goto_4

    .line 287
    :cond_10
    new-instance v0, Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;

    const/16 v3, 0xa

    const-string v4, "Missing signature."

    invoke-direct {v0, v3, v4}, Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;-><init>(ILjava/lang/String;)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 288
    new-instance v3, Lorg/jose4j/jwt/consumer/InvalidJwtException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "The JWT has no signature but the JWT Consumer is configured to require one: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lorg/jose4j/jwt/consumer/JwtContext;->getJwt()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0, v2}, Lorg/jose4j/jwt/consumer/InvalidJwtException;-><init>(Ljava/lang/String;Ljava/util/List;Lorg/jose4j/jwt/consumer/JwtContext;)V

    throw v3

    .line 291
    :cond_11
    :goto_4
    iget-boolean v0, v1, Lorg/jose4j/jwt/consumer/JwtConsumer;->requireEncryption:Z

    if-eqz v0, :cond_13

    if-eqz v10, :cond_12

    goto :goto_5

    .line 293
    :cond_12
    new-instance v0, Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;

    const/16 v3, 0x13

    const-string v4, "No encryption."

    invoke-direct {v0, v3, v4}, Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;-><init>(ILjava/lang/String;)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 294
    new-instance v3, Lorg/jose4j/jwt/consumer/InvalidJwtException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "The JWT has no encryption but the JWT Consumer is configured to require it: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lorg/jose4j/jwt/consumer/JwtContext;->getJwt()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0, v2}, Lorg/jose4j/jwt/consumer/InvalidJwtException;-><init>(Ljava/lang/String;Ljava/util/List;Lorg/jose4j/jwt/consumer/JwtContext;)V

    throw v3

    .line 297
    :cond_13
    :goto_5
    iget-boolean v0, v1, Lorg/jose4j/jwt/consumer/JwtConsumer;->requireIntegrity:Z

    if-eqz v0, :cond_15

    if-nez v9, :cond_15

    if-eqz v11, :cond_14

    goto :goto_6

    .line 299
    :cond_14
    new-instance v0, Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;

    const/16 v3, 0x14

    const-string v4, "Missing Integrity Protection"

    invoke-direct {v0, v3, v4}, Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;-><init>(ILjava/lang/String;)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 300
    new-instance v3, Lorg/jose4j/jwt/consumer/InvalidJwtException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "The JWT has no integrity protection (signature/MAC or symmetric AEAD encryption) but the JWT Consumer is configured to require it: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 301
    invoke-virtual/range {p1 .. p1}, Lorg/jose4j/jwt/consumer/JwtContext;->getJwt()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0, v2}, Lorg/jose4j/jwt/consumer/InvalidJwtException;-><init>(Ljava/lang/String;Ljava/util/List;Lorg/jose4j/jwt/consumer/JwtContext;)V

    throw v3

    .line 304
    :cond_15
    :goto_6
    invoke-virtual/range {p0 .. p1}, Lorg/jose4j/jwt/consumer/JwtConsumer;->validate(Lorg/jose4j/jwt/consumer/JwtContext;)V

    return-void
.end method

.method public processToClaims(Ljava/lang/String;)Lorg/jose4j/jwt/JwtClaims;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/jwt/consumer/InvalidJwtException;
        }
    .end annotation

    .line 171
    invoke-virtual {p0, p1}, Lorg/jose4j/jwt/consumer/JwtConsumer;->process(Ljava/lang/String;)Lorg/jose4j/jwt/consumer/JwtContext;

    move-result-object p1

    invoke-virtual {p1}, Lorg/jose4j/jwt/consumer/JwtContext;->getJwtClaims()Lorg/jose4j/jwt/JwtClaims;

    move-result-object p1

    return-object p1
.end method

.method setDecryptionKeyResolver(Lorg/jose4j/keys/resolvers/DecryptionKeyResolver;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lorg/jose4j/jwt/consumer/JwtConsumer;->decryptionKeyResolver:Lorg/jose4j/keys/resolvers/DecryptionKeyResolver;

    return-void
.end method

.method setJweAlgorithmConstraints(Lorg/jose4j/jwa/AlgorithmConstraints;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lorg/jose4j/jwt/consumer/JwtConsumer;->jweAlgorithmConstraints:Lorg/jose4j/jwa/AlgorithmConstraints;

    return-void
.end method

.method setJweContentEncryptionAlgorithmConstraints(Lorg/jose4j/jwa/AlgorithmConstraints;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lorg/jose4j/jwt/consumer/JwtConsumer;->jweContentEncryptionAlgorithmConstraints:Lorg/jose4j/jwa/AlgorithmConstraints;

    return-void
.end method

.method setJweCustomizer(Lorg/jose4j/jwt/consumer/JweCustomizer;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lorg/jose4j/jwt/consumer/JwtConsumer;->jweCustomizer:Lorg/jose4j/jwt/consumer/JweCustomizer;

    return-void
.end method

.method setJweProviderContext(Lorg/jose4j/jca/ProviderContext;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lorg/jose4j/jwt/consumer/JwtConsumer;->jweProviderContext:Lorg/jose4j/jca/ProviderContext;

    return-void
.end method

.method setJwsAlgorithmConstraints(Lorg/jose4j/jwa/AlgorithmConstraints;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lorg/jose4j/jwt/consumer/JwtConsumer;->jwsAlgorithmConstraints:Lorg/jose4j/jwa/AlgorithmConstraints;

    return-void
.end method

.method setJwsCustomizer(Lorg/jose4j/jwt/consumer/JwsCustomizer;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lorg/jose4j/jwt/consumer/JwtConsumer;->jwsCustomizer:Lorg/jose4j/jwt/consumer/JwsCustomizer;

    return-void
.end method

.method setJwsProviderContext(Lorg/jose4j/jca/ProviderContext;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lorg/jose4j/jwt/consumer/JwtConsumer;->jwsProviderContext:Lorg/jose4j/jca/ProviderContext;

    return-void
.end method

.method setLiberalContentTypeHandling(Z)V
    .locals 0

    .line 126
    iput-boolean p1, p0, Lorg/jose4j/jwt/consumer/JwtConsumer;->liberalContentTypeHandling:Z

    return-void
.end method

.method setRelaxDecryptionKeyValidation(Z)V
    .locals 0

    .line 146
    iput-boolean p1, p0, Lorg/jose4j/jwt/consumer/JwtConsumer;->relaxDecryptionKeyValidation:Z

    return-void
.end method

.method setRelaxVerificationKeyValidation(Z)V
    .locals 0

    .line 136
    iput-boolean p1, p0, Lorg/jose4j/jwt/consumer/JwtConsumer;->relaxVerificationKeyValidation:Z

    return-void
.end method

.method setRequireEncryption(Z)V
    .locals 0

    .line 116
    iput-boolean p1, p0, Lorg/jose4j/jwt/consumer/JwtConsumer;->requireEncryption:Z

    return-void
.end method

.method setRequireIntegrity(Z)V
    .locals 0

    .line 121
    iput-boolean p1, p0, Lorg/jose4j/jwt/consumer/JwtConsumer;->requireIntegrity:Z

    return-void
.end method

.method setRequireSignature(Z)V
    .locals 0

    .line 111
    iput-boolean p1, p0, Lorg/jose4j/jwt/consumer/JwtConsumer;->requireSignature:Z

    return-void
.end method

.method setSkipSignatureVerification(Z)V
    .locals 0

    .line 131
    iput-boolean p1, p0, Lorg/jose4j/jwt/consumer/JwtConsumer;->skipSignatureVerification:Z

    return-void
.end method

.method public setSkipVerificationKeyResolutionOnNone(Z)V
    .locals 0

    .line 141
    iput-boolean p1, p0, Lorg/jose4j/jwt/consumer/JwtConsumer;->skipVerificationKeyResolutionOnNone:Z

    return-void
.end method

.method setValidators(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/jose4j/jwt/consumer/ErrorCodeValidator;",
            ">;)V"
        }
    .end annotation

    .line 106
    iput-object p1, p0, Lorg/jose4j/jwt/consumer/JwtConsumer;->validators:Ljava/util/List;

    return-void
.end method

.method setVerificationKeyResolver(Lorg/jose4j/keys/resolvers/VerificationKeyResolver;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lorg/jose4j/jwt/consumer/JwtConsumer;->verificationKeyResolver:Lorg/jose4j/keys/resolvers/VerificationKeyResolver;

    return-void
.end method

.method validate(Lorg/jose4j/jwt/consumer/JwtContext;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/jwt/consumer/InvalidJwtException;
        }
    .end annotation

    .line 432
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 433
    iget-object v1, p0, Lorg/jose4j/jwt/consumer/JwtConsumer;->validators:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jose4j/jwt/consumer/ErrorCodeValidator;

    .line 438
    :try_start_0
    invoke-interface {v2, p1}, Lorg/jose4j/jwt/consumer/ErrorCodeValidator;->validate(Lorg/jose4j/jwt/consumer/JwtContext;)Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;

    move-result-object v2

    :try_end_0
    .catch Lorg/jose4j/jwt/MalformedClaimException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v3

    .line 446
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unexpected exception thrown from validator "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ": "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/jose4j/lang/ExceptionHelp;->toStringWithCausesAndAbbreviatedStack(Ljava/lang/Throwable;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 447
    new-instance v3, Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;

    const/16 v4, 0x11

    invoke-direct {v3, v4, v2}, Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;-><init>(ILjava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception v2

    .line 442
    new-instance v3, Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;

    const/16 v4, 0x12

    invoke-virtual {v2}, Lorg/jose4j/jwt/MalformedClaimException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;-><init>(ILjava/lang/String;)V

    :goto_1
    move-object v2, v3

    :goto_2
    if-eqz v2, :cond_0

    .line 452
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 456
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    .line 458
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "JWT (claims->"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/jose4j/jwt/consumer/JwtContext;->getJwtClaims()Lorg/jose4j/jwt/JwtClaims;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jose4j/jwt/JwtClaims;->getRawJson()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") rejected due to invalid claims or other invalid content."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 459
    new-instance v2, Lorg/jose4j/jwt/consumer/InvalidJwtException;

    invoke-direct {v2, v1, v0, p1}, Lorg/jose4j/jwt/consumer/InvalidJwtException;-><init>(Ljava/lang/String;Ljava/util/List;Lorg/jose4j/jwt/consumer/JwtContext;)V

    throw v2
.end method
