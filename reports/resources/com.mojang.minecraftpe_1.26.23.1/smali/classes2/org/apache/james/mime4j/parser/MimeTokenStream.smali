.class public Lorg/apache/james/mime4j/parser/MimeTokenStream;
.super Ljava/lang/Object;
.source "MimeTokenStream.java"

# interfaces
.implements Lorg/apache/james/mime4j/parser/EntityStates;
.implements Lorg/apache/james/mime4j/parser/RecursionMode;


# instance fields
.field private final config:Lorg/apache/james/mime4j/parser/MimeEntityConfig;

.field private currentStateMachine:Lorg/apache/james/mime4j/parser/EntityStateMachine;

.field private final entities:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lorg/apache/james/mime4j/parser/EntityStateMachine;",
            ">;"
        }
    .end annotation
.end field

.field private inbuffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

.field private recursionMode:I

.field private state:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 118
    new-instance v0, Lorg/apache/james/mime4j/parser/MimeEntityConfig;

    invoke-direct {v0}, Lorg/apache/james/mime4j/parser/MimeEntityConfig;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/parser/MimeTokenStream;-><init>(Lorg/apache/james/mime4j/parser/MimeEntityConfig;)V

    return-void
.end method

.method protected constructor <init>(Lorg/apache/james/mime4j/parser/MimeEntityConfig;)V
    .locals 1

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->entities:Ljava/util/LinkedList;

    const/4 v0, -0x1

    .line 106
    iput v0, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->state:I

    const/4 v0, 0x0

    .line 108
    iput v0, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->recursionMode:I

    .line 123
    iput-object p1, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->config:Lorg/apache/james/mime4j/parser/MimeEntityConfig;

    return-void
.end method

.method public static final createMaximalDescriptorStream()Lorg/apache/james/mime4j/parser/MimeTokenStream;
    .locals 2

    .line 86
    new-instance v0, Lorg/apache/james/mime4j/parser/MimeEntityConfig;

    invoke-direct {v0}, Lorg/apache/james/mime4j/parser/MimeEntityConfig;-><init>()V

    const/4 v1, 0x1

    .line 87
    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->setMaximalBodyDescriptor(Z)V

    .line 88
    new-instance v1, Lorg/apache/james/mime4j/parser/MimeTokenStream;

    invoke-direct {v1, v0}, Lorg/apache/james/mime4j/parser/MimeTokenStream;-><init>(Lorg/apache/james/mime4j/parser/MimeEntityConfig;)V

    return-object v1
.end method

.method public static final createStrictValidationStream()Lorg/apache/james/mime4j/parser/MimeTokenStream;
    .locals 2

    .line 98
    new-instance v0, Lorg/apache/james/mime4j/parser/MimeEntityConfig;

    invoke-direct {v0}, Lorg/apache/james/mime4j/parser/MimeEntityConfig;-><init>()V

    const/4 v1, 0x1

    .line 99
    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->setStrictParsing(Z)V

    .line 100
    new-instance v1, Lorg/apache/james/mime4j/parser/MimeTokenStream;

    invoke-direct {v1, v0}, Lorg/apache/james/mime4j/parser/MimeTokenStream;-><init>(Lorg/apache/james/mime4j/parser/MimeEntityConfig;)V

    return-object v1
.end method

.method private doParse(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 7

    .line 151
    iget-object v0, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->entities:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 154
    iget-object v0, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->config:Lorg/apache/james/mime4j/parser/MimeEntityConfig;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->isCountLineNumbers()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    new-instance v0, Lorg/apache/james/mime4j/io/LineNumberInputStream;

    invoke-direct {v0, p1}, Lorg/apache/james/mime4j/io/LineNumberInputStream;-><init>(Ljava/io/InputStream;)V

    move-object p1, v0

    move-object v1, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move-object v1, v0

    .line 160
    :goto_0
    new-instance v0, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    iget-object v2, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->config:Lorg/apache/james/mime4j/parser/MimeEntityConfig;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->getMaxLineLen()I

    move-result v2

    const/16 v3, 0x1000

    invoke-direct {v0, p1, v3, v2}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;-><init>(Ljava/io/InputStream;II)V

    iput-object v0, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->inbuffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    .line 164
    iget p1, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->recursionMode:I

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    goto :goto_1

    .line 166
    :cond_1
    new-instance p1, Lorg/apache/james/mime4j/parser/RawEntity;

    iget-object p2, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->inbuffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    invoke-direct {p1, p2}, Lorg/apache/james/mime4j/parser/RawEntity;-><init>(Ljava/io/InputStream;)V

    .line 167
    iput-object p1, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->currentStateMachine:Lorg/apache/james/mime4j/parser/EntityStateMachine;

    goto :goto_1

    .line 173
    :cond_2
    new-instance p1, Lorg/apache/james/mime4j/parser/MimeEntity;

    iget-object v2, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->inbuffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    const/4 v5, 0x1

    iget-object v6, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->config:Lorg/apache/james/mime4j/parser/MimeEntityConfig;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lorg/apache/james/mime4j/parser/MimeEntity;-><init>(Lorg/apache/james/mime4j/io/LineNumberSource;Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;Lorg/apache/james/mime4j/descriptor/BodyDescriptor;IILorg/apache/james/mime4j/parser/MimeEntityConfig;)V

    .line 180
    iget v0, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->recursionMode:I

    invoke-virtual {p1, v0}, Lorg/apache/james/mime4j/parser/MimeEntity;->setRecursionMode(I)V

    if-eqz p2, :cond_3

    .line 182
    invoke-virtual {p1, p2}, Lorg/apache/james/mime4j/parser/MimeEntity;->skipHeader(Ljava/lang/String;)V

    .line 184
    :cond_3
    iput-object p1, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->currentStateMachine:Lorg/apache/james/mime4j/parser/EntityStateMachine;

    .line 187
    :goto_1
    iget-object p1, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->entities:Ljava/util/LinkedList;

    iget-object p2, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->currentStateMachine:Lorg/apache/james/mime4j/parser/EntityStateMachine;

    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 188
    iget-object p1, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->currentStateMachine:Lorg/apache/james/mime4j/parser/EntityStateMachine;

    invoke-interface {p1}, Lorg/apache/james/mime4j/parser/EntityStateMachine;->getState()I

    move-result p1

    iput p1, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->state:I

    return-void
.end method

.method public static final stateToString(I)Ljava/lang/String;
    .locals 0

    .line 383
    invoke-static {p0}, Lorg/apache/james/mime4j/parser/AbstractEntity;->stateToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getBodyDescriptor()Lorg/apache/james/mime4j/descriptor/BodyDescriptor;
    .locals 1

    .line 333
    iget-object v0, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->currentStateMachine:Lorg/apache/james/mime4j/parser/EntityStateMachine;

    invoke-interface {v0}, Lorg/apache/james/mime4j/parser/EntityStateMachine;->getBodyDescriptor()Lorg/apache/james/mime4j/descriptor/BodyDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public getDecodedInputStream()Ljava/io/InputStream;
    .locals 3

    .line 280
    invoke-virtual {p0}, Lorg/apache/james/mime4j/parser/MimeTokenStream;->getBodyDescriptor()Lorg/apache/james/mime4j/descriptor/BodyDescriptor;

    move-result-object v0

    .line 281
    invoke-interface {v0}, Lorg/apache/james/mime4j/descriptor/BodyDescriptor;->getTransferEncoding()Ljava/lang/String;

    move-result-object v0

    .line 282
    iget-object v1, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->currentStateMachine:Lorg/apache/james/mime4j/parser/EntityStateMachine;

    invoke-interface {v1}, Lorg/apache/james/mime4j/parser/EntityStateMachine;->getContentStream()Ljava/io/InputStream;

    move-result-object v1

    .line 283
    invoke-static {v0}, Lorg/apache/james/mime4j/util/MimeUtil;->isBase64Encoding(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 284
    new-instance v0, Lorg/apache/james/mime4j/codec/Base64InputStream;

    invoke-direct {v0, v1}, Lorg/apache/james/mime4j/codec/Base64InputStream;-><init>(Ljava/io/InputStream;)V

    :goto_0
    move-object v1, v0

    goto :goto_1

    .line 285
    :cond_0
    invoke-static {v0}, Lorg/apache/james/mime4j/util/MimeUtil;->isQuotedPrintableEncoded(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 286
    new-instance v0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;

    invoke-direct {v0, v1}, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-object v1
.end method

.method public getField()Lorg/apache/james/mime4j/parser/Field;
    .locals 1

    .line 343
    iget-object v0, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->currentStateMachine:Lorg/apache/james/mime4j/parser/EntityStateMachine;

    invoke-interface {v0}, Lorg/apache/james/mime4j/parser/EntityStateMachine;->getField()Lorg/apache/james/mime4j/parser/Field;

    move-result-object v0

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    .line 265
    iget-object v0, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->currentStateMachine:Lorg/apache/james/mime4j/parser/EntityStateMachine;

    invoke-interface {v0}, Lorg/apache/james/mime4j/parser/EntityStateMachine;->getContentStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getReader()Ljava/io/Reader;
    .locals 3

    .line 309
    invoke-virtual {p0}, Lorg/apache/james/mime4j/parser/MimeTokenStream;->getBodyDescriptor()Lorg/apache/james/mime4j/descriptor/BodyDescriptor;

    move-result-object v0

    .line 310
    invoke-interface {v0}, Lorg/apache/james/mime4j/descriptor/BodyDescriptor;->getCharset()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 312
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 315
    :cond_0
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    goto :goto_1

    .line 313
    :cond_1
    :goto_0
    sget-object v0, Lorg/apache/james/mime4j/util/CharsetUtil;->US_ASCII:Ljava/nio/charset/Charset;

    .line 317
    :goto_1
    invoke-virtual {p0}, Lorg/apache/james/mime4j/parser/MimeTokenStream;->getDecodedInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 318
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v1, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    return-object v2
.end method

.method public getRecursionMode()I
    .locals 1

    .line 212
    iget v0, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->recursionMode:I

    return v0
.end method

.method public getState()I
    .locals 1

    .line 251
    iget v0, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->state:I

    return v0
.end method

.method public isRaw()Z
    .locals 2

    .line 199
    iget v0, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->recursionMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/james/mime4j/MimeException;
        }
    .end annotation

    .line 352
    iget v0, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->state:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->currentStateMachine:Lorg/apache/james/mime4j/parser/EntityStateMachine;

    if-eqz v0, :cond_4

    .line 355
    :goto_0
    iget-object v0, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->currentStateMachine:Lorg/apache/james/mime4j/parser/EntityStateMachine;

    if-eqz v0, :cond_3

    .line 356
    invoke-interface {v0}, Lorg/apache/james/mime4j/parser/EntityStateMachine;->advance()Lorg/apache/james/mime4j/parser/EntityStateMachine;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 358
    iget-object v2, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->entities:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 359
    iput-object v0, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->currentStateMachine:Lorg/apache/james/mime4j/parser/EntityStateMachine;

    .line 361
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->currentStateMachine:Lorg/apache/james/mime4j/parser/EntityStateMachine;

    invoke-interface {v0}, Lorg/apache/james/mime4j/parser/EntityStateMachine;->getState()I

    move-result v0

    iput v0, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->state:I

    if-eq v0, v1, :cond_1

    return v0

    .line 365
    :cond_1
    iget-object v0, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->entities:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 366
    iget-object v0, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->entities:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 367
    iput-object v0, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->currentStateMachine:Lorg/apache/james/mime4j/parser/EntityStateMachine;

    goto :goto_0

    .line 369
    :cond_2
    iget-object v0, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->entities:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/parser/EntityStateMachine;

    iput-object v0, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->currentStateMachine:Lorg/apache/james/mime4j/parser/EntityStateMachine;

    .line 370
    iget v2, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->recursionMode:I

    invoke-interface {v0, v2}, Lorg/apache/james/mime4j/parser/EntityStateMachine;->setRecursionMode(I)V

    goto :goto_0

    .line 373
    :cond_3
    iput v1, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->state:I

    return v1

    .line 353
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No more tokens are available."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public parse(Ljava/io/InputStream;)V
    .locals 1

    const/4 v0, 0x0

    .line 131
    invoke-direct {p0, p1, v0}, Lorg/apache/james/mime4j/parser/MimeTokenStream;->doParse(Ljava/io/InputStream;Ljava/lang/String;)V

    return-void
.end method

.method public parseHeadless(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 147
    invoke-direct {p0, p1, p2}, Lorg/apache/james/mime4j/parser/MimeTokenStream;->doParse(Ljava/io/InputStream;Ljava/lang/String;)V

    return-void

    .line 145
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Content type may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setRecursionMode(I)V
    .locals 1

    .line 225
    iput p1, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->recursionMode:I

    .line 226
    iget-object v0, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->currentStateMachine:Lorg/apache/james/mime4j/parser/EntityStateMachine;

    if-eqz v0, :cond_0

    .line 227
    invoke-interface {v0, p1}, Lorg/apache/james/mime4j/parser/EntityStateMachine;->setRecursionMode(I)V

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    .line 244
    iget-object v0, p0, Lorg/apache/james/mime4j/parser/MimeTokenStream;->inbuffer:Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/io/BufferedLineReaderInputStream;->truncate()V

    return-void
.end method
