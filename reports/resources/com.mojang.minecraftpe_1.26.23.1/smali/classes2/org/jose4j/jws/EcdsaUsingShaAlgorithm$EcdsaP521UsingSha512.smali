.class public Lorg/jose4j/jws/EcdsaUsingShaAlgorithm$EcdsaP521UsingSha512;
.super Lorg/jose4j/jws/EcdsaUsingShaAlgorithm;
.source "EcdsaUsingShaAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jose4j/jws/EcdsaUsingShaAlgorithm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EcdsaP521UsingSha512"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 263
    const-string v0, "P-521"

    const/16 v1, 0x84

    const-string v2, "ES512"

    const-string v3, "SHA512withECDSA"

    invoke-direct {p0, v2, v3, v0, v1}, Lorg/jose4j/jws/EcdsaUsingShaAlgorithm;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
