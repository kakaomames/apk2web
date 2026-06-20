.class final Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;
.super Ljava/lang/Object;
.source "QuotedPrintableEncoder.java"


# static fields
.field private static final CR:B = 0xdt

.field private static final EQUALS:B = 0x3dt

.field private static final HEX_DIGITS:[B

.field private static final LF:B = 0xat

.field private static final QUOTED_PRINTABLE_LAST_PLAIN:B = 0x7et

.field private static final QUOTED_PRINTABLE_MAX_LINE_LENGTH:I = 0x4c

.field private static final QUOTED_PRINTABLE_OCTETS_PER_ESCAPE:I = 0x3

.field private static final SPACE:B = 0x20t

.field private static final TAB:B = 0x9t


# instance fields
.field private final binary:Z

.field private final inBuffer:[B

.field private nextSoftBreak:I

.field private out:Ljava/io/OutputStream;

.field private final outBuffer:[B

.field private outputIndex:I

.field private pendingCR:Z

.field private pendingSpace:Z

.field private pendingTab:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    .line 35
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->HEX_DIGITS:[B

    return-void

    :array_0
    .array-data 1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
    .end array-data
.end method

.method public constructor <init>(IZ)V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-array v0, p1, [B

    iput-object v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->inBuffer:[B

    mul-int/lit8 p1, p1, 0x3

    .line 51
    new-array p1, p1, [B

    iput-object p1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->outBuffer:[B

    const/4 p1, 0x0

    .line 52
    iput p1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->outputIndex:I

    const/16 v0, 0x4d

    .line 53
    iput v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->nextSoftBreak:I

    const/4 v0, 0x0

    .line 54
    iput-object v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->out:Ljava/io/OutputStream;

    .line 55
    iput-boolean p2, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->binary:Z

    .line 56
    iput-boolean p1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->pendingSpace:Z

    .line 57
    iput-boolean p1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->pendingTab:Z

    .line 58
    iput-boolean p1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->pendingCR:Z

    return-void
.end method

.method private clearPending()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 101
    iput-boolean v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->pendingSpace:Z

    .line 102
    iput-boolean v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->pendingTab:Z

    .line 103
    iput-boolean v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->pendingCR:Z

    return-void
.end method

.method private encode(B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xa

    const/16 v1, 0x9

    const/16 v2, 0x20

    if-ne p1, v0, :cond_4

    .line 108
    iget-boolean v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->binary:Z

    if-eqz v0, :cond_0

    .line 109
    invoke-direct {p0}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->writePending()V

    .line 110
    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->escape(B)V

    goto/16 :goto_1

    .line 112
    :cond_0
    iget-boolean v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->pendingCR:Z

    if-eqz v0, :cond_3

    .line 115
    iget-boolean p1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->pendingSpace:Z

    if-eqz p1, :cond_1

    .line 116
    invoke-direct {p0, v2}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->escape(B)V

    goto :goto_0

    .line 117
    :cond_1
    iget-boolean p1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->pendingTab:Z

    if-eqz p1, :cond_2

    .line 118
    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->escape(B)V

    .line 120
    :cond_2
    :goto_0
    invoke-direct {p0}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->lineBreak()V

    .line 121
    invoke-direct {p0}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->clearPending()V

    goto :goto_1

    .line 123
    :cond_3
    invoke-direct {p0}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->writePending()V

    .line 124
    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->plain(B)V

    goto :goto_1

    :cond_4
    const/16 v0, 0xd

    const/4 v3, 0x1

    if-ne p1, v0, :cond_6

    .line 128
    iget-boolean v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->binary:Z

    if-eqz v0, :cond_5

    .line 129
    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->escape(B)V

    goto :goto_1

    .line 131
    :cond_5
    iput-boolean v3, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->pendingCR:Z

    goto :goto_1

    .line 134
    :cond_6
    invoke-direct {p0}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->writePending()V

    if-ne p1, v2, :cond_8

    .line 136
    iget-boolean v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->binary:Z

    if-eqz v0, :cond_7

    .line 137
    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->escape(B)V

    goto :goto_1

    .line 139
    :cond_7
    iput-boolean v3, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->pendingSpace:Z

    goto :goto_1

    :cond_8
    if-ne p1, v1, :cond_a

    .line 142
    iget-boolean v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->binary:Z

    if-eqz v0, :cond_9

    .line 143
    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->escape(B)V

    goto :goto_1

    .line 145
    :cond_9
    iput-boolean v3, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->pendingTab:Z

    goto :goto_1

    :cond_a
    if-ge p1, v2, :cond_b

    .line 148
    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->escape(B)V

    goto :goto_1

    :cond_b
    const/16 v0, 0x7e

    if-le p1, v0, :cond_c

    .line 150
    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->escape(B)V

    goto :goto_1

    :cond_c
    const/16 v0, 0x3d

    if-ne p1, v0, :cond_d

    .line 152
    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->escape(B)V

    goto :goto_1

    .line 154
    :cond_d
    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->plain(B)V

    :goto_1
    return-void
.end method

.method private escape(B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 167
    iget v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->nextSoftBreak:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->nextSoftBreak:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 168
    invoke-direct {p0}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->softBreak()V

    :cond_0
    and-int/lit16 p1, p1, 0xff

    const/16 v0, 0x3d

    .line 173
    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->write(B)V

    .line 174
    iget v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->nextSoftBreak:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->nextSoftBreak:I

    .line 175
    sget-object v0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->HEX_DIGITS:[B

    shr-int/lit8 v1, p1, 0x4

    aget-byte v1, v0, v1

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->write(B)V

    .line 176
    iget v1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->nextSoftBreak:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->nextSoftBreak:I

    .line 177
    rem-int/lit8 p1, p1, 0x10

    aget-byte p1, v0, p1

    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->write(B)V

    return-void
.end method

.method private lineBreak()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xd

    .line 193
    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->write(B)V

    const/16 v0, 0xa

    .line 194
    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->write(B)V

    const/16 v0, 0x4c

    .line 195
    iput v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->nextSoftBreak:I

    return-void
.end method

.method private plain(B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 160
    iget v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->nextSoftBreak:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->nextSoftBreak:I

    if-gt v0, v1, :cond_0

    .line 161
    invoke-direct {p0}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->softBreak()V

    .line 163
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->write(B)V

    return-void
.end method

.method private softBreak()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x3d

    .line 188
    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->write(B)V

    .line 189
    invoke-direct {p0}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->lineBreak()V

    return-void
.end method

.method private write(B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 181
    iget-object v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->outBuffer:[B

    iget v1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->outputIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->outputIndex:I

    aput-byte p1, v0, v1

    .line 182
    array-length p1, v0

    if-lt v2, p1, :cond_0

    .line 183
    invoke-virtual {p0}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->flushOutput()V

    :cond_0
    return-void
.end method

.method private writePending()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    iget-boolean v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->pendingSpace:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x20

    .line 91
    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->plain(B)V

    goto :goto_0

    .line 92
    :cond_0
    iget-boolean v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->pendingTab:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x9

    .line 93
    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->plain(B)V

    goto :goto_0

    .line 94
    :cond_1
    iget-boolean v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->pendingCR:Z

    if-eqz v0, :cond_2

    const/16 v0, 0xd

    .line 95
    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->plain(B)V

    .line 97
    :cond_2
    :goto_0
    invoke-direct {p0}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->clearPending()V

    return-void
.end method


# virtual methods
.method completeEncoding()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    invoke-direct {p0}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->writePending()V

    .line 77
    invoke-virtual {p0}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->flushOutput()V

    return-void
.end method

.method public encode(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    invoke-virtual {p0, p2}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->initEncoding(Ljava/io/OutputStream;)V

    .line 83
    :goto_0
    iget-object p2, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->inBuffer:[B

    invoke-virtual {p1, p2}, Ljava/io/InputStream;->read([B)I

    move-result p2

    const/4 v0, -0x1

    if-le p2, v0, :cond_0

    .line 84
    iget-object v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->inBuffer:[B

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p2}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->encodeChunk([BII)V

    goto :goto_0

    .line 86
    :cond_0
    invoke-virtual {p0}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->completeEncoding()V

    return-void
.end method

.method encodeChunk([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move v0, p2

    :goto_0
    add-int v1, p3, p2

    if-ge v0, v1, :cond_0

    .line 71
    aget-byte v1, p1, v0

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->encode(B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method flushOutput()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 199
    iget v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->outputIndex:I

    iget-object v1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->outBuffer:[B

    array-length v2, v1

    const/4 v3, 0x0

    if-ge v0, v2, :cond_0

    .line 200
    iget-object v2, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->out:Ljava/io/OutputStream;

    invoke-virtual {v2, v1, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 202
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 204
    :goto_0
    iput v3, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->outputIndex:I

    return-void
.end method

.method initEncoding(Ljava/io/OutputStream;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->out:Ljava/io/OutputStream;

    const/4 p1, 0x0

    .line 63
    iput-boolean p1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->pendingSpace:Z

    .line 64
    iput-boolean p1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->pendingTab:Z

    .line 65
    iput-boolean p1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->pendingCR:Z

    const/16 p1, 0x4d

    .line 66
    iput p1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->nextSoftBreak:I

    return-void
.end method
