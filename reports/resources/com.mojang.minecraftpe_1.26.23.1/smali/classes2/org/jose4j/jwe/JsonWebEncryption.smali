.class public Lorg/jose4j/jwe/JsonWebEncryption;
.super Lorg/jose4j/jwx/JsonWebStructure;
.source "JsonWebEncryption.java"


# static fields
.field public static final COMPACT_SERIALIZATION_PARTS:S = 0x5S


# instance fields
.field private base64url:Lorg/jose4j/base64url/Base64Url;

.field ciphertext:[B

.field private contentEncryptionAlgorithmConstraints:Lorg/jose4j/jwa/AlgorithmConstraints;

.field contentEncryptionKey:[B

.field private decryptingPrimitive:Lorg/jose4j/jwa/CryptoPrimitive;

.field encryptedKey:[B

.field iv:[B

.field private plaintext:[B

.field private plaintextCharEncoding:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Lorg/jose4j/jwx/JsonWebStructure;-><init>()V

    .line 46
    new-instance v0, Lorg/jose4j/base64url/Base64Url;

    invoke-direct {v0}, Lorg/jose4j/base64url/Base64Url;-><init>()V

    iput-object v0, p0, Lorg/jose4j/jwe/JsonWebEncryption;->base64url:Lorg/jose4j/base64url/Base64Url;

    .line 48
    const-string v0, "UTF-8"

    iput-object v0, p0, Lorg/jose4j/jwe/JsonWebEncryption;->plaintextCharEncoding:Ljava/lang/String;

    .line 57
    sget-object v0, Lorg/jose4j/jwa/AlgorithmConstraints;->NO_CONSTRAINTS:Lorg/jose4j/jwa/AlgorithmConstraints;

    iput-object v0, p0, Lorg/jose4j/jwe/JsonWebEncryption;->contentEncryptionAlgorithmConstraints:Lorg/jose4j/jwa/AlgorithmConstraints;

    return-void
.end method

.method private checkCek(Lorg/jose4j/jwe/ContentEncryptionAlgorithm;Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/InvalidKeyException;
        }
    .end annotation

    .line 259
    invoke-virtual {p2}, Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;->getContentEncryptionKeyByteLength()I

    move-result p2

    .line 260
    array-length v0, p3

    if-ne v0, p2, :cond_0

    return-void

    .line 262
    :cond_0
    new-instance v0, Lorg/jose4j/lang/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p3}, Lorg/jose4j/lang/ByteUtil;->bitLength([B)I

    move-result p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v1, " bit content encryption key is not the correct size for the "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 263
    invoke-interface {p1}, Lorg/jose4j/jwe/ContentEncryptionAlgorithm;->getAlgorithmIdentifier()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " content encryption algorithm ("

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 264
    invoke-static {p2}, Lorg/jose4j/lang/ByteUtil;->bitLength(I)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ")."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/jose4j/lang/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private createDecryptingPrimitive()Lorg/jose4j/jwa/CryptoPrimitive;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .line 220
    invoke-virtual {p0}, Lorg/jose4j/jwe/JsonWebEncryption;->getKeyManagementModeAlgorithm()Lorg/jose4j/jwe/KeyManagementAlgorithm;

    move-result-object v0

    .line 221
    invoke-virtual {p0}, Lorg/jose4j/jwe/JsonWebEncryption;->getKey()Ljava/security/Key;

    move-result-object v1

    .line 222
    invoke-virtual {p0}, Lorg/jose4j/jwe/JsonWebEncryption;->isDoKeyValidation()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 224
    invoke-virtual {p0}, Lorg/jose4j/jwe/JsonWebEncryption;->getContentEncryptionAlgorithm()Lorg/jose4j/jwe/ContentEncryptionAlgorithm;

    move-result-object v2

    .line 225
    invoke-interface {v0, v1, v2}, Lorg/jose4j/jwe/KeyManagementAlgorithm;->validateDecryptionKey(Ljava/security/Key;Lorg/jose4j/jwe/ContentEncryptionAlgorithm;)V

    .line 228
    :cond_0
    iget-object v2, p0, Lorg/jose4j/jwe/JsonWebEncryption;->headers:Lorg/jose4j/jwx/Headers;

    invoke-virtual {p0}, Lorg/jose4j/jwe/JsonWebEncryption;->getProviderCtx()Lorg/jose4j/jca/ProviderContext;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lorg/jose4j/jwe/KeyManagementAlgorithm;->prepareForDecrypt(Ljava/security/Key;Lorg/jose4j/jwx/Headers;Lorg/jose4j/jca/ProviderContext;)Lorg/jose4j/jwa/CryptoPrimitive;

    move-result-object v0

    return-object v0
.end method

.method private decrypt()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .line 233
    invoke-virtual {p0}, Lorg/jose4j/jwe/JsonWebEncryption;->getKeyManagementModeAlgorithm()Lorg/jose4j/jwe/KeyManagementAlgorithm;

    move-result-object v0

    .line 234
    invoke-virtual {p0}, Lorg/jose4j/jwe/JsonWebEncryption;->getContentEncryptionAlgorithm()Lorg/jose4j/jwe/ContentEncryptionAlgorithm;

    move-result-object v6

    .line 236
    invoke-interface {v6}, Lorg/jose4j/jwe/ContentEncryptionAlgorithm;->getContentEncryptionKeyDescriptor()Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;

    move-result-object v7

    .line 238
    invoke-virtual {p0}, Lorg/jose4j/jwe/JsonWebEncryption;->checkCrit()V

    .line 240
    iget-object v1, p0, Lorg/jose4j/jwe/JsonWebEncryption;->decryptingPrimitive:Lorg/jose4j/jwa/CryptoPrimitive;

    if-nez v1, :cond_0

    invoke-direct {p0}, Lorg/jose4j/jwe/JsonWebEncryption;->createDecryptingPrimitive()Lorg/jose4j/jwa/CryptoPrimitive;

    move-result-object v1

    .line 242
    :cond_0
    invoke-virtual {p0}, Lorg/jose4j/jwe/JsonWebEncryption;->getEncryptedKey()[B

    move-result-object v2

    invoke-virtual {p0}, Lorg/jose4j/jwe/JsonWebEncryption;->getHeaders()Lorg/jose4j/jwx/Headers;

    move-result-object v4

    invoke-virtual {p0}, Lorg/jose4j/jwe/JsonWebEncryption;->getProviderCtx()Lorg/jose4j/jca/ProviderContext;

    move-result-object v5

    move-object v3, v7

    invoke-interface/range {v0 .. v5}, Lorg/jose4j/jwe/KeyManagementAlgorithm;->manageForDecrypt(Lorg/jose4j/jwa/CryptoPrimitive;[BLorg/jose4j/jwe/ContentEncryptionKeyDescriptor;Lorg/jose4j/jwx/Headers;Lorg/jose4j/jca/ProviderContext;)Ljava/security/Key;

    move-result-object v0

    .line 244
    new-instance v2, Lorg/jose4j/jwe/ContentEncryptionParts;

    iget-object v1, p0, Lorg/jose4j/jwe/JsonWebEncryption;->iv:[B

    iget-object v3, p0, Lorg/jose4j/jwe/JsonWebEncryption;->ciphertext:[B

    invoke-virtual {p0}, Lorg/jose4j/jwe/JsonWebEncryption;->getIntegrity()[B

    move-result-object v4

    invoke-direct {v2, v1, v3, v4}, Lorg/jose4j/jwe/ContentEncryptionParts;-><init>([B[B[B)V

    .line 245
    invoke-virtual {p0}, Lorg/jose4j/jwe/JsonWebEncryption;->getEncodedHeaderAsciiBytesForAdditionalAuthenticatedData()[B

    move-result-object v3

    .line 247
    invoke-interface {v0}, Ljava/security/Key;->getEncoded()[B

    move-result-object v4

    .line 248
    invoke-direct {p0, v6, v7, v4}, Lorg/jose4j/jwe/JsonWebEncryption;->checkCek(Lorg/jose4j/jwe/ContentEncryptionAlgorithm;Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;[B)V

    .line 249
    invoke-virtual {p0}, Lorg/jose4j/jwe/JsonWebEncryption;->getHeaders()Lorg/jose4j/jwx/Headers;

    move-result-object v5

    invoke-virtual {p0}, Lorg/jose4j/jwe/JsonWebEncryption;->getProviderCtx()Lorg/jose4j/jca/ProviderContext;

    move-result-object v0

    move-object v1, v6

    move-object v6, v0

    invoke-interface/range {v1 .. v6}, Lorg/jose4j/jwe/ContentEncryptionAlgorithm;->decrypt(Lorg/jose4j/jwe/ContentEncryptionParts;[B[BLorg/jose4j/jwx/Headers;Lorg/jose4j/jca/ProviderContext;)[B

    move-result-object v0

    .line 251
    invoke-virtual {p0}, Lorg/jose4j/jwe/JsonWebEncryption;->getHeaders()Lorg/jose4j/jwx/Headers;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lorg/jose4j/jwe/JsonWebEncryption;->decompress(Lorg/jose4j/jwx/Headers;[B)[B

    move-result-object v0

    .line 253
    invoke-virtual {p0, v0}, Lorg/jose4j/jwe/JsonWebEncryption;->setPlaintext([B)V

    return-void
.end method


# virtual methods
.method compress(Lorg/jose4j/jwx/Headers;[B)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/InvalidAlgorithmException;
        }
    .end annotation

    .line 294
    const-string/jumbo v0, "zip"

    invoke-virtual {p1, v0}, Lorg/jose4j/jwx/Headers;->getStringHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 297
    invoke-static {}, Lorg/jose4j/jwa/AlgorithmFactoryFactory;->getInstance()Lorg/jose4j/jwa/AlgorithmFactoryFactory;

    move-result-object v0

    .line 298
    invoke-virtual {v0}, Lorg/jose4j/jwa/AlgorithmFactoryFactory;->getCompressionAlgorithmFactory()Lorg/jose4j/jwa/AlgorithmFactory;

    move-result-object v0

    .line 299
    invoke-virtual {v0, p1}, Lorg/jose4j/jwa/AlgorithmFactory;->getAlgorithm(Ljava/lang/String;)Lorg/jose4j/jwa/Algorithm;

    move-result-object p1

    check-cast p1, Lorg/jose4j/zip/CompressionAlgorithm;

    .line 300
    invoke-interface {p1, p2}, Lorg/jose4j/zip/CompressionAlgorithm;->compress([B)[B

    move-result-object p2

    :cond_0
    return-object p2
.end method

.method decompress(Lorg/jose4j/jwx/Headers;[B)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .line 281
    const-string/jumbo v0, "zip"

    invoke-virtual {p1, v0}, Lorg/jose4j/jwx/Headers;->getStringHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 284
    invoke-static {}, Lorg/jose4j/jwa/AlgorithmFactoryFactory;->getInstance()Lorg/jose4j/jwa/AlgorithmFactoryFactory;

    move-result-object v0

    .line 285
    invoke-virtual {v0}, Lorg/jose4j/jwa/AlgorithmFactoryFactory;->getCompressionAlgorithmFactory()Lorg/jose4j/jwa/AlgorithmFactory;

    move-result-object v0

    .line 286
    invoke-virtual {v0, p1}, Lorg/jose4j/jwa/AlgorithmFactory;->getAlgorithm(Ljava/lang/String;)Lorg/jose4j/jwa/Algorithm;

    move-result-object p1

    check-cast p1, Lorg/jose4j/zip/CompressionAlgorithm;

    .line 287
    invoke-interface {p1, p2}, Lorg/jose4j/zip/CompressionAlgorithm;->decompress([B)[B

    move-result-object p2

    :cond_0
    return-object p2
.end method

.method public enableDefaultCompression()V
    .locals 1

    .line 124
    const-string v0, "DEF"

    invoke-virtual {p0, v0}, Lorg/jose4j/jwe/JsonWebEncryption;->setCompressionAlgorithmHeaderParameter(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic getAlgorithm()Lorg/jose4j/jwa/Algorithm;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/InvalidAlgorithmException;
        }
    .end annotation

    .line 42
    invoke-virtual {p0}, Lorg/jose4j/jwe/JsonWebEncryption;->getAlgorithm()Lorg/jose4j/jwe/KeyManagementAlgorithm;

    move-result-object v0

    return-object v0
.end method

.method public getAlgorithm()Lorg/jose4j/jwe/KeyManagementAlgorithm;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/InvalidAlgorithmException;
        }
    .end annotation

    .line 177
    invoke-virtual {p0}, Lorg/jose4j/jwe/JsonWebEncryption;->getKeyManagementModeAlgorithm()Lorg/jose4j/jwe/KeyManagementAlgorithm;

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
    invoke-virtual {p0}, Lorg/jose4j/jwe/JsonWebEncryption;->getAlgorithmNoConstraintCheck()Lorg/jose4j/jwe/KeyManagementAlgorithm;

    move-result-object v0

    return-object v0
.end method

.method public getAlgorithmNoConstraintCheck()Lorg/jose4j/jwe/KeyManagementAlgorithm;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/InvalidAlgorithmException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 171
    invoke-virtual {p0, v0}, Lorg/jose4j/jwe/JsonWebEncryption;->getKeyManagementModeAlgorithm(Z)Lorg/jose4j/jwe/KeyManagementAlgorithm;

    move-result-object v0

    return-object v0
.end method

.method public getCompactSerialization()Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .line 307
    invoke-virtual {p0}, Lorg/jose4j/jwe/JsonWebEncryption;->getKeyManagementModeAlgorithm()Lorg/jose4j/jwe/KeyManagementAlgorithm;

    move-result-object v0

    .line 308
    invoke-virtual {p0}, Lorg/jose4j/jwe/JsonWebEncryption;->getContentEncryptionAlgorithm()Lorg/jose4j/jwe/ContentEncryptionAlgorithm;

    move-result-object v6

    .line 310
    invoke-interface {v6}, Lorg/jose4j/jwe/ContentEncryptionAlgorithm;->getContentEncryptionKeyDescriptor()Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;

    move-result-object v7

    .line 311
    invoke-virtual {p0}, Lorg/jose4j/jwe/JsonWebEncryption;->getKey()Ljava/security/Key;

    move-result-object v1

    .line 312
    invoke-virtual {p0}, Lorg/jose4j/jwe/JsonWebEncryption;->isDoKeyValidation()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 314
    invoke-virtual {p0}, Lorg/jose4j/jwe/JsonWebEncryption;->getKey()Ljava/security/Key;

    move-result-object v2

    invoke-interface {v0, v2, v6}, Lorg/jose4j/jwe/KeyManagementAlgorithm;->validateEncryptionKey(Ljava/security/Key;Lorg/jose4j/jwe/ContentEncryptionAlgorithm;)V

    .line 317
    :cond_0
    invoke-virtual {p0}, Lorg/jose4j/jwe/JsonWebEncryption;->getHeaders()Lorg/jose4j/jwx/Headers;

    move-result-object v3

    iget-object v4, p0, Lorg/jose4j/jwe/JsonWebEncryption;->contentEncryptionKey:[B

    invoke-virtual {p0}, Lorg/jose4j/jwe/JsonWebEncryption;->getProviderCtx()Lorg/jose4j/jca/ProviderContext;

    move-result-object v5

    move-object v2, v7

    invoke-interface/range {v0 .. v5}, Lorg/jose4j/jwe/KeyManagementAlgorithm;->manageForEncrypt(Ljava/security/Key;Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;Lorg/jose4j/jwx/Headers;[BLorg/jose4j/jca/ProviderContext;)Lorg/jose4j/jwe/ContentEncryptionKeys;

    move-result-object v0

    .line 318
    invoke-virtual {v0}, Lorg/jose4j/jwe/ContentEncryptionKeys;->getContentEncryptionKey()[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/jose4j/jwe/JsonWebEncryption;->setContentEncryptionKey([B)V

    .line 319
    invoke-virtual {v0}, Lorg/jose4j/jwe/ContentEncryptionKeys;->getEncryptedKey()[B

    move-result-object v1

    iput-object v1, p0, Lorg/jose4j/jwe/JsonWebEncryption;->encryptedKey:[B

    .line 321
    invoke-virtual {p0}, Lorg/jose4j/jwe/JsonWebEncryption;->getEncodedHeaderAsciiBytesForAdditionalAuthenticatedData()[B

    move-result-object v3

    .line 322
    invoke-virtual {v0}, Lorg/jose4j/jwe/ContentEncryptionKeys;->getContentEncryptionKey()[B

    move-result-object v4

    .line 324
    iget-object v1, p0, Lorg/jose4j/jwe/JsonWebEncryption;->plaintext:[B

    if-eqz v1, :cond_1

    .line 330
    invoke-virtual {p0}, Lorg/jose4j/jwe/JsonWebEncryption;->getHeaders()Lorg/jose4j/jwx/Headers;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lorg/jose4j/jwe/JsonWebEncryption;->compress(Lorg/jose4j/jwx/Headers;[B)[B

    move-result-object v2

    .line 332
    invoke-direct {p0, v6, v7, v4}, Lorg/jose4j/jwe/JsonWebEncryption;->checkCek(Lorg/jose4j/jwe/ContentEncryptionAlgorithm;Lorg/jose4j/jwe/ContentEncryptionKeyDescriptor;[B)V

    .line 333
    invoke-virtual {p0}, Lorg/jose4j/jwe/JsonWebEncryption;->getHeaders()Lorg/jose4j/jwx/Headers;

    move-result-object v5

    invoke-virtual {p0}, Lorg/jose4j/jwe/JsonWebEncryption;->getIv()[B

    move-result-object v7

    invoke-virtual {p0}, Lorg/jose4j/jwe/JsonWebEncryption;->getProviderCtx()Lorg/jose4j/jca/ProviderContext;

    move-result-object v8

    move-object v1, v6

    move-object v6, v7

    move-object v7, v8

    invoke-interface/range {v1 .. v7}, Lorg/jose4j/jwe/ContentEncryptionAlgorithm;->encrypt([B[B[BLorg/jose4j/jwx/Headers;[BLorg/jose4j/jca/ProviderContext;)Lorg/jose4j/jwe/ContentEncryptionParts;

    move-result-object v1

    .line 334
    invoke-virtual {v1}, Lorg/jose4j/jwe/ContentEncryptionParts;->getIv()[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/jose4j/jwe/JsonWebEncryption;->setIv([B)V

    .line 335
    invoke-virtual {v1}, Lorg/jose4j/jwe/ContentEncryptionParts;->getCiphertext()[B

    move-result-object v2

    iput-object v2, p0, Lorg/jose4j/jwe/JsonWebEncryption;->ciphertext:[B

    .line 337
    iget-object v2, p0, Lorg/jose4j/jwe/JsonWebEncryption;->base64url:Lorg/jose4j/base64url/Base64Url;

    invoke-virtual {v1}, Lorg/jose4j/jwe/ContentEncryptionParts;->getIv()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jose4j/base64url/Base64Url;->base64UrlEncode([B)Ljava/lang/String;

    move-result-object v2

    .line 338
    iget-object v3, p0, Lorg/jose4j/jwe/JsonWebEncryption;->base64url:Lorg/jose4j/base64url/Base64Url;

    invoke-virtual {v1}, Lorg/jose4j/jwe/ContentEncryptionParts;->getCiphertext()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/jose4j/base64url/Base64Url;->base64UrlEncode([B)Ljava/lang/String;

    move-result-object v3

    .line 339
    iget-object v4, p0, Lorg/jose4j/jwe/JsonWebEncryption;->base64url:Lorg/jose4j/base64url/Base64Url;

    invoke-virtual {v1}, Lorg/jose4j/jwe/ContentEncryptionParts;->getAuthenticationTag()[B

    move-result-object v1

    invoke-virtual {v4, v1}, Lorg/jose4j/base64url/Base64Url;->base64UrlEncode([B)Ljava/lang/String;

    move-result-object v1

    .line 342
    invoke-virtual {v0}, Lorg/jose4j/jwe/ContentEncryptionKeys;->getEncryptedKey()[B

    move-result-object v0

    .line 343
    iget-object v4, p0, Lorg/jose4j/jwe/JsonWebEncryption;->base64url:Lorg/jose4j/base64url/Base64Url;

    invoke-virtual {v4, v0}, Lorg/jose4j/base64url/Base64Url;->base64UrlEncode([B)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x5

    .line 345
    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p0}, Lorg/jose4j/jwe/JsonWebEncryption;->getEncodedHeader()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    const/4 v0, 0x2

    aput-object v2, v4, v0

    const/4 v0, 0x3

    aput-object v3, v4, v0

    const/4 v0, 0x4

    aput-object v1, v4, v0

    invoke-static {v4}, Lorg/jose4j/jwx/CompactSerializer;->serialize([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 327
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The plaintext payload for the JWE has not been set."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCompressionAlgorithmHeaderParameter()Ljava/lang/String;
    .locals 1

    .line 119
    const-string/jumbo v0, "zip"

    invoke-virtual {p0, v0}, Lorg/jose4j/jwe/JsonWebEncryption;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentEncryptionAlgorithm()Lorg/jose4j/jwe/ContentEncryptionAlgorithm;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/InvalidAlgorithmException;
        }
    .end annotation

    .line 134
    invoke-virtual {p0}, Lorg/jose4j/jwe/JsonWebEncryption;->getEncryptionMethodHeaderParameter()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 140
    iget-object v1, p0, Lorg/jose4j/jwe/JsonWebEncryption;->contentEncryptionAlgorithmConstraints:Lorg/jose4j/jwa/AlgorithmConstraints;

    invoke-virtual {v1, v0}, Lorg/jose4j/jwa/AlgorithmConstraints;->checkConstraint(Ljava/lang/String;)V

    .line 141
    invoke-static {}, Lorg/jose4j/jwa/AlgorithmFactoryFactory;->getInstance()Lorg/jose4j/jwa/AlgorithmFactoryFactory;

    move-result-object v1

    .line 142
    invoke-virtual {v1}, Lorg/jose4j/jwa/AlgorithmFactoryFactory;->getJweContentEncryptionAlgorithmFactory()Lorg/jose4j/jwa/AlgorithmFactory;

    move-result-object v1

    .line 143
    invoke-virtual {v1, v0}, Lorg/jose4j/jwa/AlgorithmFactory;->getAlgorithm(Ljava/lang/String;)Lorg/jose4j/jwa/Algorithm;

    move-result-object v0

    check-cast v0, Lorg/jose4j/jwe/ContentEncryptionAlgorithm;

    return-object v0

    .line 137
    :cond_0
    new-instance v0, Lorg/jose4j/lang/InvalidAlgorithmException;

    const-string v1, "Content encryption header (enc) not set."

    invoke-direct {v0, v1}, Lorg/jose4j/lang/InvalidAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getContentEncryptionKey()[B
    .locals 1

    .line 350
    iget-object v0, p0, Lorg/jose4j/jwe/JsonWebEncryption;->contentEncryptionKey:[B

    return-object v0
.end method

.method getEncodedHeaderAsciiBytesForAdditionalAuthenticatedData()[B
    .locals 1

    .line 275
    invoke-virtual {p0}, Lorg/jose4j/jwe/JsonWebEncryption;->getEncodedHeader()Ljava/lang/String;

    move-result-object v0

    .line 276
    invoke-static {v0}, Lorg/jose4j/lang/StringUtil;->getBytesAscii(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public getEncryptedKey()[B
    .locals 1

    .line 270
    iget-object v0, p0, Lorg/jose4j/jwe/JsonWebEncryption;->encryptedKey:[B

    return-object v0
.end method

.method public getEncryptionMethodHeaderParameter()Ljava/lang/String;
    .locals 1

    .line 109
    const-string v0, "enc"

    invoke-virtual {p0, v0}, Lorg/jose4j/jwe/JsonWebEncryption;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIv()[B
    .locals 1

    .line 365
    iget-object v0, p0, Lorg/jose4j/jwe/JsonWebEncryption;->iv:[B

    return-object v0
.end method

.method public getKeyManagementModeAlgorithm()Lorg/jose4j/jwe/KeyManagementAlgorithm;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/InvalidAlgorithmException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 148
    invoke-virtual {p0, v0}, Lorg/jose4j/jwe/JsonWebEncryption;->getKeyManagementModeAlgorithm(Z)Lorg/jose4j/jwe/KeyManagementAlgorithm;

    move-result-object v0

    return-object v0
.end method

.method getKeyManagementModeAlgorithm(Z)Lorg/jose4j/jwe/KeyManagementAlgorithm;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/InvalidAlgorithmException;
        }
    .end annotation

    .line 153
    invoke-virtual {p0}, Lorg/jose4j/jwe/JsonWebEncryption;->getAlgorithmHeaderValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 161
    invoke-virtual {p0}, Lorg/jose4j/jwe/JsonWebEncryption;->getAlgorithmConstraints()Lorg/jose4j/jwa/AlgorithmConstraints;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/jose4j/jwa/AlgorithmConstraints;->checkConstraint(Ljava/lang/String;)V

    .line 163
    :cond_0
    invoke-static {}, Lorg/jose4j/jwa/AlgorithmFactoryFactory;->getInstance()Lorg/jose4j/jwa/AlgorithmFactoryFactory;

    move-result-object p1

    .line 164
    invoke-virtual {p1}, Lorg/jose4j/jwa/AlgorithmFactoryFactory;->getJweKeyManagementAlgorithmFactory()Lorg/jose4j/jwa/AlgorithmFactory;

    move-result-object p1

    .line 165
    invoke-virtual {p1, v0}, Lorg/jose4j/jwa/AlgorithmFactory;->getAlgorithm(Ljava/lang/String;)Lorg/jose4j/jwa/Algorithm;

    move-result-object p1

    check-cast p1, Lorg/jose4j/jwe/KeyManagementAlgorithm;

    return-object p1

    .line 156
    :cond_1
    new-instance p1, Lorg/jose4j/lang/InvalidAlgorithmException;

    const-string v0, "Encryption key management algorithm header (alg) not set."

    invoke-direct {p1, v0}, Lorg/jose4j/lang/InvalidAlgorithmException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getPayload()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .line 93
    invoke-virtual {p0}, Lorg/jose4j/jwe/JsonWebEncryption;->getPlaintextString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPlaintextBytes()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lorg/jose4j/jwe/JsonWebEncryption;->plaintext:[B

    if-nez v0, :cond_0

    .line 85
    invoke-direct {p0}, Lorg/jose4j/jwe/JsonWebEncryption;->decrypt()V

    .line 87
    :cond_0
    iget-object v0, p0, Lorg/jose4j/jwe/JsonWebEncryption;->plaintext:[B

    return-object v0
.end method

.method public getPlaintextString()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .line 78
    invoke-virtual {p0}, Lorg/jose4j/jwe/JsonWebEncryption;->getPlaintextBytes()[B

    move-result-object v0

    iget-object v1, p0, Lorg/jose4j/jwe/JsonWebEncryption;->plaintextCharEncoding:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/jose4j/lang/StringUtil;->newString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public prepareDecryptingPrimitive()Lorg/jose4j/jwa/CryptoPrimitive;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .line 214
    invoke-direct {p0}, Lorg/jose4j/jwe/JsonWebEncryption;->createDecryptingPrimitive()Lorg/jose4j/jwa/CryptoPrimitive;

    move-result-object v0

    iput-object v0, p0, Lorg/jose4j/jwe/JsonWebEncryption;->decryptingPrimitive:Lorg/jose4j/jwa/CryptoPrimitive;

    return-object v0
.end method

.method protected setCompactSerializationParts([Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .line 182
    array-length v0, p1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 187
    aget-object v0, p1, v0

    invoke-virtual {p0, v0}, Lorg/jose4j/jwe/JsonWebEncryption;->setEncodedHeader(Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lorg/jose4j/jwe/JsonWebEncryption;->base64url:Lorg/jose4j/base64url/Base64Url;

    const/4 v1, 0x1

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lorg/jose4j/base64url/Base64Url;->base64UrlDecode(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/jose4j/jwe/JsonWebEncryption;->encryptedKey:[B

    const/4 v0, 0x2

    .line 189
    aget-object v0, p1, v0

    invoke-virtual {p0, v0}, Lorg/jose4j/jwe/JsonWebEncryption;->setEncodedIv(Ljava/lang/String;)V

    const/4 v0, 0x3

    .line 190
    aget-object v0, p1, v0

    .line 191
    const-string v1, "Encoded JWE Ciphertext"

    invoke-virtual {p0, v0, v1}, Lorg/jose4j/jwe/JsonWebEncryption;->checkNotEmptyPart(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    iget-object v1, p0, Lorg/jose4j/jwe/JsonWebEncryption;->base64url:Lorg/jose4j/base64url/Base64Url;

    invoke-virtual {v1, v0}, Lorg/jose4j/base64url/Base64Url;->base64UrlDecode(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/jose4j/jwe/JsonWebEncryption;->ciphertext:[B

    const/4 v0, 0x4

    .line 193
    aget-object p1, p1, v0

    .line 194
    const-string v0, "Encoded JWE Authentication Tag"

    invoke-virtual {p0, p1, v0}, Lorg/jose4j/jwe/JsonWebEncryption;->checkNotEmptyPart(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lorg/jose4j/jwe/JsonWebEncryption;->base64url:Lorg/jose4j/base64url/Base64Url;

    invoke-virtual {v0, p1}, Lorg/jose4j/base64url/Base64Url;->base64UrlDecode(Ljava/lang/String;)[B

    move-result-object p1

    .line 196
    invoke-virtual {p0, p1}, Lorg/jose4j/jwe/JsonWebEncryption;->setIntegrity([B)V

    return-void

    .line 184
    :cond_0
    new-instance p1, Lorg/jose4j/lang/JoseException;

    const-string v0, "A JWE Compact Serialization must have exactly 5 parts separated by period (\'.\') characters"

    invoke-direct {p1, v0}, Lorg/jose4j/lang/JoseException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setCompressionAlgorithmHeaderParameter(Ljava/lang/String;)V
    .locals 1

    .line 114
    const-string/jumbo v0, "zip"

    invoke-virtual {p0, v0, p1}, Lorg/jose4j/jwe/JsonWebEncryption;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setContentEncryptionAlgorithmConstraints(Lorg/jose4j/jwa/AlgorithmConstraints;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lorg/jose4j/jwe/JsonWebEncryption;->contentEncryptionAlgorithmConstraints:Lorg/jose4j/jwa/AlgorithmConstraints;

    return-void
.end method

.method public setContentEncryptionKey([B)V
    .locals 0

    .line 355
    iput-object p1, p0, Lorg/jose4j/jwe/JsonWebEncryption;->contentEncryptionKey:[B

    return-void
.end method

.method public setEncodedContentEncryptionKey(Ljava/lang/String;)V
    .locals 0

    .line 360
    invoke-static {p1}, Lorg/jose4j/base64url/Base64Url;->decode(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jose4j/jwe/JsonWebEncryption;->setContentEncryptionKey([B)V

    return-void
.end method

.method public setEncodedIv(Ljava/lang/String;)V
    .locals 1

    .line 375
    iget-object v0, p0, Lorg/jose4j/jwe/JsonWebEncryption;->base64url:Lorg/jose4j/base64url/Base64Url;

    invoke-virtual {v0, p1}, Lorg/jose4j/base64url/Base64Url;->base64UrlDecode(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jose4j/jwe/JsonWebEncryption;->setIv([B)V

    return-void
.end method

.method public setEncryptionMethodHeaderParameter(Ljava/lang/String;)V
    .locals 1

    .line 104
    const-string v0, "enc"

    invoke-virtual {p0, v0, p1}, Lorg/jose4j/jwe/JsonWebEncryption;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setIv([B)V
    .locals 0

    .line 370
    iput-object p1, p0, Lorg/jose4j/jwe/JsonWebEncryption;->iv:[B

    return-void
.end method

.method public setPayload(Ljava/lang/String;)V
    .locals 0

    .line 99
    invoke-virtual {p0, p1}, Lorg/jose4j/jwe/JsonWebEncryption;->setPlaintext(Ljava/lang/String;)V

    return-void
.end method

.method public setPlainTextCharEncoding(Ljava/lang/String;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lorg/jose4j/jwe/JsonWebEncryption;->plaintextCharEncoding:Ljava/lang/String;

    return-void
.end method

.method public setPlaintext(Ljava/lang/String;)V
    .locals 1

    .line 73
    iget-object v0, p0, Lorg/jose4j/jwe/JsonWebEncryption;->plaintextCharEncoding:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/jose4j/lang/StringUtil;->getBytesUnchecked(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lorg/jose4j/jwe/JsonWebEncryption;->plaintext:[B

    return-void
.end method

.method public setPlaintext([B)V
    .locals 0

    .line 68
    iput-object p1, p0, Lorg/jose4j/jwe/JsonWebEncryption;->plaintext:[B

    return-void
.end method
