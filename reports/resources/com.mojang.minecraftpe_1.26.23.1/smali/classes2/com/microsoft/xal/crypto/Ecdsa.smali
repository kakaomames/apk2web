.class public Lcom/microsoft/xal/crypto/Ecdsa;
.super Ljava/lang/Object;
.source "Ecdsa.java"


# static fields
.field private static final ANDROID_KEY_STORE:Ljava/lang/String; = "AndroidKeyStore"

.field private static final ECDSA_SIGNATURE_NAME:Ljava/lang/String; = "NONEwithECDSA"

.field private static final EC_ALGORITHM_NAME:Ljava/lang/String; = "secp256r1"

.field private static final KEY_ALIAS_PREFIX:Ljava/lang/String; = "xal_"


# instance fields
.field private keyPair:Ljava/security/KeyPair;

.field private uniqueId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 46
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-ge v0, v1, :cond_0

    .line 48
    invoke-static {}, Lorg/conscrypt/Conscrypt;->newProvider()Ljava/security/Provider;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/security/Security;->insertProviderAt(Ljava/security/Provider;I)I

    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getBase64StringFromBytes([B)Ljava/lang/String;
    .locals 3

    .line 231
    array-length v0, p0

    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Landroid/util/Base64;->encodeToString([BIII)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getBytesFromBase64String(Ljava/lang/String;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/16 v0, 0xb

    .line 236
    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    return-object p0
.end method

.method private static getKeyAlias(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "xal_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static restoreKeyAndId(Landroid/content/Context;)Lcom/microsoft/xal/crypto/Ecdsa;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassCastException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .line 63
    const-string v0, "com.microsoft.xal.crypto"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 65
    const-string v0, "id"

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    const-string v1, "public"

    invoke-interface {p0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "private"

    invoke-interface {p0, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    .line 74
    :cond_0
    const-string v4, ""

    invoke-interface {p0, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 75
    invoke-interface {p0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 76
    invoke-interface {p0, v0, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 78
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 87
    :cond_1
    invoke-static {v1}, Lcom/microsoft/xal/crypto/Ecdsa;->getBytesFromBase64String(Ljava/lang/String;)[B

    move-result-object p0

    .line 88
    invoke-static {v3}, Lcom/microsoft/xal/crypto/Ecdsa;->getBytesFromBase64String(Ljava/lang/String;)[B

    move-result-object v1

    .line 90
    const-string v2, "EC"

    invoke-static {v2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    .line 91
    new-instance v3, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v3, p0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p0

    check-cast p0, Ljava/security/interfaces/ECPublicKey;

    .line 92
    new-instance v3, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v3, v1}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v1

    check-cast v1, Ljava/security/interfaces/ECPrivateKey;

    .line 94
    new-instance v2, Lcom/microsoft/xal/crypto/Ecdsa;

    invoke-direct {v2}, Lcom/microsoft/xal/crypto/Ecdsa;-><init>()V

    .line 95
    iput-object v0, v2, Lcom/microsoft/xal/crypto/Ecdsa;->uniqueId:Ljava/lang/String;

    .line 96
    new-instance v0, Ljava/security/KeyPair;

    invoke-direct {v0, p0, v1}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    iput-object v0, v2, Lcom/microsoft/xal/crypto/Ecdsa;->keyPair:Ljava/security/KeyPair;

    return-object v2

    .line 80
    :cond_2
    :goto_0
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 81
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 82
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-object v2

    .line 67
    :cond_3
    :goto_1
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 68
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 69
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-object v2
.end method

.method private toP1363SignedBuffer([B)[B
    .locals 5

    const/4 v0, 0x3

    .line 179
    aget-byte v0, p1, v0

    add-int/lit8 v1, v0, 0x5

    add-int/lit8 v2, v0, 0x6

    .line 183
    aget-byte v1, p1, v1

    .line 185
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v4, 0x4

    .line 186
    invoke-direct {p0, p1, v4, v0, v3}, Lcom/microsoft/xal/crypto/Ecdsa;->writeAdjustedHalfOfAsn1ToP1363([BIILjava/io/ByteArrayOutputStream;)V

    .line 187
    invoke-direct {p0, p1, v2, v1, v3}, Lcom/microsoft/xal/crypto/Ecdsa;->writeAdjustedHalfOfAsn1ToP1363([BIILjava/io/ByteArrayOutputStream;)V

    .line 188
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method

.method private writeAdjustedHalfOfAsn1ToP1363([BIILjava/io/ByteArrayOutputStream;)V
    .locals 3

    const/16 v0, 0x20

    if-le p3, v0, :cond_0

    sub-int/2addr p3, v0

    add-int/2addr p2, p3

    .line 206
    invoke-virtual {p4, p1, p2, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    if-ge p3, v0, :cond_1

    rsub-int/lit8 v0, p3, 0x20

    .line 211
    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 214
    invoke-virtual {p4, v1, v2, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 216
    invoke-virtual {p4, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 220
    :cond_1
    invoke-virtual {p4, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :goto_0
    return-void
.end method


# virtual methods
.method public generateKey(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchProviderException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 102
    const-string v0, "EC"

    invoke-static {v0}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v0

    .line 104
    new-instance v1, Ljava/security/spec/ECGenParameterSpec;

    const-string v2, "secp256r1"

    invoke-direct {v1, v2}, Ljava/security/spec/ECGenParameterSpec;-><init>(Ljava/lang/String;)V

    .line 105
    invoke-virtual {v0, v1}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 107
    iput-object p1, p0, Lcom/microsoft/xal/crypto/Ecdsa;->uniqueId:Ljava/lang/String;

    .line 108
    invoke-virtual {v0}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/xal/crypto/Ecdsa;->keyPair:Ljava/security/KeyPair;

    return-void
.end method

.method public getPublicKey()Lcom/microsoft/xal/crypto/EccPubKey;
    .locals 2

    .line 113
    new-instance v0, Lcom/microsoft/xal/crypto/EccPubKey;

    iget-object v1, p0, Lcom/microsoft/xal/crypto/Ecdsa;->keyPair:Ljava/security/KeyPair;

    invoke-virtual {v1}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v1

    check-cast v1, Ljava/security/interfaces/ECPublicKey;

    invoke-direct {v0, v1}, Lcom/microsoft/xal/crypto/EccPubKey;-><init>(Ljava/security/interfaces/ECPublicKey;)V

    return-object v0
.end method

.method public getUniqueId()Ljava/lang/String;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/microsoft/xal/crypto/Ecdsa;->uniqueId:Ljava/lang/String;

    return-object v0
.end method

.method public hashAndSign([B)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 150
    new-instance v0, Lcom/microsoft/xal/crypto/ShaHasher;

    invoke-direct {v0}, Lcom/microsoft/xal/crypto/ShaHasher;-><init>()V

    .line 151
    invoke-virtual {v0, p1}, Lcom/microsoft/xal/crypto/ShaHasher;->AddBytes([B)V

    .line 152
    invoke-virtual {v0}, Lcom/microsoft/xal/crypto/ShaHasher;->SignHash()[B

    move-result-object p1

    .line 154
    invoke-virtual {p0, p1}, Lcom/microsoft/xal/crypto/Ecdsa;->sign([B)[B

    move-result-object p1

    return-object p1
.end method

.method public sign([B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 137
    const-string v0, "NONEwithECDSA"

    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    .line 138
    iget-object v1, p0, Lcom/microsoft/xal/crypto/Ecdsa;->keyPair:Ljava/security/KeyPair;

    invoke-virtual {v1}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 139
    invoke-virtual {v0, p1}, Ljava/security/Signature;->update([B)V

    .line 140
    invoke-virtual {v0}, Ljava/security/Signature;->sign()[B

    move-result-object p1

    .line 141
    invoke-direct {p0, p1}, Lcom/microsoft/xal/crypto/Ecdsa;->toP1363SignedBuffer([B)[B

    move-result-object p1

    return-object p1
.end method

.method public storeKeyPairAndId(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    .line 123
    const-string v0, "com.microsoft.xal.crypto"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 124
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 126
    const/4 v0, 0x0

    sget-object v0, Lcom/google/android/datatransport/runtime/dagger/multibindings/LdZM/lcNKOYBQdOzfHI;->diUmwVDvgCCE:Ljava/lang/String;

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 127
    iget-object p2, p0, Lcom/microsoft/xal/crypto/Ecdsa;->keyPair:Ljava/security/KeyPair;

    invoke-virtual {p2}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object p2

    invoke-interface {p2}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object p2

    invoke-static {p2}, Lcom/microsoft/xal/crypto/Ecdsa;->getBase64StringFromBytes([B)Ljava/lang/String;

    move-result-object p2

    .line 128
    const-string v0, "public"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 129
    iget-object p2, p0, Lcom/microsoft/xal/crypto/Ecdsa;->keyPair:Ljava/security/KeyPair;

    invoke-virtual {p2}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object p2

    invoke-interface {p2}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object p2

    invoke-static {p2}, Lcom/microsoft/xal/crypto/Ecdsa;->getBase64StringFromBytes([B)Ljava/lang/String;

    move-result-object p2

    .line 130
    const-string v0, "private"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 132
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p1

    return p1
.end method
