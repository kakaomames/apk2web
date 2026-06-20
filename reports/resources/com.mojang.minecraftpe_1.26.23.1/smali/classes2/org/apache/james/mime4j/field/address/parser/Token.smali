.class public Lorg/apache/james/mime4j/field/address/parser/Token;
.super Ljava/lang/Object;
.source "Token.java"


# instance fields
.field public beginColumn:I

.field public beginLine:I

.field public endColumn:I

.field public endLine:I

.field public image:Ljava/lang/String;

.field public kind:I

.field public next:Lorg/apache/james/mime4j/field/address/parser/Token;

.field public specialToken:Lorg/apache/james/mime4j/field/address/parser/Token;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final newToken(I)Lorg/apache/james/mime4j/field/address/parser/Token;
    .locals 0

    .line 95
    new-instance p0, Lorg/apache/james/mime4j/field/address/parser/Token;

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/Token;-><init>()V

    return-object p0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/Token;->image:Ljava/lang/String;

    return-object v0
.end method
