.class public Lcom/microsoft/xbox/toolkit/XLEMemoryCache;
.super Ljava/lang/Object;
.source "XLEMemoryCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private itemCount:I

.field private final lruCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "TK;",
            "Lcom/microsoft/xbox/toolkit/XLEMemoryCacheEntry<",
            "TV;>;>;"
        }
    .end annotation
.end field

.field private final maxFileSizeBytes:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/microsoft/xbox/toolkit/XLEMemoryCache;->itemCount:I

    if-ltz p1, :cond_2

    if-ltz p2, :cond_1

    .line 19
    iput p2, p0, Lcom/microsoft/xbox/toolkit/XLEMemoryCache;->maxFileSizeBytes:I

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 20
    :cond_0
    new-instance p2, Lcom/microsoft/xbox/toolkit/XLEMemoryCache$1;

    invoke-direct {p2, p0, p1}, Lcom/microsoft/xbox/toolkit/XLEMemoryCache$1;-><init>(Lcom/microsoft/xbox/toolkit/XLEMemoryCache;I)V

    move-object p1, p2

    :goto_0
    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/XLEMemoryCache;->lruCache:Landroid/util/LruCache;

    return-void

    .line 16
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "maxFileSizeInBytes"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "sizeInBytes"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$006(Lcom/microsoft/xbox/toolkit/XLEMemoryCache;)I
    .locals 1

    .line 5
    iget v0, p0, Lcom/microsoft/xbox/toolkit/XLEMemoryCache;->itemCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/microsoft/xbox/toolkit/XLEMemoryCache;->itemCount:I

    return v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;Ljava/lang/Object;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;I)Z"
        }
    .end annotation

    .line 50
    iget v0, p0, Lcom/microsoft/xbox/toolkit/XLEMemoryCache;->maxFileSizeBytes:I

    const/4 v1, 0x0

    if-le p3, v0, :cond_0

    return v1

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/XLEMemoryCache;->lruCache:Landroid/util/LruCache;

    if-nez v0, :cond_1

    return v1

    .line 59
    :cond_1
    new-instance v0, Lcom/microsoft/xbox/toolkit/XLEMemoryCacheEntry;

    invoke-direct {v0, p2, p3}, Lcom/microsoft/xbox/toolkit/XLEMemoryCacheEntry;-><init>(Ljava/lang/Object;I)V

    .line 62
    iget p2, p0, Lcom/microsoft/xbox/toolkit/XLEMemoryCache;->itemCount:I

    const/4 p3, 0x1

    add-int/2addr p2, p3

    iput p2, p0, Lcom/microsoft/xbox/toolkit/XLEMemoryCache;->itemCount:I

    .line 63
    iget-object p2, p0, Lcom/microsoft/xbox/toolkit/XLEMemoryCache;->lruCache:Landroid/util/LruCache;

    invoke-virtual {p2, p1, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return p3
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/XLEMemoryCache;->lruCache:Landroid/util/LruCache;

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/microsoft/xbox/toolkit/XLEMemoryCacheEntry;

    if-eqz p1, :cond_0

    .line 72
    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/XLEMemoryCacheEntry;->getValue()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getBytesCurrent()I
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/XLEMemoryCache;->lruCache:Landroid/util/LruCache;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/util/LruCache;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getBytesFree()I
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/XLEMemoryCache;->lruCache:Landroid/util/LruCache;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/util/LruCache;->maxSize()I

    move-result v0

    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/XLEMemoryCache;->lruCache:Landroid/util/LruCache;

    invoke-virtual {v1}, Landroid/util/LruCache;->size()I

    move-result v1

    sub-int/2addr v0, v1

    :goto_0
    return v0
.end method

.method public getItemsInCache()I
    .locals 1

    .line 39
    iget v0, p0, Lcom/microsoft/xbox/toolkit/XLEMemoryCache;->itemCount:I

    return v0
.end method
