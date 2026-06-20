.class Lcom/xbox/httpclient/HttpClientRequest$1;
.super Ljava/lang/Object;
.source "HttpClientRequest.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xbox/httpclient/HttpClientRequest;->doRequestAsync(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xbox/httpclient/HttpClientRequest;

.field final synthetic val$sourceCall:J


# direct methods
.method constructor <init>(Lcom/xbox/httpclient/HttpClientRequest;J)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/xbox/httpclient/HttpClientRequest$1;->this$0:Lcom/xbox/httpclient/HttpClientRequest;

    iput-wide p2, p0, Lcom/xbox/httpclient/HttpClientRequest$1;->val$sourceCall:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 7

    .line 73
    instance-of v6, p2, Ljava/net/UnknownHostException;

    .line 75
    new-instance p1, Ljava/io/StringWriter;

    invoke-direct {p1}, Ljava/io/StringWriter;-><init>()V

    .line 76
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 77
    invoke-virtual {p2, v0}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 79
    iget-object v0, p0, Lcom/xbox/httpclient/HttpClientRequest$1;->this$0:Lcom/xbox/httpclient/HttpClientRequest;

    iget-wide v1, p0, Lcom/xbox/httpclient/HttpClientRequest$1;->val$sourceCall:J

    .line 81
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    .line 82
    invoke-virtual {p1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object p1, p0, Lcom/xbox/httpclient/HttpClientRequest$1;->this$0:Lcom/xbox/httpclient/HttpClientRequest;

    .line 83
    invoke-static {p1}, Lcom/xbox/httpclient/HttpClientRequest;->access$000(Lcom/xbox/httpclient/HttpClientRequest;)Ljava/lang/String;

    move-result-object v5

    .line 79
    invoke-static/range {v0 .. v6}, Lcom/xbox/httpclient/HttpClientRequest;->access$100(Lcom/xbox/httpclient/HttpClientRequest;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 5

    .line 90
    iget-object p1, p0, Lcom/xbox/httpclient/HttpClientRequest$1;->this$0:Lcom/xbox/httpclient/HttpClientRequest;

    iget-wide v0, p0, Lcom/xbox/httpclient/HttpClientRequest$1;->val$sourceCall:J

    new-instance v2, Lcom/xbox/httpclient/HttpClientResponse;

    iget-wide v3, p0, Lcom/xbox/httpclient/HttpClientRequest$1;->val$sourceCall:J

    invoke-direct {v2, v3, v4, p2}, Lcom/xbox/httpclient/HttpClientResponse;-><init>(JLokhttp3/Response;)V

    invoke-static {p1, v0, v1, v2}, Lcom/xbox/httpclient/HttpClientRequest;->access$200(Lcom/xbox/httpclient/HttpClientRequest;JLcom/xbox/httpclient/HttpClientResponse;)V

    return-void
.end method
