.class public Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;
.super Ljava/io/FilterOutputStream;
.source "QuotedPrintableOutputStream.java"


# instance fields
.field private closed:Z

.field private encoder:Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Z)V
    .locals 2

    .line 35
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->closed:Z

    .line 36
    new-instance v0, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;

    const/16 v1, 0x400

    invoke-direct {v0, v1, p2}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;-><init>(IZ)V

    iput-object v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->encoder:Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;

    .line 37
    invoke-virtual {v0, p1}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->initEncoding(Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    iget-boolean v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->closed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 46
    :try_start_0
    iget-object v1, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->encoder:Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->completeEncoding()V

    .line 49
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->closed:Z

    return-void

    :catchall_0
    move-exception v1

    iput-boolean v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->closed:Z

    throw v1
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->encoder:Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->flushOutput()V

    return-void
.end method

.method public write(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    int-to-byte p1, p1

    const/4 v0, 0x1

    .line 60
    new-array v1, v0, [B

    const/4 v2, 0x0

    aput-byte p1, v1, v2

    invoke-virtual {p0, v1, v2, v0}, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    iget-boolean v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->closed:Z

    if-nez v0, :cond_0

    .line 69
    iget-object v0, p0, Lorg/apache/james/mime4j/codec/QuotedPrintableOutputStream;->encoder:Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/james/mime4j/codec/QuotedPrintableEncoder;->encodeChunk([BII)V

    return-void

    .line 66
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "QuotedPrintableOutputStream has been closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
