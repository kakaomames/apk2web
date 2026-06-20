.class Ljp/co/neilo/inapppurchase/ProductsRequester$1$1;
.super Ljava/lang/Object;
.source "ProductsRequester.java"

# interfaces
.implements Lcom/android/billingclient/api/SkuDetailsResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/co/neilo/inapppurchase/ProductsRequester$1;->OnConnectedAction(Lcom/android/billingclient/api/BillingClient;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ljp/co/neilo/inapppurchase/ProductsRequester$1;


# direct methods
.method constructor <init>(Ljp/co/neilo/inapppurchase/ProductsRequester$1;)V
    .locals 0

    .line 57
    iput-object p1, p0, Ljp/co/neilo/inapppurchase/ProductsRequester$1$1;->this$1:Ljp/co/neilo/inapppurchase/ProductsRequester$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSkuDetailsResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/BillingResult;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/SkuDetails;",
            ">;)V"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Ljp/co/neilo/inapppurchase/ProductsRequester$1$1;->this$1:Ljp/co/neilo/inapppurchase/ProductsRequester$1;

    iget-object v0, v0, Ljp/co/neilo/inapppurchase/ProductsRequester$1;->this$0:Ljp/co/neilo/inapppurchase/ProductsRequester;

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p1

    invoke-static {v0, p1}, Ljp/co/neilo/inapppurchase/ProductsRequester;->access$002(Ljp/co/neilo/inapppurchase/ProductsRequester;I)I

    .line 63
    iget-object p1, p0, Ljp/co/neilo/inapppurchase/ProductsRequester$1$1;->this$1:Ljp/co/neilo/inapppurchase/ProductsRequester$1;

    iget-object p1, p1, Ljp/co/neilo/inapppurchase/ProductsRequester$1;->this$0:Ljp/co/neilo/inapppurchase/ProductsRequester;

    invoke-static {p1, p2}, Ljp/co/neilo/inapppurchase/ProductsRequester;->access$102(Ljp/co/neilo/inapppurchase/ProductsRequester;Ljava/util/List;)Ljava/util/List;

    .line 66
    iget-object p1, p0, Ljp/co/neilo/inapppurchase/ProductsRequester$1$1;->this$1:Ljp/co/neilo/inapppurchase/ProductsRequester$1;

    iget-object p1, p1, Ljp/co/neilo/inapppurchase/ProductsRequester$1;->this$0:Ljp/co/neilo/inapppurchase/ProductsRequester;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Ljp/co/neilo/inapppurchase/ProductsRequester;->access$202(Ljp/co/neilo/inapppurchase/ProductsRequester;Z)Z

    return-void
.end method
