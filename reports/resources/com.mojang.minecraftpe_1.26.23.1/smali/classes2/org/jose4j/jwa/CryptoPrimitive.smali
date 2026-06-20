.class public Lorg/jose4j/jwa/CryptoPrimitive;
.super Ljava/lang/Object;
.source "CryptoPrimitive.java"


# instance fields
.field private final cip:Ljavax/crypto/Cipher;

.field private final kag:Ljavax/crypto/KeyAgreement;

.field private final key:Ljava/security/Key;

.field private final mac:Ljavax/crypto/Mac;

.field private final sig:Ljava/security/Signature;


# direct methods
.method public constructor <init>(Ljava/security/Key;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v4, p1

    .line 39
    invoke-direct/range {v0 .. v5}, Lorg/jose4j/jwa/CryptoPrimitive;-><init>(Ljava/security/Signature;Ljavax/crypto/Cipher;Ljavax/crypto/Mac;Ljava/security/Key;Ljavax/crypto/KeyAgreement;)V

    return-void
.end method

.method public constructor <init>(Ljava/security/Signature;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 24
    invoke-direct/range {v0 .. v5}, Lorg/jose4j/jwa/CryptoPrimitive;-><init>(Ljava/security/Signature;Ljavax/crypto/Cipher;Ljavax/crypto/Mac;Ljava/security/Key;Ljavax/crypto/KeyAgreement;)V

    return-void
.end method

.method private constructor <init>(Ljava/security/Signature;Ljavax/crypto/Cipher;Ljavax/crypto/Mac;Ljava/security/Key;Ljavax/crypto/KeyAgreement;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lorg/jose4j/jwa/CryptoPrimitive;->sig:Ljava/security/Signature;

    .line 50
    iput-object p2, p0, Lorg/jose4j/jwa/CryptoPrimitive;->cip:Ljavax/crypto/Cipher;

    .line 51
    iput-object p3, p0, Lorg/jose4j/jwa/CryptoPrimitive;->mac:Ljavax/crypto/Mac;

    .line 52
    iput-object p4, p0, Lorg/jose4j/jwa/CryptoPrimitive;->key:Ljava/security/Key;

    .line 53
    iput-object p5, p0, Lorg/jose4j/jwa/CryptoPrimitive;->kag:Ljavax/crypto/KeyAgreement;

    return-void
.end method

.method public constructor <init>(Ljavax/crypto/Cipher;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, p1

    .line 29
    invoke-direct/range {v0 .. v5}, Lorg/jose4j/jwa/CryptoPrimitive;-><init>(Ljava/security/Signature;Ljavax/crypto/Cipher;Ljavax/crypto/Mac;Ljava/security/Key;Ljavax/crypto/KeyAgreement;)V

    return-void
.end method

.method public constructor <init>(Ljavax/crypto/KeyAgreement;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v5, p1

    .line 44
    invoke-direct/range {v0 .. v5}, Lorg/jose4j/jwa/CryptoPrimitive;-><init>(Ljava/security/Signature;Ljavax/crypto/Cipher;Ljavax/crypto/Mac;Ljava/security/Key;Ljavax/crypto/KeyAgreement;)V

    return-void
.end method

.method public constructor <init>(Ljavax/crypto/Mac;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, p1

    .line 34
    invoke-direct/range {v0 .. v5}, Lorg/jose4j/jwa/CryptoPrimitive;-><init>(Ljava/security/Signature;Ljavax/crypto/Cipher;Ljavax/crypto/Mac;Ljava/security/Key;Ljavax/crypto/KeyAgreement;)V

    return-void
.end method


# virtual methods
.method public getCipher()Ljavax/crypto/Cipher;
    .locals 1

    .line 71
    iget-object v0, p0, Lorg/jose4j/jwa/CryptoPrimitive;->cip:Ljavax/crypto/Cipher;

    return-object v0
.end method

.method public getKey()Ljava/security/Key;
    .locals 1

    .line 90
    iget-object v0, p0, Lorg/jose4j/jwa/CryptoPrimitive;->key:Ljava/security/Key;

    return-object v0
.end method

.method public getKeyAgreement()Ljavax/crypto/KeyAgreement;
    .locals 1

    .line 100
    iget-object v0, p0, Lorg/jose4j/jwa/CryptoPrimitive;->kag:Ljavax/crypto/KeyAgreement;

    return-object v0
.end method

.method public getMac()Ljavax/crypto/Mac;
    .locals 1

    .line 80
    iget-object v0, p0, Lorg/jose4j/jwa/CryptoPrimitive;->mac:Ljavax/crypto/Mac;

    return-object v0
.end method

.method public getSignature()Ljava/security/Signature;
    .locals 1

    .line 62
    iget-object v0, p0, Lorg/jose4j/jwa/CryptoPrimitive;->sig:Ljava/security/Signature;

    return-object v0
.end method
