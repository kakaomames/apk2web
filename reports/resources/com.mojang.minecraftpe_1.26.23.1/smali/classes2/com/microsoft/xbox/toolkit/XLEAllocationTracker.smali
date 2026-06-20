.class public Lcom/microsoft/xbox/toolkit/XLEAllocationTracker;
.super Ljava/lang/Object;
.source "XLEAllocationTracker.java"


# static fields
.field private static instance:Lcom/microsoft/xbox/toolkit/XLEAllocationTracker;


# instance fields
.field private adapterCounter:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    new-instance v0, Lcom/microsoft/xbox/toolkit/XLEAllocationTracker;

    invoke-direct {v0}, Lcom/microsoft/xbox/toolkit/XLEAllocationTracker;-><init>()V

    sput-object v0, Lcom/microsoft/xbox/toolkit/XLEAllocationTracker;->instance:Lcom/microsoft/xbox/toolkit/XLEAllocationTracker;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/XLEAllocationTracker;->adapterCounter:Ljava/util/HashMap;

    return-void
.end method

.method public static getInstance()Lcom/microsoft/xbox/toolkit/XLEAllocationTracker;
    .locals 1

    .line 12
    sget-object v0, Lcom/microsoft/xbox/toolkit/XLEAllocationTracker;->instance:Lcom/microsoft/xbox/toolkit/XLEAllocationTracker;

    return-object v0
.end method

.method private getTagHash(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 16
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/XLEAllocationTracker;->adapterCounter:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 17
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/XLEAllocationTracker;->adapterCounter:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/XLEAllocationTracker;->adapterCounter:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    return-object p1
.end method


# virtual methods
.method public debugDecrement(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public debugGetOverallocatedCount(Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public debugGetTotalCount(Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public debugIncrement(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public debugPrintOverallocated(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
