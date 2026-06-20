.class public Lorg/jose4j/jws/HmacUsingShaAlgorithm$HmacSha512;
.super Lorg/jose4j/jws/HmacUsingShaAlgorithm;
.source "HmacUsingShaAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jose4j/jws/HmacUsingShaAlgorithm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HmacSha512"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 145
    const-string v0, "HmacSHA512"

    const/16 v1, 0x200

    const-string v2, "HS512"

    invoke-direct {p0, v2, v0, v1}, Lorg/jose4j/jws/HmacUsingShaAlgorithm;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
