.class public Lcom/microsoft/xbox/toolkit/network/XLEHttpClient;
.super Lcom/microsoft/xbox/toolkit/network/AbstractXLEHttpClient;
.source "XLEHttpClient.java"


# instance fields
.field client:Lorg/apache/http/impl/client/DefaultHttpClient;


# direct methods
.method public constructor <init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
    .locals 1

    .line 16
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/network/AbstractXLEHttpClient;-><init>()V

    .line 17
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0, p1, p2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/network/XLEHttpClient;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    return-void
.end method


# virtual methods
.method protected execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/network/XLEHttpClient;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v1, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v1}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    invoke-virtual {v0, p1, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object p1

    return-object p1
.end method
