.class public Lorg/jose4j/jwe/kdf/ConcatKeyDerivationFunction;
.super Ljava/lang/Object;
.source "ConcatKeyDerivationFunction.java"

# interfaces
.implements Lorg/jose4j/jwe/kdf/ConcatenationKeyDerivationFunctionWithSha256;


# static fields
.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private digestLength:I

.field private messageDigest:Ljava/security/MessageDigest;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    const-class v0, Lorg/jose4j/jwe/kdf/ConcatKeyDerivationFunction;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/jose4j/jwe/kdf/ConcatKeyDerivationFunction;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-static {p1}, Lorg/jose4j/lang/HashUtil;->getMessageDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    iput-object p1, p0, Lorg/jose4j/jwe/kdf/ConcatKeyDerivationFunction;->messageDigest:Ljava/security/MessageDigest;

    .line 43
    invoke-direct {p0}, Lorg/jose4j/jwe/kdf/ConcatKeyDerivationFunction;->init()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-static {p1, p2}, Lorg/jose4j/lang/HashUtil;->getMessageDigest(Ljava/lang/String;Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    iput-object p1, p0, Lorg/jose4j/jwe/kdf/ConcatKeyDerivationFunction;->messageDigest:Ljava/security/MessageDigest;

    .line 49
    invoke-direct {p0}, Lorg/jose4j/jwe/kdf/ConcatKeyDerivationFunction;->init()V

    return-void
.end method

.method private init()V
    .locals 4

    .line 54
    iget-object v0, p0, Lorg/jose4j/jwe/kdf/ConcatKeyDerivationFunction;->messageDigest:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->getDigestLength()I

    move-result v0

    invoke-static {v0}, Lorg/jose4j/lang/ByteUtil;->bitLength(I)I

    move-result v0

    iput v0, p0, Lorg/jose4j/jwe/kdf/ConcatKeyDerivationFunction;->digestLength:I

    .line 56
    invoke-direct {p0}, Lorg/jose4j/jwe/kdf/ConcatKeyDerivationFunction;->traceLog()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/jose4j/jwe/kdf/ConcatKeyDerivationFunction;->log:Lorg/slf4j/Logger;

    iget-object v1, p0, Lorg/jose4j/jwe/kdf/ConcatKeyDerivationFunction;->messageDigest:Ljava/security/MessageDigest;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lorg/jose4j/jwe/kdf/ConcatKeyDerivationFunction;->digestLength:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "Hash Algorithm: {} with hashlen: {} bits"

    invoke-interface {v0, v3, v1, v2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private traceLog()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method getReps(I)J
    .locals 2

    int-to-float p1, p1

    .line 125
    iget v0, p0, Lorg/jose4j/jwe/kdf/ConcatKeyDerivationFunction;->digestLength:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    float-to-double v0, p1

    .line 126
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    int-to-long v0, p1

    return-wide v0
.end method

.method public kdf([BI[B)[B
    .locals 10

    .line 81
    invoke-virtual {p0, p2}, Lorg/jose4j/jwe/kdf/ConcatKeyDerivationFunction;->getReps(I)J

    move-result-wide v0

    .line 82
    invoke-direct {p0}, Lorg/jose4j/jwe/kdf/ConcatKeyDerivationFunction;->traceLog()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 84
    sget-object v2, Lorg/jose4j/jwe/kdf/ConcatKeyDerivationFunction;->log:Lorg/slf4j/Logger;

    const-string v3, "reps: {}"

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 85
    const-string v3, "otherInfo: {}"

    invoke-static {p3}, Lorg/jose4j/lang/ByteUtil;->toDebugString([B)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 88
    :cond_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v3, 0x1

    :goto_0
    int-to-long v4, v3

    cmp-long v4, v4, v0

    const/4 v5, 0x0

    if-gtz v4, :cond_3

    .line 91
    invoke-static {v3}, Lorg/jose4j/lang/ByteUtil;->getBytes(I)[B

    move-result-object v4

    .line 93
    invoke-direct {p0}, Lorg/jose4j/jwe/kdf/ConcatKeyDerivationFunction;->traceLog()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 95
    sget-object v6, Lorg/jose4j/jwe/kdf/ConcatKeyDerivationFunction;->log:Lorg/slf4j/Logger;

    const-string v7, "rep {} hashing "

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 96
    const-string v7, " counter: {}"

    invoke-static {v4}, Lorg/jose4j/lang/ByteUtil;->toDebugString([B)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 97
    const-string v7, " z: {}"

    invoke-static {p1}, Lorg/jose4j/lang/ByteUtil;->toDebugString([B)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 98
    const-string v7, " otherInfo: {}"

    invoke-static {p3}, Lorg/jose4j/lang/ByteUtil;->toDebugString([B)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 101
    :cond_1
    iget-object v6, p0, Lorg/jose4j/jwe/kdf/ConcatKeyDerivationFunction;->messageDigest:Ljava/security/MessageDigest;

    invoke-virtual {v6, v4}, Ljava/security/MessageDigest;->update([B)V

    .line 102
    iget-object v4, p0, Lorg/jose4j/jwe/kdf/ConcatKeyDerivationFunction;->messageDigest:Ljava/security/MessageDigest;

    invoke-virtual {v4, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 103
    iget-object v4, p0, Lorg/jose4j/jwe/kdf/ConcatKeyDerivationFunction;->messageDigest:Ljava/security/MessageDigest;

    invoke-virtual {v4, p3}, Ljava/security/MessageDigest;->update([B)V

    .line 104
    iget-object v4, p0, Lorg/jose4j/jwe/kdf/ConcatKeyDerivationFunction;->messageDigest:Ljava/security/MessageDigest;

    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    .line 105
    invoke-direct {p0}, Lorg/jose4j/jwe/kdf/ConcatKeyDerivationFunction;->traceLog()Z

    move-result v6

    if-eqz v6, :cond_2

    sget-object v6, Lorg/jose4j/jwe/kdf/ConcatKeyDerivationFunction;->log:Lorg/slf4j/Logger;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v4}, Lorg/jose4j/lang/ByteUtil;->toDebugString([B)Ljava/lang/String;

    move-result-object v8

    const-string v9, " k({}): {}"

    invoke-interface {v6, v9, v7, v8}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 106
    :cond_2
    array-length v6, v4

    invoke-virtual {v2, v4, v5, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 109
    :cond_3
    invoke-static {p2}, Lorg/jose4j/lang/ByteUtil;->byteLength(I)I

    move-result p1

    .line 110
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p3

    .line 111
    invoke-direct {p0}, Lorg/jose4j/jwe/kdf/ConcatKeyDerivationFunction;->traceLog()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lorg/jose4j/jwe/kdf/ConcatKeyDerivationFunction;->log:Lorg/slf4j/Logger;

    const/4 v1, 0x0

    sget-object v1, Lcom/google/firebase/iid/EBY/WEjYEmdPgeUUZ;->hUcRt:Ljava/lang/String;

    invoke-static {p3}, Lorg/jose4j/lang/ByteUtil;->toDebugString([B)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 112
    :cond_4
    array-length v0, p3

    if-eq v0, p1, :cond_5

    .line 114
    invoke-static {p3, v5, p1}, Lorg/jose4j/lang/ByteUtil;->subArray([BII)[B

    move-result-object p3

    .line 115
    invoke-direct {p0}, Lorg/jose4j/jwe/kdf/ConcatKeyDerivationFunction;->traceLog()Z

    move-result p1

    if-eqz p1, :cond_5

    sget-object p1, Lorg/jose4j/jwe/kdf/ConcatKeyDerivationFunction;->log:Lorg/slf4j/Logger;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Lorg/jose4j/lang/ByteUtil;->toDebugString([B)Ljava/lang/String;

    move-result-object v0

    const-string v1, "first {} bits of derived key material: {}"

    invoke-interface {p1, v1, p2, v0}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 119
    :cond_5
    invoke-direct {p0}, Lorg/jose4j/jwe/kdf/ConcatKeyDerivationFunction;->traceLog()Z

    move-result p1

    if-eqz p1, :cond_6

    sget-object p1, Lorg/jose4j/jwe/kdf/ConcatKeyDerivationFunction;->log:Lorg/slf4j/Logger;

    const/4 p2, 0x0

    sget-object p2, Landroidx/documentfile/provider/ee/zVjgszcQMGytd;->YxIvQfIJu:Ljava/lang/String;

    invoke-static {p3}, Lorg/jose4j/lang/ByteUtil;->toDebugString([B)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_6
    return-object p3
.end method

.method public kdf([BI[B[B[B[B[B)[B
    .locals 3

    .line 61
    invoke-direct {p0}, Lorg/jose4j/jwe/kdf/ConcatKeyDerivationFunction;->traceLog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "KDF:\n  z: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    invoke-static {p1}, Lorg/jose4j/lang/ByteUtil;->toDebugString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n  keydatalen: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    const-string v1, "  algorithmId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Lorg/jose4j/lang/ByteUtil;->toDebugString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n  partyUInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-static {p4}, Lorg/jose4j/lang/ByteUtil;->toDebugString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n  partyVInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-static {p5}, Lorg/jose4j/lang/ByteUtil;->toDebugString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n  suppPubInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-static {p6}, Lorg/jose4j/lang/ByteUtil;->toDebugString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n  suppPrivInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-static {p7}, Lorg/jose4j/lang/ByteUtil;->toDebugString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    sget-object v1, Lorg/jose4j/jwe/kdf/ConcatKeyDerivationFunction;->log:Lorg/slf4j/Logger;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 75
    :cond_0
    filled-new-array {p3, p4, p5, p6, p7}, [[B

    move-result-object p3

    invoke-static {p3}, Lorg/jose4j/lang/ByteUtil;->concat([[B)[B

    move-result-object p3

    .line 76
    invoke-virtual {p0, p1, p2, p3}, Lorg/jose4j/jwe/kdf/ConcatKeyDerivationFunction;->kdf([BI[B)[B

    move-result-object p1

    return-object p1
.end method
