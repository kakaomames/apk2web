.class public Lcom/mojang/minecraftpe/hardwareinfo/CPUCluster;
.super Ljava/lang/Object;
.source "CPUCluster.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/mojang/minecraftpe/hardwareinfo/CPUCluster;",
        ">;"
    }
.end annotation


# instance fields
.field private bitmask:Ljava/util/BitSet;

.field private clusterCPUs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/mojang/minecraftpe/hardwareinfo/SystemCPU;",
            ">;"
        }
    .end annotation
.end field

.field cpuIds:[I

.field private maxFreq:J

.field private minFreq:J

.field siblingsString:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/Set;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/mojang/minecraftpe/hardwareinfo/SystemCPU;",
            ">;)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Lcom/mojang/minecraftpe/hardwareinfo/CPUCluster;->bitmask:Ljava/util/BitSet;

    const-wide/32 v0, 0x7fffffff

    .line 19
    iput-wide v0, p0, Lcom/mojang/minecraftpe/hardwareinfo/CPUCluster;->minFreq:J

    const-wide/32 v0, -0x80000000

    .line 20
    iput-wide v0, p0, Lcom/mojang/minecraftpe/hardwareinfo/CPUCluster;->maxFreq:J

    .line 23
    iput-object p2, p0, Lcom/mojang/minecraftpe/hardwareinfo/CPUCluster;->clusterCPUs:Ljava/util/Set;

    .line 24
    iput-object p1, p0, Lcom/mojang/minecraftpe/hardwareinfo/CPUCluster;->siblingsString:Ljava/lang/String;

    .line 25
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result p1

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/mojang/minecraftpe/hardwareinfo/CPUCluster;->cpuIds:[I

    .line 28
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mojang/minecraftpe/hardwareinfo/SystemCPU;

    .line 29
    iget-object v1, p0, Lcom/mojang/minecraftpe/hardwareinfo/CPUCluster;->cpuIds:[I

    add-int/lit8 v2, p2, 0x1

    invoke-virtual {v0}, Lcom/mojang/minecraftpe/hardwareinfo/SystemCPU;->getCPUId()I

    move-result v3

    aput v3, v1, p2

    .line 30
    iget-object p2, p0, Lcom/mojang/minecraftpe/hardwareinfo/CPUCluster;->bitmask:Ljava/util/BitSet;

    invoke-virtual {v0}, Lcom/mojang/minecraftpe/hardwareinfo/SystemCPU;->getCPUMask()Ljava/util/BitSet;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 31
    invoke-virtual {v0}, Lcom/mojang/minecraftpe/hardwareinfo/SystemCPU;->getMinFrequencyHz()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/mojang/minecraftpe/hardwareinfo/CPUCluster;->minFreq:J

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/mojang/minecraftpe/hardwareinfo/CPUCluster;->minFreq:J

    .line 32
    invoke-virtual {v0}, Lcom/mojang/minecraftpe/hardwareinfo/SystemCPU;->getMaxFrequencyHz()J

    move-result-wide v0

    iget-wide v3, p0, Lcom/mojang/minecraftpe/hardwareinfo/CPUCluster;->maxFreq:J

    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mojang/minecraftpe/hardwareinfo/CPUCluster;->maxFreq:J

    move p2, v2

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/mojang/minecraftpe/hardwareinfo/CPUCluster;)I
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/mojang/minecraftpe/hardwareinfo/CPUCluster;->bitmask:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    .line 72
    iget-object v1, p1, Lcom/mojang/minecraftpe/hardwareinfo/CPUCluster;->bitmask:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->xor(Ljava/util/BitSet;)V

    .line 74
    invoke-virtual {v0}, Ljava/util/BitSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 79
    :cond_0
    invoke-virtual {v0}, Ljava/util/BitSet;->length()I

    move-result v0

    iget-object p1, p1, Lcom/mojang/minecraftpe/hardwareinfo/CPUCluster;->bitmask:Ljava/util/BitSet;

    invoke-virtual {p1}, Ljava/util/BitSet;->length()I

    move-result p1

    if-ne v0, p1, :cond_1

    const/4 p1, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 9
    check-cast p1, Lcom/mojang/minecraftpe/hardwareinfo/CPUCluster;

    invoke-virtual {p0, p1}, Lcom/mojang/minecraftpe/hardwareinfo/CPUCluster;->compareTo(Lcom/mojang/minecraftpe/hardwareinfo/CPUCluster;)I

    move-result p1

    return p1
.end method

.method public contains(I)Z
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/mojang/minecraftpe/hardwareinfo/CPUCluster;->clusterCPUs:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getCPUArray()[Lcom/mojang/minecraftpe/hardwareinfo/SystemCPU;
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/mojang/minecraftpe/hardwareinfo/CPUCluster;->clusterCPUs:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Lcom/mojang/minecraftpe/hardwareinfo/SystemCPU;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mojang/minecraftpe/hardwareinfo/SystemCPU;

    return-object v0
.end method

.method public getCPUIds()[I
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/mojang/minecraftpe/hardwareinfo/CPUCluster;->cpuIds:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public getClusterCoreCount()I
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/mojang/minecraftpe/hardwareinfo/CPUCluster;->clusterCPUs:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method public getMaxFreq()J
    .locals 2

    .line 61
    iget-wide v0, p0, Lcom/mojang/minecraftpe/hardwareinfo/CPUCluster;->maxFreq:J

    return-wide v0
.end method

.method public getMinFreq()J
    .locals 2

    .line 57
    iget-wide v0, p0, Lcom/mojang/minecraftpe/hardwareinfo/CPUCluster;->minFreq:J

    return-wide v0
.end method

.method public getSiblingsString()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/mojang/minecraftpe/hardwareinfo/CPUCluster;->siblingsString:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/mojang/minecraftpe/hardwareinfo/CPUCluster;->bitmask:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->hashCode()I

    move-result v0

    return v0
.end method
