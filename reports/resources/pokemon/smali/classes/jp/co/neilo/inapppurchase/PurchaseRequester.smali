.class public Ljp/co/neilo/inapppurchase/PurchaseRequester;
.super Ljava/lang/Object;
.source "PurchaseRequester.java"

# interfaces
.implements Lcom/android/billingclient/api/PurchasesUpdatedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljp/co/neilo/inapppurchase/PurchaseRequester$QueryPurchaseAsyncWorker;
    }
.end annotation


# instance fields
.field private m_AlreadyOwnedCheckWorker:Ljp/co/neilo/inapppurchase/PurchaseRequester$QueryPurchaseAsyncWorker;

.field private m_CallbackLog:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m_CheckAlreadyOwned:Z

.field private m_CurrentProductId:Ljava/lang/String;

.field private m_ForceTryQuery:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 240
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljp/co/neilo/inapppurchase/PurchaseRequester;->m_CallbackLog:Ljava/util/List;

    const/4 v0, 0x0

    .line 241
    iput-boolean v0, p0, Ljp/co/neilo/inapppurchase/PurchaseRequester;->m_CheckAlreadyOwned:Z

    .line 242
    iput-boolean v0, p0, Ljp/co/neilo/inapppurchase/PurchaseRequester;->m_ForceTryQuery:Z

    .line 243
    new-instance v0, Ljp/co/neilo/inapppurchase/PurchaseRequester$QueryPurchaseAsyncWorker;

    invoke-direct {v0, p0}, Ljp/co/neilo/inapppurchase/PurchaseRequester$QueryPurchaseAsyncWorker;-><init>(Ljp/co/neilo/inapppurchase/PurchaseRequester;)V

    iput-object v0, p0, Ljp/co/neilo/inapppurchase/PurchaseRequester;->m_AlreadyOwnedCheckWorker:Ljp/co/neilo/inapppurchase/PurchaseRequester$QueryPurchaseAsyncWorker;

    const/4 v0, 0x0

    .line 244
    iput-object v0, p0, Ljp/co/neilo/inapppurchase/PurchaseRequester;->m_CurrentProductId:Ljava/lang/String;

    return-void
.end method

.method private CreatePurchaseFailedLog(Lcom/android/billingclient/api/Purchase;I)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    if-eqz p1, :cond_0

    .line 653
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getPurchaseToken()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-eqz p1, :cond_1

    .line 654
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getSkus()Ljava/util/ArrayList;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    .line 655
    :cond_1
    invoke-direct {p0, v0, v1, p2}, Ljp/co/neilo/inapppurchase/PurchaseRequester;->CreatePurchaseFailedLog(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private CreatePurchaseFailedLog(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v0

    .line 642
    :goto_0
    invoke-direct {p0, p1, v0, p2}, Ljp/co/neilo/inapppurchase/PurchaseRequester;->CreatePurchaseFailedLog(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private CreatePurchaseFailedLog(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    .line 669
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 670
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object p3

    const/4 v0, 0x2

    invoke-static {p3, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p3

    .line 673
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{ \"m_State\":"

    .line 674
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 675
    sget-object v1, Ljp/co/neilo/inapppurchase/IAPPurchaseState;->Failed:Ljp/co/neilo/inapppurchase/IAPPurchaseState;

    invoke-virtual {v1}, Ljp/co/neilo/inapppurchase/IAPPurchaseState;->GetValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", \"m_TransactionId\":\""

    .line 676
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 677
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\", \"m_ProductId\":\""

    .line 678
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 679
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\", \"m_Additional\":\""

    .line 680
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 681
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" }"

    .line 682
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 683
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private CreatePurchaseFinishFailedLog(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 716
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{ \"m_State\":"

    .line 717
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 718
    sget-object v1, Ljp/co/neilo/inapppurchase/IAPPurchaseState;->RemoveFailed:Ljp/co/neilo/inapppurchase/IAPPurchaseState;

    invoke-virtual {v1}, Ljp/co/neilo/inapppurchase/IAPPurchaseState;->GetValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", \"m_TransactionId\":\""

    .line 719
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 720
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\", \"m_ProductId\":\""

    .line 721
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 722
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" }"

    .line 723
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 725
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private CreatePurchaseFinishedLog(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 695
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{ \"m_State\":"

    .line 696
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 697
    sget-object v1, Ljp/co/neilo/inapppurchase/IAPPurchaseState;->Removed:Ljp/co/neilo/inapppurchase/IAPPurchaseState;

    invoke-virtual {v1}, Ljp/co/neilo/inapppurchase/IAPPurchaseState;->GetValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", \"m_TransactionId\":\""

    .line 698
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 699
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\", \"m_ProductId\":\""

    .line 700
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 701
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" }"

    .line 702
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 704
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private CreatePurchaseSuccessLog(Lcom/android/billingclient/api/Purchase;I)Ljava/lang/String;
    .locals 4

    .line 596
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getOriginalJson()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    const/4 v0, 0x2

    invoke-static {p2, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p2

    .line 598
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getPurchaseState()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    if-eq v1, v0, :cond_0

    .line 610
    sget-object v0, Ljp/co/neilo/inapppurchase/IAPPurchaseState;->Invalid:Ljp/co/neilo/inapppurchase/IAPPurchaseState;

    invoke-virtual {v0}, Ljp/co/neilo/inapppurchase/IAPPurchaseState;->GetValue()I

    move-result v0

    goto :goto_0

    .line 606
    :cond_0
    sget-object v0, Ljp/co/neilo/inapppurchase/IAPPurchaseState;->AndroidPending:Ljp/co/neilo/inapppurchase/IAPPurchaseState;

    invoke-virtual {v0}, Ljp/co/neilo/inapppurchase/IAPPurchaseState;->GetValue()I

    move-result v0

    goto :goto_0

    .line 603
    :cond_1
    sget-object v0, Ljp/co/neilo/inapppurchase/IAPPurchaseState;->Purchased:Ljp/co/neilo/inapppurchase/IAPPurchaseState;

    invoke-virtual {v0}, Ljp/co/neilo/inapppurchase/IAPPurchaseState;->GetValue()I

    move-result v0

    .line 615
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "{ \"m_State\":"

    .line 616
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 617
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", \"m_TransactionId\":\""

    .line 618
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 619
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getPurchaseToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\", \"m_ProductId\":\""

    .line 620
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 621
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getSkus()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\", \"m_Receipt\":\""

    .line 622
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "{ \\\\\\\"json\\\\\\\":\\\\\\\""

    .line 623
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p2, v0, v3

    const-string p2, "%s"

    .line 624
    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\\\\\\\", \\\\\\\"signature\\\\\\\":\\\\\\\""

    .line 625
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 626
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getSignature()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\\\\\\\"}"

    .line 627
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" }"

    .line 628
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 629
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private CreateRequestPurchaseFailedLog(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 572
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    const/4 v0, 0x2

    invoke-static {p2, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p2

    .line 575
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{ \"m_State\":"

    .line 576
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 577
    sget-object v1, Ljp/co/neilo/inapppurchase/IAPPurchaseState;->Failed:Ljp/co/neilo/inapppurchase/IAPPurchaseState;

    invoke-virtual {v1}, Ljp/co/neilo/inapppurchase/IAPPurchaseState;->GetValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", \"m_TransactionId\":\""

    .line 578
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\", \"m_ProductId\":\""

    .line 580
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 581
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\", \"m_Additional\":\""

    .line 582
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 583
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" }"

    .line 584
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private CreateRequestPurchaseSuccessLog(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 553
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{ \"m_State\":"

    .line 554
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 555
    sget-object v1, Ljp/co/neilo/inapppurchase/IAPPurchaseState;->Purchasing:Ljp/co/neilo/inapppurchase/IAPPurchaseState;

    invoke-virtual {v1}, Ljp/co/neilo/inapppurchase/IAPPurchaseState;->GetValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", \"m_ProductId\":\""

    .line 556
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 557
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" }"

    .line 558
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 559
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static synthetic access$000(Ljp/co/neilo/inapppurchase/PurchaseRequester;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Ljp/co/neilo/inapppurchase/PurchaseRequester;->CreateRequestPurchaseFailedLog(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Ljp/co/neilo/inapppurchase/PurchaseRequester;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Ljp/co/neilo/inapppurchase/PurchaseRequester;->CreateRequestPurchaseSuccessLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Ljp/co/neilo/inapppurchase/PurchaseRequester;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Ljp/co/neilo/inapppurchase/PurchaseRequester;->CreatePurchaseFinishedLog(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Ljp/co/neilo/inapppurchase/PurchaseRequester;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Ljp/co/neilo/inapppurchase/PurchaseRequester;->CreatePurchaseFinishFailedLog(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public FinishPurchase(Ljava/lang/String;Ljava/lang/String;)Ljp/co/neilo/inapppurchase/IAPResult;
    .locals 1

    if-eqz p2, :cond_1

    .line 433
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 442
    :cond_0
    new-instance v0, Ljp/co/neilo/inapppurchase/PurchaseRequester$2;

    invoke-direct {v0, p0, p1, p2}, Ljp/co/neilo/inapppurchase/PurchaseRequester$2;-><init>(Ljp/co/neilo/inapppurchase/PurchaseRequester;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Ljp/co/neilo/inapppurchase/InAppPurchase;->ConnectAsyncAndRun(Ljp/co/neilo/inapppurchase/InAppPurchase$BillingClientConnectAction;)V

    .line 486
    sget-object p1, Ljp/co/neilo/inapppurchase/IAPResult;->Success:Ljp/co/neilo/inapppurchase/IAPResult;

    return-object p1

    .line 435
    :cond_1
    :goto_0
    invoke-direct {p0, p1, p2}, Ljp/co/neilo/inapppurchase/PurchaseRequester;->CreatePurchaseFinishedLog(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 436
    invoke-virtual {p0, p1}, Ljp/co/neilo/inapppurchase/PurchaseRequester;->SafeAddCallbackLog(Ljava/lang/String;)V

    .line 437
    sget-object p1, Ljp/co/neilo/inapppurchase/IAPResult;->Success:Ljp/co/neilo/inapppurchase/IAPResult;

    return-object p1
.end method

.method public GetPurchaseResults()Ljava/lang/String;
    .locals 8

    .line 256
    invoke-virtual {p0}, Ljp/co/neilo/inapppurchase/PurchaseRequester;->SafeGetAndClearCallbackLog()Ljava/util/List;

    move-result-object v0

    .line 257
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 261
    :goto_0
    iget-boolean v4, p0, Ljp/co/neilo/inapppurchase/PurchaseRequester;->m_CheckAlreadyOwned:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Ljp/co/neilo/inapppurchase/PurchaseRequester;->m_ForceTryQuery:Z

    if-eqz v4, :cond_7

    .line 264
    :cond_1
    iget-object v4, p0, Ljp/co/neilo/inapppurchase/PurchaseRequester;->m_AlreadyOwnedCheckWorker:Ljp/co/neilo/inapppurchase/PurchaseRequester$QueryPurchaseAsyncWorker;

    invoke-virtual {v4}, Ljp/co/neilo/inapppurchase/PurchaseRequester$QueryPurchaseAsyncWorker;->SafeGetState()I

    move-result v4

    if-eqz v4, :cond_5

    const/4 v6, 0x3

    if-eq v4, v6, :cond_3

    const/4 v6, 0x4

    if-eq v4, v6, :cond_2

    goto :goto_3

    .line 268
    :cond_2
    iget-object v4, p0, Ljp/co/neilo/inapppurchase/PurchaseRequester;->m_AlreadyOwnedCheckWorker:Ljp/co/neilo/inapppurchase/PurchaseRequester$QueryPurchaseAsyncWorker;

    invoke-virtual {v4}, Ljp/co/neilo/inapppurchase/PurchaseRequester$QueryPurchaseAsyncWorker;->Reset()V

    goto :goto_2

    .line 294
    :cond_3
    iget-object v4, p0, Ljp/co/neilo/inapppurchase/PurchaseRequester;->m_AlreadyOwnedCheckWorker:Ljp/co/neilo/inapppurchase/PurchaseRequester$QueryPurchaseAsyncWorker;

    invoke-virtual {v4}, Ljp/co/neilo/inapppurchase/PurchaseRequester$QueryPurchaseAsyncWorker;->GetInappPurchaseList()Ljava/util/List;

    move-result-object v4

    .line 295
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_4

    const/4 v6, 0x1

    goto :goto_1

    :cond_4
    const/4 v6, 0x0

    .line 298
    :goto_1
    iget-object v7, p0, Ljp/co/neilo/inapppurchase/PurchaseRequester;->m_AlreadyOwnedCheckWorker:Ljp/co/neilo/inapppurchase/PurchaseRequester$QueryPurchaseAsyncWorker;

    invoke-virtual {v7}, Ljp/co/neilo/inapppurchase/PurchaseRequester$QueryPurchaseAsyncWorker;->Reset()V

    .line 299
    iput-boolean v2, p0, Ljp/co/neilo/inapppurchase/PurchaseRequester;->m_CheckAlreadyOwned:Z

    .line 300
    iput-boolean v3, p0, Ljp/co/neilo/inapppurchase/PurchaseRequester;->m_ForceTryQuery:Z

    goto :goto_4

    .line 274
    :cond_5
    :goto_2
    invoke-static {}, Ljp/co/neilo/inapppurchase/InAppPurchase;->CheckConnected_GetBillingClient()Lcom/android/billingclient/api/BillingClient;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 277
    iget-object v6, p0, Ljp/co/neilo/inapppurchase/PurchaseRequester;->m_AlreadyOwnedCheckWorker:Ljp/co/neilo/inapppurchase/PurchaseRequester$QueryPurchaseAsyncWorker;

    invoke-virtual {v6, v4}, Ljp/co/neilo/inapppurchase/PurchaseRequester$QueryPurchaseAsyncWorker;->RequestQueryPurchasesAsync(Lcom/android/billingclient/api/BillingClient;)V

    goto :goto_3

    .line 282
    :cond_6
    invoke-static {}, Ljp/co/neilo/inapppurchase/InAppPurchase;->RequestConnectBillingClient()V

    :cond_7
    :goto_3
    move-object v4, v5

    const/4 v6, 0x1

    :goto_4
    if-eqz v1, :cond_8

    if-eqz v6, :cond_8

    return-object v5

    .line 309
    :cond_8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "{ \"m_Logs\":["

    .line 311
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ","

    if-nez v1, :cond_a

    .line 314
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v2, :cond_9

    .line 317
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    :cond_9
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    goto :goto_5

    :cond_a
    if-eqz v4, :cond_c

    .line 325
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/billingclient/api/Purchase;

    if-nez v2, :cond_b

    .line 328
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    :cond_b
    invoke-direct {p0, v1, v3}, Ljp/co/neilo/inapppurchase/PurchaseRequester;->CreatePurchaseSuccessLog(Lcom/android/billingclient/api/Purchase;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    goto :goto_6

    :cond_c
    const-string v0, "] }"

    .line 334
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public RequestPurchase(Lcom/android/billingclient/api/SkuDetails;)Ljp/co/neilo/inapppurchase/IAPResult;
    .locals 1

    .line 346
    new-instance v0, Ljp/co/neilo/inapppurchase/PurchaseRequester$1;

    invoke-direct {v0, p0, p1}, Ljp/co/neilo/inapppurchase/PurchaseRequester$1;-><init>(Ljp/co/neilo/inapppurchase/PurchaseRequester;Lcom/android/billingclient/api/SkuDetails;)V

    invoke-static {v0}, Ljp/co/neilo/inapppurchase/InAppPurchase;->ConnectAsyncAndRun(Ljp/co/neilo/inapppurchase/InAppPurchase$BillingClientConnectAction;)V

    .line 420
    sget-object p1, Ljp/co/neilo/inapppurchase/IAPResult;->Success:Ljp/co/neilo/inapppurchase/IAPResult;

    return-object p1
.end method

.method public SafeAddCallbackLog(Ljava/lang/String;)V
    .locals 2

    .line 56
    iget-object v0, p0, Ljp/co/neilo/inapppurchase/PurchaseRequester;->m_CallbackLog:Ljava/util/List;

    monitor-enter v0

    .line 58
    :try_start_0
    iget-object v1, p0, Ljp/co/neilo/inapppurchase/PurchaseRequester;->m_CallbackLog:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public SafeAddCallbackLog(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Ljp/co/neilo/inapppurchase/PurchaseRequester;->m_CallbackLog:Ljava/util/List;

    monitor-enter v0

    .line 65
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 67
    iget-object v2, p0, Ljp/co/neilo/inapppurchase/PurchaseRequester;->m_CallbackLog:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 69
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public SafeClearCurrentProductId()V
    .locals 1

    const/4 v0, 0x0

    .line 77
    invoke-virtual {p0, v0}, Ljp/co/neilo/inapppurchase/PurchaseRequester;->SafeSetCurrentProductId(Ljava/lang/String;)V

    return-void
.end method

.method public SafeGetAndClearCallbackLog()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Ljp/co/neilo/inapppurchase/PurchaseRequester;->m_CallbackLog:Ljava/util/List;

    monitor-enter v0

    .line 48
    :try_start_0
    iget-object v1, p0, Ljp/co/neilo/inapppurchase/PurchaseRequester;->m_CallbackLog:Ljava/util/List;

    .line 49
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Ljp/co/neilo/inapppurchase/PurchaseRequester;->m_CallbackLog:Ljava/util/List;

    .line 50
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public SafeGetCurrentProductId()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Ljp/co/neilo/inapppurchase/PurchaseRequester;->m_CurrentProductId:Ljava/lang/String;

    return-object v0
.end method

.method public SafeSetCurrentProductId(Ljava/lang/String;)V
    .locals 0

    .line 81
    iput-object p1, p0, Ljp/co/neilo/inapppurchase/PurchaseRequester;->m_CurrentProductId:Ljava/lang/String;

    return-void
.end method

.method public SetForceTryQuery()V
    .locals 1

    const/4 v0, 0x1

    .line 96
    iput-boolean v0, p0, Ljp/co/neilo/inapppurchase/PurchaseRequester;->m_ForceTryQuery:Z

    return-void
.end method

.method public onPurchasesUpdated(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
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

    .line 498
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x7

    if-eq p1, v0, :cond_2

    .line 518
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p2, :cond_0

    .line 522
    invoke-virtual {p0}, Ljp/co/neilo/inapppurchase/PurchaseRequester;->SafeGetCurrentProductId()Ljava/lang/String;

    move-result-object p2

    .line 523
    invoke-direct {p0, p2, p1}, Ljp/co/neilo/inapppurchase/PurchaseRequester;->CreatePurchaseFailedLog(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 528
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/billingclient/api/Purchase;

    .line 531
    invoke-direct {p0, v1, p1}, Ljp/co/neilo/inapppurchase/PurchaseRequester;->CreatePurchaseFailedLog(Lcom/android/billingclient/api/Purchase;I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 536
    :cond_1
    :goto_1
    invoke-virtual {p0, v0}, Ljp/co/neilo/inapppurchase/PurchaseRequester;->SafeAddCallbackLog(Ljava/util/List;)V

    goto :goto_3

    .line 504
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 505
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/billingclient/api/Purchase;

    .line 508
    invoke-direct {p0, v1, p1}, Ljp/co/neilo/inapppurchase/PurchaseRequester;->CreatePurchaseSuccessLog(Lcom/android/billingclient/api/Purchase;I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 512
    :cond_3
    invoke-virtual {p0, v0}, Ljp/co/neilo/inapppurchase/PurchaseRequester;->SafeAddCallbackLog(Ljava/util/List;)V

    .line 542
    :goto_3
    invoke-virtual {p0}, Ljp/co/neilo/inapppurchase/PurchaseRequester;->SafeClearCurrentProductId()V

    return-void
.end method
