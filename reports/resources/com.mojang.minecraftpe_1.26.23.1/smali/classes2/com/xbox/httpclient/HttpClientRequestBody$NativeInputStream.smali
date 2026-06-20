.class final Lcom/xbox/httpclient/HttpClientRequestBody$NativeInputStream;
.super Ljava/io/InputStream;
.source "HttpClientRequestBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xbox/httpclient/HttpClientRequestBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NativeInputStream"
.end annotation


# instance fields
.field private final callHandle:J

.field private offset:J

.field final synthetic this$0:Lcom/xbox/httpclient/HttpClientRequestBody;


# direct methods
.method public constructor <init>(Lcom/xbox/httpclient/HttpClientRequestBody;J)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/xbox/httpclient/HttpClientRequestBody$NativeInputStream;->this$0:Lcom/xbox/httpclient/HttpClientRequestBody;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 20
    iput-wide p2, p0, Lcom/xbox/httpclient/HttpClientRequestBody$NativeInputStream;->callHandle:J

    const-wide/16 p1, 0x0

    .line 21
    iput-wide p1, p0, Lcom/xbox/httpclient/HttpClientRequestBody$NativeInputStream;->offset:J

    return-void
.end method

.method private native nativeRead(JJ[BJJ)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method


# virtual methods
.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 26
    new-array v0, v0, [B

    .line 27
    invoke-virtual {p0, v0}, Lcom/xbox/httpclient/HttpClientRequestBody$NativeInputStream;->read([B)I

    const/4 v1, 0x0

    .line 28
    aget-byte v0, v0, v1

    return v0
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 33
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/xbox/httpclient/HttpClientRequestBody$NativeInputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ltz p2, :cond_2

    if-ltz p3, :cond_2

    add-int v0, p2, p3

    .line 42
    array-length v1, p1

    if-gt v0, v1, :cond_2

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    .line 50
    :cond_0
    iget-wide v1, p0, Lcom/xbox/httpclient/HttpClientRequestBody$NativeInputStream;->callHandle:J

    iget-wide v3, p0, Lcom/xbox/httpclient/HttpClientRequestBody$NativeInputStream;->offset:J

    int-to-long v6, p2

    int-to-long v8, p3

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v9}, Lcom/xbox/httpclient/HttpClientRequestBody$NativeInputStream;->nativeRead(JJ[BJJ)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_1

    return p2

    .line 56
    :cond_1
    iget-wide p2, p0, Lcom/xbox/httpclient/HttpClientRequestBody$NativeInputStream;->offset:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lcom/xbox/httpclient/HttpClientRequestBody$NativeInputStream;->offset:J

    return p1

    .line 43
    :cond_2
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public skip(J)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    iget-wide v0, p0, Lcom/xbox/httpclient/HttpClientRequestBody$NativeInputStream;->offset:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/xbox/httpclient/HttpClientRequestBody$NativeInputStream;->offset:J

    return-wide p1
.end method
