.class public abstract Lorg/apache/james/mime4j/parser/AbstractEntity;
.super Ljava/lang/Object;
.source "AbstractEntity.java"

# interfaces
.implements Lorg/apache/james/mime4j/parser/EntityStateMachine;


# static fields
.field private static final T_IN_BODYPART:I = -0x2

.field private static final T_IN_MESSAGE:I = -0x3

.field private static final fieldChars:Ljava/util/BitSet;


# instance fields
.field protected final body:Lorg/apache/james/mime4j/descriptor/MutableBodyDescriptor;

.field protected final config:Lorg/apache/james/mime4j/parser/MimeEntityConfig;

.field private endOfHeader:Z

.field protected final endState:I

.field private field:Lorg/apache/james/mime4j/parser/Field;

.field private headerCount:I

.field private lineCount:I

.field private final linebuf:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

.field protected final log:Lorg/apache/commons/logging/Log;

.field protected final parent:Lorg/apache/james/mime4j/descriptor/BodyDescriptor;

.field protected final startState:I

.field protected state:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 60
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    sput-object v0, Lorg/apache/james/mime4j/parser/AbstractEntity;->fieldChars:Ljava/util/BitSet;

    const/16 v0, 0x21

    :goto_0
    const/16 v1, 0x39

    if-gt v0, v1, :cond_0

    .line 64
    sget-object v1, Lorg/apache/james/mime4j/parser/AbstractEntity;->fieldChars:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0x3b

    :goto_1
    const/16 v1, 0x7e

    if-gt v0, v1, :cond_1

    .line 67
    sget-object v1, Lorg/apache/james/mime4j/parser/AbstractEntity;->fieldChars:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method constructor <init>(Lorg/apache/james/mime4j/descriptor/BodyDescriptor;IILorg/apache/james/mime4j/parser/MimeEntityConfig;)V
    .locals 1

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->log:Lorg/apache/commons/logging/Log;

    .line 86
    iput-object p1, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->parent:Lorg/apache/james/mime4j/descriptor/BodyDescriptor;

    .line 87
    iput p2, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->state:I

    .line 88
    iput p2, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->startState:I

    .line 89
    iput p3, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->endState:I

    .line 90
    iput-object p4, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->config:Lorg/apache/james/mime4j/parser/MimeEntityConfig;

    .line 91
    invoke-virtual {p0, p1}, Lorg/apache/james/mime4j/parser/AbstractEntity;->newBodyDescriptor(Lorg/apache/james/mime4j/descriptor/BodyDescriptor;)Lorg/apache/james/mime4j/descriptor/MutableBodyDescriptor;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->body:Lorg/apache/james/mime4j/descriptor/MutableBodyDescriptor;

    .line 92
    new-instance p1, Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    const/16 p2, 0x40

    invoke-direct {p1, p2}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;-><init>(I)V

    iput-object p1, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->linebuf:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    const/4 p1, 0x0

    .line 93
    iput p1, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->lineCount:I

    .line 94
    iput-boolean p1, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->endOfHeader:Z

    .line 95
    iput p1, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->headerCount:I

    return-void
.end method

.method private fillFieldBuffer()Lorg/apache/james/mime4j/util/ByteArrayBuffer;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/james/mime4j/MimeException;
        }
    .end annotation

    .line 126
    iget-boolean v0, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->endOfHeader:Z

    if-nez v0, :cond_8

    .line 129
    iget-object v0, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->config:Lorg/apache/james/mime4j/parser/MimeEntityConfig;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->getMaxLineLen()I

    move-result v0

    .line 130
    invoke-virtual {p0}, Lorg/apache/james/mime4j/parser/AbstractEntity;->getDataStream()Lorg/apache/james/mime4j/io/LineReaderInputStream;

    move-result-object v1

    .line 131
    new-instance v2, Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    const/16 v3, 0x40

    invoke-direct {v2, v3}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;-><init>(I)V

    .line 136
    :cond_0
    iget-object v3, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->linebuf:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-virtual {v3}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->length()I

    move-result v3

    if-lez v0, :cond_2

    .line 137
    invoke-virtual {v2}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->length()I

    move-result v4

    add-int/2addr v4, v3

    if-ge v4, v0, :cond_1

    goto :goto_0

    .line 138
    :cond_1
    new-instance v0, Lorg/apache/james/mime4j/io/MaxLineLimitException;

    const-string v1, "Maximum line length limit exceeded"

    invoke-direct {v0, v1}, Lorg/apache/james/mime4j/io/MaxLineLimitException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    const/4 v4, 0x0

    if-lez v3, :cond_3

    .line 141
    iget-object v5, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->linebuf:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-virtual {v5}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->buffer()[B

    move-result-object v5

    invoke-virtual {v2, v5, v4, v3}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->append([BII)V

    .line 143
    :cond_3
    iget-object v3, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->linebuf:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-virtual {v3}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->clear()V

    .line 144
    iget-object v3, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->linebuf:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-virtual {v1, v3}, Lorg/apache/james/mime4j/io/LineReaderInputStream;->readLine(Lorg/apache/james/mime4j/util/ByteArrayBuffer;)I

    move-result v3

    const/4 v5, -0x1

    const/4 v6, 0x1

    if-ne v3, v5, :cond_4

    .line 145
    sget-object v0, Lorg/apache/james/mime4j/parser/Event;->HEADERS_PREMATURE_END:Lorg/apache/james/mime4j/parser/Event;

    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/parser/AbstractEntity;->monitor(Lorg/apache/james/mime4j/parser/Event;)V

    .line 146
    iput-boolean v6, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->endOfHeader:Z

    goto :goto_1

    .line 149
    :cond_4
    iget-object v3, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->linebuf:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-virtual {v3}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->length()I

    move-result v3

    if-lez v3, :cond_5

    .line 150
    iget-object v5, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->linebuf:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    add-int/lit8 v7, v3, -0x1

    invoke-virtual {v5, v7}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->byteAt(I)B

    move-result v5

    const/16 v7, 0xa

    if-ne v5, v7, :cond_5

    add-int/lit8 v3, v3, -0x1

    :cond_5
    if-lez v3, :cond_6

    .line 153
    iget-object v5, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->linebuf:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    add-int/lit8 v7, v3, -0x1

    invoke-virtual {v5, v7}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->byteAt(I)B

    move-result v5

    const/16 v7, 0xd

    if-ne v5, v7, :cond_6

    add-int/lit8 v3, v3, -0x1

    :cond_6
    if-nez v3, :cond_7

    .line 158
    iput-boolean v6, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->endOfHeader:Z

    goto :goto_1

    .line 161
    :cond_7
    iget v3, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->lineCount:I

    add-int/2addr v3, v6

    iput v3, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->lineCount:I

    if-le v3, v6, :cond_0

    .line 163
    iget-object v3, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->linebuf:Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    invoke-virtual {v3, v4}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->byteAt(I)B

    move-result v3

    const/16 v4, 0x20

    if-eq v3, v4, :cond_0

    const/16 v4, 0x9

    if-eq v3, v4, :cond_0

    :goto_1
    return-object v2

    .line 127
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public static final stateToString(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    .line 383
    const-string p0, "Unknown"

    goto :goto_0

    .line 375
    :pswitch_0    # 0xc
    const-string p0, "Body"

    goto :goto_0

    .line 372
    :pswitch_1    # 0xb
    const-string p0, "End bodypart"

    goto :goto_0

    .line 369
    :pswitch_2    # 0xa
    const-string p0, "Start bodypart"

    goto :goto_0

    .line 366
    :pswitch_3    # 0x9
    const-string p0, "Epilogue"

    goto :goto_0

    .line 363
    :pswitch_4    # 0x8
    const-string p0, "Preamble"

    goto :goto_0

    .line 360
    :pswitch_5    # 0x7
    const-string p0, "End multipart"

    goto :goto_0

    .line 357
    :pswitch_6    # 0x6
    const-string p0, "Start multipart"

    goto :goto_0

    .line 354
    :pswitch_7    # 0x5
    const-string p0, "End header"

    goto :goto_0

    .line 351
    :pswitch_8    # 0x4
    const-string p0, "Field"

    goto :goto_0

    .line 348
    :pswitch_9    # 0x3
    const-string p0, "Start header"

    goto :goto_0

    .line 345
    :pswitch_a    # 0x2
    const-string p0, "Raw entity"

    goto :goto_0

    .line 342
    :pswitch_b    # 0x1
    const-string p0, "End message"

    goto :goto_0

    .line 339
    :pswitch_c    # 0x0
    const-string p0, "Start message"

    goto :goto_0

    .line 336
    :pswitch_d    # -0x1
    const-string p0, "End of stream"

    goto :goto_0

    .line 378
    :pswitch_e    # -0x2
    const-string p0, "Bodypart"

    goto :goto_0

    .line 381
    :pswitch_f    # -0x3
    const-string p0, "In message"

    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_f    # -0x3
        :pswitch_e    # -0x2
        :pswitch_d    # -0x1
        :pswitch_c    # 0x0
        :pswitch_b    # 0x1
        :pswitch_a    # 0x2
        :pswitch_9    # 0x3
        :pswitch_8    # 0x4
        :pswitch_7    # 0x5
        :pswitch_6    # 0x6
        :pswitch_5    # 0x7
        :pswitch_4    # 0x8
        :pswitch_3    # 0x9
        :pswitch_2    # 0xa
        :pswitch_1    # 0xb
        :pswitch_0    # 0xc
    .end packed-switch
.end method


# virtual methods
.method protected debug(Lorg/apache/james/mime4j/parser/Event;)V
    .locals 1

    .line 315
    iget-object v0, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->log:Lorg/apache/commons/logging/Log;

    invoke-virtual {p0, p1}, Lorg/apache/james/mime4j/parser/AbstractEntity;->message(Lorg/apache/james/mime4j/parser/Event;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public getBodyDescriptor()Lorg/apache/james/mime4j/descriptor/BodyDescriptor;
    .locals 3

    .line 232
    invoke-virtual {p0}, Lorg/apache/james/mime4j/parser/AbstractEntity;->getState()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 240
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid state :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->state:I

    invoke-static {v2}, Lorg/apache/james/mime4j/parser/AbstractEntity;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 238
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->body:Lorg/apache/james/mime4j/descriptor/MutableBodyDescriptor;

    return-object v0
.end method

.method protected abstract getDataStream()Lorg/apache/james/mime4j/io/LineReaderInputStream;
.end method

.method public getField()Lorg/apache/james/mime4j/parser/Field;
    .locals 3

    .line 251
    invoke-virtual {p0}, Lorg/apache/james/mime4j/parser/AbstractEntity;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 253
    iget-object v0, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->field:Lorg/apache/james/mime4j/parser/Field;

    return-object v0

    .line 255
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid state :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->state:I

    invoke-static {v2}, Lorg/apache/james/mime4j/parser/AbstractEntity;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected abstract getLineNumber()I
.end method

.method public getState()I
    .locals 1

    .line 99
    iget v0, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->state:I

    return v0
.end method

.method protected message(Lorg/apache/james/mime4j/parser/Event;)Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_0

    .line 286
    const-string p1, "Event is unexpectedly null."

    goto :goto_0

    .line 288
    :cond_0
    invoke-virtual {p1}, Lorg/apache/james/mime4j/parser/Event;->toString()Ljava/lang/String;

    move-result-object p1

    .line 291
    :goto_0
    invoke-virtual {p0}, Lorg/apache/james/mime4j/parser/AbstractEntity;->getLineNumber()I

    move-result v0

    if-gtz v0, :cond_1

    return-object p1

    .line 295
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Line "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected monitor(Lorg/apache/james/mime4j/parser/Event;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/MimeException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 269
    iget-object v0, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->config:Lorg/apache/james/mime4j/parser/MimeEntityConfig;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->isStrictParsing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 272
    invoke-virtual {p0, p1}, Lorg/apache/james/mime4j/parser/AbstractEntity;->warn(Lorg/apache/james/mime4j/parser/Event;)V

    return-void

    .line 270
    :cond_0
    new-instance v0, Lorg/apache/james/mime4j/parser/MimeParseEventException;

    invoke-direct {v0, p1}, Lorg/apache/james/mime4j/parser/MimeParseEventException;-><init>(Lorg/apache/james/mime4j/parser/Event;)V

    throw v0
.end method

.method protected newBodyDescriptor(Lorg/apache/james/mime4j/descriptor/BodyDescriptor;)Lorg/apache/james/mime4j/descriptor/MutableBodyDescriptor;
    .locals 1

    .line 109
    iget-object v0, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->config:Lorg/apache/james/mime4j/parser/MimeEntityConfig;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->isMaximalBodyDescriptor()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    new-instance v0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;

    invoke-direct {v0, p1}, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;-><init>(Lorg/apache/james/mime4j/descriptor/BodyDescriptor;)V

    goto :goto_0

    .line 112
    :cond_0
    new-instance v0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;

    invoke-direct {v0, p1}, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;-><init>(Lorg/apache/james/mime4j/descriptor/BodyDescriptor;)V

    :goto_0
    return-object v0
.end method

.method protected parseField()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/MimeException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 175
    iget-object v0, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->config:Lorg/apache/james/mime4j/parser/MimeEntityConfig;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/parser/MimeEntityConfig;->getMaxHeaderCount()I

    move-result v0

    .line 177
    :goto_0
    iget-boolean v1, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->endOfHeader:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 180
    :cond_0
    iget v1, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->headerCount:I

    if-ge v1, v0, :cond_6

    .line 184
    invoke-direct {p0}, Lorg/apache/james/mime4j/parser/AbstractEntity;->fillFieldBuffer()Lorg/apache/james/mime4j/util/ByteArrayBuffer;

    move-result-object v1

    .line 185
    iget v3, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->headerCount:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    iput v3, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->headerCount:I

    .line 188
    invoke-virtual {v1}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->length()I

    move-result v3

    if-lez v3, :cond_1

    add-int/lit8 v5, v3, -0x1

    .line 189
    invoke-virtual {v1, v5}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->byteAt(I)B

    move-result v5

    const/16 v6, 0xa

    if-ne v5, v6, :cond_1

    add-int/lit8 v3, v3, -0x1

    :cond_1
    if-lez v3, :cond_2

    add-int/lit8 v5, v3, -0x1

    .line 192
    invoke-virtual {v1, v5}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->byteAt(I)B

    move-result v5

    const/16 v6, 0xd

    if-ne v5, v6, :cond_2

    add-int/lit8 v3, v3, -0x1

    .line 195
    :cond_2
    invoke-virtual {v1, v3}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->setLength(I)V

    const/16 v3, 0x3a

    .line 199
    invoke-virtual {v1, v3}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->indexOf(B)I

    move-result v3

    if-gtz v3, :cond_3

    .line 201
    sget-object v1, Lorg/apache/james/mime4j/parser/Event;->INALID_HEADER:Lorg/apache/james/mime4j/parser/Event;

    invoke-virtual {p0, v1}, Lorg/apache/james/mime4j/parser/AbstractEntity;->monitor(Lorg/apache/james/mime4j/parser/Event;)V

    goto :goto_0

    :cond_3
    :goto_1
    if-ge v2, v3, :cond_5

    .line 205
    sget-object v5, Lorg/apache/james/mime4j/parser/AbstractEntity;->fieldChars:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/util/ByteArrayBuffer;->byteAt(I)B

    move-result v6

    and-int/lit16 v6, v6, 0xff

    invoke-virtual {v5, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-nez v5, :cond_4

    .line 206
    sget-object v1, Lorg/apache/james/mime4j/parser/Event;->INALID_HEADER:Lorg/apache/james/mime4j/parser/Event;

    invoke-virtual {p0, v1}, Lorg/apache/james/mime4j/parser/AbstractEntity;->monitor(Lorg/apache/james/mime4j/parser/Event;)V

    goto :goto_0

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 213
    :cond_5
    new-instance v0, Lorg/apache/james/mime4j/parser/RawField;

    invoke-direct {v0, v1, v3}, Lorg/apache/james/mime4j/parser/RawField;-><init>(Lorg/apache/james/mime4j/util/ByteSequence;I)V

    iput-object v0, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->field:Lorg/apache/james/mime4j/parser/Field;

    .line 214
    iget-object v1, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->body:Lorg/apache/james/mime4j/descriptor/MutableBodyDescriptor;

    invoke-interface {v1, v0}, Lorg/apache/james/mime4j/descriptor/MutableBodyDescriptor;->addField(Lorg/apache/james/mime4j/parser/Field;)V

    return v4

    .line 181
    :cond_6
    new-instance v0, Lorg/apache/james/mime4j/io/MaxHeaderLimitException;

    const-string v1, "Maximum header limit exceeded"

    invoke-direct {v0, v1}, Lorg/apache/james/mime4j/io/MaxHeaderLimitException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->state:I

    invoke-static {v1}, Lorg/apache/james/mime4j/parser/AbstractEntity;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->body:Lorg/apache/james/mime4j/descriptor/MutableBodyDescriptor;

    invoke-interface {v2}, Lorg/apache/james/mime4j/descriptor/MutableBodyDescriptor;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->body:Lorg/apache/james/mime4j/descriptor/MutableBodyDescriptor;

    invoke-interface {v1}, Lorg/apache/james/mime4j/descriptor/MutableBodyDescriptor;->getBoundary()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected warn(Lorg/apache/james/mime4j/parser/Event;)V
    .locals 1

    .line 304
    iget-object v0, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lorg/apache/james/mime4j/parser/AbstractEntity;->log:Lorg/apache/commons/logging/Log;

    invoke-virtual {p0, p1}, Lorg/apache/james/mime4j/parser/AbstractEntity;->message(Lorg/apache/james/mime4j/parser/Event;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
