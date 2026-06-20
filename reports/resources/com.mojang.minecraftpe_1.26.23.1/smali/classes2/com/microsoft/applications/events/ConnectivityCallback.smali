.class Lcom/microsoft/applications/events/ConnectivityCallback;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "HttpClient.java"


# instance fields
.field private m_metered:Z

.field private final m_parent:Lcom/microsoft/applications/events/HttpClient;


# direct methods
.method constructor <init>(Lcom/microsoft/applications/events/HttpClient;Z)V
    .locals 0

    .line 69
    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/microsoft/applications/events/ConnectivityCallback;->m_parent:Lcom/microsoft/applications/events/HttpClient;

    .line 71
    iput-boolean p2, p0, Lcom/microsoft/applications/events/ConnectivityCallback;->m_metered:Z

    return-void
.end method


# virtual methods
.method public final onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 0

    const/16 p1, 0xb

    .line 77
    invoke-virtual {p2, p1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    .line 78
    iget-boolean p2, p0, Lcom/microsoft/applications/events/ConnectivityCallback;->m_metered:Z

    if-eq p1, p2, :cond_0

    .line 79
    iput-boolean p1, p0, Lcom/microsoft/applications/events/ConnectivityCallback;->m_metered:Z

    .line 80
    iget-object p2, p0, Lcom/microsoft/applications/events/ConnectivityCallback;->m_parent:Lcom/microsoft/applications/events/HttpClient;

    invoke-virtual {p2, p1}, Lcom/microsoft/applications/events/HttpClient;->onCostChange(Z)V

    :cond_0
    return-void
.end method
