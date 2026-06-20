.class public Lcom/mojang/minecraftpe/hardwareinfo/CPUTopologyInfo;
.super Ljava/lang/Object;
.source "CPUTopologyInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mojang/minecraftpe/hardwareinfo/CPUTopologyInfo$BitSetCollector;,
        Lcom/mojang/minecraftpe/hardwareinfo/CPUTopologyInfo$BitCollector;
    }
.end annotation


# static fields
.field private static final CPU_LIST_VALUE_FORMAT:Ljava/util/regex/Pattern;

.field private static final SINGLETON_INSTANCE:Lcom/mojang/minecraftpe/hardwareinfo/CPUTopologyInfo;


# instance fields
.field private CLUSTERS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/mojang/minecraftpe/hardwareinfo/CPUCluster;",
            ">;"
        }
    .end annotation
.end field

.field private CPUS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mojang/minecraftpe/hardwareinfo/SystemCPU;",
            ">;"
        }
    .end annotation
.end field

.field private CPUS_BITSET:Ljava/util/BitSet;

.field private CPU_PROCESSOR_COUNT:I


# direct methods
.method public static synthetic $r8$lambda$9MH-frx_WmfqR0n5aaMvcjgExDU(Lcom/mojang/minecraftpe/hardwareinfo/CPUTopologyInfo;Ljava/util/Set;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/mojang/minecraftpe/hardwareinfo/CPUTopologyInfo;->lambda$cpuSetFromCPUListString$0(Ljava/util/Set;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 23
    const-string v0, "(\\d{1,4})(?:-(\\d{1,4}))?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/mojang/minecraftpe/hardwareinfo/CPUTopologyInfo;->CPU_LIST_VALUE_FORMAT:Ljava/util/regex/Pattern;

    .line 25
    new-instance v0, Lcom/mojang/minecraftpe/hardwareinfo/CPUTopologyInfo;

    invoke-direct {v0}, Lcom/mojang/minecraftpe/hardwareinfo/CPUTopologyInfo;-><init>()V

    sput-object v0, Lcom/mojang/minecraftpe/hardwareinfo/CPUTopologyInfo;->SINGLETON_INSTANCE:Lcom/mojang/minecraftpe/hardwareinfo/CPUTopologyInfo;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    :try_start_0
    invoke-direct {p0}, Lcom/mojang/minecraftpe/hardwareinfo/CPUTopologyInfo;->initializeCPUInformation()V

    .line 39
    invoke-direct {p0}, Lcom/mojang/minecraftpe/hardwareinfo/CPUTopologyInfo;->getClustersFromSiblingCPUs()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/mojang/minecraftpe/hardwareinfo/CPUTopologyInfo;->CLUSTERS:Ljava/util/Set;

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 41
    :catch_0
    const/4 v0, 0x0

    sget-object v0, Lcom/microsoft/xbox/toolkit/ui/iD/hzdAhZzniHN;->hkGPbssIhNDAlHa:Ljava/lang/String;

    const-string v1, "Failed to initialize CPU topology information"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 43
    iput v0, p0, Lcom/mojang/minecraftpe/hardwareinfo/CPUTopologyInfo;->CPU_PROCESSOR_COUNT:I

    .line 44
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Lcom/mojang/minecraftpe/hardwareinfo/CPUTopologyInfo;->CPUS_BITSET:Ljava/util/BitSet;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mojang/minecraftpe/hardwareinfo/CPUTopologyInfo;->CPUS:Ljava/util/List;

    .line 46
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/mojang/minecraftpe/hardwareinfo/CPUTopologyInfo;->CLUSTERS:Ljava/util/Set;

    :goto_0
    return-void
.end method

.method private getClustersFromSiblingCPUs()Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/mojang/minecraftpe/hardwareinfo/CPUCluster;",
            ">;"
        }
    .end annotation

    .line 82
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 83
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/hardwareinfo/CPUTopologyInfo;->getCPUS()Ljava/util/List;

    move-result-object v1

    .line 84
    new-instance v2, Ljava/util/ArrayDeque;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayDeque;-><init>(I)V

    .line 85
    invoke-interface {v2, v1}, Ljava/util/Queue;->addAll(Ljava/util/Collection;)Z

    .line 87
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 88
    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mojang/minecraftpe/hardwareinfo/SystemCPU;

    if-eqz v1, :cond_0

    .line 89
    invoke-virtual {v1}, Lcom/mojang/minecraftpe/hardwareinfo/SystemCPU;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 94
    :cond_1
    invoke-virtual {v1}, Lcom/mojang/minecraftpe/hardwareinfo/SystemCPU;->updateCPUFreq()V

    .line 96
    invoke-virtual {v1}, Lcom/mojang/minecraftpe/hardwareinfo/SystemCPU;->getSiblingString()Ljava/lang/String;

    move-result-object v3

    .line 97
    invoke-virtual {p0, v3}, Lcom/mojang/minecraftpe/hardwareinfo/CPUTopologyInfo;->cpuSetFromCPUListString(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v4

    .line 98
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    .line 103
    :cond_2
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mojang/minecraftpe/hardwareinfo/SystemCPU;

    if-eq v6, v1, :cond_3

    .line 106
    invoke-virtual {v6}, Lcom/mojang/minecraftpe/hardwareinfo/SystemCPU;->updateCPUFreq()V

    .line 109
    :cond_3
    invoke-interface {v2, v6}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 112
    :cond_4
    new-instance v1, Lcom/mojang/minecraftpe/hardwareinfo/CPUCluster;

    invoke-direct {v1, v3, v4}, Lcom/mojang/minecraftpe/hardwareinfo/CPUCluster;-><init>(Ljava/lang/String;Ljava/util/Set;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    return-object v0
.end method

.method public static getInstance()Lcom/mojang/minecraftpe/hardwareinfo/CPUTopologyInfo;
    .locals 1

    .line 28
    sget-object v0, Lcom/mojang/minecraftpe/hardwareinfo/CPUTopologyInfo;->SINGLETON_INSTANCE:Lcom/mojang/minecraftpe/hardwareinfo/CPUTopologyInfo;

    return-object v0
.end method

.method private initializeCPUInformation()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 52
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/devices/system/cpu/present"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 53
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-nez v1, :cond_1

    .line 55
    :cond_0
    iput v2, p0, Lcom/mojang/minecraftpe/hardwareinfo/CPUTopologyInfo;->CPU_PROCESSOR_COUNT:I

    .line 56
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    iput-object v1, p0, Lcom/mojang/minecraftpe/hardwareinfo/CPUTopologyInfo;->CPUS_BITSET:Ljava/util/BitSet;

    .line 57
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/mojang/minecraftpe/hardwareinfo/CPUTopologyInfo;->CPUS:Ljava/util/List;

    .line 60
    :cond_1
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 61
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 62
    new-instance v1, Lcom/mojang/minecraftpe/hardwareinfo/CPUTopologyInfo$BitSetCollector;

    invoke-direct {v1}, Lcom/mojang/minecraftpe/hardwareinfo/CPUTopologyInfo$BitSetCollector;-><init>()V

    .line 63
    invoke-static {v0, v1}, Lcom/mojang/minecraftpe/hardwareinfo/CPUTopologyInfo;->parseCPUListString(Ljava/lang/String;Lcom/mojang/minecraftpe/hardwareinfo/CPUTopologyInfo$BitCollector;)Lcom/mojang/minecraftpe/hardwareinfo/CPUTopologyInfo$BitCollector;

    .line 65
    invoke-virtual {v1}, Lcom/mojang/minecraftpe/hardwareinfo/CPUTopologyInfo$BitSetCollector;->getBitCount()I

    move-result v0

    iput v0, p0, Lcom/mojang/minecraftpe/hardwareinfo/CPUTopologyInfo;->CPU_PROCESSOR_COUNT:I

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    iget v3, p0, Lcom/mojang/minecraftpe/hardwareinfo/CPUTopologyInfo;->CPU_PROCESSOR_COUNT:I

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/mojang/minecraftpe/hardwareinfo/CPUTopologyInfo;->CPUS:Ljava/util/List;

    .line 67
    invoke-virtual {v1}, Lcom/mojang/minecraftpe/hardwareinfo/CPUTopologyInfo$BitSetCollector;->getBitSet()Ljava/util/BitSet;

    move-result-object v0

    iput-object v0, p0, Lcom/mojang/minecraftpe/hardwareinfo/CPUTopologyInfo;->CPUS_BITSET:Ljava/util/BitSet;

    .line 70
    :goto_0
    iget-object v0, p0, Lcom/mojang/minecraftpe/hardwareinfo/CPUTopologyInfo;->CPUS_BITSET:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    if-ltz v0, :cond_2

    .line 71
    iget-object v1, p0, Lcom/mojang/minecraftpe/hardwareinfo/CPUTopologyInfo;->CPUS:Ljava/util/List;

    new-instance v2, Lcom/mojang/minecraftpe/hardwareinfo/SystemCPU;

    invoke-direct {v2, v0}, Lcom/mojang/minecraftpe/hardwareinfo/SystemCPU;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private synthetic lambda$cpuSetFromCPUListString$0(Ljava/util/Set;I)V
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/mojang/minecraftpe/hardwareinfo/CPUTopologyInfo;->CPUS:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/mojang/minecraftpe/hardwareinfo/SystemCPU;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static parseCPUListString(Ljava/lang/String;Lcom/mojang/minecraftpe/hardwareinfo/CPUTopologyInfo$BitCollector;)Lcom/mojang/minecraftpe/hardwareinfo/CPUTopologyInfo$BitCollector;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/mojang/minecraftpe/hardwareinfo/CPUTopologyInfo$BitCollector;",
            ">(",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    .line 178
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 182
    :cond_0
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 184
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    aget-object v2, p0, v1

    .line 185
    sget-object v3, Lcom/mojang/minecraftpe/hardwareinfo/CPUTopologyInfo;->CPU_LIST_VALUE_FORMAT:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 186
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-nez v4, :cond_1

    .line 187
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unknown CPU List format: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MCPE"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_1
    const/4 v2, 0x1

    .line 191
    invoke-virtual {v3, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v4, 0x2

    .line 192
    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 194
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 195
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    :goto_1
    if-gt v2, v3, :cond_3

    .line 197
    invoke-interface {p1, v2}, Lcom/mojang/minecraftpe/hardwareinfo/CPUTopologyInfo$BitCollector;->setBit(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 200
    :cond_2
    invoke-interface {p1, v2}, Lcom/mojang/minecraftpe/hardwareinfo/CPUTopologyInfo$BitCollector;->setBit(I)V

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-object p1
.end method


# virtual methods
.method public cpuSetFromCPUListString(Ljava/lang/String;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Lcom/mojang/minecraftpe/hardwareinfo/SystemCPU;",
            ">;"
        }
    .end annotation

    .line 133
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 134
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 138
    :cond_0
    new-instance v1, Lcom/mojang/minecraftpe/hardwareinfo/CPUTopologyInfo$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lcom/mojang/minecraftpe/hardwareinfo/CPUTopologyInfo$$ExternalSyntheticLambda0;-><init>(Lcom/mojang/minecraftpe/hardwareinfo/CPUTopologyInfo;Ljava/util/Set;)V

    invoke-static {p1, v1}, Lcom/mojang/minecraftpe/hardwareinfo/CPUTopologyInfo;->parseCPUListString(Ljava/lang/String;Lcom/mojang/minecraftpe/hardwareinfo/CPUTopologyInfo$BitCollector;)Lcom/mojang/minecraftpe/hardwareinfo/CPUTopologyInfo$BitCollector;

    return-object v0
.end method

.method public getCPUClusterCount()I
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/mojang/minecraftpe/hardwareinfo/CPUTopologyInfo;->CLUSTERS:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method public getCPUCount()I
    .locals 1

    .line 123
    iget v0, p0, Lcom/mojang/minecraftpe/hardwareinfo/CPUTopologyInfo;->CPU_PROCESSOR_COUNT:I

    return v0
.end method

.method getCPUS()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mojang/minecraftpe/hardwareinfo/SystemCPU;",
            ">;"
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lcom/mojang/minecraftpe/hardwareinfo/CPUTopologyInfo;->CPUS:Ljava/util/List;

    return-object v0
.end method

.method public getClusterArray()[Lcom/mojang/minecraftpe/hardwareinfo/CPUCluster;
    .locals 2

    .line 212
    iget-object v0, p0, Lcom/mojang/minecraftpe/hardwareinfo/CPUTopologyInfo;->CLUSTERS:Ljava/util/Set;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/mojang/minecraftpe/hardwareinfo/CPUCluster;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mojang/minecraftpe/hardwareinfo/CPUCluster;

    return-object v0
.end method

.method public getClusterSet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/mojang/minecraftpe/hardwareinfo/CPUCluster;",
            ">;"
        }
    .end annotation

    .line 208
    new-instance v0, Ljava/util/TreeSet;

    iget-object v1, p0, Lcom/mojang/minecraftpe/hardwareinfo/CPUTopologyInfo;->CLUSTERS:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public isMultiClusterSystem()Z
    .locals 2

    .line 219
    iget-object v0, p0, Lcom/mojang/minecraftpe/hardwareinfo/CPUTopologyInfo;->CLUSTERS:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
