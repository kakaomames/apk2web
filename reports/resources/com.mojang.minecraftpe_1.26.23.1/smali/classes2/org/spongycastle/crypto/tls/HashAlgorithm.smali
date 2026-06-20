.class public Lorg/spongycastle/crypto/tls/HashAlgorithm;
.super Ljava/lang/Object;
.source "HashAlgorithm.java"


# static fields
.field public static final md5:S = 0x1S

.field public static final none:S = 0x0S

.field public static final sha1:S = 0x2S

.field public static final sha224:S = 0x3S

.field public static final sha256:S = 0x4S

.field public static final sha384:S = 0x5S

.field public static final sha512:S = 0x6S


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getName(S)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    .line 35
    const-string p0, "UNKNOWN"

    return-object p0

    .line 33
    :pswitch_0    # 0x6
    const-string p0, "sha512"

    return-object p0

    .line 31
    :pswitch_1    # 0x5
    const-string p0, "sha384"

    return-object p0

    .line 29
    :pswitch_2    # 0x4
    const-string p0, "sha256"

    return-object p0

    .line 27
    :pswitch_3    # 0x3
    const-string p0, "sha224"

    return-object p0

    .line 25
    :pswitch_4    # 0x2
    const-string p0, "sha1"

    return-object p0

    .line 23
    :pswitch_5    # 0x1
    const-string p0, "md5"

    return-object p0

    .line 21
    :pswitch_6    # 0x0
    const-string p0, "none"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6    # 0x0
        :pswitch_5    # 0x1
        :pswitch_4    # 0x2
        :pswitch_3    # 0x3
        :pswitch_2    # 0x4
        :pswitch_1    # 0x5
        :pswitch_0    # 0x6
    .end packed-switch
.end method

.method public static getText(S)Ljava/lang/String;
    .locals 2

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lorg/spongycastle/crypto/tls/HashAlgorithm;->getName(S)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isPrivate(S)Z
    .locals 1

    const/16 v0, 0xe0

    if-gt v0, p0, :cond_0

    const/16 v0, 0xff

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
