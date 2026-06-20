.class public Lcom/mojang/minecraftpe/NetworkMonitor$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "NetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mojang/minecraftpe/NetworkMonitor;->_addNetworkCallbacksForTransport(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/mojang/minecraftpe/NetworkMonitor;

.field public final synthetic val$networkCategory:I


# direct methods
.method public constructor <init>(Lcom/mojang/minecraftpe/NetworkMonitor;I)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/mojang/minecraftpe/NetworkMonitor$1;->this$0:Lcom/mojang/minecraftpe/NetworkMonitor;

    iput p2, p0, Lcom/mojang/minecraftpe/NetworkMonitor$1;->val$networkCategory:I

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/mojang/minecraftpe/NetworkMonitor$1;->this$0:Lcom/mojang/minecraftpe/NetworkMonitor;

    invoke-static {v0}, Lcom/mojang/minecraftpe/NetworkMonitor;->-$$Nest$fgetmAvailableNetworksPerCategory(Lcom/mojang/minecraftpe/NetworkMonitor;)Ljava/util/HashMap;

    move-result-object v0

    iget v1, p0, Lcom/mojang/minecraftpe/NetworkMonitor$1;->val$networkCategory:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 48
    iget-object p1, p0, Lcom/mojang/minecraftpe/NetworkMonitor$1;->this$0:Lcom/mojang/minecraftpe/NetworkMonitor;

    invoke-static {p1}, Lcom/mojang/minecraftpe/NetworkMonitor;->-$$Nest$m_updateStatus(Lcom/mojang/minecraftpe/NetworkMonitor;)V

    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/mojang/minecraftpe/NetworkMonitor$1;->this$0:Lcom/mojang/minecraftpe/NetworkMonitor;

    invoke-static {v0}, Lcom/mojang/minecraftpe/NetworkMonitor;->-$$Nest$fgetmAvailableNetworksPerCategory(Lcom/mojang/minecraftpe/NetworkMonitor;)Ljava/util/HashMap;

    move-result-object v0

    iget v1, p0, Lcom/mojang/minecraftpe/NetworkMonitor$1;->val$networkCategory:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 54
    iget-object p1, p0, Lcom/mojang/minecraftpe/NetworkMonitor$1;->this$0:Lcom/mojang/minecraftpe/NetworkMonitor;

    invoke-static {p1}, Lcom/mojang/minecraftpe/NetworkMonitor;->-$$Nest$m_updateStatus(Lcom/mojang/minecraftpe/NetworkMonitor;)V

    return-void
.end method
