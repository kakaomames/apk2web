.class final Lcom/microsoft/playfab/utilities/multiplayer/HttpRequestMultiplayer;
.super Ljava/lang/Object;
.source "HttpRequestMultiplayer.java"


# static fields
.field private static client:Lokhttp3/OkHttpClient;


# instance fields
.field private context:[B

.field private requestBuilder:Lokhttp3/Request$Builder;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 24
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xa

    .line 25
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 26
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 27
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 28
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    sput-object v0, Lcom/microsoft/playfab/utilities/multiplayer/HttpRequestMultiplayer;->client:Lokhttp3/OkHttpClient;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    iput-object v0, p0, Lcom/microsoft/playfab/utilities/multiplayer/HttpRequestMultiplayer;->requestBuilder:Lokhttp3/Request$Builder;

    return-void
.end method

.method static synthetic access$000(Lcom/microsoft/playfab/utilities/multiplayer/HttpRequestMultiplayer;)[B
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/microsoft/playfab/utilities/multiplayer/HttpRequestMultiplayer;->context:[B

    return-object p0
.end method

.method public static createHttpRequest()Lcom/microsoft/playfab/utilities/multiplayer/HttpRequestMultiplayer;
    .locals 1

    .line 36
    new-instance v0, Lcom/microsoft/playfab/utilities/multiplayer/HttpRequestMultiplayer;

    invoke-direct {v0}, Lcom/microsoft/playfab/utilities/multiplayer/HttpRequestMultiplayer;-><init>()V

    return-object v0
.end method


# virtual methods
.method public doAsyncRequest()V
    .locals 3

    .line 61
    :try_start_0
    sget-object v0, Lcom/microsoft/playfab/utilities/multiplayer/HttpRequestMultiplayer;->client:Lokhttp3/OkHttpClient;

    iget-object v1, p0, Lcom/microsoft/playfab/utilities/multiplayer/HttpRequestMultiplayer;->requestBuilder:Lokhttp3/Request$Builder;

    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    new-instance v1, Lcom/microsoft/playfab/utilities/multiplayer/HttpRequestMultiplayer$1;

    invoke-direct {v1, p0}, Lcom/microsoft/playfab/utilities/multiplayer/HttpRequestMultiplayer$1;-><init>(Lcom/microsoft/playfab/utilities/multiplayer/HttpRequestMultiplayer;)V

    invoke-interface {v0, v1}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 73
    iget-object v1, p0, Lcom/microsoft/playfab/utilities/multiplayer/HttpRequestMultiplayer;->context:[B

    invoke-virtual {p0, v1}, Lcom/microsoft/playfab/utilities/multiplayer/HttpRequestMultiplayer;->onRequestFailure([B)V

    .line 74
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 75
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v0, v2}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 76
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/microsoft/playfab/utilities/multiplayer/HttpRequestMultiplayer;->printErrorMessage([B)V

    :goto_0
    return-void
.end method

.method public native onRequestComplete(Lcom/microsoft/playfab/utilities/multiplayer/HttpResponseMultiplayer;I[B[B)V
.end method

.method public native onRequestFailure([B)V
.end method

.method public native printErrorMessage([B)V
.end method

.method public setContext([B)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/microsoft/playfab/utilities/multiplayer/HttpRequestMultiplayer;->context:[B

    return-void
.end method

.method public setHttpHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/microsoft/playfab/utilities/multiplayer/HttpRequestMultiplayer;->requestBuilder:Lokhttp3/Request$Builder;

    invoke-virtual {v0, p1, p2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    return-void
.end method

.method public setHttpMethodAndBody(Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 1

    if-nez p3, :cond_0

    .line 45
    iget-object p2, p0, Lcom/microsoft/playfab/utilities/multiplayer/HttpRequestMultiplayer;->requestBuilder:Lokhttp3/Request$Builder;

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    goto :goto_0

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/microsoft/playfab/utilities/multiplayer/HttpRequestMultiplayer;->requestBuilder:Lokhttp3/Request$Builder;

    invoke-static {p2}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p2

    invoke-static {p2, p3}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;[B)Lokhttp3/RequestBody;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    :goto_0
    return-void
.end method

.method public setHttpUrl(Ljava/lang/String;)V
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/microsoft/playfab/utilities/multiplayer/HttpRequestMultiplayer;->requestBuilder:Lokhttp3/Request$Builder;

    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    return-void
.end method
