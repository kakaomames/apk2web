.class public Lorg/apache/james/mime4j/parser/RawEntity;
.super Ljava/lang/Object;
.source "RawEntity.java"

# interfaces
.implements Lorg/apache/james/mime4j/parser/EntityStateMachine;


# instance fields
.field private state:I

.field private final stream:Ljava/io/InputStream;


# direct methods
.method constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lorg/apache/james/mime4j/parser/RawEntity;->stream:Ljava/io/InputStream;

    const/4 p1, 0x2

    .line 39
    iput p1, p0, Lorg/apache/james/mime4j/parser/RawEntity;->state:I

    return-void
.end method


# virtual methods
.method public advance()Lorg/apache/james/mime4j/parser/EntityStateMachine;
    .locals 1

    const/4 v0, -0x1

    .line 53
    iput v0, p0, Lorg/apache/james/mime4j/parser/RawEntity;->state:I

    const/4 v0, 0x0

    return-object v0
.end method

.method public getBodyDescriptor()Lorg/apache/james/mime4j/descriptor/BodyDescriptor;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentStream()Ljava/io/InputStream;
    .locals 1

    .line 61
    iget-object v0, p0, Lorg/apache/james/mime4j/parser/RawEntity;->stream:Ljava/io/InputStream;

    return-object v0
.end method

.method public getField()Lorg/apache/james/mime4j/parser/Field;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getFieldName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getFieldValue()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getState()I
    .locals 1

    .line 43
    iget v0, p0, Lorg/apache/james/mime4j/parser/RawEntity;->state:I

    return v0
.end method

.method public setRecursionMode(I)V
    .locals 0

    return-void
.end method
