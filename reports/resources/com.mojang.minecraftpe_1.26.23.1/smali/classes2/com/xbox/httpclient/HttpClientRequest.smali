.class public Lcom/xbox/httpclient/HttpClientRequest;
.super Ljava/lang/Object;
.source "HttpClientRequest.java"


# static fields
.field private static final NO_BODY:[B

.field private static final OK_CLIENT:Lokhttp3/OkHttpClient;


# instance fields
.field private final appContext:Landroid/content/Context;

.field private requestBuilder:Lokhttp3/Request$Builder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    .line 25
    new-array v1, v0, [B

    sput-object v1, Lcom/xbox/httpclient/HttpClientRequest;->NO_BODY:[B

    .line 31
    new-instance v1, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v1}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 32
    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient$Builder;->retryOnConnectionFailure(Z)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 33
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    sput-object v0, Lcom/xbox/httpclient/HttpClientRequest;->OK_CLIENT:Lokhttp3/OkHttpClient;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/xbox/httpclient/HttpClientRequest;->appContext:Landroid/content/Context;

    .line 38
    new-instance p1, Lokhttp3/Request$Builder;

    invoke-direct {p1}, Lokhttp3/Request$Builder;-><init>()V

    iput-object p1, p0, Lcom/xbox/httpclient/HttpClientRequest;->requestBuilder:Lokhttp3/Request$Builder;

    return-void
.end method

.method private GetAllNetworksInfo()Ljava/lang/String;
    .locals 6

    .line 100
    iget-object v0, p0, Lcom/xbox/httpclient/HttpClientRequest;->appContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Has default proxy: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 106
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getDefaultProxy()Landroid/net/ProxyInfo;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "\nHas active network: "

    .line 107
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    .line 112
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v2

    .line 116
    :goto_2
    array-length v3, v2

    if-ge v4, v3, :cond_3

    if-lez v4, :cond_2

    .line 118
    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    :cond_2
    aget-object v3, v2, v4

    invoke-static {v3, v0}, Lcom/xbox/httpclient/NetworkObserver$NetworkDetails;->getNetworkDetails(Landroid/net/Network;Landroid/net/ConnectivityManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 124
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private native OnRequestCompleted(JLcom/xbox/httpclient/HttpClientResponse;)V
.end method

.method private native OnRequestFailed(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
.end method

.method static synthetic access$000(Lcom/xbox/httpclient/HttpClientRequest;)Ljava/lang/String;
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/xbox/httpclient/HttpClientRequest;->GetAllNetworksInfo()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/xbox/httpclient/HttpClientRequest;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 23
    invoke-direct/range {p0 .. p6}, Lcom/xbox/httpclient/HttpClientRequest;->OnRequestFailed(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/xbox/httpclient/HttpClientRequest;JLcom/xbox/httpclient/HttpClientResponse;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcom/xbox/httpclient/HttpClientRequest;->OnRequestCompleted(JLcom/xbox/httpclient/HttpClientResponse;)V

    return-void
.end method


# virtual methods
.method public doRequestAsync(J)V
    .locals 2

    .line 67
    sget-object v0, Lcom/xbox/httpclient/HttpClientRequest;->OK_CLIENT:Lokhttp3/OkHttpClient;

    iget-object v1, p0, Lcom/xbox/httpclient/HttpClientRequest;->requestBuilder:Lokhttp3/Request$Builder;

    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    new-instance v1, Lcom/xbox/httpclient/HttpClientRequest$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/xbox/httpclient/HttpClientRequest$1;-><init>(Lcom/xbox/httpclient/HttpClientRequest;J)V

    invoke-interface {v0, v1}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    return-void
.end method

.method public setHttpHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/xbox/httpclient/HttpClientRequest;->requestBuilder:Lokhttp3/Request$Builder;

    invoke-virtual {v0, p1, p2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    iput-object p1, p0, Lcom/xbox/httpclient/HttpClientRequest;->requestBuilder:Lokhttp3/Request$Builder;

    return-void
.end method

.method public setHttpMethodAndBody(Ljava/lang/String;JLjava/lang/String;J)V
    .locals 7

    const-wide/16 v0, 0x0

    cmp-long v0, p5, v0

    if-nez v0, :cond_2

    .line 50
    const-string p2, "POST"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 p3, 0x0

    if-nez p2, :cond_0

    const-string p2, "PUT"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    :cond_0
    if-eqz p4, :cond_1

    .line 51
    invoke-static {p4}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p3

    .line 52
    :cond_1
    sget-object p2, Lcom/xbox/httpclient/HttpClientRequest;->NO_BODY:[B

    invoke-static {p2, p3}, Lokhttp3/RequestBody;->create([BLokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object p3

    goto :goto_0

    .line 55
    :cond_2
    new-instance v6, Lcom/xbox/httpclient/HttpClientRequestBody;

    move-object v0, v6

    move-wide v1, p2

    move-object v3, p4

    move-wide v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/xbox/httpclient/HttpClientRequestBody;-><init>(JLjava/lang/String;J)V

    move-object p3, v6

    .line 57
    :cond_3
    :goto_0
    iget-object p2, p0, Lcom/xbox/httpclient/HttpClientRequest;->requestBuilder:Lokhttp3/Request$Builder;

    invoke-virtual {p2, p1, p3}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    return-void
.end method

.method public setHttpUrl(Ljava/lang/String;)V
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/xbox/httpclient/HttpClientRequest;->requestBuilder:Lokhttp3/Request$Builder;

    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    iput-object p1, p0, Lcom/xbox/httpclient/HttpClientRequest;->requestBuilder:Lokhttp3/Request$Builder;

    return-void
.end method
