.class public Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;
.super Ljava/io/InputStream;
.source "QuotedPrintableInputStream.java"


# static fields
.field private static log:Lorg/apache/commons/logging/Log;


# instance fields
.field byteq:Lorg/apache/james/mime4j/codec/ByteQueue;

.field private closed:Z

.field pushbackq:Lorg/apache/james/mime4j/codec/ByteQueue;

.field private state:B

.field private stream:Ljava/io/InputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    const-class v0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 35
    new-instance v0, Lorg/apache/james/mime4j/codec/ByteQueue;

    invoke-direct {v0}, Lorg/apache/james/mime4j/codec/ByteQueue;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->byteq:Lorg/apache/james/mime4j/codec/ByteQueue;

    .line 36
    new-instance v0, Lorg/apache/james/mime4j/codec/ByteQueue;

    invoke-direct {v0}, Lorg/apache/james/mime4j/codec/ByteQueue;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->pushbackq:Lorg/apache/james/mime4j/codec/ByteQueue;

    const/4 v0, 0x0

    .line 37
    iput-byte v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->state:B

    .line 38
    iput-boolean v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->closed:Z

    .line 41
    iput-object p1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->stream:Ljava/io/InputStream;

    return-void
.end method

.method private asciiCharToNumericValue(B)B
    .locals 2

    const/16 v0, 0x30

    if-lt p1, v0, :cond_0

    const/16 v1, 0x39

    if-gt p1, v1, :cond_0

    sub-int/2addr p1, v0

    :goto_0
    int-to-byte p1, p1

    return p1

    :cond_0
    const/16 v0, 0x41

    if-lt p1, v0, :cond_1

    const/16 v0, 0x5a

    if-gt p1, v0, :cond_1

    add-int/lit8 p1, p1, -0x37

    goto :goto_0

    :cond_1
    const/16 v0, 0x61

    if-lt p1, v0, :cond_2

    const/16 v0, 0x7a

    if-gt p1, v0, :cond_2

    add-int/lit8 p1, p1, -0x57

    goto :goto_0

    .line 225
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    int-to-char p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " is not a hexadecimal digit"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private fillBuffer()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 120
    :goto_0
    iget-object v2, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->byteq:Lorg/apache/james/mime4j/codec/ByteQueue;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/codec/ByteQueue;->count()I

    move-result v2

    if-nez v2, :cond_15

    .line 121
    iget-object v2, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->pushbackq:Lorg/apache/james/mime4j/codec/ByteQueue;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/codec/ByteQueue;->count()I

    move-result v2

    if-nez v2, :cond_0

    .line 122
    invoke-direct {p0}, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->populatePushbackQueue()V

    .line 123
    iget-object v2, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->pushbackq:Lorg/apache/james/mime4j/codec/ByteQueue;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/codec/ByteQueue;->count()I

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 127
    :cond_0
    iget-object v2, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->pushbackq:Lorg/apache/james/mime4j/codec/ByteQueue;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/codec/ByteQueue;->dequeue()B

    move-result v2

    .line 129
    iget-byte v3, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->state:B

    const/4 v4, 0x1

    const/16 v5, 0x3d

    if-eqz v3, :cond_13

    const/16 v6, 0x66

    const/16 v7, 0x46

    const/16 v8, 0x61

    const/16 v9, 0x39

    const/16 v10, 0x41

    const/16 v11, 0x30

    const/16 v12, 0xd

    const/4 v13, 0x3

    const/4 v14, 0x2

    if-eq v3, v4, :cond_a

    if-eq v3, v14, :cond_7

    if-eq v3, v13, :cond_1

    .line 200
    sget-object v3, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->log:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Illegal state: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-byte v5, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->state:B

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;)V

    .line 201
    iput-byte v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->state:B

    .line 202
    iget-object v3, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->byteq:Lorg/apache/james/mime4j/codec/ByteQueue;

    invoke-virtual {v3, v2}, Lorg/apache/james/mime4j/codec/ByteQueue;->enqueue(B)V

    goto :goto_0

    :cond_1
    if-lt v2, v11, :cond_2

    if-le v2, v9, :cond_4

    :cond_2
    if-lt v2, v10, :cond_3

    if-le v2, v7, :cond_4

    :cond_3
    if-lt v2, v8, :cond_5

    if-gt v2, v6, :cond_5

    .line 183
    :cond_4
    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->asciiCharToNumericValue(B)B

    move-result v3

    .line 184
    invoke-direct {p0, v2}, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->asciiCharToNumericValue(B)B

    move-result v2

    .line 185
    iput-byte v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->state:B

    .line 186
    iget-object v4, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->byteq:Lorg/apache/james/mime4j/codec/ByteQueue;

    shl-int/lit8 v3, v3, 0x4

    or-int/2addr v2, v3

    int-to-byte v2, v2

    invoke-virtual {v4, v2}, Lorg/apache/james/mime4j/codec/ByteQueue;->enqueue(B)V

    goto :goto_0

    .line 189
    :cond_5
    sget-object v3, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 190
    sget-object v3, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->log:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Malformed MIME; expected [0-9A-Z], got "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 193
    :cond_6
    iput-byte v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->state:B

    .line 194
    iget-object v3, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->byteq:Lorg/apache/james/mime4j/codec/ByteQueue;

    invoke-virtual {v3, v5}, Lorg/apache/james/mime4j/codec/ByteQueue;->enqueue(B)V

    .line 195
    iget-object v3, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->byteq:Lorg/apache/james/mime4j/codec/ByteQueue;

    invoke-virtual {v3, v1}, Lorg/apache/james/mime4j/codec/ByteQueue;->enqueue(B)V

    .line 196
    iget-object v3, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->byteq:Lorg/apache/james/mime4j/codec/ByteQueue;

    invoke-virtual {v3, v2}, Lorg/apache/james/mime4j/codec/ByteQueue;->enqueue(B)V

    goto/16 :goto_0

    :cond_7
    const/16 v3, 0xa

    if-ne v2, v3, :cond_8

    .line 168
    iput-byte v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->state:B

    goto/16 :goto_0

    .line 171
    :cond_8
    sget-object v3, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 172
    sget-object v3, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->log:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Malformed MIME; expected 10, got "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 175
    :cond_9
    iput-byte v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->state:B

    .line 176
    iget-object v3, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->byteq:Lorg/apache/james/mime4j/codec/ByteQueue;

    invoke-virtual {v3, v5}, Lorg/apache/james/mime4j/codec/ByteQueue;->enqueue(B)V

    .line 177
    iget-object v3, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->byteq:Lorg/apache/james/mime4j/codec/ByteQueue;

    invoke-virtual {v3, v12}, Lorg/apache/james/mime4j/codec/ByteQueue;->enqueue(B)V

    .line 178
    iget-object v3, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->byteq:Lorg/apache/james/mime4j/codec/ByteQueue;

    invoke-virtual {v3, v2}, Lorg/apache/james/mime4j/codec/ByteQueue;->enqueue(B)V

    goto/16 :goto_0

    :cond_a
    if-ne v2, v12, :cond_b

    .line 140
    iput-byte v14, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->state:B

    goto/16 :goto_0

    :cond_b
    if-lt v2, v11, :cond_c

    if-le v2, v9, :cond_e

    :cond_c
    if-lt v2, v10, :cond_d

    if-le v2, v7, :cond_e

    :cond_d
    if-lt v2, v8, :cond_f

    if-gt v2, v6, :cond_f

    .line 143
    :cond_e
    iput-byte v13, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->state:B

    move v1, v2

    goto/16 :goto_0

    :cond_f
    if-ne v2, v5, :cond_11

    .line 151
    sget-object v2, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 152
    sget-object v2, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->log:Lorg/apache/commons/logging/Log;

    const-string v3, "Malformed MIME; got =="

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 154
    :cond_10
    iget-object v2, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->byteq:Lorg/apache/james/mime4j/codec/ByteQueue;

    invoke-virtual {v2, v5}, Lorg/apache/james/mime4j/codec/ByteQueue;->enqueue(B)V

    goto/16 :goto_0

    .line 157
    :cond_11
    sget-object v3, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 158
    sget-object v3, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->log:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Malformed MIME; expected \\r or [0-9A-Z], got "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 161
    :cond_12
    iput-byte v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->state:B

    .line 162
    iget-object v3, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->byteq:Lorg/apache/james/mime4j/codec/ByteQueue;

    invoke-virtual {v3, v5}, Lorg/apache/james/mime4j/codec/ByteQueue;->enqueue(B)V

    .line 163
    iget-object v3, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->byteq:Lorg/apache/james/mime4j/codec/ByteQueue;

    invoke-virtual {v3, v2}, Lorg/apache/james/mime4j/codec/ByteQueue;->enqueue(B)V

    goto/16 :goto_0

    :cond_13
    if-eq v2, v5, :cond_14

    .line 132
    iget-object v3, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->byteq:Lorg/apache/james/mime4j/codec/ByteQueue;

    invoke-virtual {v3, v2}, Lorg/apache/james/mime4j/codec/ByteQueue;->enqueue(B)V

    goto/16 :goto_0

    .line 135
    :cond_14
    iput-byte v4, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->state:B

    goto/16 :goto_0

    :cond_15
    return-void
.end method

.method private populatePushbackQueue()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->pushbackq:Lorg/apache/james/mime4j/codec/ByteQueue;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/codec/ByteQueue;->count()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 88
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->stream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    const/16 v1, 0xd

    if-eq v0, v1, :cond_2

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa

    if-eq v0, v1, :cond_2

    .line 104
    iget-object v1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->pushbackq:Lorg/apache/james/mime4j/codec/ByteQueue;

    int-to-byte v0, v0

    invoke-virtual {v1, v0}, Lorg/apache/james/mime4j/codec/ByteQueue;->enqueue(B)V

    return-void

    .line 96
    :cond_1
    iget-object v1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->pushbackq:Lorg/apache/james/mime4j/codec/ByteQueue;

    int-to-byte v0, v0

    invoke-virtual {v1, v0}, Lorg/apache/james/mime4j/codec/ByteQueue;->enqueue(B)V

    goto :goto_0

    .line 100
    :cond_2
    iget-object v1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->pushbackq:Lorg/apache/james/mime4j/codec/ByteQueue;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/codec/ByteQueue;->clear()V

    .line 101
    iget-object v1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->pushbackq:Lorg/apache/james/mime4j/codec/ByteQueue;

    int-to-byte v0, v0

    invoke-virtual {v1, v0}, Lorg/apache/james/mime4j/codec/ByteQueue;->enqueue(B)V

    return-void

    .line 92
    :cond_3
    iget-object v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->pushbackq:Lorg/apache/james/mime4j/codec/ByteQueue;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/codec/ByteQueue;->clear()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 52
    iput-boolean v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->closed:Z

    return-void
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    iget-boolean v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->closed:Z

    if-nez v0, :cond_2

    .line 60
    invoke-direct {p0}, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->fillBuffer()V

    .line 61
    iget-object v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->byteq:Lorg/apache/james/mime4j/codec/ByteQueue;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/codec/ByteQueue;->count()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 64
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableInputStream;->byteq:Lorg/apache/james/mime4j/codec/ByteQueue;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/codec/ByteQueue;->dequeue()B

    move-result v0

    if-ltz v0, :cond_1

    return v0

    :cond_1
    and-int/lit16 v0, v0, 0xff

    return v0

    .line 58
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "QuotedPrintableInputStream has been closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
