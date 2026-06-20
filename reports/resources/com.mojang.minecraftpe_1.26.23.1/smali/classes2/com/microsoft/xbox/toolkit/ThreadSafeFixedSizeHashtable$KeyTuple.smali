.class Lcom/microsoft/xbox/toolkit/ThreadSafeFixedSizeHashtable$KeyTuple;
.super Ljava/lang/Object;
.source "ThreadSafeFixedSizeHashtable.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/toolkit/ThreadSafeFixedSizeHashtable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KeyTuple"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/microsoft/xbox/toolkit/ThreadSafeFixedSizeHashtable<",
        "TK;TV;>.KeyTuple;>;"
    }
.end annotation


# instance fields
.field private index:I

.field private key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/microsoft/xbox/toolkit/ThreadSafeFixedSizeHashtable;


# direct methods
.method public constructor <init>(Lcom/microsoft/xbox/toolkit/ThreadSafeFixedSizeHashtable;Ljava/lang/Object;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I)V"
        }
    .end annotation

    .line 10
    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/ThreadSafeFixedSizeHashtable$KeyTuple;->this$0:Lcom/microsoft/xbox/toolkit/ThreadSafeFixedSizeHashtable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p2, p0, Lcom/microsoft/xbox/toolkit/ThreadSafeFixedSizeHashtable$KeyTuple;->key:Ljava/lang/Object;

    .line 12
    iput p3, p0, Lcom/microsoft/xbox/toolkit/ThreadSafeFixedSizeHashtable$KeyTuple;->index:I

    return-void
.end method

.method static synthetic access$000(Lcom/microsoft/xbox/toolkit/ThreadSafeFixedSizeHashtable$KeyTuple;)Ljava/lang/Object;
    .locals 0

    .line 9
    iget-object p0, p0, Lcom/microsoft/xbox/toolkit/ThreadSafeFixedSizeHashtable$KeyTuple;->key:Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public compareTo(Lcom/microsoft/xbox/toolkit/ThreadSafeFixedSizeHashtable$KeyTuple;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/xbox/toolkit/ThreadSafeFixedSizeHashtable<",
            "TK;TV;>.KeyTuple;)I"
        }
    .end annotation

    .line 16
    iget v0, p0, Lcom/microsoft/xbox/toolkit/ThreadSafeFixedSizeHashtable$KeyTuple;->index:I

    iget p1, p1, Lcom/microsoft/xbox/toolkit/ThreadSafeFixedSizeHashtable$KeyTuple;->index:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 9
    check-cast p1, Lcom/microsoft/xbox/toolkit/ThreadSafeFixedSizeHashtable$KeyTuple;

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/toolkit/ThreadSafeFixedSizeHashtable$KeyTuple;->compareTo(Lcom/microsoft/xbox/toolkit/ThreadSafeFixedSizeHashtable$KeyTuple;)I

    move-result p1

    return p1
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ThreadSafeFixedSizeHashtable$KeyTuple;->key:Ljava/lang/Object;

    return-object v0
.end method
