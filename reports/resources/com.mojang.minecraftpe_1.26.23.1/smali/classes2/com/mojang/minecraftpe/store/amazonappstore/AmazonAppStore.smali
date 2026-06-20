.class public Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;
.super Ljava/lang/Object;
.source "AmazonAppStore.java"

# interfaces
.implements Lcom/mojang/minecraftpe/store/Store;


# instance fields
.field private mListener:Lcom/mojang/minecraftpe/store/StoreListener;

.field private final mPlatformPurchaseId:Ljava/lang/String;

.field private mProductIdRequestMapping:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/amazon/device/iap/model/RequestId;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPurchasingListener:Lcom/amazon/device/iap/PurchasingListener;

.field private final subscriptionKey:Ljava/lang/String;

.field private userCurrency:Ljava/util/Currency;

.field private userLocale:Ljava/util/Locale;


# direct methods
.method static bridge synthetic -$$Nest$fgetmListener(Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;)Lcom/mojang/minecraftpe/store/StoreListener;
    .locals 0

    iget-object p0, p0, Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;->mListener:Lcom/mojang/minecraftpe/store/StoreListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmProductIdRequestMapping(Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;->mProductIdRequestMapping:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetuserCurrency(Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;)Ljava/util/Currency;
    .locals 0

    iget-object p0, p0, Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;->userCurrency:Ljava/util/Currency;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetuserLocale(Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;)Ljava/util/Locale;
    .locals 0

    iget-object p0, p0, Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;->userLocale:Ljava/util/Locale;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputuserCurrency(Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;Ljava/util/Currency;)V
    .locals 0

    iput-object p1, p0, Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;->userCurrency:Ljava/util/Currency;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputuserLocale(Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;Ljava/util/Locale;)V
    .locals 0

    iput-object p1, p0, Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;->userLocale:Ljava/util/Locale;

    return-void
.end method

.method static bridge synthetic -$$Nest$mcreateReceipt(Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;Lcom/amazon/device/iap/model/PurchaseResponse;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;->createReceipt(Lcom/amazon/device/iap/model/PurchaseResponse;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mcreateReceipt(Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;->createReceipt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/mojang/minecraftpe/store/StoreListener;)V
    .locals 1

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;->mProductIdRequestMapping:Ljava/util/Map;

    .line 39
    const-string v0, ".subscription"

    iput-object v0, p0, Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;->subscriptionKey:Ljava/lang/String;

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;->userLocale:Ljava/util/Locale;

    .line 41
    iput-object v0, p0, Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;->userCurrency:Ljava/util/Currency;

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;->mPlatformPurchaseId:Ljava/lang/String;

    .line 45
    new-instance v0, Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore$1;

    invoke-direct {v0, p0}, Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore$1;-><init>(Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;)V

    iput-object v0, p0, Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;->mPurchasingListener:Lcom/amazon/device/iap/PurchasingListener;

    .line 127
    iput-object p2, p0, Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;->mListener:Lcom/mojang/minecraftpe/store/StoreListener;

    .line 128
    invoke-static {p1, v0}, Lcom/amazon/device/iap/PurchasingService;->registerListener(Landroid/content/Context;Lcom/amazon/device/iap/PurchasingListener;)V

    const/4 p1, 0x1

    .line 129
    invoke-interface {p2, p1}, Lcom/mojang/minecraftpe/store/StoreListener;->onStoreInitialized(Z)V

    return-void
.end method

.method private createReceipt(Lcom/amazon/device/iap/model/PurchaseResponse;)Ljava/lang/String;
    .locals 1

    .line 222
    invoke-virtual {p1}, Lcom/amazon/device/iap/model/PurchaseResponse;->getUserData()Lcom/amazon/device/iap/model/UserData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/iap/model/UserData;->getUserId()Ljava/lang/String;

    move-result-object v0

    .line 223
    invoke-virtual {p1}, Lcom/amazon/device/iap/model/PurchaseResponse;->getReceipt()Lcom/amazon/device/iap/model/Receipt;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/device/iap/model/Receipt;->getReceiptId()Ljava/lang/String;

    move-result-object p1

    .line 224
    invoke-direct {p0, v0, p1}, Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;->createReceipt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private createReceipt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 210
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 212
    :try_start_0
    const-string/jumbo v1, "userId"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 213
    const-string p1, "receiptId"

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 218
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 215
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method public acknowledgePurchase(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 193
    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 194
    const-string p1, "receiptId"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 195
    sget-object p2, Lcom/amazon/device/iap/model/FulfillmentResult;->FULFILLED:Lcom/amazon/device/iap/model/FulfillmentResult;

    invoke-static {p1, p2}, Lcom/amazon/device/iap/PurchasingService;->notifyFulfillment(Ljava/lang/String;Lcom/amazon/device/iap/model/FulfillmentResult;)V

    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public destructor()V
    .locals 0

    return-void
.end method

.method public getExtraLicenseData()Lcom/mojang/minecraftpe/store/ExtraLicenseResponseData;
    .locals 8

    .line 159
    new-instance v7, Lcom/mojang/minecraftpe/store/ExtraLicenseResponseData;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v1, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/mojang/minecraftpe/store/ExtraLicenseResponseData;-><init>(JJJ)V

    return-object v7
.end method

.method public getProductSkuPrefix()Ljava/lang/String;
    .locals 1

    .line 139
    const-string v0, ""

    return-object v0
.end method

.method public getRealmsSkuPrefix()Ljava/lang/String;
    .locals 1

    .line 144
    const-string v0, ""

    return-object v0
.end method

.method public getStoreId()Ljava/lang/String;
    .locals 1

    .line 134
    const-string v0, "android.amazonappstore"

    return-object v0
.end method

.method public hasVerifiedLicense()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public purchase(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    .line 182
    invoke-static {p1}, Lcom/amazon/device/iap/PurchasingService;->purchase(Ljava/lang/String;)Lcom/amazon/device/iap/model/RequestId;

    move-result-object p2

    .line 183
    iget-object p3, p0, Lcom/mojang/minecraftpe/store/amazonappstore/AmazonAppStore;->mProductIdRequestMapping:Ljava/util/Map;

    invoke-interface {p3, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public purchaseGame()V
    .locals 0

    return-void
.end method

.method public queryProducts([Ljava/lang/String;)V
    .locals 4

    .line 164
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 166
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 167
    aget-object v2, p1, v1

    const-string v3, ".subscription"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 168
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, p1, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".child"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    goto :goto_1

    .line 170
    :cond_0
    aget-object v2, p1, v1

    aput-object v2, v0, v1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 174
    :cond_1
    invoke-static {}, Lcom/amazon/device/iap/PurchasingService;->getUserData()Lcom/amazon/device/iap/model/RequestId;

    .line 176
    new-instance p1, Ljava/util/HashSet;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 177
    invoke-static {p1}, Lcom/amazon/device/iap/PurchasingService;->getProductData(Ljava/util/Set;)Lcom/amazon/device/iap/model/RequestId;

    return-void
.end method

.method public queryPurchases()V
    .locals 1

    const/4 v0, 0x1

    .line 202
    invoke-static {v0}, Lcom/amazon/device/iap/PurchasingService;->getPurchaseUpdates(Z)Lcom/amazon/device/iap/model/RequestId;

    return-void
.end method

.method public receivedLicenseResponse()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
