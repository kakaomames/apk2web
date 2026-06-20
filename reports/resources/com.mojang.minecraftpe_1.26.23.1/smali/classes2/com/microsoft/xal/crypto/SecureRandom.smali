.class public Lcom/microsoft/xal/crypto/SecureRandom;
.super Ljava/lang/Object;
.source "SecureRandom.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GenerateRandomBytes(I)[B
    .locals 1

    .line 7
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 8
    new-array p0, p0, [B

    .line 9
    invoke-virtual {v0, p0}, Ljava/security/SecureRandom;->nextBytes([B)V

    return-object p0
.end method
