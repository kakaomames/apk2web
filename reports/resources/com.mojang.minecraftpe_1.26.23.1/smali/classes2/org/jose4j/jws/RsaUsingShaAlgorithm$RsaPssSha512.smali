.class public Lorg/jose4j/jws/RsaUsingShaAlgorithm$RsaPssSha512;
.super Lorg/jose4j/jws/RsaUsingShaAlgorithm;
.source "RsaUsingShaAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jose4j/jws/RsaUsingShaAlgorithm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RsaPssSha512"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 85
    const-string v0, "SHA512withRSAandMGF1"

    invoke-static {v0}, Lorg/jose4j/jws/RsaUsingShaAlgorithm$RsaPssSha512;->choosePssAlgorithmName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "PS512"

    invoke-direct {p0, v1, v0}, Lorg/jose4j/jws/RsaUsingShaAlgorithm;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0}, Lorg/jose4j/jws/RsaUsingShaAlgorithm$RsaPssSha512;->getJavaAlgorithm()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RSASSA-PSS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    sget-object v4, Ljava/security/spec/MGF1ParameterSpec;->SHA512:Ljava/security/spec/MGF1ParameterSpec;

    .line 89
    new-instance v0, Ljava/security/spec/PSSParameterSpec;

    invoke-virtual {v4}, Ljava/security/spec/MGF1ParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0x40

    const/4 v6, 0x1

    const-string v3, "MGF1"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Ljava/security/spec/PSSParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;II)V

    .line 90
    invoke-virtual {p0, v0}, Lorg/jose4j/jws/RsaUsingShaAlgorithm$RsaPssSha512;->setAlgorithmParameterSpec(Ljava/security/spec/AlgorithmParameterSpec;)V

    :cond_0
    return-void
.end method
