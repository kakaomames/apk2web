.class public Lcom/microsoft/xbox/toolkit/ui/TextureManagerDownloadRequest;
.super Ljava/lang/Object;
.source "TextureManagerDownloadRequest.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/microsoft/xbox/toolkit/ui/TextureManagerDownloadRequest;",
        ">;"
    }
.end annotation


# static fields
.field private static nextIndex:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public index:I

.field public key:Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;

.field public stream:Ljava/io/InputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 7
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/microsoft/xbox/toolkit/ui/TextureManagerDownloadRequest;->nextIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManagerDownloadRequest;->key:Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;

    .line 11
    sget-object p1, Lcom/microsoft/xbox/toolkit/ui/TextureManagerDownloadRequest;->nextIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p1

    iput p1, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManagerDownloadRequest;->index:I

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/microsoft/xbox/toolkit/ui/TextureManagerDownloadRequest;)I
    .locals 1

    .line 15
    iget v0, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManagerDownloadRequest;->index:I

    iget p1, p1, Lcom/microsoft/xbox/toolkit/ui/TextureManagerDownloadRequest;->index:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 6
    check-cast p1, Lcom/microsoft/xbox/toolkit/ui/TextureManagerDownloadRequest;

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/toolkit/ui/TextureManagerDownloadRequest;->compareTo(Lcom/microsoft/xbox/toolkit/ui/TextureManagerDownloadRequest;)I

    move-result p1

    return p1
.end method
