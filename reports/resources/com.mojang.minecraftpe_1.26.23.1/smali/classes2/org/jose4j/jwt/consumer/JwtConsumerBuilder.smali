.class public Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
.super Ljava/lang/Object;
.source "JwtConsumerBuilder.java"


# instance fields
.field private audValidator:Lorg/jose4j/jwt/consumer/AudValidator;

.field private customValidators:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jose4j/jwt/consumer/ErrorCodeValidator;",
            ">;"
        }
    .end annotation
.end field

.field private dateClaimsValidator:Lorg/jose4j/jwt/consumer/NumericDateValidator;

.field private decryptionKeyResolver:Lorg/jose4j/keys/resolvers/DecryptionKeyResolver;

.field private expectedSubject:Ljava/lang/String;

.field private issValidator:Lorg/jose4j/jwt/consumer/IssValidator;

.field private jweAlgorithmConstraints:Lorg/jose4j/jwa/AlgorithmConstraints;

.field private jweContentEncryptionAlgorithmConstraints:Lorg/jose4j/jwa/AlgorithmConstraints;

.field private jweCustomizer:Lorg/jose4j/jwt/consumer/JweCustomizer;

.field private jweProviderContext:Lorg/jose4j/jca/ProviderContext;

.field private jwsAlgorithmConstraints:Lorg/jose4j/jwa/AlgorithmConstraints;

.field private jwsCustomizer:Lorg/jose4j/jwt/consumer/JwsCustomizer;

.field private jwsProviderContext:Lorg/jose4j/jca/ProviderContext;

.field private liberalContentTypeHandling:Z

.field private relaxDecryptionKeyValidation:Z

.field private relaxVerificationKeyValidation:Z

.field private requireEncryption:Z

.field private requireIntegrity:Z

.field private requireJti:Z

.field private requireSignature:Z

.field private requireSubject:Z

.field private skipAllDefaultValidators:Z

.field private skipAllValidators:Z

.field private skipDefaultAudienceValidation:Z

.field private skipSignatureVerification:Z

.field private skipVerificationKeyResolutionOnNone:Z

.field private typeValidator:Lorg/jose4j/jwt/consumer/TypeValidator;

.field private verificationKeyResolver:Lorg/jose4j/keys/resolvers/VerificationKeyResolver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Lorg/jose4j/jwt/consumer/SimpleKeyResolver;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/jose4j/jwt/consumer/SimpleKeyResolver;-><init>(Ljava/security/Key;)V

    iput-object v0, p0, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->verificationKeyResolver:Lorg/jose4j/keys/resolvers/VerificationKeyResolver;

    .line 71
    new-instance v0, Lorg/jose4j/jwt/consumer/SimpleKeyResolver;

    invoke-direct {v0, v1}, Lorg/jose4j/jwt/consumer/SimpleKeyResolver;-><init>(Ljava/security/Key;)V

    iput-object v0, p0, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->decryptionKeyResolver:Lorg/jose4j/keys/resolvers/DecryptionKeyResolver;

    .line 83
    new-instance v0, Lorg/jose4j/jwt/consumer/NumericDateValidator;

    invoke-direct {v0}, Lorg/jose4j/jwt/consumer/NumericDateValidator;-><init>()V

    iput-object v0, p0, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->dateClaimsValidator:Lorg/jose4j/jwt/consumer/NumericDateValidator;

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->customValidators:Ljava/util/List;

    const/4 v0, 0x1

    .line 89
    iput-boolean v0, p0, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->requireSignature:Z

    const/4 v0, 0x0

    .line 94
    iput-boolean v0, p0, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->skipSignatureVerification:Z

    .line 102
    iput-boolean v0, p0, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->skipAllValidators:Z

    .line 103
    iput-boolean v0, p0, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->skipAllDefaultValidators:Z

    return-void
.end method


# virtual methods
.method public build()Lorg/jose4j/jwt/consumer/JwtConsumer;
    .locals 4

    .line 712
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 713
    iget-boolean v1, p0, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->skipAllValidators:Z

    if-nez v1, :cond_5

    .line 715
    iget-boolean v1, p0, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->skipAllDefaultValidators:Z

    if-nez v1, :cond_4

    .line 717
    iget-boolean v1, p0, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->skipDefaultAudienceValidation:Z

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 719
    iget-object v1, p0, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->audValidator:Lorg/jose4j/jwt/consumer/AudValidator;

    if-nez v1, :cond_0

    .line 721
    new-instance v1, Lorg/jose4j/jwt/consumer/AudValidator;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Lorg/jose4j/jwt/consumer/AudValidator;-><init>(Ljava/util/Set;Z)V

    iput-object v1, p0, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->audValidator:Lorg/jose4j/jwt/consumer/AudValidator;

    .line 723
    :cond_0
    iget-object v1, p0, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->audValidator:Lorg/jose4j/jwt/consumer/AudValidator;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 726
    :cond_1
    iget-object v1, p0, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->issValidator:Lorg/jose4j/jwt/consumer/IssValidator;

    if-nez v1, :cond_2

    .line 728
    new-instance v1, Lorg/jose4j/jwt/consumer/IssValidator;

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2}, Lorg/jose4j/jwt/consumer/IssValidator;-><init>(Ljava/lang/String;Z)V

    iput-object v1, p0, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->issValidator:Lorg/jose4j/jwt/consumer/IssValidator;

    .line 730
    :cond_2
    iget-object v1, p0, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->issValidator:Lorg/jose4j/jwt/consumer/IssValidator;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 732
    iget-object v1, p0, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->dateClaimsValidator:Lorg/jose4j/jwt/consumer/NumericDateValidator;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 734
    iget-object v1, p0, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->expectedSubject:Ljava/lang/String;

    if-nez v1, :cond_3

    new-instance v1, Lorg/jose4j/jwt/consumer/SubValidator;

    iget-boolean v2, p0, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->requireSubject:Z

    invoke-direct {v1, v2}, Lorg/jose4j/jwt/consumer/SubValidator;-><init>(Z)V

    goto :goto_0

    :cond_3
    new-instance v1, Lorg/jose4j/jwt/consumer/SubValidator;

    iget-object v2, p0, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->expectedSubject:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/jose4j/jwt/consumer/SubValidator;-><init>(Ljava/lang/String;)V

    .line 735
    :goto_0
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 736
    new-instance v1, Lorg/jose4j/jwt/consumer/JtiValidator;

    iget-boolean v2, p0, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->requireJti:Z

    invoke-direct {v1, v2}, Lorg/jose4j/jwt/consumer/JtiValidator;-><init>(Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 738
    iget-object v1, p0, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->typeValidator:Lorg/jose4j/jwt/consumer/TypeValidator;

    if-eqz v1, :cond_4

    .line 740
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 744
    :cond_4
    iget-object v1, p0, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->customValidators:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 747
    :cond_5
    new-instance v1, Lorg/jose4j/jwt/consumer/JwtConsumer;

    invoke-direct {v1}, Lorg/jose4j/jwt/consumer/JwtConsumer;-><init>()V

    .line 748
    invoke-virtual {v1, v0}, Lorg/jose4j/jwt/consumer/JwtConsumer;->setValidators(Ljava/util/List;)V

    .line 749
    iget-object v0, p0, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->verificationKeyResolver:Lorg/jose4j/keys/resolvers/VerificationKeyResolver;

    invoke-virtual {v1, v0}, Lorg/jose4j/jwt/consumer/JwtConsumer;->setVerificationKeyResolver(Lorg/jose4j/keys/resolvers/VerificationKeyResolver;)V

    .line 750
    iget-object v0, p0, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->decryptionKeyResolver:Lorg/jose4j/keys/resolvers/DecryptionKeyResolver;

    invoke-virtual {v1, v0}, Lorg/jose4j/jwt/consumer/JwtConsumer;->setDecryptionKeyResolver(Lorg/jose4j/keys/resolvers/DecryptionKeyResolver;)V

    .line 752
    iget-object v0, p0, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->jwsAlgorithmConstraints:Lorg/jose4j/jwa/AlgorithmConstraints;

    invoke-virtual {v1, v0}, Lorg/jose4j/jwt/consumer/JwtConsumer;->setJwsAlgorithmConstraints(Lorg/jose4j/jwa/AlgorithmConstraints;)V

    .line 753
    iget-object v0, p0, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->jweAlgorithmConstraints:Lorg/jose4j/jwa/AlgorithmConstraints;

    invoke-virtual {v1, v0}, Lorg/jose4j/jwt/consumer/JwtConsumer;->setJweAlgorithmConstraints(Lorg/jose4j/jwa/AlgorithmConstraints;)V

    .line 754
    iget-object v0, p0, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->jweContentEncryptionAlgorithmConstraints:Lorg/jose4j/jwa/AlgorithmConstraints;

    invoke-virtual {v1, v0}, Lorg/jose4j/jwt/consumer/JwtConsumer;->setJweContentEncryptionAlgorithmConstraints(Lorg/jose4j/jwa/AlgorithmConstraints;)V

    .line 756
    iget-boolean v0, p0, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->requireSignature:Z

    invoke-virtual {v1, v0}, Lorg/jose4j/jwt/consumer/JwtConsumer;->setRequireSignature(Z)V

    .line 757
    iget-boolean v0, p0, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->requireEncryption:Z

    invoke-virtual {v1, v0}, Lorg/jose4j/jwt/consumer/JwtConsumer;->setRequireEncryption(Z)V

    .line 758
    iget-boolean v0, p0, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->requireIntegrity:Z

    invoke-virtual {v1, v0}, Lorg/jose4j/jwt/consumer/JwtConsumer;->setRequireIntegrity(Z)V

    .line 760
    iget-boolean v0, p0, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->liberalContentTypeHandling:Z

    invoke-virtual {v1, v0}, Lorg/jose4j/jwt/consumer/JwtConsumer;->setLiberalContentTypeHandling(Z)V

    .line 762
    iget-boolean v0, p0, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->skipSignatureVerification:Z

    invoke-virtual {v1, v0}, Lorg/jose4j/jwt/consumer/JwtConsumer;->setSkipSignatureVerification(Z)V

    .line 764
    iget-boolean v0, p0, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->skipVerificationKeyResolutionOnNone:Z

    invoke-virtual {v1, v0}, Lorg/jose4j/jwt/consumer/JwtConsumer;->setSkipVerificationKeyResolutionOnNone(Z)V

    .line 766
    iget-boolean v0, p0, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->relaxVerificationKeyValidation:Z

    invoke-virtual {v1, v0}, Lorg/jose4j/jwt/consumer/JwtConsumer;->setRelaxVerificationKeyValidation(Z)V

    .line 767
    iget-boolean v0, p0, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->relaxDecryptionKeyValidation:Z

    invoke-virtual {v1, v0}, Lorg/jose4j/jwt/consumer/JwtConsumer;->setRelaxDecryptionKeyValidation(Z)V

    .line 769
    iget-object v0, p0, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->jwsCustomizer:Lorg/jose4j/jwt/consumer/JwsCustomizer;

    invoke-virtual {v1, v0}, Lorg/jose4j/jwt/consumer/JwtConsumer;->setJwsCustomizer(Lorg/jose4j/jwt/consumer/JwsCustomizer;)V

    .line 770
    iget-object v0, p0, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->jweCustomizer:Lorg/jose4j/jwt/consumer/JweCustomizer;

    invoke-virtual {v1, v0}, Lorg/jose4j/jwt/consumer/JwtConsumer;->setJweCustomizer(Lorg/jose4j/jwt/consumer/JweCustomizer;)V

    .line 772
    iget-object v0, p0, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->jwsProviderContext:Lorg/jose4j/jca/ProviderContext;

    invoke-virtual {v1, v0}, Lorg/jose4j/jwt/consumer/JwtConsumer;->setJwsProviderContext(Lorg/jose4j/jca/ProviderContext;)V

    .line 773
    iget-object v0, p0, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->jweProviderContext:Lorg/jose4j/jca/ProviderContext;

    invoke-virtual {v1, v0}, Lorg/jose4j/jwt/consumer/JwtConsumer;->setJweProviderContext(Lorg/jose4j/jca/ProviderContext;)V

    return-object v1
.end method

.method public registerValidator(Lorg/jose4j/jwt/consumer/ErrorCodeValidator;)Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    .locals 1

    .line 625
    iget-object v0, p0, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->customValidators:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public registerValidator(Lorg/jose4j/jwt/consumer/Validator;)Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    .locals 2

    .line 612
    iget-object v0, p0, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->customValidators:Ljava/util/List;

    new-instance v1, Lorg/jose4j/jwt/consumer/ErrorCodeValidatorAdapter;

    invoke-direct {v1, p1}, Lorg/jose4j/jwt/consumer/ErrorCodeValidatorAdapter;-><init>(Lorg/jose4j/jwt/consumer/Validator;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setAllowedClockSkewInSeconds(I)Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    .locals 1

    .line 569
    iget-object v0, p0, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->dateClaimsValidator:Lorg/jose4j/jwt/consumer/NumericDateValidator;

    invoke-virtual {v0, p1}, Lorg/jose4j/jwt/consumer/NumericDateValidator;->setAllowedClockSkewSeconds(I)V

    return-object p0
.end method

.method public setDecryptionKey(Ljava/security/Key;)Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    .locals 1

    .line 340
    new-instance v0, Lorg/jose4j/jwt/consumer/SimpleKeyResolver;

    invoke-direct {v0, p1}, Lorg/jose4j/jwt/consumer/SimpleKeyResolver;-><init>(Ljava/security/Key;)V

    invoke-virtual {p0, v0}, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->setDecryptionKeyResolver(Lorg/jose4j/keys/resolvers/DecryptionKeyResolver;)Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setDecryptionKeyResolver(Lorg/jose4j/keys/resolvers/DecryptionKeyResolver;)Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    .locals 0

    .line 353
    iput-object p1, p0, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->decryptionKeyResolver:Lorg/jose4j/keys/resolvers/DecryptionKeyResolver;

    return-object p0
.end method

.method public setDisableRequireSignature()Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    .locals 1

    const/4 v0, 0x0

    .line 154
    iput-boolean v0, p0, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->requireSignature:Z

    return-object p0
.end method

.method public setEnableLiberalContentTypeHandling()Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    .locals 1

    const/4 v0, 0x1

    .line 175
    iput-boolean v0, p0, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->liberalContentTypeHandling:Z

    return-object p0
.end method

.method public setEnableRequireEncryption()Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    .locals 1

    const/4 v0, 0x1

    .line 130
    iput-boolean v0, p0, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->requireEncryption:Z

    return-object p0
.end method

.method public setEnableRequireIntegrity()Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    .locals 1

    const/4 v0, 0x1

    .line 141
    iput-boolean v0, p0, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->requireIntegrity:Z

    return-object p0
.end method

.method public setEvaluationTime(Lorg/jose4j/jwt/NumericDate;)Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    .locals 1

    .line 558
    iget-object v0, p0, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->dateClaimsValidator:Lorg/jose4j/jwt/consumer/NumericDateValidator;

    invoke-virtual {v0, p1}, Lorg/jose4j/jwt/consumer/NumericDateValidator;->setEvaluationTime(Lorg/jose4j/jwt/NumericDate;)V

    return-object p0
.end method

.method public varargs setExpectedAudience(Z[Ljava/lang/String;)Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    .locals 1

    .line 418
    new-instance v0, Ljava/util/HashSet;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 419
    new-instance p2, Lorg/jose4j/jwt/consumer/AudValidator;

    invoke-direct {p2, v0, p1}, Lorg/jose4j/jwt/consumer/AudValidator;-><init>(Ljava/util/Set;Z)V

    iput-object p2, p0, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->audValidator:Lorg/jose4j/jwt/consumer/AudValidator;

    return-object p0
.end method

.method public varargs setExpectedAudience([Ljava/lang/String;)Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    .locals 1

    const/4 v0, 0x1

    .line 384
    invoke-virtual {p0, v0, p1}, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->setExpectedAudience(Z[Ljava/lang/String;)Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setExpectedIssuer(Ljava/lang/String;)Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    .locals 1

    const/4 v0, 0x1

    .line 465
    invoke-virtual {p0, v0, p1}, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->setExpectedIssuer(ZLjava/lang/String;)Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setExpectedIssuer(ZLjava/lang/String;)Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    .locals 1

    .line 453
    new-instance v0, Lorg/jose4j/jwt/consumer/IssValidator;

    invoke-direct {v0, p2, p1}, Lorg/jose4j/jwt/consumer/IssValidator;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->issValidator:Lorg/jose4j/jwt/consumer/IssValidator;

    return-object p0
.end method

.method public varargs setExpectedIssuers(Z[Ljava/lang/String;)Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    .locals 1

    .line 441
    new-instance v0, Lorg/jose4j/jwt/consumer/IssValidator;

    invoke-direct {v0, p1, p2}, Lorg/jose4j/jwt/consumer/IssValidator;-><init>(Z[Ljava/lang/String;)V

    iput-object v0, p0, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->issValidator:Lorg/jose4j/jwt/consumer/IssValidator;

    return-object p0
.end method

.method public setExpectedSubject(Ljava/lang/String;)Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    .locals 0

    .line 488
    iput-object p1, p0, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->expectedSubject:Ljava/lang/String;

    .line 489
    invoke-virtual {p0}, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->setRequireSubject()Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setExpectedType(ZLjava/lang/String;)Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    .locals 1

    .line 702
    new-instance v0, Lorg/jose4j/jwt/consumer/TypeValidator;

    invoke-direct {v0, p1, p2}, Lorg/jose4j/jwt/consumer/TypeValidator;-><init>(ZLjava/lang/String;)V

    iput-object v0, p0, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->typeValidator:Lorg/jose4j/jwt/consumer/TypeValidator;

    return-object p0
.end method

.method public setIssuedAtRestrictions(II)Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    .locals 1

    .line 535
    iget-object v0, p0, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->dateClaimsValidator:Lorg/jose4j/jwt/consumer/NumericDateValidator;

    invoke-virtual {v0, p1}, Lorg/jose4j/jwt/consumer/NumericDateValidator;->setIatAllowedSecondsInTheFuture(I)V

    .line 536
    iget-object p1, p0, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->dateClaimsValidator:Lorg/jose4j/jwt/consumer/NumericDateValidator;

    invoke-virtual {p1, p2}, Lorg/jose4j/jwt/consumer/NumericDateValidator;->setIatAllowedSecondsInThePast(I)V

    return-object p0
.end method

.method public varargs setJweAlgorithmConstraints(Lorg/jose4j/jwa/AlgorithmConstraints$ConstraintType;[Ljava/lang/String;)Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    .locals 1

    .line 280
    new-instance v0, Lorg/jose4j/jwa/AlgorithmConstraints;

    invoke-direct {v0, p1, p2}, Lorg/jose4j/jwa/AlgorithmConstraints;-><init>(Lorg/jose4j/jwa/AlgorithmConstraints$ConstraintType;[Ljava/lang/String;)V

    iput-object v0, p0, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->jweAlgorithmConstraints:Lorg/jose4j/jwa/AlgorithmConstraints;

    return-object p0
.end method

.method public setJweAlgorithmConstraints(Lorg/jose4j/jwa/AlgorithmConstraints;)Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    .locals 0

    .line 245
    iput-object p1, p0, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->jweAlgorithmConstraints:Lorg/jose4j/jwa/AlgorithmConstraints;

    return-object p0
.end method

.method public varargs setJweContentEncryptionAlgorithmConstraints(Lorg/jose4j/jwa/AlgorithmConstraints$ConstraintType;[Ljava/lang/String;)Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    .locals 1

    .line 292
    new-instance v0, Lorg/jose4j/jwa/AlgorithmConstraints;

    invoke-direct {v0, p1, p2}, Lorg/jose4j/jwa/AlgorithmConstraints;-><init>(Lorg/jose4j/jwa/AlgorithmConstraints$ConstraintType;[Ljava/lang/String;)V

    iput-object v0, p0, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->jweContentEncryptionAlgorithmConstraints:Lorg/jose4j/jwa/AlgorithmConstraints;

    return-object p0
.end method

.method public setJweContentEncryptionAlgorithmConstraints(Lorg/jose4j/jwa/AlgorithmConstraints;)Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    .locals 0

    .line 256
    iput-object p1, p0, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->jweContentEncryptionAlgorithmConstraints:Lorg/jose4j/jwa/AlgorithmConstraints;

    return-object p0
.end method

.method public setJweCustomizer(Lorg/jose4j/jwt/consumer/JweCustomizer;)Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    .locals 0

    .line 655
    iput-object p1, p0, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->jweCustomizer:Lorg/jose4j/jwt/consumer/JweCustomizer;

    return-object p0
.end method

.method public setJweProviderContext(Lorg/jose4j/jca/ProviderContext;)Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    .locals 0

    .line 687
    iput-object p1, p0, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->jweProviderContext:Lorg/jose4j/jca/ProviderContext;

    return-object p0
.end method

.method public varargs setJwsAlgorithmConstraints(Lorg/jose4j/jwa/AlgorithmConstraints$ConstraintType;[Ljava/lang/String;)Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    .locals 1

    .line 268
    new-instance v0, Lorg/jose4j/jwa/AlgorithmConstraints;

    invoke-direct {v0, p1, p2}, Lorg/jose4j/jwa/AlgorithmConstraints;-><init>(Lorg/jose4j/jwa/AlgorithmConstraints$ConstraintType;[Ljava/lang/String;)V

    iput-object v0, p0, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->jwsAlgorithmConstraints:Lorg/jose4j/jwa/AlgorithmConstraints;

    return-object p0
.end method

.method public setJwsAlgorithmConstraints(Lorg/jose4j/jwa/AlgorithmConstraints;)Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    .locals 0

    .line 234
    iput-object p1, p0, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->jwsAlgorithmConstraints:Lorg/jose4j/jwa/AlgorithmConstraints;

    return-object p0
.end method

.method public setJwsCustomizer(Lorg/jose4j/jwt/consumer/JwsCustomizer;)Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    .locals 0

    .line 640
    iput-object p1, p0, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->jwsCustomizer:Lorg/jose4j/jwt/consumer/JwsCustomizer;

    return-object p0
.end method

.method public setJwsProviderContext(Lorg/jose4j/jca/ProviderContext;)Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    .locals 0

    .line 671
    iput-object p1, p0, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->jwsProviderContext:Lorg/jose4j/jca/ProviderContext;

    return-object p0
.end method

.method public setMaxFutureValidityInMinutes(I)Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    .locals 1

    .line 580
    iget-object v0, p0, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->dateClaimsValidator:Lorg/jose4j/jwt/consumer/NumericDateValidator;

    invoke-virtual {v0, p1}, Lorg/jose4j/jwt/consumer/NumericDateValidator;->setMaxFutureValidityInMinutes(I)V

    return-object p0
.end method

.method public setRelaxDecryptionKeyValidation()Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    .locals 1

    const/4 v0, 0x1

    .line 601
    iput-boolean v0, p0, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->relaxDecryptionKeyValidation:Z

    return-object p0
.end method

.method public setRelaxVerificationKeyValidation()Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    .locals 1

    const/4 v0, 0x1

    .line 591
    iput-boolean v0, p0, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->relaxVerificationKeyValidation:Z

    return-object p0
.end method

.method public setRequireExpirationTime()Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    .locals 2

    .line 511
    iget-object v0, p0, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->dateClaimsValidator:Lorg/jose4j/jwt/consumer/NumericDateValidator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/jose4j/jwt/consumer/NumericDateValidator;->setRequireExp(Z)V

    return-object p0
.end method

.method public setRequireIssuedAt()Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    .locals 2

    .line 521
    iget-object v0, p0, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->dateClaimsValidator:Lorg/jose4j/jwt/consumer/NumericDateValidator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/jose4j/jwt/consumer/NumericDateValidator;->setRequireIat(Z)V

    return-object p0
.end method

.method public setRequireJwtId()Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    .locals 1

    const/4 v0, 0x1

    .line 498
    iput-boolean v0, p0, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->requireJti:Z

    return-object p0
.end method

.method public setRequireNotBefore()Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    .locals 2

    .line 546
    iget-object v0, p0, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->dateClaimsValidator:Lorg/jose4j/jwt/consumer/NumericDateValidator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/jose4j/jwt/consumer/NumericDateValidator;->setRequireNbf(Z)V

    return-object p0
.end method

.method public setRequireSubject()Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    .locals 1

    const/4 v0, 0x1

    .line 474
    iput-boolean v0, p0, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->requireSubject:Z

    return-object p0
.end method

.method public setSkipAllDefaultValidators()Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    .locals 1

    const/4 v0, 0x1

    .line 223
    iput-boolean v0, p0, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->skipAllDefaultValidators:Z

    return-object p0
.end method

.method public setSkipAllValidators()Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    .locals 1

    const/4 v0, 0x1

    .line 213
    iput-boolean v0, p0, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->skipAllValidators:Z

    return-object p0
.end method

.method public setSkipDefaultAudienceValidation()Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    .locals 1

    const/4 v0, 0x1

    .line 429
    iput-boolean v0, p0, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->skipDefaultAudienceValidation:Z

    return-object p0
.end method

.method public setSkipSignatureVerification()Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    .locals 1

    const/4 v0, 0x1

    .line 194
    iput-boolean v0, p0, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->skipSignatureVerification:Z

    return-object p0
.end method

.method public setSkipVerificationKeyResolutionOnNone()Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    .locals 1

    const/4 v0, 0x1

    .line 329
    iput-boolean v0, p0, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->skipVerificationKeyResolutionOnNone:Z

    return-object p0
.end method

.method public setVerificationKey(Ljava/security/Key;)Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    .locals 1

    .line 303
    new-instance v0, Lorg/jose4j/jwt/consumer/SimpleKeyResolver;

    invoke-direct {v0, p1}, Lorg/jose4j/jwt/consumer/SimpleKeyResolver;-><init>(Ljava/security/Key;)V

    invoke-virtual {p0, v0}, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->setVerificationKeyResolver(Lorg/jose4j/keys/resolvers/VerificationKeyResolver;)Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setVerificationKeyResolver(Lorg/jose4j/keys/resolvers/VerificationKeyResolver;)Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;
    .locals 0

    .line 318
    iput-object p1, p0, Lorg/jose4j/jwt/consumer/JwtConsumerBuilder;->verificationKeyResolver:Lorg/jose4j/keys/resolvers/VerificationKeyResolver;

    return-object p0
.end method
