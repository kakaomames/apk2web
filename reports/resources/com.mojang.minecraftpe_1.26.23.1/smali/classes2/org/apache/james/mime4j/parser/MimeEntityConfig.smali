.class public final Lorg/apache/james/mime4j/parser/MimeEntityConfig;
.super Ljava/lang/Object;
.source "MimeEntityConfig.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private countLineNumbers:Z

.field private maxContentLen:J

.field private maxHeaderCount:I

.field private maxLineLen:I

.field private maximalBodyDescriptor:Z

.field private strictParsing:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->maximalBodyDescriptor:Z

    .line 38
    iput-boolean v0, p0, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->strictParsing:Z

    const/16 v1, 0x3e8

    .line 39
    iput v1, p0, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->maxLineLen:I

    .line 40
    iput v1, p0, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->maxHeaderCount:I

    const-wide/16 v1, -0x1

    .line 41
    iput-wide v1, p0, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->maxContentLen:J

    .line 42
    iput-boolean v0, p0, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->countLineNumbers:Z

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 27
    invoke-virtual {p0}, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->clone()Lorg/apache/james/mime4j/parser/MimeEntityConfig;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/james/mime4j/parser/MimeEntityConfig;
    .locals 1

    .line 165
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/parser/MimeEntityConfig;

    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 168
    :catch_0
    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    throw v0
.end method

.method public getMaxContentLen()J
    .locals 2

    .line 139
    iget-wide v0, p0, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->maxContentLen:J

    return-wide v0
.end method

.method public getMaxHeaderCount()I
    .locals 1

    .line 117
    iget v0, p0, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->maxHeaderCount:I

    return v0
.end method

.method public getMaxLineLen()I
    .locals 1

    .line 95
    iget v0, p0, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->maxLineLen:I

    return v0
.end method

.method public isCountLineNumbers()Z
    .locals 1

    .line 159
    iget-boolean v0, p0, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->countLineNumbers:Z

    return v0
.end method

.method public isMaximalBodyDescriptor()Z
    .locals 1

    .line 46
    iget-boolean v0, p0, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->maximalBodyDescriptor:Z

    return v0
.end method

.method public isStrictParsing()Z
    .locals 1

    .line 73
    iget-boolean v0, p0, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->strictParsing:Z

    return v0
.end method

.method public setCountLineNumbers(Z)V
    .locals 0

    .line 150
    iput-boolean p1, p0, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->countLineNumbers:Z

    return-void
.end method

.method public setMaxContentLen(J)V
    .locals 0

    .line 129
    iput-wide p1, p0, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->maxContentLen:J

    return-void
.end method

.method public setMaxHeaderCount(I)V
    .locals 0

    .line 107
    iput p1, p0, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->maxHeaderCount:I

    return-void
.end method

.method public setMaxLineLen(I)V
    .locals 0

    .line 85
    iput p1, p0, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->maxLineLen:I

    return-void
.end method

.method public setMaximalBodyDescriptor(Z)V
    .locals 0

    .line 50
    iput-boolean p1, p0, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->maximalBodyDescriptor:Z

    return-void
.end method

.method public setStrictParsing(Z)V
    .locals 0

    .line 63
    iput-boolean p1, p0, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->strictParsing:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[max body descriptor: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->maximalBodyDescriptor:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", strict parsing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->strictParsing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", max line length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->maxLineLen:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", max header count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->maxHeaderCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", max content length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->maxContentLen:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", count line numbers: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->countLineNumbers:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
