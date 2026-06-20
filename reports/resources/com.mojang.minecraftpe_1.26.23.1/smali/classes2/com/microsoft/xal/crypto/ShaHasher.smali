.class public Lcom/microsoft/xal/crypto/ShaHasher;
.super Ljava/lang/Object;
.source "ShaHasher.java"


# instance fields
.field private md:Ljava/security/MessageDigest;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/xal/crypto/ShaHasher;->md:Ljava/security/MessageDigest;

    return-void
.end method


# virtual methods
.method public AddBytes([B)V
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/microsoft/xal/crypto/ShaHasher;->md:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    return-void
.end method

.method SignHash()[B
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/microsoft/xal/crypto/ShaHasher;->md:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    return-object v0
.end method
