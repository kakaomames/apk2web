.class public Lorg/apache/james/mime4j/codec/Base64InputStream;
.super Ljava/io/InputStream;
.source "Base64InputStream.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final BASE64_DECODE:[I

.field private static final BASE64_PAD:B = 0x3dt

.field private static final ENCODED_BUFFER_SIZE:I = 0x600

.field private static final EOF:I = -0x1

.field private static log:Lorg/apache/commons/logging/Log;


# instance fields
.field private closed:Z

.field private final encoded:[B

.field private eof:Z

.field private final in:Ljava/io/InputStream;

.field private position:I

.field private final q:Lorg/apache/james/mime4j/codec/ByteQueue;

.field private final singleByte:[B

.field private size:I

.field private strict:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 32
    const-class v0, Lorg/apache/james/mime4j/codec/Base64InputStream;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/codec/Base64InputStream;->log:Lorg/apache/commons/logging/Log;

    const/16 v0, 0x100

    .line 36
    new-array v1, v0, [I

    sput-object v1, Lorg/apache/james/mime4j/codec/Base64InputStream;->BASE64_DECODE:[I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 40
    sget-object v3, Lorg/apache/james/mime4j/codec/Base64InputStream;->BASE64_DECODE:[I

    const/4 v4, -0x1

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 41
    :cond_0
    :goto_1
    sget-object v0, Lorg/apache/james/mime4j/codec/Base64OutputStream;->BASE64_TABLE:[B

    array-length v0, v0

    if-ge v1, v0, :cond_1

    .line 42
    sget-object v0, Lorg/apache/james/mime4j/codec/Base64InputStream;->BASE64_DECODE:[I

    sget-object v2, Lorg/apache/james/mime4j/codec/Base64OutputStream;->BASE64_TABLE:[B

    aget-byte v2, v2, v1

    and-int/lit16 v2, v2, 0xff

    aput v1, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    const/4 v0, 0x0

    .line 65
    invoke-direct {p0, p1, v0}, Lorg/apache/james/mime4j/codec/Base64InputStream;-><init>(Ljava/io/InputStream;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Z)V
    .locals 2

    .line 68
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x1

    .line 49
    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->singleByte:[B

    const/4 v0, 0x0

    .line 54
    iput-boolean v0, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->closed:Z

    const/16 v1, 0x600

    .line 56
    new-array v1, v1, [B

    iput-object v1, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->encoded:[B

    .line 57
    iput v0, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->position:I

    .line 58
    iput v0, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->size:I

    .line 60
    new-instance v0, Lorg/apache/james/mime4j/codec/ByteQueue;

    invoke-direct {v0}, Lorg/apache/james/mime4j/codec/ByteQueue;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->q:Lorg/apache/james/mime4j/codec/ByteQueue;

    if-eqz p1, :cond_0

    .line 72
    iput-object p1, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->in:Ljava/io/InputStream;

    .line 73
    iput-boolean p2, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->strict:Z

    return-void

    .line 70
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method private decodePad(II[BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 230
    iput-boolean v0, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->eof:Z

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    ushr-int/lit8 p1, p1, 0x4

    int-to-byte p1, p1

    if-ge p4, p5, :cond_0

    add-int/lit8 p2, p4, 0x1

    .line 237
    aput-byte p1, p3, p4

    move p4, p2

    goto :goto_0

    .line 239
    :cond_0
    iget-object p2, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->q:Lorg/apache/james/mime4j/codec/ByteQueue;

    invoke-virtual {p2, p1}, Lorg/apache/james/mime4j/codec/ByteQueue;->enqueue(B)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    if-ne p2, v1, :cond_4

    ushr-int/lit8 p2, p1, 0xa

    int-to-byte p2, p2

    ushr-int/2addr p1, v0

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    add-int/lit8 v0, p5, -0x1

    if-ge p4, v0, :cond_2

    add-int/lit8 p5, p4, 0x1

    .line 248
    aput-byte p2, p3, p4

    add-int/lit8 p4, p4, 0x2

    .line 249
    aput-byte p1, p3, p5

    goto :goto_0

    :cond_2
    if-ge p4, p5, :cond_3

    add-int/lit8 p5, p4, 0x1

    .line 251
    aput-byte p2, p3, p4

    .line 252
    iget-object p2, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->q:Lorg/apache/james/mime4j/codec/ByteQueue;

    invoke-virtual {p2, p1}, Lorg/apache/james/mime4j/codec/ByteQueue;->enqueue(B)V

    move p4, p5

    goto :goto_0

    .line 254
    :cond_3
    iget-object p3, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->q:Lorg/apache/james/mime4j/codec/ByteQueue;

    invoke-virtual {p3, p2}, Lorg/apache/james/mime4j/codec/ByteQueue;->enqueue(B)V

    .line 255
    iget-object p2, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->q:Lorg/apache/james/mime4j/codec/ByteQueue;

    invoke-virtual {p2, p1}, Lorg/apache/james/mime4j/codec/ByteQueue;->enqueue(B)V

    goto :goto_0

    .line 259
    :cond_4
    invoke-direct {p0, p2}, Lorg/apache/james/mime4j/codec/Base64InputStream;->handleUnexpecedPad(I)V

    :goto_0
    return p4
.end method

.method private handleUnexpecedPad(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 274
    iget-boolean v0, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->strict:Z

    if-nez v0, :cond_0

    .line 277
    sget-object v0, Lorg/apache/james/mime4j/codec/Base64InputStream;->log:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "unexpected padding character; dropping "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " sextet(s)"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    return-void

    .line 275
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string/jumbo v0, "unexpected padding character"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private handleUnexpectedEof(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 266
    iget-boolean v0, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->strict:Z

    if-nez v0, :cond_0

    .line 269
    sget-object v0, Lorg/apache/james/mime4j/codec/Base64InputStream;->log:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "unexpected end of file; dropping "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " sextet(s)"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    return-void

    .line 267
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string/jumbo v0, "unexpected end of file"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private read0([BII)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 136
    iget-object v0, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->q:Lorg/apache/james/mime4j/codec/ByteQueue;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/codec/ByteQueue;->count()I

    move-result v0

    move v1, p2

    :goto_0
    add-int/lit8 v2, v0, -0x1

    if-lez v0, :cond_0

    if-ge v1, p3, :cond_0

    add-int/lit8 v0, v1, 0x1

    .line 138
    iget-object v3, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->q:Lorg/apache/james/mime4j/codec/ByteQueue;

    invoke-virtual {v3}, Lorg/apache/james/mime4j/codec/ByteQueue;->dequeue()B

    move-result v3

    aput-byte v3, p1, v1

    move v1, v0

    move v0, v2

    goto :goto_0

    .line 143
    :cond_0
    iget-boolean v0, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->eof:Z

    const/4 v2, -0x1

    if-eqz v0, :cond_2

    if-ne v1, p2, :cond_1

    goto :goto_1

    :cond_1
    sub-int v2, v1, p2

    :goto_1
    return v2

    :cond_2
    const/4 v0, 0x0

    move v3, v0

    move v4, v3

    :goto_2
    if-ge v1, p3, :cond_f

    .line 154
    :cond_3
    :goto_3
    iget v5, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->position:I

    iget v6, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->size:I

    if-ne v5, v6, :cond_7

    .line 155
    iget-object v5, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->in:Ljava/io/InputStream;

    iget-object v6, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->encoded:[B

    array-length v7, v6

    invoke-virtual {v5, v6, v0, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    if-ne v5, v2, :cond_6

    const/4 p1, 0x1

    .line 157
    iput-boolean p1, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->eof:Z

    if-eqz v3, :cond_4

    .line 161
    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/codec/Base64InputStream;->handleUnexpectedEof(I)V

    :cond_4
    if-ne v1, p2, :cond_5

    goto :goto_4

    :cond_5
    sub-int v2, v1, p2

    :goto_4
    return v2

    :cond_6
    if-lez v5, :cond_3

    .line 166
    iput v0, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->position:I

    .line 167
    iput v5, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->size:I

    goto :goto_3

    :cond_7
    move v7, v1

    move v5, v3

    .line 175
    :cond_8
    :goto_5
    iget v1, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->position:I

    iget v3, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->size:I

    if-ge v1, v3, :cond_e

    if-ge v7, p3, :cond_e

    .line 176
    iget-object v3, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->encoded:[B

    add-int/lit8 v6, v1, 0x1

    iput v6, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->position:I

    aget-byte v1, v3, v1

    and-int/lit16 v1, v1, 0xff

    const/16 v3, 0x3d

    if-ne v1, v3, :cond_9

    move-object v3, p0

    move-object v6, p1

    move v8, p3

    .line 179
    invoke-direct/range {v3 .. v8}, Lorg/apache/james/mime4j/codec/Base64InputStream;->decodePad(II[BII)I

    move-result p1

    sub-int/2addr p1, p2

    return p1

    .line 183
    :cond_9
    sget-object v3, Lorg/apache/james/mime4j/codec/Base64InputStream;->BASE64_DECODE:[I

    aget v1, v3, v1

    if-gez v1, :cond_a

    goto :goto_5

    :cond_a
    shl-int/lit8 v3, v4, 0x6

    or-int v4, v3, v1

    add-int/lit8 v5, v5, 0x1

    const/4 v1, 0x4

    if-ne v5, v1, :cond_8

    ushr-int/lit8 v1, v4, 0x10

    int-to-byte v1, v1

    ushr-int/lit8 v3, v4, 0x8

    int-to-byte v3, v3

    int-to-byte v5, v4

    add-int/lit8 v6, p3, -0x2

    if-ge v7, v6, :cond_b

    add-int/lit8 v6, v7, 0x1

    .line 198
    aput-byte v1, p1, v7

    add-int/lit8 v1, v7, 0x2

    .line 199
    aput-byte v3, p1, v6

    add-int/lit8 v7, v7, 0x3

    .line 200
    aput-byte v5, p1, v1

    move v5, v0

    goto :goto_5

    :cond_b
    add-int/lit8 v0, p3, -0x1

    if-ge v7, v0, :cond_c

    add-int/lit8 v0, v7, 0x1

    .line 203
    aput-byte v1, p1, v7

    .line 204
    aput-byte v3, p1, v0

    .line 205
    iget-object p1, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->q:Lorg/apache/james/mime4j/codec/ByteQueue;

    invoke-virtual {p1, v5}, Lorg/apache/james/mime4j/codec/ByteQueue;->enqueue(B)V

    goto :goto_6

    :cond_c
    if-ge v7, p3, :cond_d

    .line 207
    aput-byte v1, p1, v7

    .line 208
    iget-object p1, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->q:Lorg/apache/james/mime4j/codec/ByteQueue;

    invoke-virtual {p1, v3}, Lorg/apache/james/mime4j/codec/ByteQueue;->enqueue(B)V

    .line 209
    iget-object p1, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->q:Lorg/apache/james/mime4j/codec/ByteQueue;

    invoke-virtual {p1, v5}, Lorg/apache/james/mime4j/codec/ByteQueue;->enqueue(B)V

    goto :goto_6

    .line 211
    :cond_d
    iget-object p1, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->q:Lorg/apache/james/mime4j/codec/ByteQueue;

    invoke-virtual {p1, v1}, Lorg/apache/james/mime4j/codec/ByteQueue;->enqueue(B)V

    .line 212
    iget-object p1, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->q:Lorg/apache/james/mime4j/codec/ByteQueue;

    invoke-virtual {p1, v3}, Lorg/apache/james/mime4j/codec/ByteQueue;->enqueue(B)V

    .line 213
    iget-object p1, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->q:Lorg/apache/james/mime4j/codec/ByteQueue;

    invoke-virtual {p1, v5}, Lorg/apache/james/mime4j/codec/ByteQueue;->enqueue(B)V

    :goto_6
    sub-int/2addr p3, p2

    return p3

    :cond_e
    move v3, v5

    move v1, v7

    goto/16 :goto_2

    :cond_f
    sub-int/2addr p3, p2

    return p3
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 124
    iget-boolean v0, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->closed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 127
    iput-boolean v0, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->closed:Z

    return-void
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    iget-boolean v0, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->closed:Z

    if-nez v0, :cond_2

    .line 82
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->singleByte:[B

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/james/mime4j/codec/Base64InputStream;->read0([BII)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    return v3

    :cond_1
    if-ne v0, v2, :cond_0

    .line 87
    iget-object v0, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->singleByte:[B

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0

    .line 79
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Base64InputStream has been closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    iget-boolean v0, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->closed:Z

    if-nez v0, :cond_1

    .line 97
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 99
    array-length v0, p1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 102
    :cond_0
    array-length v0, p1

    invoke-direct {p0, p1, v1, v0}, Lorg/apache/james/mime4j/codec/Base64InputStream;->read0([BII)I

    move-result p1

    return p1

    .line 94
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Base64InputStream has been closed"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public read([BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 107
    iget-boolean v0, p0, Lorg/apache/james/mime4j/codec/Base64InputStream;->closed:Z

    if-nez v0, :cond_2

    .line 111
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ltz p2, :cond_1

    if-ltz p3, :cond_1

    add-int v0, p2, p3

    .line 113
    array-length v1, p1

    if-gt v0, v1, :cond_1

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    .line 119
    :cond_0
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/james/mime4j/codec/Base64InputStream;->read0([BII)I

    move-result p1

    return p1

    .line 114
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    .line 108
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Base64InputStream has been closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
