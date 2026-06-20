.class public Lorg/jose4j/jwt/consumer/TypeValidator;
.super Ljava/lang/Object;
.source "TypeValidator.java"

# interfaces
.implements Lorg/jose4j/jwt/consumer/ErrorCodeValidator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jose4j/jwt/consumer/TypeValidator$SimpleMediaType;,
        Lorg/jose4j/jwt/consumer/TypeValidator$MediaTypeParseException;
    }
.end annotation


# static fields
.field private static final APPLICATION_PRIMARY_TYPE:Ljava/lang/String; = "application"


# instance fields
.field private expectedType:Lorg/jose4j/jwt/consumer/TypeValidator$SimpleMediaType;

.field private requireType:Z


# direct methods
.method public constructor <init>(ZLjava/lang/String;)V
    .locals 3

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    :try_start_0
    invoke-direct {p0, p2}, Lorg/jose4j/jwt/consumer/TypeValidator;->toMediaType(Ljava/lang/String;)Lorg/jose4j/jwt/consumer/TypeValidator$SimpleMediaType;

    move-result-object v0

    iput-object v0, p0, Lorg/jose4j/jwt/consumer/TypeValidator;->expectedType:Lorg/jose4j/jwt/consumer/TypeValidator$SimpleMediaType;

    .line 21
    invoke-virtual {v0}, Lorg/jose4j/jwt/consumer/TypeValidator$SimpleMediaType;->getSubType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :try_end_0
    .catch Lorg/jose4j/jwt/consumer/TypeValidator$MediaTypeParseException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    .line 30
    iput-boolean p1, p0, Lorg/jose4j/jwt/consumer/TypeValidator;->requireType:Z

    return-void

    .line 23
    :cond_0
    :try_start_1
    new-instance p1, Lorg/jose4j/lang/UncheckedJoseException;

    const-string v0, "cannot use wildcard in subtype of expected type"

    invoke-direct {p1, v0}, Lorg/jose4j/lang/UncheckedJoseException;-><init>(Ljava/lang/String;)V

    throw p1

    :try_end_1
    .catch Lorg/jose4j/jwt/consumer/TypeValidator$MediaTypeParseException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p1

    .line 28
    new-instance v0, Lorg/jose4j/lang/UncheckedJoseException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The given expected type \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, "\' isn\'t a valid media type in this context."

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Lorg/jose4j/lang/UncheckedJoseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private toMediaType(Ljava/lang/String;)Lorg/jose4j/jwt/consumer/TypeValidator$SimpleMediaType;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/jwt/consumer/TypeValidator$MediaTypeParseException;
        }
    .end annotation

    .line 78
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/jose4j/jwt/consumer/TypeValidator$SimpleMediaType;

    invoke-direct {v0, p1}, Lorg/jose4j/jwt/consumer/TypeValidator$SimpleMediaType;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/jose4j/jwt/consumer/TypeValidator$SimpleMediaType;

    const-string v1, "application"

    invoke-direct {v0, v1, p1}, Lorg/jose4j/jwt/consumer/TypeValidator$SimpleMediaType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method


# virtual methods
.method validate(Ljava/lang/String;)Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;
    .locals 6

    .line 44
    const-string v0, "\'"

    .line 0
    const/4 v1, 0x0

    sget-object v1, Lorg/spongycastle/math/field/TKPd/fRDYVDRbWIVvS;->KNo:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez p1, :cond_1

    .line 46
    iget-boolean p1, p0, Lorg/jose4j/jwt/consumer/TypeValidator;->requireType:Z

    if-eqz p1, :cond_0

    new-instance v2, Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;

    const/16 p1, 0x15

    const-string v0, "No typ header parameter present in the innermost JWS/JWE"

    invoke-direct {v2, p1, v0}, Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;-><init>(ILjava/lang/String;)V

    :cond_0
    return-object v2

    .line 49
    :cond_1
    iget-object v3, p0, Lorg/jose4j/jwt/consumer/TypeValidator;->expectedType:Lorg/jose4j/jwt/consumer/TypeValidator$SimpleMediaType;

    if-eqz v3, :cond_4

    const/16 v3, 0x16

    .line 53
    :try_start_0
    invoke-direct {p0, p1}, Lorg/jose4j/jwt/consumer/TypeValidator;->toMediaType(Ljava/lang/String;)Lorg/jose4j/jwt/consumer/TypeValidator$SimpleMediaType;

    move-result-object v4

    .line 54
    iget-object v5, p0, Lorg/jose4j/jwt/consumer/TypeValidator;->expectedType:Lorg/jose4j/jwt/consumer/TypeValidator$SimpleMediaType;

    invoke-virtual {v5, v4}, Lorg/jose4j/jwt/consumer/TypeValidator$SimpleMediaType;->match(Lorg/jose4j/jwt/consumer/TypeValidator$SimpleMediaType;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Lorg/jose4j/jwt/consumer/TypeValidator$SimpleMediaType;->getSubType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "*"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 56
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\'. Expecting \'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    iget-object v1, p0, Lorg/jose4j/jwt/consumer/TypeValidator;->expectedType:Lorg/jose4j/jwt/consumer/TypeValidator$SimpleMediaType;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    iget-object v1, p0, Lorg/jose4j/jwt/consumer/TypeValidator;->expectedType:Lorg/jose4j/jwt/consumer/TypeValidator$SimpleMediaType;

    invoke-virtual {v1}, Lorg/jose4j/jwt/consumer/TypeValidator$SimpleMediaType;->getPrimaryType()Ljava/lang/String;

    move-result-object v1

    const-string v4, "application"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 61
    const-string v1, " or just \'"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lorg/jose4j/jwt/consumer/TypeValidator;->expectedType:Lorg/jose4j/jwt/consumer/TypeValidator$SimpleMediaType;

    invoke-virtual {v4}, Lorg/jose4j/jwt/consumer/TypeValidator$SimpleMediaType;->getSubType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    :cond_3
    const-string v0, "."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    new-instance v0, Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;-><init>(ILjava/lang/String;)V

    :try_end_0
    .catch Lorg/jose4j/jwt/consumer/TypeValidator$MediaTypeParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 69
    new-instance v1, Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "typ header parameter value \'"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "\' not parsable as a media type "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v3, p1}, Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;-><init>(ILjava/lang/String;)V

    return-object v1

    :cond_4
    return-object v2
.end method

.method public validate(Lorg/jose4j/jwt/consumer/JwtContext;)Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;
    .locals 1

    .line 36
    invoke-virtual {p1}, Lorg/jose4j/jwt/consumer/JwtContext;->getJoseObjects()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jose4j/jwx/JsonWebStructure;

    .line 37
    const-string/jumbo v0, "typ"

    invoke-virtual {p1, v0}, Lorg/jose4j/jwx/JsonWebStructure;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 39
    invoke-virtual {p0, p1}, Lorg/jose4j/jwt/consumer/TypeValidator;->validate(Ljava/lang/String;)Lorg/jose4j/jwt/consumer/ErrorCodeValidator$Error;

    move-result-object p1

    return-object p1
.end method
