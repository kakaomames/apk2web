.class public Lcom/mojang/minecraftpe/hardwareinfo/CPUTopologyInfo$BitSetCollector;
.super Ljava/lang/Object;
.source "CPUTopologyInfo.java"

# interfaces
.implements Lcom/mojang/minecraftpe/hardwareinfo/CPUTopologyInfo$BitCollector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mojang/minecraftpe/hardwareinfo/CPUTopologyInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BitSetCollector"
.end annotation


# instance fields
.field private bits:Ljava/util/BitSet;

.field private bitsCounted:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 148
    iput v0, p0, Lcom/mojang/minecraftpe/hardwareinfo/CPUTopologyInfo$BitSetCollector;->bitsCounted:I

    .line 149
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Lcom/mojang/minecraftpe/hardwareinfo/CPUTopologyInfo$BitSetCollector;->bits:Ljava/util/BitSet;

    return-void
.end method


# virtual methods
.method getBitCount()I
    .locals 1

    .line 152
    iget v0, p0, Lcom/mojang/minecraftpe/hardwareinfo/CPUTopologyInfo$BitSetCollector;->bitsCounted:I

    return v0
.end method

.method getBitSet()Ljava/util/BitSet;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/mojang/minecraftpe/hardwareinfo/CPUTopologyInfo$BitSetCollector;->bits:Ljava/util/BitSet;

    return-object v0
.end method

.method public setBit(I)V
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/mojang/minecraftpe/hardwareinfo/CPUTopologyInfo$BitSetCollector;->bits:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->set(I)V

    .line 162
    iget p1, p0, Lcom/mojang/minecraftpe/hardwareinfo/CPUTopologyInfo$BitSetCollector;->bitsCounted:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/mojang/minecraftpe/hardwareinfo/CPUTopologyInfo$BitSetCollector;->bitsCounted:I

    return-void
.end method
