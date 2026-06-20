.class public Lorg/spongycastle/jcajce/provider/keystore/BCFKS$Mappings;
.super Lorg/spongycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;
.source "BCFKS.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jcajce/provider/keystore/BCFKS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Mappings"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lorg/spongycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public configure(Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;)V
    .locals 2

    .line 19
    const/4 v0, 0x0

    sget-object v0, Lcom/google/android/datatransport/backend/cct/DL/Umhi;->iUzxGDZzgITS:Ljava/lang/String;

    const-string v1, "org.spongycastle.jcajce.provider.keystore.bcfks.BcFKSKeyStoreSpi$Std"

    invoke-interface {p1, v0, v1}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    const-string v0, "KeyStore.BCFKS-DEF"

    const-string v1, "org.spongycastle.jcajce.provider.keystore.bcfks.BcFKSKeyStoreSpi$Def"

    invoke-interface {p1, v0, v1}, Lorg/spongycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
