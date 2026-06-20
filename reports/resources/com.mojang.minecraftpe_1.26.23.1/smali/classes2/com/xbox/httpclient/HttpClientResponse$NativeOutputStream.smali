.class final Lcom/xbox/httpclient/HttpClientResponse$NativeOutputStream;
.super Ljava/io/OutputStream;
.source "HttpClientResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xbox/httpclient/HttpClientResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NativeOutputStream"
.end annotation


# instance fields
.field private final callHandle:J

.field final synthetic this$0:Lcom/xbox/httpclient/HttpClientResponse;


# direct methods
.method public constructor <init>(Lcom/xbox/httpclient/HttpClientResponse;J)V
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/xbox/httpclient/HttpClientResponse$NativeOutputStream;->this$0:Lcom/xbox/httpclient/HttpClientResponse;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 16
    iput-wide p2, p0, Lcom/xbox/httpclient/HttpClientResponse$NativeOutputStream;->callHandle:J

    return-void
.end method

.method private native nativeWrite(J[BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method


# virtual methods
.method public write(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    int-to-byte p1, p1

    const/4 v0, 0x1

    .line 39
    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    .line 40
    invoke-virtual {p0, v0}, Lcom/xbox/httpclient/HttpClientResponse$NativeOutputStream;->write([B)V

    return-void
.end method

.method public write([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 21
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/xbox/httpclient/HttpClientResponse$NativeOutputStream;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 27
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ltz p2, :cond_0

    if-ltz p3, :cond_0

    add-int v0, p2, p3

    .line 30
    array-length v1, p1

    if-gt v0, v1, :cond_0

    .line 34
    iget-wide v3, p0, Lcom/xbox/httpclient/HttpClientResponse$NativeOutputStream;->callHandle:J

    move-object v2, p0

    move-object v5, p1

    move v6, p2

    move v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/xbox/httpclient/HttpClientResponse$NativeOutputStream;->nativeWrite(J[BII)V

    return-void

    .line 31
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method
