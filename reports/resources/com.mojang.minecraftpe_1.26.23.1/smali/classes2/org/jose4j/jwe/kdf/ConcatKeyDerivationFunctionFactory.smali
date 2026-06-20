.class Lorg/jose4j/jwe/kdf/ConcatKeyDerivationFunctionFactory;
.super Ljava/lang/Object;
.source "ConcatKeyDerivationFunctionFactory.java"


# static fields
.field private static customKdfClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "Lorg/jose4j/jwe/kdf/ConcatenationKeyDerivationFunctionWithSha256;",
            ">;"
        }
    .end annotation
.end field

.field private static final log:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 23
    const-string v0, "Using custom ConcatenationKeyDerivationFunctionWithSha256 implementation: "

    const-class v1, Lorg/jose4j/jwe/kdf/ConcatKeyDerivationFunctionFactory;

    invoke-static {v1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v1

    sput-object v1, Lorg/jose4j/jwe/kdf/ConcatKeyDerivationFunctionFactory;->log:Lorg/slf4j/Logger;

    .line 29
    const-string v2, "org.jose4j.jwe.kdf.ConcatenationKeyDerivationFunctionWithSha256"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 34
    :try_start_0
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lorg/jose4j/jwe/kdf/ConcatKeyDerivationFunctionFactory;->customKdfClass:Ljava/lang/Class;

    .line 35
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jose4j/jwe/kdf/ConcatenationKeyDerivationFunctionWithSha256;

    const/16 v4, 0x10

    .line 36
    new-array v4, v4, [B

    fill-array-data v4, :array_0

    const/16 v5, 0x8

    .line 37
    new-array v5, v5, [B

    const/16 v6, 0x200

    invoke-interface {v3, v4, v6, v5}, Lorg/jose4j/jwe/kdf/ConcatenationKeyDerivationFunctionWithSha256;->kdf([BI[B)[B

    .line 38
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    .line 42
    sput-object v1, Lorg/jose4j/jwe/kdf/ConcatKeyDerivationFunctionFactory;->customKdfClass:Ljava/lang/Class;

    .line 43
    sget-object v1, Lorg/jose4j/jwe/kdf/ConcatKeyDerivationFunctionFactory;->log:Lorg/slf4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    sget-object v4, Landroidx/legacy/coreutils/Zn/jzoH;->JvkbVAdEV:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void

    nop

    :array_0
    .array-data 1
        0x7ct
        -0x51t
        0x2bt
        0xet
        -0x47t
        -0x48t
        -0x54t
        0x4bt
        0x73t
        0x49t
        -0x34t
        -0x27t
        0x4at
        -0x3at
        0x4dt
        -0x53t
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static make(Ljava/lang/String;)Lorg/jose4j/jwe/kdf/ConcatenationKeyDerivationFunctionWithSha256;
    .locals 4

    .line 50
    sget-object v0, Lorg/jose4j/jwe/kdf/ConcatKeyDerivationFunctionFactory;->customKdfClass:Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 54
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jose4j/jwe/kdf/ConcatenationKeyDerivationFunctionWithSha256;

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 58
    sget-object v1, Lorg/jose4j/jwe/kdf/ConcatKeyDerivationFunctionFactory;->log:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to create new instance of "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lorg/jose4j/jwe/kdf/ConcatKeyDerivationFunctionFactory;->customKdfClass:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 62
    :cond_0
    new-instance v0, Lorg/jose4j/jwe/kdf/ConcatKeyDerivationFunction;

    const-string v1, "SHA-256"

    invoke-direct {v0, v1, p0}, Lorg/jose4j/jwe/kdf/ConcatKeyDerivationFunction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
