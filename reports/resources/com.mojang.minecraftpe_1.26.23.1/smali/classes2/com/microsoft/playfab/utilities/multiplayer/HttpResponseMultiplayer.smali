.class final Lcom/microsoft/playfab/utilities/multiplayer/HttpResponseMultiplayer;
.super Ljava/lang/Object;
.source "HttpResponseMultiplayer.java"


# instance fields
.field private response:Lokhttp3/Response;


# direct methods
.method public constructor <init>(Lokhttp3/Response;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/microsoft/playfab/utilities/multiplayer/HttpResponseMultiplayer;->response:Lokhttp3/Response;

    return-void
.end method


# virtual methods
.method public getHeaderNameAtIndex(I)Ljava/lang/String;
    .locals 1

    if-ltz p1, :cond_0

    .line 20
    iget-object v0, p0, Lcom/microsoft/playfab/utilities/multiplayer/HttpResponseMultiplayer;->response:Lokhttp3/Response;

    invoke-virtual {v0}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Headers;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 21
    iget-object v0, p0, Lcom/microsoft/playfab/utilities/multiplayer/HttpResponseMultiplayer;->response:Lokhttp3/Response;

    invoke-virtual {v0}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v0

    invoke-virtual {v0, p1}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getHeaderValueAtIndex(I)Ljava/lang/String;
    .locals 1

    if-ltz p1, :cond_0

    .line 28
    iget-object v0, p0, Lcom/microsoft/playfab/utilities/multiplayer/HttpResponseMultiplayer;->response:Lokhttp3/Response;

    invoke-virtual {v0}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Headers;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/microsoft/playfab/utilities/multiplayer/HttpResponseMultiplayer;->response:Lokhttp3/Response;

    invoke-virtual {v0}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v0

    invoke-virtual {v0, p1}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getNumHeaders()I
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/microsoft/playfab/utilities/multiplayer/HttpResponseMultiplayer;->response:Lokhttp3/Response;

    invoke-virtual {v0}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Headers;->size()I

    move-result v0

    return v0
.end method

.method public getResponseBody()Ljava/lang/String;
    .locals 1

    .line 37
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/playfab/utilities/multiplayer/HttpResponseMultiplayer;->response:Lokhttp3/Response;

    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v0

    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 39
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/microsoft/playfab/utilities/multiplayer/HttpResponseMultiplayer;->response:Lokhttp3/Response;

    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v0

    return v0
.end method

.method public getStatusMessage()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/microsoft/playfab/utilities/multiplayer/HttpResponseMultiplayer;->response:Lokhttp3/Response;

    invoke-virtual {v0}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isSuccessful()Z
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/microsoft/playfab/utilities/multiplayer/HttpResponseMultiplayer;->response:Lokhttp3/Response;

    invoke-virtual {v0}, Lokhttp3/Response;->isSuccessful()Z

    move-result v0

    return v0
.end method
