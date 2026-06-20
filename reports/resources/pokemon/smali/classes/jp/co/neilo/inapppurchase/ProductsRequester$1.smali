.class Ljp/co/neilo/inapppurchase/ProductsRequester$1;
.super Ljava/lang/Object;
.source "ProductsRequester.java"

# interfaces
.implements Ljp/co/neilo/inapppurchase/InAppPurchase$BillingClientConnectAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/co/neilo/inapppurchase/ProductsRequester;->UpdateProductDetail(Ljava/util/List;)Ljp/co/neilo/inapppurchase/IAPResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljp/co/neilo/inapppurchase/ProductsRequester;

.field final synthetic val$final_ProductIdList:Ljava/util/List;


# direct methods
.method constructor <init>(Ljp/co/neilo/inapppurchase/ProductsRequester;Ljava/util/List;)V
    .locals 0

    .line 48
    iput-object p1, p0, Ljp/co/neilo/inapppurchase/ProductsRequester$1;->this$0:Ljp/co/neilo/inapppurchase/ProductsRequester;

    iput-object p2, p0, Ljp/co/neilo/inapppurchase/ProductsRequester$1;->val$final_ProductIdList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnConnectFailedAction(Lcom/android/billingclient/api/BillingResult;)V
    .locals 1

    .line 75
    iget-object p1, p0, Ljp/co/neilo/inapppurchase/ProductsRequester$1;->this$0:Ljp/co/neilo/inapppurchase/ProductsRequester;

    const/4 v0, 0x6

    invoke-static {p1, v0}, Ljp/co/neilo/inapppurchase/ProductsRequester;->access$002(Ljp/co/neilo/inapppurchase/ProductsRequester;I)I

    .line 76
    iget-object p1, p0, Ljp/co/neilo/inapppurchase/ProductsRequester$1;->this$0:Ljp/co/neilo/inapppurchase/ProductsRequester;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljp/co/neilo/inapppurchase/ProductsRequester;->access$102(Ljp/co/neilo/inapppurchase/ProductsRequester;Ljava/util/List;)Ljava/util/List;

    .line 77
    iget-object p1, p0, Ljp/co/neilo/inapppurchase/ProductsRequester$1;->this$0:Ljp/co/neilo/inapppurchase/ProductsRequester;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljp/co/neilo/inapppurchase/ProductsRequester;->access$202(Ljp/co/neilo/inapppurchase/ProductsRequester;Z)Z

    return-void
.end method

.method public OnConnectedAction(Lcom/android/billingclient/api/BillingClient;)V
    .locals 2

    .line 53
    invoke-static {}, Lcom/android/billingclient/api/SkuDetailsParams;->newBuilder()Lcom/android/billingclient/api/SkuDetailsParams$Builder;

    move-result-object v0

    const-string v1, "inapp"

    .line 54
    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/SkuDetailsParams$Builder;->setType(Ljava/lang/String;)Lcom/android/billingclient/api/SkuDetailsParams$Builder;

    move-result-object v0

    iget-object v1, p0, Ljp/co/neilo/inapppurchase/ProductsRequester$1;->val$final_ProductIdList:Ljava/util/List;

    .line 55
    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/SkuDetailsParams$Builder;->setSkusList(Ljava/util/List;)Lcom/android/billingclient/api/SkuDetailsParams$Builder;

    move-result-object v0

    .line 56
    invoke-virtual {v0}, Lcom/android/billingclient/api/SkuDetailsParams$Builder;->build()Lcom/android/billingclient/api/SkuDetailsParams;

    move-result-object v0

    .line 57
    new-instance v1, Ljp/co/neilo/inapppurchase/ProductsRequester$1$1;

    invoke-direct {v1, p0}, Ljp/co/neilo/inapppurchase/ProductsRequester$1$1;-><init>(Ljp/co/neilo/inapppurchase/ProductsRequester$1;)V

    invoke-virtual {p1, v0, v1}, Lcom/android/billingclient/api/BillingClient;->querySkuDetailsAsync(Lcom/android/billingclient/api/SkuDetailsParams;Lcom/android/billingclient/api/SkuDetailsResponseListener;)V

    return-void
.end method
