.class public Ljp/co/neilo/inapppurchase/ProductsRequester;
.super Ljava/lang/Object;
.source "ProductsRequester.java"


# instance fields
.field private m_Busy:Z

.field private m_LastError:I

.field private m_LastResult:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/SkuDetails;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Ljp/co/neilo/inapppurchase/ProductsRequester;->m_Busy:Z

    const/4 v1, 0x0

    .line 27
    iput-object v1, p0, Ljp/co/neilo/inapppurchase/ProductsRequester;->m_LastResult:Ljava/util/List;

    .line 28
    iput v0, p0, Ljp/co/neilo/inapppurchase/ProductsRequester;->m_LastError:I

    return-void
.end method

.method static synthetic access$002(Ljp/co/neilo/inapppurchase/ProductsRequester;I)I
    .locals 0

    .line 18
    iput p1, p0, Ljp/co/neilo/inapppurchase/ProductsRequester;->m_LastError:I

    return p1
.end method

.method static synthetic access$102(Ljp/co/neilo/inapppurchase/ProductsRequester;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 18
    iput-object p1, p0, Ljp/co/neilo/inapppurchase/ProductsRequester;->m_LastResult:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$202(Ljp/co/neilo/inapppurchase/ProductsRequester;Z)Z
    .locals 0

    .line 18
    iput-boolean p1, p0, Ljp/co/neilo/inapppurchase/ProductsRequester;->m_Busy:Z

    return p1
.end method


# virtual methods
.method public GetProductSkuDetails(Ljava/lang/String;)Lcom/android/billingclient/api/SkuDetails;
    .locals 3

    .line 86
    iget-object v0, p0, Ljp/co/neilo/inapppurchase/ProductsRequester;->m_LastResult:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/billingclient/api/SkuDetails;

    .line 88
    invoke-virtual {v1}, Lcom/android/billingclient/api/SkuDetails;->getSku()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public GetProductsJson()Ljava/lang/String;
    .locals 8

    .line 97
    iget-boolean v0, p0, Ljp/co/neilo/inapppurchase/ProductsRequester;->m_Busy:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 101
    :cond_0
    iget-object v0, p0, Ljp/co/neilo/inapppurchase/ProductsRequester;->m_LastResult:Ljava/util/List;

    if-nez v0, :cond_1

    return-object v1

    .line 103
    :cond_1
    iget v0, p0, Ljp/co/neilo/inapppurchase/ProductsRequester;->m_LastError:I

    if-eqz v0, :cond_2

    return-object v1

    .line 107
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{ \"m_ValidProducts\": ["

    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    .line 113
    iget-object v2, p0, Ljp/co/neilo/inapppurchase/ProductsRequester;->m_LastResult:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/billingclient/api/SkuDetails;

    if-nez v1, :cond_3

    const-string v1, ","

    .line 116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const/4 v1, 0x0

    const-string v4, "{ \"m_ProductId\":\""

    .line 119
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {v3}, Lcom/android/billingclient/api/SkuDetails;->getSku()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\", \"m_PriceValue\":"

    .line 121
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {v3}, Lcom/android/billingclient/api/SkuDetails;->getPriceAmountMicros()J

    move-result-wide v4

    long-to-double v4, v4

    const-wide v6, 0x412e848000000000L

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v4, ", \"m_PriceLocale\":\""

    .line 123
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    invoke-virtual {v3}, Lcom/android/billingclient/api/SkuDetails;->getPrice()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\", \"m_Available\":"

    .line 125
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "true"

    .line 126
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", \"m_CurrencyCode\":\""

    .line 127
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {v3}, Lcom/android/billingclient/api/SkuDetails;->getPriceCurrencyCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\" }"

    .line 129
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_4
    const-string v1, "], \"m_InvalidProducts\" : ["

    .line 132
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] }"

    .line 133
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public IsBusy()Z
    .locals 1

    .line 33
    iget-boolean v0, p0, Ljp/co/neilo/inapppurchase/ProductsRequester;->m_Busy:Z

    return v0
.end method

.method public UpdateProductDetail(Ljava/util/List;)Ljp/co/neilo/inapppurchase/IAPResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljp/co/neilo/inapppurchase/IAPResult;"
        }
    .end annotation

    .line 39
    iget-boolean v0, p0, Ljp/co/neilo/inapppurchase/ProductsRequester;->m_Busy:Z

    if-eqz v0, :cond_0

    .line 40
    sget-object p1, Ljp/co/neilo/inapppurchase/IAPResult;->Busy:Ljp/co/neilo/inapppurchase/IAPResult;

    return-object p1

    :cond_0
    const/4 v0, 0x1

    .line 43
    iput-boolean v0, p0, Ljp/co/neilo/inapppurchase/ProductsRequester;->m_Busy:Z

    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Ljp/co/neilo/inapppurchase/ProductsRequester;->m_LastResult:Ljava/util/List;

    const/4 v0, 0x0

    .line 45
    iput v0, p0, Ljp/co/neilo/inapppurchase/ProductsRequester;->m_LastError:I

    .line 48
    new-instance v0, Ljp/co/neilo/inapppurchase/ProductsRequester$1;

    invoke-direct {v0, p0, p1}, Ljp/co/neilo/inapppurchase/ProductsRequester$1;-><init>(Ljp/co/neilo/inapppurchase/ProductsRequester;Ljava/util/List;)V

    invoke-static {v0}, Ljp/co/neilo/inapppurchase/InAppPurchase;->ConnectAsyncAndRun(Ljp/co/neilo/inapppurchase/InAppPurchase$BillingClientConnectAction;)V

    .line 81
    sget-object p1, Ljp/co/neilo/inapppurchase/IAPResult;->Success:Ljp/co/neilo/inapppurchase/IAPResult;

    return-object p1
.end method
