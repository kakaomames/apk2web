.class public Lorg/spongycastle/crypto/digests/SHA384Digest;
.super Lorg/spongycastle/crypto/digests/LongDigest;
.source "SHA384Digest.java"


# static fields
.field private static final DIGEST_LENGTH:I = 0x30


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lorg/spongycastle/crypto/digests/LongDigest;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/digests/SHA384Digest;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/digests/LongDigest;-><init>(Lorg/spongycastle/crypto/digests/LongDigest;)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lorg/spongycastle/crypto/digests/LongDigest;-><init>()V

    .line 46
    invoke-virtual {p0, p1}, Lorg/spongycastle/crypto/digests/SHA384Digest;->restoreState([B)V

    return-void
.end method


# virtual methods
.method public copy()Lorg/spongycastle/util/Memoable;
    .locals 1

    .line 100
    new-instance v0, Lorg/spongycastle/crypto/digests/SHA384Digest;

    invoke-direct {v0, p0}, Lorg/spongycastle/crypto/digests/SHA384Digest;-><init>(Lorg/spongycastle/crypto/digests/SHA384Digest;)V

    return-object v0
.end method

.method public doFinal([BI)I
    .locals 3

    .line 63
    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/SHA384Digest;->finish()V

    .line 65
    iget-wide v0, p0, Lorg/spongycastle/crypto/digests/SHA384Digest;->H1:J

    invoke-static {v0, v1, p1, p2}, Lorg/spongycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 66
    iget-wide v0, p0, Lorg/spongycastle/crypto/digests/SHA384Digest;->H2:J

    add-int/lit8 v2, p2, 0x8

    invoke-static {v0, v1, p1, v2}, Lorg/spongycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 67
    iget-wide v0, p0, Lorg/spongycastle/crypto/digests/SHA384Digest;->H3:J

    add-int/lit8 v2, p2, 0x10

    invoke-static {v0, v1, p1, v2}, Lorg/spongycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 68
    iget-wide v0, p0, Lorg/spongycastle/crypto/digests/SHA384Digest;->H4:J

    add-int/lit8 v2, p2, 0x18

    invoke-static {v0, v1, p1, v2}, Lorg/spongycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 69
    iget-wide v0, p0, Lorg/spongycastle/crypto/digests/SHA384Digest;->H5:J

    add-int/lit8 v2, p2, 0x20

    invoke-static {v0, v1, p1, v2}, Lorg/spongycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 70
    iget-wide v0, p0, Lorg/spongycastle/crypto/digests/SHA384Digest;->H6:J

    add-int/lit8 p2, p2, 0x28

    invoke-static {v0, v1, p1, p2}, Lorg/spongycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 72
    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/SHA384Digest;->reset()V

    const/16 p1, 0x30

    return p1
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .line 51
    const-string v0, "SHA-384"

    return-object v0
.end method

.method public getDigestSize()I
    .locals 1

    const/16 v0, 0x30

    return v0
.end method

.method public getEncodedState()[B
    .locals 1

    .line 112
    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/SHA384Digest;->getEncodedStateSize()I

    move-result v0

    new-array v0, v0, [B

    .line 113
    invoke-super {p0, v0}, Lorg/spongycastle/crypto/digests/LongDigest;->populateState([B)V

    return-object v0
.end method

.method public reset()V
    .locals 2

    .line 82
    invoke-super {p0}, Lorg/spongycastle/crypto/digests/LongDigest;->reset()V

    const-wide v0, -0x344462a23efa6128L

    .line 88
    iput-wide v0, p0, Lorg/spongycastle/crypto/digests/SHA384Digest;->H1:J

    const-wide v0, 0x629a292a367cd507L

    .line 89
    iput-wide v0, p0, Lorg/spongycastle/crypto/digests/SHA384Digest;->H2:J

    const-wide v0, -0x6ea6fea5cf8f22e9L

    .line 90
    iput-wide v0, p0, Lorg/spongycastle/crypto/digests/SHA384Digest;->H3:J

    const-wide v0, 0x152fecd8f70e5939L

    .line 91
    iput-wide v0, p0, Lorg/spongycastle/crypto/digests/SHA384Digest;->H4:J

    const-wide v0, 0x67332667ffc00b31L

    .line 92
    iput-wide v0, p0, Lorg/spongycastle/crypto/digests/SHA384Digest;->H5:J

    const-wide v0, -0x714bb57897a7eaefL

    .line 93
    iput-wide v0, p0, Lorg/spongycastle/crypto/digests/SHA384Digest;->H6:J

    const-wide v0, -0x24f3d1f29b067059L

    .line 94
    iput-wide v0, p0, Lorg/spongycastle/crypto/digests/SHA384Digest;->H7:J

    const-wide v0, 0x47b5481dbefa4fa4L

    .line 95
    iput-wide v0, p0, Lorg/spongycastle/crypto/digests/SHA384Digest;->H8:J

    return-void
.end method

.method public reset(Lorg/spongycastle/util/Memoable;)V
    .locals 0

    .line 105
    check-cast p1, Lorg/spongycastle/crypto/digests/SHA384Digest;

    .line 107
    invoke-super {p0, p1}, Lorg/spongycastle/crypto/digests/LongDigest;->copyIn(Lorg/spongycastle/crypto/digests/LongDigest;)V

    return-void
.end method
