.class final enum Ljp/co/neilo/inapppurchase/IAPPurchaseState;
.super Ljava/lang/Enum;
.source "IAPPurchaseState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ljp/co/neilo/inapppurchase/IAPPurchaseState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljp/co/neilo/inapppurchase/IAPPurchaseState;

.field public static final enum AndroidPending:Ljp/co/neilo/inapppurchase/IAPPurchaseState;

.field public static final enum Deferred:Ljp/co/neilo/inapppurchase/IAPPurchaseState;

.field public static final enum Failed:Ljp/co/neilo/inapppurchase/IAPPurchaseState;

.field public static final enum Invalid:Ljp/co/neilo/inapppurchase/IAPPurchaseState;

.field public static final enum Purchased:Ljp/co/neilo/inapppurchase/IAPPurchaseState;

.field public static final enum Purchasing:Ljp/co/neilo/inapppurchase/IAPPurchaseState;

.field public static final enum RemoveFailed:Ljp/co/neilo/inapppurchase/IAPPurchaseState;

.field public static final enum Removed:Ljp/co/neilo/inapppurchase/IAPPurchaseState;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 14
    new-instance v0, Ljp/co/neilo/inapppurchase/IAPPurchaseState;

    const-string v1, "Invalid"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Ljp/co/neilo/inapppurchase/IAPPurchaseState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ljp/co/neilo/inapppurchase/IAPPurchaseState;->Invalid:Ljp/co/neilo/inapppurchase/IAPPurchaseState;

    .line 15
    new-instance v0, Ljp/co/neilo/inapppurchase/IAPPurchaseState;

    const-string v1, "Purchasing"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Ljp/co/neilo/inapppurchase/IAPPurchaseState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ljp/co/neilo/inapppurchase/IAPPurchaseState;->Purchasing:Ljp/co/neilo/inapppurchase/IAPPurchaseState;

    .line 16
    new-instance v0, Ljp/co/neilo/inapppurchase/IAPPurchaseState;

    const-string v1, "Purchased"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Ljp/co/neilo/inapppurchase/IAPPurchaseState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ljp/co/neilo/inapppurchase/IAPPurchaseState;->Purchased:Ljp/co/neilo/inapppurchase/IAPPurchaseState;

    .line 17
    new-instance v0, Ljp/co/neilo/inapppurchase/IAPPurchaseState;

    const-string v1, "Failed"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Ljp/co/neilo/inapppurchase/IAPPurchaseState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ljp/co/neilo/inapppurchase/IAPPurchaseState;->Failed:Ljp/co/neilo/inapppurchase/IAPPurchaseState;

    .line 18
    new-instance v0, Ljp/co/neilo/inapppurchase/IAPPurchaseState;

    const-string v1, "Deferred"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Ljp/co/neilo/inapppurchase/IAPPurchaseState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ljp/co/neilo/inapppurchase/IAPPurchaseState;->Deferred:Ljp/co/neilo/inapppurchase/IAPPurchaseState;

    .line 19
    new-instance v0, Ljp/co/neilo/inapppurchase/IAPPurchaseState;

    const-string v1, "RemoveFailed"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v7}, Ljp/co/neilo/inapppurchase/IAPPurchaseState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ljp/co/neilo/inapppurchase/IAPPurchaseState;->RemoveFailed:Ljp/co/neilo/inapppurchase/IAPPurchaseState;

    .line 20
    new-instance v0, Ljp/co/neilo/inapppurchase/IAPPurchaseState;

    const-string v1, "AndroidPending"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8, v8}, Ljp/co/neilo/inapppurchase/IAPPurchaseState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ljp/co/neilo/inapppurchase/IAPPurchaseState;->AndroidPending:Ljp/co/neilo/inapppurchase/IAPPurchaseState;

    .line 22
    new-instance v0, Ljp/co/neilo/inapppurchase/IAPPurchaseState;

    const-string v1, "Removed"

    const/4 v9, 0x7

    const/16 v10, 0x64

    invoke-direct {v0, v1, v9, v10}, Ljp/co/neilo/inapppurchase/IAPPurchaseState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ljp/co/neilo/inapppurchase/IAPPurchaseState;->Removed:Ljp/co/neilo/inapppurchase/IAPPurchaseState;

    const/16 v1, 0x8

    new-array v1, v1, [Ljp/co/neilo/inapppurchase/IAPPurchaseState;

    .line 12
    sget-object v10, Ljp/co/neilo/inapppurchase/IAPPurchaseState;->Invalid:Ljp/co/neilo/inapppurchase/IAPPurchaseState;

    aput-object v10, v1, v2

    sget-object v2, Ljp/co/neilo/inapppurchase/IAPPurchaseState;->Purchasing:Ljp/co/neilo/inapppurchase/IAPPurchaseState;

    aput-object v2, v1, v3

    sget-object v2, Ljp/co/neilo/inapppurchase/IAPPurchaseState;->Purchased:Ljp/co/neilo/inapppurchase/IAPPurchaseState;

    aput-object v2, v1, v4

    sget-object v2, Ljp/co/neilo/inapppurchase/IAPPurchaseState;->Failed:Ljp/co/neilo/inapppurchase/IAPPurchaseState;

    aput-object v2, v1, v5

    sget-object v2, Ljp/co/neilo/inapppurchase/IAPPurchaseState;->Deferred:Ljp/co/neilo/inapppurchase/IAPPurchaseState;

    aput-object v2, v1, v6

    sget-object v2, Ljp/co/neilo/inapppurchase/IAPPurchaseState;->RemoveFailed:Ljp/co/neilo/inapppurchase/IAPPurchaseState;

    aput-object v2, v1, v7

    sget-object v2, Ljp/co/neilo/inapppurchase/IAPPurchaseState;->AndroidPending:Ljp/co/neilo/inapppurchase/IAPPurchaseState;

    aput-object v2, v1, v8

    aput-object v0, v1, v9

    sput-object v1, Ljp/co/neilo/inapppurchase/IAPPurchaseState;->$VALUES:[Ljp/co/neilo/inapppurchase/IAPPurchaseState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 29
    iput p3, p0, Ljp/co/neilo/inapppurchase/IAPPurchaseState;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljp/co/neilo/inapppurchase/IAPPurchaseState;
    .locals 1

    .line 12
    const-class v0, Ljp/co/neilo/inapppurchase/IAPPurchaseState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ljp/co/neilo/inapppurchase/IAPPurchaseState;

    return-object p0
.end method

.method public static values()[Ljp/co/neilo/inapppurchase/IAPPurchaseState;
    .locals 1

    .line 12
    sget-object v0, Ljp/co/neilo/inapppurchase/IAPPurchaseState;->$VALUES:[Ljp/co/neilo/inapppurchase/IAPPurchaseState;

    invoke-virtual {v0}, [Ljp/co/neilo/inapppurchase/IAPPurchaseState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljp/co/neilo/inapppurchase/IAPPurchaseState;

    return-object v0
.end method


# virtual methods
.method public GetValue()I
    .locals 1

    .line 32
    iget v0, p0, Ljp/co/neilo/inapppurchase/IAPPurchaseState;->value:I

    return v0
.end method
