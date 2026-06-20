.class public Lcom/microsoft/xal/crypto/EccPubKey;
.super Ljava/lang/Object;
.source "EccPubKey.java"


# instance fields
.field private final publicKey:Ljava/security/interfaces/ECPublicKey;


# direct methods
.method constructor <init>(Ljava/security/interfaces/ECPublicKey;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/microsoft/xal/crypto/EccPubKey;->publicKey:Ljava/security/interfaces/ECPublicKey;

    return-void
.end method

.method private getBase64Coordinate(Ljava/math/BigInteger;)Ljava/lang/String;
    .locals 5

    .line 39
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    .line 47
    array-length v0, p1

    const/16 v1, 0x20

    if-le v0, v1, :cond_0

    .line 49
    array-length v0, p1

    sub-int/2addr v0, v1

    goto :goto_0

    .line 54
    :cond_0
    array-length v0, p1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_1

    .line 56
    new-array v0, v1, [B

    .line 57
    array-length v3, p1

    rsub-int/lit8 v3, v3, 0x20

    array-length v4, p1

    invoke-static {p1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, v0

    :cond_1
    move v0, v2

    :goto_0
    const/16 v2, 0xb

    .line 65
    invoke-static {p1, v0, v1, v2}, Landroid/util/Base64;->encodeToString([BIII)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getBase64UrlX()Ljava/lang/String;
    .locals 1

    .line 22
    invoke-virtual {p0}, Lcom/microsoft/xal/crypto/EccPubKey;->getX()Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/microsoft/xal/crypto/EccPubKey;->getBase64Coordinate(Ljava/math/BigInteger;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBase64UrlY()Ljava/lang/String;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lcom/microsoft/xal/crypto/EccPubKey;->getY()Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/microsoft/xal/crypto/EccPubKey;->getBase64Coordinate(Ljava/math/BigInteger;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getX()Ljava/math/BigInteger;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/microsoft/xal/crypto/EccPubKey;->publicKey:Ljava/security/interfaces/ECPublicKey;

    invoke-interface {v0}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getY()Ljava/math/BigInteger;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/microsoft/xal/crypto/EccPubKey;->publicKey:Ljava/security/interfaces/ECPublicKey;

    invoke-interface {v0}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method
