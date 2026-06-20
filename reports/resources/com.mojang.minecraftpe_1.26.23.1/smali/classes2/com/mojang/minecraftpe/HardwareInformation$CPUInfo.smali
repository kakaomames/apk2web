.class public Lcom/mojang/minecraftpe/HardwareInformation$CPUInfo;
.super Ljava/lang/Object;
.source "HardwareInformation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mojang/minecraftpe/HardwareInformation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CPUInfo"
.end annotation


# instance fields
.field public final cpuLines:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final numberCPUCores:I


# direct methods
.method public constructor <init>(Ljava/util/Map;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/mojang/minecraftpe/HardwareInformation$CPUInfo;->cpuLines:Ljava/util/Map;

    .line 40
    iput p2, p0, Lcom/mojang/minecraftpe/HardwareInformation$CPUInfo;->numberCPUCores:I

    return-void
.end method


# virtual methods
.method getCPULine(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/mojang/minecraftpe/HardwareInformation$CPUInfo;->cpuLines:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/mojang/minecraftpe/HardwareInformation$CPUInfo;->cpuLines:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 47
    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method getNumberCPUCores()I
    .locals 1

    .line 54
    iget v0, p0, Lcom/mojang/minecraftpe/HardwareInformation$CPUInfo;->numberCPUCores:I

    return v0
.end method
