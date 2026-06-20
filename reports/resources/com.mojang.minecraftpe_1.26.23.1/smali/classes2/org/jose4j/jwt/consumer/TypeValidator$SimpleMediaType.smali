.class Lorg/jose4j/jwt/consumer/TypeValidator$SimpleMediaType;
.super Ljava/lang/Object;
.source "TypeValidator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jose4j/jwt/consumer/TypeValidator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SimpleMediaType"
.end annotation


# instance fields
.field private primaryType:Ljava/lang/String;

.field private subType:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/jwt/consumer/TypeValidator$MediaTypeParseException;
        }
    .end annotation

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    invoke-direct {p0, p1}, Lorg/jose4j/jwt/consumer/TypeValidator$SimpleMediaType;->parse(Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/jwt/consumer/TypeValidator$MediaTypeParseException;
        }
    .end annotation

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/jose4j/jwt/consumer/TypeValidator$SimpleMediaType;->primaryType:Ljava/lang/String;

    .line 102
    invoke-static {p1}, Lorg/jose4j/jwt/consumer/TypeValidator$SimpleMediaType;->checkToken(Ljava/lang/String;)V

    .line 103
    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p2, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/jose4j/jwt/consumer/TypeValidator$SimpleMediaType;->subType:Ljava/lang/String;

    .line 104
    invoke-static {p1}, Lorg/jose4j/jwt/consumer/TypeValidator$SimpleMediaType;->checkToken(Ljava/lang/String;)V

    return-void
.end method

.method private static checkToken(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/jwt/consumer/TypeValidator$MediaTypeParseException;
        }
    .end annotation

    if-eqz p0, :cond_2

    .line 170
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 175
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 177
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 178
    invoke-static {v1}, Lorg/jose4j/jwt/consumer/TypeValidator$SimpleMediaType;->isLegitTokenChar(C)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 180
    :cond_0
    new-instance p0, Lorg/jose4j/jwt/consumer/TypeValidator$MediaTypeParseException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Invalid token char "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jose4j/jwt/consumer/TypeValidator$MediaTypeParseException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-void

    .line 172
    :cond_2
    new-instance p0, Lorg/jose4j/jwt/consumer/TypeValidator$MediaTypeParseException;

    const-string v0, "cannot have empty part"

    invoke-direct {p0, v0}, Lorg/jose4j/jwt/consumer/TypeValidator$MediaTypeParseException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static isLegitTokenChar(C)Z
    .locals 1

    const/16 v0, 0x20

    if-le p0, v0, :cond_0

    const/16 v0, 0x7e

    if-gt p0, v0, :cond_0

    .line 165
    const-string v0, "()<>@,;:/[]?=\\\""

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private parse(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/jwt/consumer/TypeValidator$MediaTypeParseException;
        }
    .end annotation

    const/16 v0, 0x2f

    .line 109
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 110
    const-string v1, "Cannot find sub type."

    if-ltz v0, :cond_2

    const/16 v2, 0x3b

    .line 115
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, 0x0

    if-gez v2, :cond_0

    .line 119
    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/jose4j/jwt/consumer/TypeValidator$SimpleMediaType;->primaryType:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    .line 120
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/jose4j/jwt/consumer/TypeValidator$SimpleMediaType;->subType:Ljava/lang/String;

    goto :goto_0

    :cond_0
    if-ge v0, v2, :cond_1

    .line 129
    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/jose4j/jwt/consumer/TypeValidator$SimpleMediaType;->primaryType:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    .line 130
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/jose4j/jwt/consumer/TypeValidator$SimpleMediaType;->subType:Ljava/lang/String;

    .line 133
    :goto_0
    iget-object p1, p0, Lorg/jose4j/jwt/consumer/TypeValidator$SimpleMediaType;->primaryType:Ljava/lang/String;

    invoke-static {p1}, Lorg/jose4j/jwt/consumer/TypeValidator$SimpleMediaType;->checkToken(Ljava/lang/String;)V

    .line 134
    iget-object p1, p0, Lorg/jose4j/jwt/consumer/TypeValidator$SimpleMediaType;->subType:Ljava/lang/String;

    invoke-static {p1}, Lorg/jose4j/jwt/consumer/TypeValidator$SimpleMediaType;->checkToken(Ljava/lang/String;)V

    return-void

    .line 126
    :cond_1
    new-instance p1, Lorg/jose4j/jwt/consumer/TypeValidator$MediaTypeParseException;

    invoke-direct {p1, v1}, Lorg/jose4j/jwt/consumer/TypeValidator$MediaTypeParseException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 112
    :cond_2
    new-instance p1, Lorg/jose4j/jwt/consumer/TypeValidator$MediaTypeParseException;

    invoke-direct {p1, v1}, Lorg/jose4j/jwt/consumer/TypeValidator$MediaTypeParseException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method getBaseType()Ljava/lang/String;
    .locals 2

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/jose4j/jwt/consumer/TypeValidator$SimpleMediaType;->primaryType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jose4j/jwt/consumer/TypeValidator$SimpleMediaType;->subType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getPrimaryType()Ljava/lang/String;
    .locals 1

    .line 139
    iget-object v0, p0, Lorg/jose4j/jwt/consumer/TypeValidator$SimpleMediaType;->primaryType:Ljava/lang/String;

    return-object v0
.end method

.method getSubType()Ljava/lang/String;
    .locals 1

    .line 144
    iget-object v0, p0, Lorg/jose4j/jwt/consumer/TypeValidator$SimpleMediaType;->subType:Ljava/lang/String;

    return-object v0
.end method

.method match(Lorg/jose4j/jwt/consumer/TypeValidator$SimpleMediaType;)Z
    .locals 2

    .line 159
    iget-object v0, p0, Lorg/jose4j/jwt/consumer/TypeValidator$SimpleMediaType;->primaryType:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/jose4j/jwt/consumer/TypeValidator$SimpleMediaType;->getPrimaryType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/jose4j/jwt/consumer/TypeValidator$SimpleMediaType;->subType:Ljava/lang/String;

    .line 160
    invoke-virtual {p1}, Lorg/jose4j/jwt/consumer/TypeValidator$SimpleMediaType;->getSubType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/jose4j/jwt/consumer/TypeValidator$SimpleMediaType;->subType:Ljava/lang/String;

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/jose4j/jwt/consumer/TypeValidator$SimpleMediaType;->getSubType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 149
    invoke-virtual {p0}, Lorg/jose4j/jwt/consumer/TypeValidator$SimpleMediaType;->getBaseType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
