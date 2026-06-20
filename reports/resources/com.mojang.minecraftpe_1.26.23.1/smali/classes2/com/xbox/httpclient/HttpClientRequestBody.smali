.class public final Lcom/xbox/httpclient/HttpClientRequestBody;
.super Lokhttp3/RequestBody;
.source "HttpClientRequestBody.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xbox/httpclient/HttpClientRequestBody$NativeInputStream;
    }
.end annotation


# instance fields
.field private final callHandle:J

.field private final contentLength:J

.field private final contentType:Lokhttp3/MediaType;


# direct methods
.method public constructor <init>(JLjava/lang/String;J)V
    .locals 0

    .line 74
    invoke-direct {p0}, Lokhttp3/RequestBody;-><init>()V

    .line 75
    iput-wide p1, p0, Lcom/xbox/httpclient/HttpClientRequestBody;->callHandle:J

    if-eqz p3, :cond_0

    .line 76
    invoke-static {p3}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/xbox/httpclient/HttpClientRequestBody;->contentType:Lokhttp3/MediaType;

    .line 77
    iput-wide p4, p0, Lcom/xbox/httpclient/HttpClientRequestBody;->contentLength:J

    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    .line 87
    iget-wide v0, p0, Lcom/xbox/httpclient/HttpClientRequestBody;->contentLength:J

    return-wide v0
.end method

.method public contentType()Lokhttp3/MediaType;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/xbox/httpclient/HttpClientRequestBody;->contentType:Lokhttp3/MediaType;

    return-object v0
.end method

.method public writeTo(Lokio/BufferedSink;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    new-instance v0, Lcom/xbox/httpclient/HttpClientRequestBody$NativeInputStream;

    iget-wide v1, p0, Lcom/xbox/httpclient/HttpClientRequestBody;->callHandle:J

    invoke-direct {v0, p0, v1, v2}, Lcom/xbox/httpclient/HttpClientRequestBody$NativeInputStream;-><init>(Lcom/xbox/httpclient/HttpClientRequestBody;J)V

    invoke-static {v0}, Lokio/Okio;->source(Ljava/io/InputStream;)Lokio/Source;

    move-result-object v0

    invoke-interface {p1, v0}, Lokio/BufferedSink;->writeAll(Lokio/Source;)J

    return-void
.end method
