.class final Ljp/co/neilo/inapppurchase/InAppPurchase$1;
.super Ljava/lang/Object;
.source "InAppPurchase.java"

# interfaces
.implements Lcom/android/billingclient/api/BillingClientStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/co/neilo/inapppurchase/InAppPurchase;->ConnectAsyncAndRun(Ljp/co/neilo/inapppurchase/InAppPurchase$BillingClientConnectAction;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBillingServiceDisconnected()V
    .locals 1

    .line 168
    sget-object v0, Ljp/co/neilo/inapppurchase/InAppPurchase$ConnectState;->Disconnected:Ljp/co/neilo/inapppurchase/InAppPurchase$ConnectState;

    invoke-static {v0}, Ljp/co/neilo/inapppurchase/InAppPurchase;->access$102(Ljp/co/neilo/inapppurchase/InAppPurchase$ConnectState;)Ljp/co/neilo/inapppurchase/InAppPurchase$ConnectState;

    return-void
.end method

.method public onBillingSetupFinished(Lcom/android/billingclient/api/BillingResult;)V
    .locals 2

    .line 143
    invoke-static {}, Ljp/co/neilo/inapppurchase/InAppPurchase;->access$000()Ljava/util/List;

    move-result-object v0

    .line 145
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1}, Ljp/co/neilo/inapppurchase/InAppPurchase;->access$002(Ljava/util/List;)Ljava/util/List;

    .line 147
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v1

    if-nez v1, :cond_0

    .line 151
    sget-object p1, Ljp/co/neilo/inapppurchase/InAppPurchase$ConnectState;->Connected:Ljp/co/neilo/inapppurchase/InAppPurchase$ConnectState;

    invoke-static {p1}, Ljp/co/neilo/inapppurchase/InAppPurchase;->access$102(Ljp/co/neilo/inapppurchase/InAppPurchase$ConnectState;)Ljp/co/neilo/inapppurchase/InAppPurchase$ConnectState;

    .line 152
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljp/co/neilo/inapppurchase/InAppPurchase$BillingClientConnectAction;

    .line 153
    invoke-static {}, Ljp/co/neilo/inapppurchase/InAppPurchase;->access$200()Lcom/android/billingclient/api/BillingClient;

    move-result-object v1

    invoke-interface {v0, v1}, Ljp/co/neilo/inapppurchase/InAppPurchase$BillingClientConnectAction;->OnConnectedAction(Lcom/android/billingclient/api/BillingClient;)V

    goto :goto_0

    .line 158
    :cond_0
    sget-object v1, Ljp/co/neilo/inapppurchase/InAppPurchase$ConnectState;->Disconnected:Ljp/co/neilo/inapppurchase/InAppPurchase$ConnectState;

    invoke-static {v1}, Ljp/co/neilo/inapppurchase/InAppPurchase;->access$102(Ljp/co/neilo/inapppurchase/InAppPurchase$ConnectState;)Ljp/co/neilo/inapppurchase/InAppPurchase$ConnectState;

    .line 159
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljp/co/neilo/inapppurchase/InAppPurchase$BillingClientConnectAction;

    .line 160
    invoke-interface {v1, p1}, Ljp/co/neilo/inapppurchase/InAppPurchase$BillingClientConnectAction;->OnConnectFailedAction(Lcom/android/billingclient/api/BillingResult;)V

    goto :goto_1

    :cond_1
    return-void
.end method
