.class public Lorg/jose4j/jwe/kdf/KdfUtil;
.super Ljava/lang/Object;
.source "KdfUtil.java"


# instance fields
.field private base64Url:Lorg/jose4j/base64url/Base64Url;

.field private kdf:Lorg/jose4j/jwe/kdf/ConcatenationKeyDerivationFunctionWithSha256;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, v0}, Lorg/jose4j/jwe/kdf/KdfUtil;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lorg/jose4j/base64url/Base64Url;

    invoke-direct {v0}, Lorg/jose4j/base64url/Base64Url;-><init>()V

    iput-object v0, p0, Lorg/jose4j/jwe/kdf/KdfUtil;->base64Url:Lorg/jose4j/base64url/Base64Url;

    .line 37
    invoke-static {p1}, Lorg/jose4j/jwe/kdf/ConcatKeyDerivationFunctionFactory;->make(Ljava/lang/String;)Lorg/jose4j/jwe/kdf/ConcatenationKeyDerivationFunctionWithSha256;

    move-result-object p1

    iput-object p1, p0, Lorg/jose4j/jwe/kdf/KdfUtil;->kdf:Lorg/jose4j/jwe/kdf/ConcatenationKeyDerivationFunctionWithSha256;

    return-void
.end method


# virtual methods
.method getDatalenDataFormat(Ljava/lang/String;)[B
    .locals 1

    .line 65
    iget-object v0, p0, Lorg/jose4j/jwe/kdf/KdfUtil;->base64Url:Lorg/jose4j/base64url/Base64Url;

    invoke-virtual {v0, p1}, Lorg/jose4j/base64url/Base64Url;->base64UrlDecode(Ljava/lang/String;)[B

    move-result-object p1

    .line 66
    invoke-virtual {p0, p1}, Lorg/jose4j/jwe/kdf/KdfUtil;->prependDatalen([B)[B

    move-result-object p1

    return-object p1
.end method

.method public kdf([BILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 2

    .line 42
    invoke-static {p3}, Lorg/jose4j/lang/StringUtil;->getBytesUtf8(Ljava/lang/String;)[B

    move-result-object p3

    invoke-virtual {p0, p3}, Lorg/jose4j/jwe/kdf/KdfUtil;->prependDatalen([B)[B

    move-result-object p3

    .line 43
    invoke-virtual {p0, p4}, Lorg/jose4j/jwe/kdf/KdfUtil;->getDatalenDataFormat(Ljava/lang/String;)[B

    move-result-object p4

    .line 44
    invoke-virtual {p0, p5}, Lorg/jose4j/jwe/kdf/KdfUtil;->getDatalenDataFormat(Ljava/lang/String;)[B

    move-result-object p5

    .line 45
    invoke-static {p2}, Lorg/jose4j/lang/ByteUtil;->getBytes(I)[B

    move-result-object v0

    .line 46
    sget-object v1, Lorg/jose4j/lang/ByteUtil;->EMPTY_BYTES:[B

    .line 48
    filled-new-array {p3, p4, p5, v0, v1}, [[B

    move-result-object p3

    invoke-static {p3}, Lorg/jose4j/lang/ByteUtil;->concat([[B)[B

    move-result-object p3

    .line 50
    iget-object p4, p0, Lorg/jose4j/jwe/kdf/KdfUtil;->kdf:Lorg/jose4j/jwe/kdf/ConcatenationKeyDerivationFunctionWithSha256;

    invoke-interface {p4, p1, p2, p3}, Lorg/jose4j/jwe/kdf/ConcatenationKeyDerivationFunctionWithSha256;->kdf([BI[B)[B

    move-result-object p1

    return-object p1
.end method

.method prependDatalen([B)[B
    .locals 1

    if-nez p1, :cond_0

    .line 57
    sget-object p1, Lorg/jose4j/lang/ByteUtil;->EMPTY_BYTES:[B

    .line 59
    :cond_0
    array-length v0, p1

    invoke-static {v0}, Lorg/jose4j/lang/ByteUtil;->getBytes(I)[B

    move-result-object v0

    .line 60
    filled-new-array {v0, p1}, [[B

    move-result-object p1

    invoke-static {p1}, Lorg/jose4j/lang/ByteUtil;->concat([[B)[B

    move-result-object p1

    return-object p1
.end method
