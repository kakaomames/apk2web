.class Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore$1;
.super Ljava/lang/Object;
.source "AmazonAppStore.java"

# interfaces
.implements Lcom/amazon/device/iap/PurchasingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;


# direct methods
.method constructor <init>(Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore$1;->this$0:Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProductDataResponse(Lcom/amazon/device/iap/model/ProductDataResponse;)V
    .locals 10

    .line 85
    invoke-virtual {p1}, Lcom/amazon/device/iap/model/ProductDataResponse;->getRequestStatus()Lcom/amazon/device/iap/model/ProductDataResponse$RequestStatus;

    move-result-object v0

    sget-object v1, Lcom/amazon/device/iap/model/ProductDataResponse$RequestStatus;->SUCCESSFUL:Lcom/amazon/device/iap/model/ProductDataResponse$RequestStatus;

    if-ne v0, v1, :cond_5

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 88
    invoke-virtual {p1}, Lcom/amazon/device/iap/model/ProductDataResponse;->getUnavailableSkus()Ljava/util/Set;

    move-result-object v1

    .line 89
    invoke-virtual {p1}, Lcom/amazon/device/iap/model/ProductDataResponse;->getProductData()Ljava/util/Map;

    move-result-object p1

    .line 91
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 92
    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 93
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/device/iap/model/Product;

    .line 95
    invoke-virtual {v3}, Lcom/amazon/device/iap/model/Product;->getSku()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/amazon/device/iap/model/Product;->getSku()Ljava/lang/String;

    move-result-object v4

    const-string v6, ".child"

    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    move-object v4, v5

    .line 96
    :goto_1
    invoke-virtual {v3}, Lcom/amazon/device/iap/model/Product;->getPrice()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v3}, Lcom/amazon/device/iap/model/Product;->getPrice()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_2
    move-object v3, v5

    .line 100
    :goto_2
    iget-object v6, p0, Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore$1;->this$0:Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;

    invoke-static {v6}, Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;->-$$Nest$fgetuserLocale(Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;)Ljava/util/Locale;

    move-result-object v6

    const-string v7, "AmazonAppStore"

    const-string v8, "0"

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore$1;->this$0:Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;

    invoke-static {v6}, Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;->-$$Nest$fgetuserCurrency(Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;)Ljava/util/Currency;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 102
    :try_start_0
    iget-object v6, p0, Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore$1;->this$0:Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;

    invoke-static {v6}, Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;->-$$Nest$fgetuserCurrency(Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;)Ljava/util/Currency;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v5

    .line 104
    iget-object v6, p0, Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore$1;->this$0:Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;

    invoke-static {v6}, Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;->-$$Nest$fgetuserLocale(Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;)Ljava/util/Locale;

    move-result-object v6

    invoke-static {v6}, Ljava/text/NumberFormat;->getCurrencyInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v6

    .line 105
    invoke-virtual {v6, v3}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v6

    .line 106
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v6

    .line 108
    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_3
    :goto_3
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v9, "--queryProductsResponse add sku["

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "] price["

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "] currencyCode["

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "] unformatted["

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "]"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    new-instance v6, Lcom/mojang/minecraftpe/store/Product;

    invoke-direct {v6, v4, v3, v5, v8}, Lcom/mojang/minecraftpe/store/Product;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 119
    :cond_4
    iget-object p1, p0, Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore$1;->this$0:Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;

    invoke-static {p1}, Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;->-$$Nest$fgetmListener(Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;)Lcom/mojang/minecraftpe/store/StoreListener;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/mojang/minecraftpe/store/Product;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mojang/minecraftpe/store/Product;

    invoke-interface {p1, v0}, Lcom/mojang/minecraftpe/store/StoreListener;->onQueryProductsSuccess([Lcom/mojang/minecraftpe/store/Product;)V

    goto :goto_4

    .line 121
    :cond_5
    iget-object p1, p0, Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore$1;->this$0:Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;

    invoke-static {p1}, Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;->-$$Nest$fgetmListener(Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;)Lcom/mojang/minecraftpe/store/StoreListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/mojang/minecraftpe/store/StoreListener;->onQueryProductsFail()V

    :goto_4
    return-void
.end method

.method public onPurchaseResponse(Lcom/amazon/device/iap/model/PurchaseResponse;)V
    .locals 3

    .line 74
    iget-object v0, p0, Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore$1;->this$0:Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;

    invoke-static {v0}, Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;->-$$Nest$fgetmProductIdRequestMapping(Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazon/device/iap/model/PurchaseResponse;->getRequestId()Lcom/amazon/device/iap/model/RequestId;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 76
    invoke-virtual {p1}, Lcom/amazon/device/iap/model/PurchaseResponse;->getRequestStatus()Lcom/amazon/device/iap/model/PurchaseResponse$RequestStatus;

    move-result-object v1

    sget-object v2, Lcom/amazon/device/iap/model/PurchaseResponse$RequestStatus;->SUCCESSFUL:Lcom/amazon/device/iap/model/PurchaseResponse$RequestStatus;

    if-ne v1, v2, :cond_0

    .line 77
    iget-object v1, p0, Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore$1;->this$0:Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;

    invoke-static {v1}, Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;->-$$Nest$fgetmListener(Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;)Lcom/mojang/minecraftpe/store/StoreListener;

    move-result-object v1

    iget-object v2, p0, Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore$1;->this$0:Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;

    invoke-static {v2, p1}, Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;->-$$Nest$mcreateReceipt(Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;Lcom/amazon/device/iap/model/PurchaseResponse;)Ljava/lang/String;

    move-result-object p1

    const-string v2, ""

    invoke-interface {v1, v0, v2, p1}, Lcom/mojang/minecraftpe/store/StoreListener;->onPurchaseSuccessful(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 79
    :cond_0
    iget-object p1, p0, Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore$1;->this$0:Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;

    invoke-static {p1}, Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;->-$$Nest$fgetmListener(Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;)Lcom/mojang/minecraftpe/store/StoreListener;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/mojang/minecraftpe/store/StoreListener;->onPurchaseFailed(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onPurchaseUpdatesResponse(Lcom/amazon/device/iap/model/PurchaseUpdatesResponse;)V
    .locals 7

    .line 57
    invoke-virtual {p1}, Lcom/amazon/device/iap/model/PurchaseUpdatesResponse;->getRequestStatus()Lcom/amazon/device/iap/model/PurchaseUpdatesResponse$RequestStatus;

    move-result-object v0

    sget-object v1, Lcom/amazon/device/iap/model/PurchaseUpdatesResponse$RequestStatus;->SUCCESSFUL:Lcom/amazon/device/iap/model/PurchaseUpdatesResponse$RequestStatus;

    if-ne v0, v1, :cond_1

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 60
    invoke-virtual {p1}, Lcom/amazon/device/iap/model/PurchaseUpdatesResponse;->getUserData()Lcom/amazon/device/iap/model/UserData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/device/iap/model/UserData;->getUserId()Ljava/lang/String;

    move-result-object v1

    .line 62
    invoke-virtual {p1}, Lcom/amazon/device/iap/model/PurchaseUpdatesResponse;->getReceipts()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/device/iap/model/Receipt;

    .line 63
    new-instance v3, Lcom/mojang/minecraftpe/store/Purchase;

    invoke-virtual {v2}, Lcom/amazon/device/iap/model/Receipt;->getSku()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore$1;->this$0:Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;

    invoke-virtual {v2}, Lcom/amazon/device/iap/model/Receipt;->getReceiptId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v1, v6}, Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;->-$$Nest$mcreateReceipt(Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/amazon/device/iap/model/Receipt;->isCanceled()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    const-string v6, ""

    invoke-direct {v3, v4, v6, v5, v2}, Lcom/mojang/minecraftpe/store/Purchase;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 66
    :cond_0
    iget-object p1, p0, Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore$1;->this$0:Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;

    invoke-static {p1}, Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;->-$$Nest$fgetmListener(Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;)Lcom/mojang/minecraftpe/store/StoreListener;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/mojang/minecraftpe/store/Purchase;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mojang/minecraftpe/store/Purchase;

    invoke-interface {p1, v0}, Lcom/mojang/minecraftpe/store/StoreListener;->onQueryPurchasesSuccess([Lcom/mojang/minecraftpe/store/Purchase;)V

    goto :goto_1

    .line 68
    :cond_1
    iget-object p1, p0, Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore$1;->this$0:Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;

    invoke-static {p1}, Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;->-$$Nest$fgetmListener(Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;)Lcom/mojang/minecraftpe/store/StoreListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/mojang/minecraftpe/store/StoreListener;->onQueryPurchasesFail()V

    :goto_1
    return-void
.end method

.method public onUserDataResponse(Lcom/amazon/device/iap/model/UserDataResponse;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 48
    invoke-virtual {p1}, Lcom/amazon/device/iap/model/UserDataResponse;->getUserData()Lcom/amazon/device/iap/model/UserData;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {p1}, Lcom/amazon/device/iap/model/UserDataResponse;->getUserData()Lcom/amazon/device/iap/model/UserData;

    move-result-object p1

    .line 50
    iget-object v0, p0, Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore$1;->this$0:Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;

    new-instance v1, Ljava/util/Locale;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/amazon/device/iap/model/UserData;->getMarketplace()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;->-$$Nest$fputuserLocale(Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;Ljava/util/Locale;)V

    .line 51
    iget-object p1, p0, Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore$1;->this$0:Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;

    invoke-static {p1}, Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;->-$$Nest$fgetuserLocale(Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;)Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Currency;->getInstance(Ljava/util/Locale;)Ljava/util/Currency;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;->-$$Nest$fputuserCurrency(Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;Ljava/util/Currency;)V

    :cond_0
    return-void
.end method
