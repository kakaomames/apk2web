.class public Lorg/jose4j/keys/HmacKey;
.super Ljavax/crypto/spec/SecretKeySpec;
.source "HmacKey.java"


# static fields
.field public static final ALGORITHM:Ljava/lang/String; = "HMAC"


# direct methods
.method public constructor <init>([B)V
    .locals 1

    .line 29
    const-string v0, "HMAC"

    invoke-direct {p0, p1, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-void
.end method
