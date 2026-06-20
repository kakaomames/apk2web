.class public Lcom/microsoft/xbox/toolkit/network/HttpClientFactory;
.super Ljava/lang/Object;
.source "HttpClientFactory.java"


# static fields
.field private static final CONNECTION_PER_ROUTE:I = 0x10

.field private static final DEFAULT_TIMEOUT_IN_SECONDS:I = 0x28

.field private static final MAX_TOTAL_CONNECTIONS:I = 0x20

.field public static networkOperationsFactory:Lcom/microsoft/xbox/toolkit/network/HttpClientFactory;

.field public static noRedirectNetworkOperationsFactory:Lcom/microsoft/xbox/toolkit/network/HttpClientFactory;

.field public static textureFactory:Lcom/microsoft/xbox/toolkit/network/HttpClientFactory;


# instance fields
.field private client:Lcom/microsoft/xbox/toolkit/network/AbstractXLEHttpClient;

.field private clientWithTimeoutOverride:Lcom/microsoft/xbox/toolkit/network/AbstractXLEHttpClient;

.field private connectionManager:Lorg/apache/http/conn/ClientConnectionManager;

.field private httpSyncObject:Ljava/lang/Object;

.field private params:Lorg/apache/http/params/HttpParams;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 27
    new-instance v0, Lcom/microsoft/xbox/toolkit/network/HttpClientFactory;

    invoke-direct {v0}, Lcom/microsoft/xbox/toolkit/network/HttpClientFactory;-><init>()V

    sput-object v0, Lcom/microsoft/xbox/toolkit/network/HttpClientFactory;->networkOperationsFactory:Lcom/microsoft/xbox/toolkit/network/HttpClientFactory;

    .line 28
    new-instance v0, Lcom/microsoft/xbox/toolkit/network/HttpClientFactory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/microsoft/xbox/toolkit/network/HttpClientFactory;-><init>(Z)V

    sput-object v0, Lcom/microsoft/xbox/toolkit/network/HttpClientFactory;->noRedirectNetworkOperationsFactory:Lcom/microsoft/xbox/toolkit/network/HttpClientFactory;

    .line 29
    new-instance v0, Lcom/microsoft/xbox/toolkit/network/HttpClientFactory;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/microsoft/xbox/toolkit/network/HttpClientFactory;-><init>(Z)V

    sput-object v0, Lcom/microsoft/xbox/toolkit/network/HttpClientFactory;->textureFactory:Lcom/microsoft/xbox/toolkit/network/HttpClientFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, v0}, Lcom/microsoft/xbox/toolkit/network/HttpClientFactory;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 6

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/network/HttpClientFactory;->connectionManager:Lorg/apache/http/conn/ClientConnectionManager;

    .line 32
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/microsoft/xbox/toolkit/network/HttpClientFactory;->httpSyncObject:Ljava/lang/Object;

    .line 34
    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/network/HttpClientFactory;->client:Lcom/microsoft/xbox/toolkit/network/AbstractXLEHttpClient;

    .line 35
    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/network/HttpClientFactory;->clientWithTimeoutOverride:Lcom/microsoft/xbox/toolkit/network/AbstractXLEHttpClient;

    .line 43
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/network/HttpClientFactory;->params:Lorg/apache/http/params/HttpParams;

    .line 45
    new-instance v0, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v0}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 46
    new-instance v1, Lorg/apache/http/conn/scheme/Scheme;

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v2

    const-string v3, "http"

    const/16 v4, 0x50

    invoke-direct {v1, v3, v2, v4}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v0, v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 47
    new-instance v1, Lorg/apache/http/conn/scheme/Scheme;

    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v2

    const/16 v3, 0x1bb

    const-string v5, "https"

    invoke-direct {v1, v5, v2, v3}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v0, v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 50
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/network/HttpClientFactory;->params:Lorg/apache/http/params/HttpParams;

    sget-object v2, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v1, v2}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 51
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/network/HttpClientFactory;->params:Lorg/apache/http/params/HttpParams;

    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 52
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/network/HttpClientFactory;->params:Lorg/apache/http/params/HttpParams;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/apache/http/params/HttpProtocolParams;->setUseExpectContinue(Lorg/apache/http/params/HttpParams;Z)V

    .line 53
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/network/HttpClientFactory;->params:Lorg/apache/http/params/HttpParams;

    invoke-static {v1, p1}, Lorg/apache/http/client/params/HttpClientParams;->setRedirecting(Lorg/apache/http/params/HttpParams;Z)V

    .line 56
    invoke-static {}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->Instance()Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->getProxyEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 60
    new-instance p1, Lorg/apache/http/HttpHost;

    const-string v1, "itgproxy.redmond.corp.microsoft.com"

    invoke-direct {p1, v1, v4}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    .line 61
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/network/HttpClientFactory;->params:Lorg/apache/http/params/HttpParams;

    const-string v2, "http.route.default-proxy"

    invoke-interface {v1, v2, p1}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 68
    :cond_0
    iget-object p1, p0, Lcom/microsoft/xbox/toolkit/network/HttpClientFactory;->params:Lorg/apache/http/params/HttpParams;

    const v1, 0x9c40

    invoke-static {p1, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 69
    iget-object p1, p0, Lcom/microsoft/xbox/toolkit/network/HttpClientFactory;->params:Lorg/apache/http/params/HttpParams;

    invoke-static {p1, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 70
    iget-object p1, p0, Lcom/microsoft/xbox/toolkit/network/HttpClientFactory;->params:Lorg/apache/http/params/HttpParams;

    const/16 v1, 0x2000

    invoke-static {p1, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 71
    iget-object p1, p0, Lcom/microsoft/xbox/toolkit/network/HttpClientFactory;->params:Lorg/apache/http/params/HttpParams;

    new-instance v1, Lorg/apache/http/conn/params/ConnPerRouteBean;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Lorg/apache/http/conn/params/ConnPerRouteBean;-><init>(I)V

    invoke-static {p1, v1}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxConnectionsPerRoute(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/params/ConnPerRoute;)V

    .line 72
    iget-object p1, p0, Lcom/microsoft/xbox/toolkit/network/HttpClientFactory;->params:Lorg/apache/http/params/HttpParams;

    const/16 v1, 0x20

    invoke-static {p1, v1}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxTotalConnections(Lorg/apache/http/params/HttpParams;I)V

    .line 74
    new-instance p1, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/network/HttpClientFactory;->params:Lorg/apache/http/params/HttpParams;

    invoke-direct {p1, v1, v0}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/network/HttpClientFactory;->connectionManager:Lorg/apache/http/conn/ClientConnectionManager;

    return-void
.end method


# virtual methods
.method public getClientConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/network/HttpClientFactory;->connectionManager:Lorg/apache/http/conn/ClientConnectionManager;

    return-object v0
.end method

.method public getHttpClient(I)Lcom/microsoft/xbox/toolkit/network/AbstractXLEHttpClient;
    .locals 3

    .line 82
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/network/HttpClientFactory;->httpSyncObject:Ljava/lang/Object;

    monitor-enter v0

    if-lez p1, :cond_1

    .line 85
    :try_start_0
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/network/HttpClientFactory;->clientWithTimeoutOverride:Lcom/microsoft/xbox/toolkit/network/AbstractXLEHttpClient;

    if-nez v1, :cond_0

    .line 87
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/network/HttpClientFactory;->params:Lorg/apache/http/params/HttpParams;

    invoke-interface {v1}, Lorg/apache/http/params/HttpParams;->copy()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    mul-int/lit16 p1, p1, 0x3e8

    .line 88
    invoke-static {v1, p1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 89
    invoke-static {v1, p1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 91
    new-instance p1, Lcom/microsoft/xbox/toolkit/network/XLEHttpClient;

    iget-object v2, p0, Lcom/microsoft/xbox/toolkit/network/HttpClientFactory;->connectionManager:Lorg/apache/http/conn/ClientConnectionManager;

    invoke-direct {p1, v2, v1}, Lcom/microsoft/xbox/toolkit/network/XLEHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    monitor-exit v0

    return-object p1

    .line 93
    :cond_0
    monitor-exit v0

    return-object v1

    .line 95
    :cond_1
    iget-object p1, p0, Lcom/microsoft/xbox/toolkit/network/HttpClientFactory;->client:Lcom/microsoft/xbox/toolkit/network/AbstractXLEHttpClient;

    if-nez p1, :cond_2

    .line 97
    new-instance p1, Lcom/microsoft/xbox/toolkit/network/XLEHttpClient;

    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/network/HttpClientFactory;->connectionManager:Lorg/apache/http/conn/ClientConnectionManager;

    iget-object v2, p0, Lcom/microsoft/xbox/toolkit/network/HttpClientFactory;->params:Lorg/apache/http/params/HttpParams;

    invoke-direct {p1, v1, v2}, Lcom/microsoft/xbox/toolkit/network/XLEHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/network/HttpClientFactory;->client:Lcom/microsoft/xbox/toolkit/network/AbstractXLEHttpClient;

    .line 99
    :cond_2
    iget-object p1, p0, Lcom/microsoft/xbox/toolkit/network/HttpClientFactory;->client:Lcom/microsoft/xbox/toolkit/network/AbstractXLEHttpClient;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 101
    monitor-exit v0

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getHttpParams()Lorg/apache/http/params/HttpParams;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/network/HttpClientFactory;->params:Lorg/apache/http/params/HttpParams;

    return-object v0
.end method

.method public setHttpClient(Lcom/microsoft/xbox/toolkit/network/AbstractXLEHttpClient;)V
    .locals 0

    return-void
.end method
