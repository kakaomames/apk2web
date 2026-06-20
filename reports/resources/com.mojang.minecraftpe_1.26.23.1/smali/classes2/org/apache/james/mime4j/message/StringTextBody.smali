.class Lorg/apache/james/mime4j/message/StringTextBody;
.super Lorg/apache/james/mime4j/message/TextBody;
.source "StringTextBody.java"


# instance fields
.field private final charset:Ljava/nio/charset/Charset;

.field private final text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lorg/apache/james/mime4j/message/TextBody;-><init>()V

    .line 41
    iput-object p1, p0, Lorg/apache/james/mime4j/message/StringTextBody;->text:Ljava/lang/String;

    .line 42
    iput-object p2, p0, Lorg/apache/james/mime4j/message/StringTextBody;->charset:Ljava/nio/charset/Charset;

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/james/mime4j/message/SingleBody;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/StringTextBody;->copy()Lorg/apache/james/mime4j/message/StringTextBody;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lorg/apache/james/mime4j/message/StringTextBody;
    .locals 3

    .line 78
    new-instance v0, Lorg/apache/james/mime4j/message/StringTextBody;

    iget-object v1, p0, Lorg/apache/james/mime4j/message/StringTextBody;->text:Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/james/mime4j/message/StringTextBody;->charset:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Lorg/apache/james/mime4j/message/StringTextBody;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    return-object v0
.end method

.method public getMimeCharset()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lorg/apache/james/mime4j/message/StringTextBody;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/james/mime4j/util/CharsetUtil;->toMimeCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReader()Ljava/io/Reader;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    new-instance v0, Ljava/io/StringReader;

    iget-object v1, p0, Lorg/apache/james/mime4j/message/StringTextBody;->text:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 60
    new-instance v0, Ljava/io/StringReader;

    iget-object v1, p0, Lorg/apache/james/mime4j/message/StringTextBody;->text:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 61
    new-instance v1, Ljava/io/OutputStreamWriter;

    iget-object v2, p0, Lorg/apache/james/mime4j/message/StringTextBody;->charset:Ljava/nio/charset/Charset;

    invoke-direct {v1, p1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    const/16 p1, 0x400

    .line 63
    new-array p1, p1, [C

    .line 65
    :goto_0
    invoke-virtual {v0, p1}, Ljava/io/Reader;->read([C)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 72
    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    .line 73
    invoke-virtual {v1}, Ljava/io/Writer;->flush()V

    return-void

    :cond_0
    const/4 v3, 0x0

    .line 69
    invoke-virtual {v1, p1, v3, v2}, Ljava/io/Writer;->write([CII)V

    goto :goto_0

    .line 58
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method
