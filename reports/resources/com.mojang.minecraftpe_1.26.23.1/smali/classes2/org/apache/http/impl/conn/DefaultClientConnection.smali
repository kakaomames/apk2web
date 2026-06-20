.class public Lorg/apache/http/impl/conn/DefaultClientConnection;
.super Lorg/apache/http/impl/SocketHttpClientConnection;
.source "DefaultClientConnection.java"

# interfaces
.implements Lorg/apache/http/conn/OperatedClientConnection;


# instance fields
.field private connSecure:Z

.field private final headerLog:Lorg/apache/commons/logging/Log;

.field private final log:Lorg/apache/commons/logging/Log;

.field private volatile shutdown:Z

.field private volatile socket:Ljava/net/Socket;

.field private targetHost:Lorg/apache/http/HttpHost;

.field private final wireLog:Lorg/apache/commons/logging/Log;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 87
    invoke-direct {p0}, Lorg/apache/http/impl/SocketHttpClientConnection;-><init>()V

    .line 70
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/conn/DefaultClientConnection;->log:Lorg/apache/commons/logging/Log;

    .line 71
    const-string v0, "org.apache.http.headers"

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/String;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/conn/DefaultClientConnection;->headerLog:Lorg/apache/commons/logging/Log;

    .line 72
    const-string v0, "org.apache.http.wire"

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/String;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/conn/DefaultClientConnection;->wireLog:Lorg/apache/commons/logging/Log;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 156
    :try_start_0
    invoke-super {p0}, Lorg/apache/http/impl/SocketHttpClientConnection;->close()V

    .line 157
    iget-object v0, p0, Lorg/apache/http/impl/conn/DefaultClientConnection;->log:Lorg/apache/commons/logging/Log;

    const/4 v1, 0x0

    sget-object v1, Lcom/google/android/datatransport/runtime/dagger/WBH/QNeSdHmyDdVMGk;->XgFqYJUbEdj:Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 159
    iget-object v1, p0, Lorg/apache/http/impl/conn/DefaultClientConnection;->log:Lorg/apache/commons/logging/Log;

    const/4 v2, 0x0

    sget-object v2, Lokhttp3/internal/lUt/BlznlBMYw;->FJWfcnMsJrFLI:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method protected createResponseParser(Lorg/apache/http/io/SessionInputBuffer;Lorg/apache/http/HttpResponseFactory;Lorg/apache/http/params/HttpParams;)Lorg/apache/http/io/HttpMessageParser;
    .locals 2

    .line 205
    new-instance v0, Lorg/apache/http/impl/conn/DefaultResponseParser;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2, p3}, Lorg/apache/http/impl/conn/DefaultResponseParser;-><init>(Lorg/apache/http/io/SessionInputBuffer;Lorg/apache/http/message/LineParser;Lorg/apache/http/HttpResponseFactory;Lorg/apache/http/params/HttpParams;)V

    return-object v0
.end method

.method protected createSessionInputBuffer(Ljava/net/Socket;ILorg/apache/http/params/HttpParams;)Lorg/apache/http/io/SessionInputBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/16 p2, 0x2000

    .line 171
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lorg/apache/http/impl/SocketHttpClientConnection;->createSessionInputBuffer(Ljava/net/Socket;ILorg/apache/http/params/HttpParams;)Lorg/apache/http/io/SessionInputBuffer;

    move-result-object p1

    .line 175
    iget-object p2, p0, Lorg/apache/http/impl/conn/DefaultClientConnection;->wireLog:Lorg/apache/commons/logging/Log;

    invoke-interface {p2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 176
    new-instance p2, Lorg/apache/http/impl/conn/LoggingSessionInputBuffer;

    new-instance p3, Lorg/apache/http/impl/conn/Wire;

    iget-object v0, p0, Lorg/apache/http/impl/conn/DefaultClientConnection;->wireLog:Lorg/apache/commons/logging/Log;

    invoke-direct {p3, v0}, Lorg/apache/http/impl/conn/Wire;-><init>(Lorg/apache/commons/logging/Log;)V

    invoke-direct {p2, p1, p3}, Lorg/apache/http/impl/conn/LoggingSessionInputBuffer;-><init>(Lorg/apache/http/io/SessionInputBuffer;Lorg/apache/http/impl/conn/Wire;)V

    move-object p1, p2

    :cond_1
    return-object p1
.end method

.method protected createSessionOutputBuffer(Ljava/net/Socket;ILorg/apache/http/params/HttpParams;)Lorg/apache/http/io/SessionOutputBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/16 p2, 0x2000

    .line 189
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lorg/apache/http/impl/SocketHttpClientConnection;->createSessionOutputBuffer(Ljava/net/Socket;ILorg/apache/http/params/HttpParams;)Lorg/apache/http/io/SessionOutputBuffer;

    move-result-object p1

    .line 193
    iget-object p2, p0, Lorg/apache/http/impl/conn/DefaultClientConnection;->wireLog:Lorg/apache/commons/logging/Log;

    invoke-interface {p2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 194
    new-instance p2, Lorg/apache/http/impl/conn/LoggingSessionOutputBuffer;

    new-instance p3, Lorg/apache/http/impl/conn/Wire;

    iget-object v0, p0, Lorg/apache/http/impl/conn/DefaultClientConnection;->wireLog:Lorg/apache/commons/logging/Log;

    invoke-direct {p3, v0}, Lorg/apache/http/impl/conn/Wire;-><init>(Lorg/apache/commons/logging/Log;)V

    invoke-direct {p2, p1, p3}, Lorg/apache/http/impl/conn/LoggingSessionOutputBuffer;-><init>(Lorg/apache/http/io/SessionOutputBuffer;Lorg/apache/http/impl/conn/Wire;)V

    move-object p1, p2

    :cond_1
    return-object p1
.end method

.method public final getSocket()Ljava/net/Socket;
    .locals 1

    .line 100
    iget-object v0, p0, Lorg/apache/http/impl/conn/DefaultClientConnection;->socket:Ljava/net/Socket;

    return-object v0
.end method

.method public final getTargetHost()Lorg/apache/http/HttpHost;
    .locals 1

    .line 91
    iget-object v0, p0, Lorg/apache/http/impl/conn/DefaultClientConnection;->targetHost:Lorg/apache/http/HttpHost;

    return-object v0
.end method

.method public final isSecure()Z
    .locals 1

    .line 95
    iget-boolean v0, p0, Lorg/apache/http/impl/conn/DefaultClientConnection;->connSecure:Z

    return v0
.end method

.method public openCompleted(ZLorg/apache/http/params/HttpParams;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 117
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/DefaultClientConnection;->assertNotOpen()V

    if-eqz p2, :cond_0

    .line 122
    iput-boolean p1, p0, Lorg/apache/http/impl/conn/DefaultClientConnection;->connSecure:Z

    .line 123
    iget-object p1, p0, Lorg/apache/http/impl/conn/DefaultClientConnection;->socket:Ljava/net/Socket;

    invoke-virtual {p0, p1, p2}, Lorg/apache/http/impl/conn/DefaultClientConnection;->bind(Ljava/net/Socket;Lorg/apache/http/params/HttpParams;)V

    return-void

    .line 119
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Parameters must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public opening(Ljava/net/Socket;Lorg/apache/http/HttpHost;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/DefaultClientConnection;->assertNotOpen()V

    .line 105
    iput-object p1, p0, Lorg/apache/http/impl/conn/DefaultClientConnection;->socket:Ljava/net/Socket;

    .line 106
    iput-object p2, p0, Lorg/apache/http/impl/conn/DefaultClientConnection;->targetHost:Lorg/apache/http/HttpHost;

    .line 109
    iget-boolean p2, p0, Lorg/apache/http/impl/conn/DefaultClientConnection;->shutdown:Z

    if-nez p2, :cond_0

    return-void

    .line 110
    :cond_0
    invoke-virtual {p1}, Ljava/net/Socket;->close()V

    .line 112
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Connection already shutdown"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public receiveResponseHeader()Lorg/apache/http/HttpResponse;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 233
    invoke-super {p0}, Lorg/apache/http/impl/SocketHttpClientConnection;->receiveResponseHeader()Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 234
    iget-object v1, p0, Lorg/apache/http/impl/conn/DefaultClientConnection;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 235
    iget-object v1, p0, Lorg/apache/http/impl/conn/DefaultClientConnection;->log:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Receiving response: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 237
    :cond_0
    iget-object v1, p0, Lorg/apache/http/impl/conn/DefaultClientConnection;->headerLog:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 238
    iget-object v1, p0, Lorg/apache/http/impl/conn/DefaultClientConnection;->headerLog:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "<< "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 239
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v1

    .line 240
    array-length v2, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 241
    iget-object v6, p0, Lorg/apache/http/impl/conn/DefaultClientConnection;->headerLog:Lorg/apache/commons/logging/Log;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6, v5}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public sendRequestHeader(Lorg/apache/http/HttpRequest;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 249
    iget-object v0, p0, Lorg/apache/http/impl/conn/DefaultClientConnection;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lorg/apache/http/impl/conn/DefaultClientConnection;->log:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Sending request: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 252
    :cond_0
    invoke-super {p0, p1}, Lorg/apache/http/impl/SocketHttpClientConnection;->sendRequestHeader(Lorg/apache/http/HttpRequest;)V

    .line 253
    iget-object v0, p0, Lorg/apache/http/impl/conn/DefaultClientConnection;->headerLog:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 254
    iget-object v0, p0, Lorg/apache/http/impl/conn/DefaultClientConnection;->headerLog:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ">> "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 255
    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object p1

    .line 256
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v3, p1, v1

    .line 257
    iget-object v4, p0, Lorg/apache/http/impl/conn/DefaultClientConnection;->headerLog:Lorg/apache/commons/logging/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public shutdown()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 141
    iput-boolean v0, p0, Lorg/apache/http/impl/conn/DefaultClientConnection;->shutdown:Z

    .line 143
    :try_start_0
    invoke-super {p0}, Lorg/apache/http/impl/SocketHttpClientConnection;->shutdown()V

    .line 144
    iget-object v0, p0, Lorg/apache/http/impl/conn/DefaultClientConnection;->log:Lorg/apache/commons/logging/Log;

    const-string v1, "Connection shut down"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 145
    iget-object v0, p0, Lorg/apache/http/impl/conn/DefaultClientConnection;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 149
    iget-object v1, p0, Lorg/apache/http/impl/conn/DefaultClientConnection;->log:Lorg/apache/commons/logging/Log;

    const-string v2, "I/O error shutting down connection"

    invoke-interface {v1, v2, v0}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public update(Ljava/net/Socket;Lorg/apache/http/HttpHost;ZLorg/apache/http/params/HttpParams;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 213
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/DefaultClientConnection;->assertOpen()V

    if-eqz p2, :cond_2

    if-eqz p4, :cond_1

    if-eqz p1, :cond_0

    .line 224
    iput-object p1, p0, Lorg/apache/http/impl/conn/DefaultClientConnection;->socket:Ljava/net/Socket;

    .line 225
    invoke-virtual {p0, p1, p4}, Lorg/apache/http/impl/conn/DefaultClientConnection;->bind(Ljava/net/Socket;Lorg/apache/http/params/HttpParams;)V

    .line 227
    :cond_0
    iput-object p2, p0, Lorg/apache/http/impl/conn/DefaultClientConnection;->targetHost:Lorg/apache/http/HttpHost;

    .line 228
    iput-boolean p3, p0, Lorg/apache/http/impl/conn/DefaultClientConnection;->connSecure:Z

    return-void

    .line 219
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Parameters must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 215
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Target host must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
