.class Ljp/co/neilo/inapppurchase/PurchaseRequester$QueryPurchaseAsyncWorker;
.super Ljava/lang/Object;
.source "PurchaseRequester.java"

# interfaces
.implements Lcom/android/billingclient/api/PurchasesResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljp/co/neilo/inapppurchase/PurchaseRequester;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryPurchaseAsyncWorker"
.end annotation


# static fields
.field public static final STATE_COMPLETED:I = 0x3

.field public static final STATE_FAILED:I = 0x4

.field public static final STATE_PROCESSING_INAPP:I = 0x1

.field public static final STATE_WAITING:I


# instance fields
.field private m_Client:Lcom/android/billingclient/api/BillingClient;

.field private m_InappPurchaseList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;"
        }
    .end annotation
.end field

.field private m_State:I

.field private final m_StateLock:Ljava/lang/Object;

.field final synthetic this$0:Ljp/co/neilo/inapppurchase/PurchaseRequester;


# direct methods
.method public constructor <init>(Ljp/co/neilo/inapppurchase/PurchaseRequester;)V
    .locals 0

    .line 121
    iput-object p1, p0, Ljp/co/neilo/inapppurchase/PurchaseRequester$QueryPurchaseAsyncWorker;->this$0:Ljp/co/neilo/inapppurchase/PurchaseRequester;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 122
    iput p1, p0, Ljp/co/neilo/inapppurchase/PurchaseRequester$QueryPurchaseAsyncWorker;->m_State:I

    .line 123
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljp/co/neilo/inapppurchase/PurchaseRequester$QueryPurchaseAsyncWorker;->m_StateLock:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 124
    iput-object p1, p0, Ljp/co/neilo/inapppurchase/PurchaseRequester$QueryPurchaseAsyncWorker;->m_Client:Lcom/android/billingclient/api/BillingClient;

    .line 125
    iput-object p1, p0, Ljp/co/neilo/inapppurchase/PurchaseRequester$QueryPurchaseAsyncWorker;->m_InappPurchaseList:Ljava/util/List;

    return-void
.end method

.method private SafeSetState(I)V
    .locals 1

    .line 148
    iget-object v0, p0, Ljp/co/neilo/inapppurchase/PurchaseRequester$QueryPurchaseAsyncWorker;->m_StateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 150
    :try_start_0
    iput p1, p0, Ljp/co/neilo/inapppurchase/PurchaseRequester$QueryPurchaseAsyncWorker;->m_State:I

    .line 151
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private StartQueryPurchasesAsyncInternal(Ljava/lang/String;)V
    .locals 1

    .line 196
    invoke-static {}, Lcom/android/billingclient/api/QueryPurchasesParams;->newBuilder()Lcom/android/billingclient/api/QueryPurchasesParams$Builder;

    move-result-object v0

    .line 197
    invoke-virtual {v0, p1}, Lcom/android/billingclient/api/QueryPurchasesParams$Builder;->setProductType(Ljava/lang/String;)Lcom/android/billingclient/api/QueryPurchasesParams$Builder;

    move-result-object p1

    .line 198
    invoke-virtual {p1}, Lcom/android/billingclient/api/QueryPurchasesParams$Builder;->build()Lcom/android/billingclient/api/QueryPurchasesParams;

    move-result-object p1

    .line 199
    iget-object v0, p0, Ljp/co/neilo/inapppurchase/PurchaseRequester$QueryPurchaseAsyncWorker;->m_Client:Lcom/android/billingclient/api/BillingClient;

    invoke-virtual {v0, p1, p0}, Lcom/android/billingclient/api/BillingClient;->queryPurchasesAsync(Lcom/android/billingclient/api/QueryPurchasesParams;Lcom/android/billingclient/api/PurchasesResponseListener;)V

    return-void
.end method


# virtual methods
.method public GetInappPurchaseList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;"
        }
    .end annotation

    .line 160
    iget-object v0, p0, Ljp/co/neilo/inapppurchase/PurchaseRequester$QueryPurchaseAsyncWorker;->m_InappPurchaseList:Ljava/util/List;

    return-object v0
.end method

.method public RequestQueryPurchasesAsync(Lcom/android/billingclient/api/BillingClient;)V
    .locals 0

    .line 182
    iput-object p1, p0, Ljp/co/neilo/inapppurchase/PurchaseRequester$QueryPurchaseAsyncWorker;->m_Client:Lcom/android/billingclient/api/BillingClient;

    const/4 p1, 0x0

    .line 183
    iput-object p1, p0, Ljp/co/neilo/inapppurchase/PurchaseRequester$QueryPurchaseAsyncWorker;->m_InappPurchaseList:Ljava/util/List;

    const-string p1, "inapp"

    .line 186
    invoke-direct {p0, p1}, Ljp/co/neilo/inapppurchase/PurchaseRequester$QueryPurchaseAsyncWorker;->StartQueryPurchasesAsyncInternal(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 187
    invoke-direct {p0, p1}, Ljp/co/neilo/inapppurchase/PurchaseRequester$QueryPurchaseAsyncWorker;->SafeSetState(I)V

    return-void
.end method

.method public Reset()V
    .locals 1

    const/4 v0, 0x0

    .line 169
    iput-object v0, p0, Ljp/co/neilo/inapppurchase/PurchaseRequester$QueryPurchaseAsyncWorker;->m_Client:Lcom/android/billingclient/api/BillingClient;

    .line 170
    iput-object v0, p0, Ljp/co/neilo/inapppurchase/PurchaseRequester$QueryPurchaseAsyncWorker;->m_InappPurchaseList:Ljava/util/List;

    const/4 v0, 0x0

    .line 171
    invoke-direct {p0, v0}, Ljp/co/neilo/inapppurchase/PurchaseRequester$QueryPurchaseAsyncWorker;->SafeSetState(I)V

    return-void
.end method

.method public SafeGetState()I
    .locals 2

    .line 135
    iget-object v0, p0, Ljp/co/neilo/inapppurchase/PurchaseRequester$QueryPurchaseAsyncWorker;->m_StateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 137
    :try_start_0
    iget v1, p0, Ljp/co/neilo/inapppurchase/PurchaseRequester$QueryPurchaseAsyncWorker;->m_State:I

    .line 138
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onQueryPurchasesResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/BillingResult;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;)V"
        }
    .end annotation

    .line 211
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p1

    const/4 v0, 0x4

    if-nez p1, :cond_1

    .line 213
    invoke-virtual {p0}, Ljp/co/neilo/inapppurchase/PurchaseRequester$QueryPurchaseAsyncWorker;->SafeGetState()I

    move-result p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    .line 223
    invoke-direct {p0, v0}, Ljp/co/neilo/inapppurchase/PurchaseRequester$QueryPurchaseAsyncWorker;->SafeSetState(I)V

    goto :goto_0

    .line 217
    :cond_0
    iput-object p2, p0, Ljp/co/neilo/inapppurchase/PurchaseRequester$QueryPurchaseAsyncWorker;->m_InappPurchaseList:Ljava/util/List;

    const/4 p1, 0x3

    .line 218
    invoke-direct {p0, p1}, Ljp/co/neilo/inapppurchase/PurchaseRequester$QueryPurchaseAsyncWorker;->SafeSetState(I)V

    goto :goto_0

    .line 230
    :cond_1
    invoke-direct {p0, v0}, Ljp/co/neilo/inapppurchase/PurchaseRequester$QueryPurchaseAsyncWorker;->SafeSetState(I)V

    :goto_0
    return-void
.end method
