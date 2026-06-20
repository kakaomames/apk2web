.class public Lorg/jose4j/jca/ProviderContext$SignatureAlgorithmOverride;
.super Ljava/lang/Object;
.source "ProviderContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jose4j/jca/ProviderContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SignatureAlgorithmOverride"
.end annotation


# instance fields
.field private AlgorithmParameterSpec:Ljava/security/spec/AlgorithmParameterSpec;

.field private algorithmName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 0

    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 320
    iput-object p1, p0, Lorg/jose4j/jca/ProviderContext$SignatureAlgorithmOverride;->algorithmName:Ljava/lang/String;

    .line 321
    iput-object p2, p0, Lorg/jose4j/jca/ProviderContext$SignatureAlgorithmOverride;->AlgorithmParameterSpec:Ljava/security/spec/AlgorithmParameterSpec;

    return-void
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .line 330
    iget-object v0, p0, Lorg/jose4j/jca/ProviderContext$SignatureAlgorithmOverride;->algorithmName:Ljava/lang/String;

    return-object v0
.end method

.method public getAlgorithmParameterSpec()Ljava/security/spec/AlgorithmParameterSpec;
    .locals 1

    .line 339
    iget-object v0, p0, Lorg/jose4j/jca/ProviderContext$SignatureAlgorithmOverride;->AlgorithmParameterSpec:Ljava/security/spec/AlgorithmParameterSpec;

    return-object v0
.end method
