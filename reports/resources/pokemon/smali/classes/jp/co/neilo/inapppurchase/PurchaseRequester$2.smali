.class Ljp/co/neilo/inapppurchase/PurchaseRequester$2;
.super Ljava/lang/Object;
.source "PurchaseRequester.java"

# interfaces
.implements Ljp/co/neilo/inapppurchase/InAppPurchase$BillingClientConnectAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/co/neilo/inapppurchase/PurchaseRequester;->FinishPurchase(Ljava/lang/String;Ljava/lang/String;)Ljp/co/neilo/inapppurchase/IAPResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljp/co/neilo/inapppurchase/PurchaseRequester;

.field final synthetic val$final_PrudouctId:Ljava/lang/String;

.field final synthetic val$final_PurchaseTransactionId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljp/co/neilo/inapppurchase/PurchaseRequester;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 442
    iput-object p1, p0, Ljp/co/neilo/inapppurchase/PurchaseRequester$2;->this$0:Ljp/co/neilo/inapppurchase/PurchaseRequester;

    iput-object p2, p0, Ljp/co/neilo/inapppurchase/PurchaseRequester$2;->val$final_PrudouctId:Ljava/lang/String;

    iput-object p3, p0, Ljp/co/neilo/inapppurchase/PurchaseRequester$2;->val$final_PurchaseTransactionId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnConnectFailedAction(Lcom/android/billingclient/api/BillingResult;)V
    .locals 2

    .line 481
    iget-object p1, p0, Ljp/co/neilo/inapppurchase/PurchaseRequester$2;->this$0:Ljp/co/neilo/inapppurchase/PurchaseRequester;

    iget-object v0, p0, Ljp/co/neilo/inapppurchase/PurchaseRequester$2;->val$final_PrudouctId:Ljava/lang/String;

    iget-object v1, p0, Ljp/co/neilo/inapppurchase/PurchaseRequester$2;->val$final_PurchaseTransactionId:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Ljp/co/neilo/inapppurchase/PurchaseRequester;->access$300(Ljp/co/neilo/inapppurchase/PurchaseRequester;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 482
    iget-object v0, p0, Ljp/co/neilo/inapppurchase/PurchaseRequester$2;->this$0:Ljp/co/neilo/inapppurchase/PurchaseRequester;

    invoke-virtual {v0, p1}, Ljp/co/neilo/inapppurchase/PurchaseRequester;->SafeAddCallbackLog(Ljava/lang/String;)V

    return-void
.end method

.method public OnConnectedAction(Lcom/android/billingclient/api/BillingClient;)V
    .locals 3

    .line 446
    new-instance v0, Ljp/co/neilo/inapppurchase/PurchaseRequester$2$1;

    invoke-direct {v0, p0}, Ljp/co/neilo/inapppurchase/PurchaseRequester$2$1;-><init>(Ljp/co/neilo/inapppurchase/PurchaseRequester$2;)V

    .line 470
    invoke-static {}, Lcom/android/billingclient/api/ConsumeParams;->newBuilder()Lcom/android/billingclient/api/ConsumeParams$Builder;

    move-result-object v1

    iget-object v2, p0, Ljp/co/neilo/inapppurchase/PurchaseRequester$2;->val$final_PurchaseTransactionId:Ljava/lang/String;

    .line 471
    invoke-virtual {v1, v2}, Lcom/android/billingclient/api/ConsumeParams$Builder;->setPurchaseToken(Ljava/lang/String;)Lcom/android/billingclient/api/ConsumeParams$Builder;

    move-result-object v1

    .line 472
    invoke-virtual {v1}, Lcom/android/billingclient/api/ConsumeParams$Builder;->build()Lcom/android/billingclient/api/ConsumeParams;

    move-result-object v1

    .line 474
    invoke-virtual {p1, v1, v0}, Lcom/android/billingclient/api/BillingClient;->consumeAsync(Lcom/android/billingclient/api/ConsumeParams;Lcom/android/billingclient/api/ConsumeResponseListener;)V

    return-void
.end method
