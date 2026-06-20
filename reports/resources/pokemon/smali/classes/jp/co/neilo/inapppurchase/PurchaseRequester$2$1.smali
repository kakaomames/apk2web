.class Ljp/co/neilo/inapppurchase/PurchaseRequester$2$1;
.super Ljava/lang/Object;
.source "PurchaseRequester.java"

# interfaces
.implements Lcom/android/billingclient/api/ConsumeResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/co/neilo/inapppurchase/PurchaseRequester$2;->OnConnectedAction(Lcom/android/billingclient/api/BillingClient;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ljp/co/neilo/inapppurchase/PurchaseRequester$2;


# direct methods
.method constructor <init>(Ljp/co/neilo/inapppurchase/PurchaseRequester$2;)V
    .locals 0

    .line 446
    iput-object p1, p0, Ljp/co/neilo/inapppurchase/PurchaseRequester$2$1;->this$1:Ljp/co/neilo/inapppurchase/PurchaseRequester$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConsumeResponse(Lcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V
    .locals 1

    .line 450
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p1

    if-eqz p1, :cond_1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 464
    :cond_0
    iget-object p1, p0, Ljp/co/neilo/inapppurchase/PurchaseRequester$2$1;->this$1:Ljp/co/neilo/inapppurchase/PurchaseRequester$2;

    iget-object p1, p1, Ljp/co/neilo/inapppurchase/PurchaseRequester$2;->this$0:Ljp/co/neilo/inapppurchase/PurchaseRequester;

    iget-object p2, p0, Ljp/co/neilo/inapppurchase/PurchaseRequester$2$1;->this$1:Ljp/co/neilo/inapppurchase/PurchaseRequester$2;

    iget-object p2, p2, Ljp/co/neilo/inapppurchase/PurchaseRequester$2;->val$final_PrudouctId:Ljava/lang/String;

    iget-object v0, p0, Ljp/co/neilo/inapppurchase/PurchaseRequester$2$1;->this$1:Ljp/co/neilo/inapppurchase/PurchaseRequester$2;

    iget-object v0, v0, Ljp/co/neilo/inapppurchase/PurchaseRequester$2;->val$final_PurchaseTransactionId:Ljava/lang/String;

    invoke-static {p1, p2, v0}, Ljp/co/neilo/inapppurchase/PurchaseRequester;->access$300(Ljp/co/neilo/inapppurchase/PurchaseRequester;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 465
    iget-object p2, p0, Ljp/co/neilo/inapppurchase/PurchaseRequester$2$1;->this$1:Ljp/co/neilo/inapppurchase/PurchaseRequester$2;

    iget-object p2, p2, Ljp/co/neilo/inapppurchase/PurchaseRequester$2;->this$0:Ljp/co/neilo/inapppurchase/PurchaseRequester;

    invoke-virtual {p2, p1}, Ljp/co/neilo/inapppurchase/PurchaseRequester;->SafeAddCallbackLog(Ljava/lang/String;)V

    goto :goto_1

    .line 458
    :cond_1
    :goto_0
    iget-object p1, p0, Ljp/co/neilo/inapppurchase/PurchaseRequester$2$1;->this$1:Ljp/co/neilo/inapppurchase/PurchaseRequester$2;

    iget-object p1, p1, Ljp/co/neilo/inapppurchase/PurchaseRequester$2;->this$0:Ljp/co/neilo/inapppurchase/PurchaseRequester;

    iget-object v0, p0, Ljp/co/neilo/inapppurchase/PurchaseRequester$2$1;->this$1:Ljp/co/neilo/inapppurchase/PurchaseRequester$2;

    iget-object v0, v0, Ljp/co/neilo/inapppurchase/PurchaseRequester$2;->val$final_PrudouctId:Ljava/lang/String;

    invoke-static {p1, v0, p2}, Ljp/co/neilo/inapppurchase/PurchaseRequester;->access$200(Ljp/co/neilo/inapppurchase/PurchaseRequester;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 459
    iget-object p2, p0, Ljp/co/neilo/inapppurchase/PurchaseRequester$2$1;->this$1:Ljp/co/neilo/inapppurchase/PurchaseRequester$2;

    iget-object p2, p2, Ljp/co/neilo/inapppurchase/PurchaseRequester$2;->this$0:Ljp/co/neilo/inapppurchase/PurchaseRequester;

    invoke-virtual {p2, p1}, Ljp/co/neilo/inapppurchase/PurchaseRequester;->SafeAddCallbackLog(Ljava/lang/String;)V

    :goto_1
    return-void
.end method
