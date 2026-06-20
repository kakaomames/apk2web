.class Lcom/microsoft/playfab/utilities/multiplayer/HttpRequestMultiplayer$1;
.super Ljava/lang/Object;
.source "HttpRequestMultiplayer.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/playfab/utilities/multiplayer/HttpRequestMultiplayer;->doAsyncRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/playfab/utilities/multiplayer/HttpRequestMultiplayer;


# direct methods
.method constructor <init>(Lcom/microsoft/playfab/utilities/multiplayer/HttpRequestMultiplayer;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/microsoft/playfab/utilities/multiplayer/HttpRequestMultiplayer$1;->this$0:Lcom/microsoft/playfab/utilities/multiplayer/HttpRequestMultiplayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 0

    .line 64
    iget-object p1, p0, Lcom/microsoft/playfab/utilities/multiplayer/HttpRequestMultiplayer$1;->this$0:Lcom/microsoft/playfab/utilities/multiplayer/HttpRequestMultiplayer;

    invoke-static {p1}, Lcom/microsoft/playfab/utilities/multiplayer/HttpRequestMultiplayer;->access$000(Lcom/microsoft/playfab/utilities/multiplayer/HttpRequestMultiplayer;)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/microsoft/playfab/utilities/multiplayer/HttpRequestMultiplayer;->onRequestFailure([B)V

    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    iget-object p1, p0, Lcom/microsoft/playfab/utilities/multiplayer/HttpRequestMultiplayer$1;->this$0:Lcom/microsoft/playfab/utilities/multiplayer/HttpRequestMultiplayer;

    new-instance v0, Lcom/microsoft/playfab/utilities/multiplayer/HttpResponseMultiplayer;

    invoke-direct {v0, p2}, Lcom/microsoft/playfab/utilities/multiplayer/HttpResponseMultiplayer;-><init>(Lokhttp3/Response;)V

    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    move-result v1

    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/ResponseBody;->bytes()[B

    move-result-object p2

    iget-object v2, p0, Lcom/microsoft/playfab/utilities/multiplayer/HttpRequestMultiplayer$1;->this$0:Lcom/microsoft/playfab/utilities/multiplayer/HttpRequestMultiplayer;

    invoke-static {v2}, Lcom/microsoft/playfab/utilities/multiplayer/HttpRequestMultiplayer;->access$000(Lcom/microsoft/playfab/utilities/multiplayer/HttpRequestMultiplayer;)[B

    move-result-object v2

    invoke-virtual {p1, v0, v1, p2, v2}, Lcom/microsoft/playfab/utilities/multiplayer/HttpRequestMultiplayer;->onRequestComplete(Lcom/microsoft/playfab/utilities/multiplayer/HttpResponseMultiplayer;I[B[B)V

    return-void
.end method
