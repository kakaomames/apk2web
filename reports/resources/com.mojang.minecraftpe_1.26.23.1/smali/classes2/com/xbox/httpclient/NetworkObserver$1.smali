.class Lcom/xbox/httpclient/NetworkObserver$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "NetworkObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xbox/httpclient/NetworkObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method

.method private LogMessage(Landroid/net/Network;Ljava/lang/String;)V
    .locals 2

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Network ID "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/Network;->hashCode()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xbox/httpclient/NetworkObserver;->access$000(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 1

    .line 24
    const-string v0, "is available"

    invoke-direct {p0, p1, v0}, Lcom/xbox/httpclient/NetworkObserver$1;->LogMessage(Landroid/net/Network;Ljava/lang/String;)V

    return-void
.end method

.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 1

    .line 39
    invoke-static {p2}, Lcom/xbox/httpclient/NetworkObserver$NetworkDetails;->access$100(Landroid/net/NetworkCapabilities;)Ljava/lang/String;

    move-result-object p2

    .line 41
    invoke-static {}, Lcom/xbox/httpclient/NetworkObserver;->access$200()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 42
    invoke-static {p2}, Lcom/xbox/httpclient/NetworkObserver;->access$202(Ljava/lang/String;)Ljava/lang/String;

    .line 43
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "has capabilities: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/xbox/httpclient/NetworkObserver;->access$200()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/xbox/httpclient/NetworkObserver$1;->LogMessage(Landroid/net/Network;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V
    .locals 1

    .line 49
    invoke-static {p2}, Lcom/xbox/httpclient/NetworkObserver$NetworkDetails;->access$300(Landroid/net/LinkProperties;)Ljava/lang/String;

    move-result-object p2

    .line 51
    invoke-static {}, Lcom/xbox/httpclient/NetworkObserver;->access$400()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    invoke-static {p2}, Lcom/xbox/httpclient/NetworkObserver;->access$402(Ljava/lang/String;)Ljava/lang/String;

    .line 53
    new-instance p2, Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    sget-object v0, Lcom/google/android/datatransport/runtime/dagger/WBH/QNeSdHmyDdVMGk;->xAGWBeQcPc:Ljava/lang/String;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/xbox/httpclient/NetworkObserver;->access$400()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/xbox/httpclient/NetworkObserver$1;->LogMessage(Landroid/net/Network;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 1

    .line 29
    const-string/jumbo v0, "was lost"

    invoke-direct {p0, p1, v0}, Lcom/xbox/httpclient/NetworkObserver$1;->LogMessage(Landroid/net/Network;Ljava/lang/String;)V

    return-void
.end method

.method public onUnavailable()V
    .locals 1

    .line 34
    const-string v0, "No networks were available"

    invoke-static {v0}, Lcom/xbox/httpclient/NetworkObserver;->access$000(Ljava/lang/String;)V

    return-void
.end method
