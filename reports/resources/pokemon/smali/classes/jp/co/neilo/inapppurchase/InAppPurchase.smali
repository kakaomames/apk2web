.class public Ljp/co/neilo/inapppurchase/InAppPurchase;
.super Ljava/lang/Object;
.source "InAppPurchase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljp/co/neilo/inapppurchase/InAppPurchase$BillingClientConnectAction;,
        Ljp/co/neilo/inapppurchase/InAppPurchase$ConnectState;
    }
.end annotation


# static fields
.field private static m_BillingClient:Lcom/android/billingclient/api/BillingClient;

.field private static m_ConnectState:Ljp/co/neilo/inapppurchase/InAppPurchase$ConnectState;

.field private static m_InitializeResult:Ljp/co/neilo/inapppurchase/IAPResult;

.field private static m_OnConnectActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljp/co/neilo/inapppurchase/InAppPurchase$BillingClientConnectAction;",
            ">;"
        }
    .end annotation
.end field

.field private static m_ProductsRequester:Ljp/co/neilo/inapppurchase/ProductsRequester;

.field private static m_PurchaseRequester:Ljp/co/neilo/inapppurchase/PurchaseRequester;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CheckConnected_GetBillingClient()Lcom/android/billingclient/api/BillingClient;
    .locals 2

    .line 95
    sget-object v0, Ljp/co/neilo/inapppurchase/InAppPurchase;->m_ConnectState:Ljp/co/neilo/inapppurchase/InAppPurchase$ConnectState;

    sget-object v1, Ljp/co/neilo/inapppurchase/InAppPurchase$ConnectState;->Connected:Ljp/co/neilo/inapppurchase/InAppPurchase$ConnectState;

    if-ne v0, v1, :cond_0

    .line 96
    sget-object v0, Ljp/co/neilo/inapppurchase/InAppPurchase;->m_BillingClient:Lcom/android/billingclient/api/BillingClient;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static ConnectAsyncAndRun(Ljp/co/neilo/inapppurchase/InAppPurchase$BillingClientConnectAction;)V
    .locals 2

    .line 109
    sget-object v0, Ljp/co/neilo/inapppurchase/InAppPurchase$2;->$SwitchMap$jp$co$neilo$inapppurchase$InAppPurchase$ConnectState:[I

    sget-object v1, Ljp/co/neilo/inapppurchase/InAppPurchase;->m_ConnectState:Ljp/co/neilo/inapppurchase/InAppPurchase$ConnectState;

    invoke-virtual {v1}, Ljp/co/neilo/inapppurchase/InAppPurchase$ConnectState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_1

    .line 127
    sget-object v0, Ljp/co/neilo/inapppurchase/InAppPurchase;->m_OnConnectActions:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    :cond_1
    sget-object p0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-static {p0}, Lcom/android/billingclient/api/BillingClient;->newBuilder(Landroid/content/Context;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object p0

    sget-object v0, Ljp/co/neilo/inapppurchase/InAppPurchase;->m_PurchaseRequester:Ljp/co/neilo/inapppurchase/PurchaseRequester;

    .line 131
    invoke-virtual {p0, v0}, Lcom/android/billingclient/api/BillingClient$Builder;->setListener(Lcom/android/billingclient/api/PurchasesUpdatedListener;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object p0

    .line 132
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingClient$Builder;->enablePendingPurchases()Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object p0

    .line 133
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingClient$Builder;->build()Lcom/android/billingclient/api/BillingClient;

    move-result-object p0

    sput-object p0, Ljp/co/neilo/inapppurchase/InAppPurchase;->m_BillingClient:Lcom/android/billingclient/api/BillingClient;

    .line 136
    sget-object p0, Ljp/co/neilo/inapppurchase/InAppPurchase$ConnectState;->Connecting:Ljp/co/neilo/inapppurchase/InAppPurchase$ConnectState;

    sput-object p0, Ljp/co/neilo/inapppurchase/InAppPurchase;->m_ConnectState:Ljp/co/neilo/inapppurchase/InAppPurchase$ConnectState;

    .line 137
    sget-object p0, Ljp/co/neilo/inapppurchase/InAppPurchase;->m_BillingClient:Lcom/android/billingclient/api/BillingClient;

    new-instance v0, Ljp/co/neilo/inapppurchase/InAppPurchase$1;

    invoke-direct {v0}, Ljp/co/neilo/inapppurchase/InAppPurchase$1;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/billingclient/api/BillingClient;->startConnection(Lcom/android/billingclient/api/BillingClientStateListener;)V

    goto :goto_0

    :cond_2
    if-eqz p0, :cond_4

    .line 120
    sget-object v0, Ljp/co/neilo/inapppurchase/InAppPurchase;->m_OnConnectActions:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    if-eqz p0, :cond_4

    .line 114
    sget-object v0, Ljp/co/neilo/inapppurchase/InAppPurchase;->m_BillingClient:Lcom/android/billingclient/api/BillingClient;

    invoke-interface {p0, v0}, Ljp/co/neilo/inapppurchase/InAppPurchase$BillingClientConnectAction;->OnConnectedAction(Lcom/android/billingclient/api/BillingClient;)V

    :cond_4
    :goto_0
    return-void
.end method

.method static EndServiceConnection()V
    .locals 2

    .line 85
    sget-object v0, Ljp/co/neilo/inapppurchase/InAppPurchase;->m_ConnectState:Ljp/co/neilo/inapppurchase/InAppPurchase$ConnectState;

    sget-object v1, Ljp/co/neilo/inapppurchase/InAppPurchase$ConnectState;->Disconnected:Ljp/co/neilo/inapppurchase/InAppPurchase$ConnectState;

    if-eq v0, v1, :cond_0

    .line 87
    sget-object v0, Ljp/co/neilo/inapppurchase/InAppPurchase$ConnectState;->Disconnected:Ljp/co/neilo/inapppurchase/InAppPurchase$ConnectState;

    sput-object v0, Ljp/co/neilo/inapppurchase/InAppPurchase;->m_ConnectState:Ljp/co/neilo/inapppurchase/InAppPurchase$ConnectState;

    .line 88
    sget-object v0, Ljp/co/neilo/inapppurchase/InAppPurchase;->m_BillingClient:Lcom/android/billingclient/api/BillingClient;

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingClient;->endConnection()V

    const/4 v0, 0x0

    .line 89
    sput-object v0, Ljp/co/neilo/inapppurchase/InAppPurchase;->m_BillingClient:Lcom/android/billingclient/api/BillingClient;

    :cond_0
    return-void
.end method

.method static FinishPurchase(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 237
    sget-object v0, Ljp/co/neilo/inapppurchase/InAppPurchase;->m_PurchaseRequester:Ljp/co/neilo/inapppurchase/PurchaseRequester;

    invoke-virtual {v0, p0, p1}, Ljp/co/neilo/inapppurchase/PurchaseRequester;->FinishPurchase(Ljava/lang/String;Ljava/lang/String;)Ljp/co/neilo/inapppurchase/IAPResult;

    move-result-object p0

    invoke-virtual {p0}, Ljp/co/neilo/inapppurchase/IAPResult;->GetValue()I

    move-result p0

    return p0
.end method

.method static GetInitializeResult()I
    .locals 1

    .line 76
    sget-object v0, Ljp/co/neilo/inapppurchase/InAppPurchase;->m_InitializeResult:Ljp/co/neilo/inapppurchase/IAPResult;

    invoke-virtual {v0}, Ljp/co/neilo/inapppurchase/IAPResult;->GetValue()I

    move-result v0

    return v0
.end method

.method static GetProducts()Ljava/lang/String;
    .locals 1

    .line 212
    sget-object v0, Ljp/co/neilo/inapppurchase/InAppPurchase;->m_ProductsRequester:Ljp/co/neilo/inapppurchase/ProductsRequester;

    invoke-virtual {v0}, Ljp/co/neilo/inapppurchase/ProductsRequester;->GetProductsJson()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static GetPurchaseResults()Ljava/lang/String;
    .locals 1

    .line 242
    sget-object v0, Ljp/co/neilo/inapppurchase/InAppPurchase;->m_PurchaseRequester:Ljp/co/neilo/inapppurchase/PurchaseRequester;

    invoke-virtual {v0}, Ljp/co/neilo/inapppurchase/PurchaseRequester;->GetPurchaseResults()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static Initialize()I
    .locals 2

    .line 50
    sget-object v0, Ljp/co/neilo/inapppurchase/InAppPurchase;->m_InitializeResult:Ljp/co/neilo/inapppurchase/IAPResult;

    sget-object v1, Ljp/co/neilo/inapppurchase/IAPResult;->Success:Ljp/co/neilo/inapppurchase/IAPResult;

    if-ne v0, v1, :cond_0

    .line 52
    sget-object v0, Ljp/co/neilo/inapppurchase/InAppPurchase;->m_PurchaseRequester:Ljp/co/neilo/inapppurchase/PurchaseRequester;

    invoke-virtual {v0}, Ljp/co/neilo/inapppurchase/PurchaseRequester;->SetForceTryQuery()V

    .line 53
    sget-object v0, Ljp/co/neilo/inapppurchase/IAPResult;->Success:Ljp/co/neilo/inapppurchase/IAPResult;

    invoke-virtual {v0}, Ljp/co/neilo/inapppurchase/IAPResult;->GetValue()I

    move-result v0

    return v0

    .line 56
    :cond_0
    sget-object v0, Ljp/co/neilo/inapppurchase/InAppPurchase;->m_InitializeResult:Ljp/co/neilo/inapppurchase/IAPResult;

    sget-object v1, Ljp/co/neilo/inapppurchase/IAPResult;->Busy:Ljp/co/neilo/inapppurchase/IAPResult;

    if-ne v0, v1, :cond_1

    .line 57
    sget-object v0, Ljp/co/neilo/inapppurchase/IAPResult;->Failed:Ljp/co/neilo/inapppurchase/IAPResult;

    invoke-virtual {v0}, Ljp/co/neilo/inapppurchase/IAPResult;->GetValue()I

    move-result v0

    return v0

    .line 59
    :cond_1
    new-instance v0, Ljp/co/neilo/inapppurchase/ProductsRequester;

    invoke-direct {v0}, Ljp/co/neilo/inapppurchase/ProductsRequester;-><init>()V

    sput-object v0, Ljp/co/neilo/inapppurchase/InAppPurchase;->m_ProductsRequester:Ljp/co/neilo/inapppurchase/ProductsRequester;

    .line 60
    new-instance v0, Ljp/co/neilo/inapppurchase/PurchaseRequester;

    invoke-direct {v0}, Ljp/co/neilo/inapppurchase/PurchaseRequester;-><init>()V

    sput-object v0, Ljp/co/neilo/inapppurchase/InAppPurchase;->m_PurchaseRequester:Ljp/co/neilo/inapppurchase/PurchaseRequester;

    .line 63
    sget-object v0, Ljp/co/neilo/inapppurchase/IAPResult;->Success:Ljp/co/neilo/inapppurchase/IAPResult;

    sput-object v0, Ljp/co/neilo/inapppurchase/InAppPurchase;->m_InitializeResult:Ljp/co/neilo/inapppurchase/IAPResult;

    .line 64
    sget-object v0, Ljp/co/neilo/inapppurchase/InAppPurchase$ConnectState;->Disconnected:Ljp/co/neilo/inapppurchase/InAppPurchase$ConnectState;

    sput-object v0, Ljp/co/neilo/inapppurchase/InAppPurchase;->m_ConnectState:Ljp/co/neilo/inapppurchase/InAppPurchase$ConnectState;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Ljp/co/neilo/inapppurchase/InAppPurchase;->m_OnConnectActions:Ljava/util/List;

    .line 67
    sget-object v0, Ljp/co/neilo/inapppurchase/IAPResult;->Success:Ljp/co/neilo/inapppurchase/IAPResult;

    invoke-virtual {v0}, Ljp/co/neilo/inapppurchase/IAPResult;->GetValue()I

    move-result v0

    return v0
.end method

.method static IsUpdateProductsBusy()Z
    .locals 1

    .line 203
    sget-object v0, Ljp/co/neilo/inapppurchase/InAppPurchase;->m_ProductsRequester:Ljp/co/neilo/inapppurchase/ProductsRequester;

    invoke-virtual {v0}, Ljp/co/neilo/inapppurchase/ProductsRequester;->IsBusy()Z

    move-result v0

    return v0
.end method

.method public static RequestConnectBillingClient()V
    .locals 2

    .line 103
    sget-object v0, Ljp/co/neilo/inapppurchase/InAppPurchase;->m_ConnectState:Ljp/co/neilo/inapppurchase/InAppPurchase$ConnectState;

    sget-object v1, Ljp/co/neilo/inapppurchase/InAppPurchase$ConnectState;->Disconnected:Ljp/co/neilo/inapppurchase/InAppPurchase$ConnectState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 104
    invoke-static {v0}, Ljp/co/neilo/inapppurchase/InAppPurchase;->ConnectAsyncAndRun(Ljp/co/neilo/inapppurchase/InAppPurchase$BillingClientConnectAction;)V

    :cond_0
    return-void
.end method

.method static StartPurchase(Ljava/lang/String;)I
    .locals 1

    .line 222
    sget-object v0, Ljp/co/neilo/inapppurchase/InAppPurchase;->m_ProductsRequester:Ljp/co/neilo/inapppurchase/ProductsRequester;

    invoke-virtual {v0, p0}, Ljp/co/neilo/inapppurchase/ProductsRequester;->GetProductSkuDetails(Ljava/lang/String;)Lcom/android/billingclient/api/SkuDetails;

    move-result-object p0

    if-nez p0, :cond_0

    .line 224
    sget-object p0, Ljp/co/neilo/inapppurchase/IAPResult;->InvalidArgument:Ljp/co/neilo/inapppurchase/IAPResult;

    invoke-virtual {p0}, Ljp/co/neilo/inapppurchase/IAPResult;->GetValue()I

    move-result p0

    return p0

    .line 226
    :cond_0
    sget-object v0, Ljp/co/neilo/inapppurchase/InAppPurchase;->m_PurchaseRequester:Ljp/co/neilo/inapppurchase/PurchaseRequester;

    invoke-virtual {v0, p0}, Ljp/co/neilo/inapppurchase/PurchaseRequester;->RequestPurchase(Lcom/android/billingclient/api/SkuDetails;)Ljp/co/neilo/inapppurchase/IAPResult;

    move-result-object p0

    invoke-virtual {p0}, Ljp/co/neilo/inapppurchase/IAPResult;->GetValue()I

    move-result p0

    return p0
.end method

.method static UpdateProductDetail([Ljava/lang/String;)I
    .locals 4

    .line 183
    sget-object v0, Ljp/co/neilo/inapppurchase/InAppPurchase;->m_ProductsRequester:Ljp/co/neilo/inapppurchase/ProductsRequester;

    invoke-virtual {v0}, Ljp/co/neilo/inapppurchase/ProductsRequester;->IsBusy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    sget-object p0, Ljp/co/neilo/inapppurchase/IAPResult;->Busy:Ljp/co/neilo/inapppurchase/IAPResult;

    invoke-virtual {p0}, Ljp/co/neilo/inapppurchase/IAPResult;->GetValue()I

    move-result p0

    return p0

    .line 187
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 188
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    .line 190
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 194
    :cond_1
    sget-object p0, Ljp/co/neilo/inapppurchase/InAppPurchase;->m_ProductsRequester:Ljp/co/neilo/inapppurchase/ProductsRequester;

    invoke-virtual {p0, v0}, Ljp/co/neilo/inapppurchase/ProductsRequester;->UpdateProductDetail(Ljava/util/List;)Ljp/co/neilo/inapppurchase/IAPResult;

    move-result-object p0

    invoke-virtual {p0}, Ljp/co/neilo/inapppurchase/IAPResult;->GetValue()I

    move-result p0

    return p0
.end method

.method static synthetic access$000()Ljava/util/List;
    .locals 1

    .line 21
    sget-object v0, Ljp/co/neilo/inapppurchase/InAppPurchase;->m_OnConnectActions:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$002(Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 21
    sput-object p0, Ljp/co/neilo/inapppurchase/InAppPurchase;->m_OnConnectActions:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$102(Ljp/co/neilo/inapppurchase/InAppPurchase$ConnectState;)Ljp/co/neilo/inapppurchase/InAppPurchase$ConnectState;
    .locals 0

    .line 21
    sput-object p0, Ljp/co/neilo/inapppurchase/InAppPurchase;->m_ConnectState:Ljp/co/neilo/inapppurchase/InAppPurchase$ConnectState;

    return-object p0
.end method

.method static synthetic access$200()Lcom/android/billingclient/api/BillingClient;
    .locals 1

    .line 21
    sget-object v0, Ljp/co/neilo/inapppurchase/InAppPurchase;->m_BillingClient:Lcom/android/billingclient/api/BillingClient;

    return-object v0
.end method
