.class public Lorg/jose4j/jws/HmacUsingShaAlgorithm$HmacSha256;
.super Lorg/jose4j/jws/HmacUsingShaAlgorithm;
.source "HmacUsingShaAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jose4j/jws/HmacUsingShaAlgorithm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HmacSha256"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 129
    const-string v0, "HmacSHA256"

    const/16 v1, 0x100

    const-string v2, "HS256"

    invoke-direct {p0, v2, v0, v1}, Lorg/jose4j/jws/HmacUsingShaAlgorithm;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
