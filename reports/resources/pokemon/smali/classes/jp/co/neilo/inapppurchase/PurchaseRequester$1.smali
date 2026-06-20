.class Ljp/co/neilo/inapppurchase/PurchaseRequester$1;
.super Ljava/lang/Object;
.source "PurchaseRequester.java"

# interfaces
.implements Ljp/co/neilo/inapppurchase/InAppPurchase$BillingClientConnectAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/co/neilo/inapppurchase/PurchaseRequester;->RequestPurchase(Lcom/android/billingclient/api/SkuDetails;)Ljp/co/neilo/inapppurchase/IAPResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljp/co/neilo/inapppurchase/PurchaseRequester;

.field final synthetic val$final_SkuDetails:Lcom/android/billingclient/api/SkuDetails;


# direct methods
.method constructor <init>(Ljp/co/neilo/inapppurchase/PurchaseRequester;Lcom/android/billingclient/api/SkuDetails;)V
    .locals 0

    .line 346
    iput-object p1, p0, Ljp/co/neilo/inapppurchase/PurchaseRequester$1;->this$0:Ljp/co/neilo/inapppurchase/PurchaseRequester;

    iput-object p2, p0, Ljp/co/neilo/inapppurchase/PurchaseRequester$1;->val$final_SkuDetails:Lcom/android/billingclient/api/SkuDetails;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnConnectFailedAction(Lcom/android/billingclient/api/BillingResult;)V
    .locals 4

    .line 411
    iget-object v0, p0, Ljp/co/neilo/inapppurchase/PurchaseRequester$1;->val$final_SkuDetails:Lcom/android/billingclient/api/SkuDetails;

    invoke-virtual {v0}, Lcom/android/billingclient/api/SkuDetails;->getSku()Ljava/lang/String;

    move-result-object v0

    .line 412
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p1

    .line 413
    iget-object v1, p0, Ljp/co/neilo/inapppurchase/PurchaseRequester$1;->this$0:Ljp/co/neilo/inapppurchase/PurchaseRequester;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PurchaseRequest connection failed["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v0, p1}, Ljp/co/neilo/inapppurchase/PurchaseRequester;->access$000(Ljp/co/neilo/inapppurchase/PurchaseRequester;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 416
    iget-object v0, p0, Ljp/co/neilo/inapppurchase/PurchaseRequester$1;->this$0:Ljp/co/neilo/inapppurchase/PurchaseRequester;

    invoke-virtual {v0, p1}, Ljp/co/neilo/inapppurchase/PurchaseRequester;->SafeAddCallbackLog(Ljava/lang/String;)V

    return-void
.end method

.method public OnConnectedAction(Lcom/android/billingclient/api/BillingClient;)V
    .locals 5

    .line 351
    iget-object v0, p0, Ljp/co/neilo/inapppurchase/PurchaseRequester$1;->val$final_SkuDetails:Lcom/android/billingclient/api/SkuDetails;

    invoke-virtual {v0}, Lcom/android/billingclient/api/SkuDetails;->getSku()Ljava/lang/String;

    move-result-object v0

    .line 352
    invoke-static {}, Lcom/android/billingclient/api/BillingFlowParams;->newBuilder()Lcom/android/billingclient/api/BillingFlowParams$Builder;

    move-result-object v1

    iget-object v2, p0, Ljp/co/neilo/inapppurchase/PurchaseRequester$1;->val$final_SkuDetails:Lcom/android/billingclient/api/SkuDetails;

    .line 353
    invoke-virtual {v1, v2}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->setSkuDetails(Lcom/android/billingclient/api/SkuDetails;)Lcom/android/billingclient/api/BillingFlowParams$Builder;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 356
    iget-object v3, p0, Ljp/co/neilo/inapppurchase/PurchaseRequester$1;->this$0:Ljp/co/neilo/inapppurchase/PurchaseRequester;

    const-string v4, "BillingFlowParams.Builder create failed"

    invoke-static {v3, v0, v4}, Ljp/co/neilo/inapppurchase/PurchaseRequester;->access$000(Ljp/co/neilo/inapppurchase/PurchaseRequester;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    if-nez v3, :cond_1

    .line 362
    invoke-virtual {v1}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->build()Lcom/android/billingclient/api/BillingFlowParams;

    move-result-object v2

    if-nez v2, :cond_1

    .line 365
    iget-object v1, p0, Ljp/co/neilo/inapppurchase/PurchaseRequester$1;->this$0:Ljp/co/neilo/inapppurchase/PurchaseRequester;

    const-string v3, "BillingFlowParams build failed"

    invoke-static {v1, v0, v3}, Ljp/co/neilo/inapppurchase/PurchaseRequester;->access$000(Ljp/co/neilo/inapppurchase/PurchaseRequester;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_1
    if-nez v3, :cond_3

    .line 372
    iget-object v1, p0, Ljp/co/neilo/inapppurchase/PurchaseRequester$1;->this$0:Ljp/co/neilo/inapppurchase/PurchaseRequester;

    invoke-virtual {v1, v0}, Ljp/co/neilo/inapppurchase/PurchaseRequester;->SafeSetCurrentProductId(Ljava/lang/String;)V

    .line 374
    sget-object v1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-virtual {p1, v1, v2}, Lcom/android/billingclient/api/BillingClient;->launchBillingFlow(Landroid/app/Activity;Lcom/android/billingclient/api/BillingFlowParams;)Lcom/android/billingclient/api/BillingResult;

    move-result-object p1

    .line 375
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p1

    if-eqz p1, :cond_2

    .line 398
    iget-object v1, p0, Ljp/co/neilo/inapppurchase/PurchaseRequester$1;->this$0:Ljp/co/neilo/inapppurchase/PurchaseRequester;

    invoke-virtual {v1}, Ljp/co/neilo/inapppurchase/PurchaseRequester;->SafeClearCurrentProductId()V

    .line 399
    iget-object v1, p0, Ljp/co/neilo/inapppurchase/PurchaseRequester$1;->this$0:Ljp/co/neilo/inapppurchase/PurchaseRequester;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "launchBillingFlow failed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v0, p1}, Ljp/co/neilo/inapppurchase/PurchaseRequester;->access$000(Ljp/co/neilo/inapppurchase/PurchaseRequester;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 379
    :cond_2
    iget-object p1, p0, Ljp/co/neilo/inapppurchase/PurchaseRequester$1;->this$0:Ljp/co/neilo/inapppurchase/PurchaseRequester;

    invoke-static {p1, v0}, Ljp/co/neilo/inapppurchase/PurchaseRequester;->access$100(Ljp/co/neilo/inapppurchase/PurchaseRequester;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 405
    :cond_3
    :goto_1
    iget-object p1, p0, Ljp/co/neilo/inapppurchase/PurchaseRequester$1;->this$0:Ljp/co/neilo/inapppurchase/PurchaseRequester;

    invoke-virtual {p1, v3}, Ljp/co/neilo/inapppurchase/PurchaseRequester;->SafeAddCallbackLog(Ljava/lang/String;)V

    return-void
.end method
