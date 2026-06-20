.class public Lcom/mojang/minecraftpe/HardwareInformation;
.super Ljava/lang/Object;
.source "HardwareInformation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mojang/minecraftpe/HardwareInformation$CPUInfo;
    }
.end annotation


# static fields
.field public static final cpuInfo:Lcom/mojang/minecraftpe/HardwareInformation$CPUInfo;


# instance fields
.field public final appInfo:Landroid/content/pm/ApplicationInfo;

.field public final context:Landroid/content/Context;

.field public final packageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 61
    invoke-static {}, Lcom/mojang/minecraftpe/HardwareInformation;->getCPUInfo()Lcom/mojang/minecraftpe/HardwareInformation$CPUInfo;

    move-result-object v0

    sput-object v0, Lcom/mojang/minecraftpe/HardwareInformation;->cpuInfo:Lcom/mojang/minecraftpe/HardwareInformation$CPUInfo;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mojang/minecraftpe/HardwareInformation;->packageManager:Landroid/content/pm/PackageManager;

    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/mojang/minecraftpe/HardwareInformation;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 34
    iput-object p1, p0, Lcom/mojang/minecraftpe/HardwareInformation;->context:Landroid/content/Context;

    return-void
.end method

.method private appInstalled(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    .line 294
    :try_start_0
    iget-object v1, p0, Lcom/mojang/minecraftpe/HardwareInformation;->packageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    return v0
.end method

.method private checkRootA()Z
    .locals 2

    .line 251
    sget-object v0, Landroid/os/Build;->TAGS:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 253
    const-string/jumbo v1, "test-keys"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private checkRootB()Z
    .locals 7

    const/16 v0, 0xa

    .line 258
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "/sbin/su"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "/system/bin/su"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const/4 v2, 0x2

    const-string v5, "/system/xbin/su"

    aput-object v5, v1, v2

    const/4 v2, 0x3

    const-string v5, "/data/local/xbin/su"

    aput-object v5, v1, v2

    const/4 v2, 0x4

    const-string v5, "/data/local/bin/su"

    aput-object v5, v1, v2

    const/4 v2, 0x5

    const-string v5, "/system/sd/xbin/su"

    aput-object v5, v1, v2

    const/4 v2, 0x6

    const-string v5, "/system/bin/failsafe/su"

    aput-object v5, v1, v2

    const/4 v2, 0x7

    const-string v5, "/system/app/Superuser.apk"

    aput-object v5, v1, v2

    const/16 v2, 0x8

    const-string v5, "/data/local/su"

    aput-object v5, v1, v2

    const/16 v2, 0x9

    const-string v5, "/su/bin/su"

    aput-object v5, v1, v2

    move v2, v3

    :goto_0
    if-ge v2, v0, :cond_1

    .line 270
    aget-object v5, v1, v2

    .line 271
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    return v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method private checkRootC()Z
    .locals 6

    const/4 v0, 0x2

    .line 279
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "eu.chainfire.supersu"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "eu.chainfire.supersu.pro"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    move v2, v3

    :goto_0
    if-ge v2, v0, :cond_1

    .line 283
    aget-object v5, v1, v2

    .line 284
    invoke-direct {p0, v5}, Lcom/mojang/minecraftpe/HardwareInformation;->appInstalled(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    return v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method public static getBoard()Ljava/lang/String;
    .locals 1

    .line 219
    sget-object v0, Landroid/os/Build;->BOARD:Ljava/lang/String;

    return-object v0
.end method

.method public static getCPUFeatures()Ljava/lang/String;
    .locals 2

    .line 113
    sget-object v0, Lcom/mojang/minecraftpe/HardwareInformation;->cpuInfo:Lcom/mojang/minecraftpe/HardwareInformation$CPUInfo;

    const-string v1, "Features"

    invoke-virtual {v0, v1}, Lcom/mojang/minecraftpe/HardwareInformation$CPUInfo;->getCPULine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCPUInfo()Lcom/mojang/minecraftpe/HardwareInformation$CPUInfo;
    .locals 8

    .line 177
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 179
    new-instance v1, Ljava/io/File;

    const-string v2, "/proc/cpuinfo"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    .line 181
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 183
    const-string v2, "([\\w\\ ]*)\\s*:\\s([^\\n]*)"

    .line 184
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 185
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 186
    invoke-virtual {v2, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 187
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_0

    .line 189
    :cond_1
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    const/4 v5, 0x1

    .line 190
    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 191
    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    .line 192
    invoke-virtual {v4, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    .line 193
    invoke-interface {v0, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    :cond_2
    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "processor"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 201
    :cond_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 204
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 207
    :cond_4
    :goto_1
    new-instance v1, Lcom/mojang/minecraftpe/HardwareInformation$CPUInfo;

    invoke-direct {v1, v0, v3}, Lcom/mojang/minecraftpe/HardwareInformation$CPUInfo;-><init>(Ljava/util/Map;I)V

    return-object v1
.end method

.method public static getCPUName()Ljava/lang/String;
    .locals 3

    .line 92
    sget-object v0, Lcom/mojang/minecraftpe/HardwareInformation;->cpuInfo:Lcom/mojang/minecraftpe/HardwareInformation$CPUInfo;

    const-string v1, "model name"

    invoke-virtual {v0, v1}, Lcom/mojang/minecraftpe/HardwareInformation$CPUInfo;->getCPULine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 93
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "Hardware"

    invoke-virtual {v0, v1}, Lcom/mojang/minecraftpe/HardwareInformation$CPUInfo;->getCPULine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public static getCPUType()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 87
    invoke-static {v0}, Lcom/mojang/minecraftpe/platforms/Platform;->createPlatform(Z)Lcom/mojang/minecraftpe/platforms/Platform;

    move-result-object v0

    .line 88
    invoke-virtual {v0}, Lcom/mojang/minecraftpe/platforms/Platform;->getABIS()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDeviceModelName()Ljava/lang/String;
    .locals 4

    .line 65
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 66
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 67
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 68
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 70
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static getLocale()Ljava/lang/String;
    .locals 1

    .line 83
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNumClusters()I
    .locals 1

    .line 126
    invoke-static {}, Lcom/mojang/minecraftpe/hardwareinfo/CPUTopologyInfo;->getInstance()Lcom/mojang/minecraftpe/hardwareinfo/CPUTopologyInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mojang/minecraftpe/hardwareinfo/CPUTopologyInfo;->getCPUClusterCount()I

    move-result v0

    return v0
.end method

.method public static getNumCores()I
    .locals 1

    .line 117
    invoke-static {}, Lcom/mojang/minecraftpe/hardwareinfo/CPUTopologyInfo;->getInstance()Lcom/mojang/minecraftpe/hardwareinfo/CPUTopologyInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mojang/minecraftpe/hardwareinfo/CPUTopologyInfo;->getCPUCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 120
    sget-object v0, Lcom/mojang/minecraftpe/HardwareInformation;->cpuInfo:Lcom/mojang/minecraftpe/HardwareInformation$CPUInfo;

    invoke-virtual {v0}, Lcom/mojang/minecraftpe/HardwareInformation$CPUInfo;->getNumberCPUCores()I

    move-result v0

    :cond_0
    return v0
.end method

.method public static getPerformanceCoreCount()I
    .locals 8

    .line 148
    invoke-static {}, Lcom/mojang/minecraftpe/hardwareinfo/CPUTopologyInfo;->getInstance()Lcom/mojang/minecraftpe/hardwareinfo/CPUTopologyInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mojang/minecraftpe/hardwareinfo/CPUTopologyInfo;->getClusterArray()[Lcom/mojang/minecraftpe/hardwareinfo/CPUCluster;

    move-result-object v0

    .line 149
    invoke-static {}, Lcom/mojang/minecraftpe/HardwareInformation;->getNumCores()I

    move-result v1

    .line 152
    array-length v2, v0

    const/4 v3, 0x1

    if-nez v2, :cond_1

    const/4 v0, 0x2

    if-le v1, v0, :cond_0

    shr-int/lit8 v3, v1, 0x1

    :cond_0
    return v3

    .line 157
    :cond_1
    array-length v2, v0

    if-ne v2, v3, :cond_2

    return v1

    :cond_2
    const/4 v2, 0x0

    .line 161
    aget-object v2, v0, v2

    .line 162
    invoke-virtual {v2}, Lcom/mojang/minecraftpe/hardwareinfo/CPUCluster;->getMaxFreq()J

    move-result-wide v4

    .line 164
    :goto_0
    array-length v6, v0

    if-ge v3, v6, :cond_4

    .line 165
    aget-object v6, v0, v3

    invoke-virtual {v6}, Lcom/mojang/minecraftpe/hardwareinfo/CPUCluster;->getMaxFreq()J

    move-result-wide v6

    cmp-long v6, v6, v4

    if-gez v6, :cond_3

    .line 167
    aget-object v2, v0, v3

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 172
    :cond_4
    invoke-virtual {v2}, Lcom/mojang/minecraftpe/hardwareinfo/CPUCluster;->getClusterCoreCount()I

    move-result v0

    sub-int/2addr v1, v0

    return v1
.end method

.method public static getSerialNumber()Ljava/lang/String;
    .locals 1

    .line 215
    sget-object v0, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    return-object v0
.end method

.method public static getSoCName()Ljava/lang/String;
    .locals 2

    .line 99
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_1

    .line 100
    sget-object v0, Landroid/os/Build;->SOC_MODEL:Ljava/lang/String;

    const-string/jumbo v1, "unknown"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/os/Build;->SOC_MODEL:Ljava/lang/String;

    goto :goto_0

    .line 102
    :cond_1
    sget-object v0, Lcom/mojang/minecraftpe/HardwareInformation;->cpuInfo:Lcom/mojang/minecraftpe/HardwareInformation$CPUInfo;

    const-string v1, "Hardware"

    invoke-virtual {v0, v1}, Lcom/mojang/minecraftpe/HardwareInformation$CPUInfo;->getCPULine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 105
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 106
    sget-object v0, Lcom/mojang/minecraftpe/HardwareInformation;->cpuInfo:Lcom/mojang/minecraftpe/HardwareInformation$CPUInfo;

    const-string v1, "model name"

    invoke-virtual {v0, v1}, Lcom/mojang/minecraftpe/HardwareInformation$CPUInfo;->getCPULine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    return-object v0
.end method


# virtual methods
.method public getAndroidVersion()Ljava/lang/String;
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/mojang/minecraftpe/HardwareInformation;->context:Landroid/content/Context;

    check-cast v0, Lcom/mojang/minecraftpe/MainActivity;

    invoke-virtual {v0}, Lcom/mojang/minecraftpe/MainActivity;->isChromebook()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ChromeOS "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 79
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Android "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInstallerPackageName()Ljava/lang/String;
    .locals 2

    .line 224
    iget-object v0, p0, Lcom/mojang/minecraftpe/HardwareInformation;->packageManager:Landroid/content/pm/PackageManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/mojang/minecraftpe/HardwareInformation;->appInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_0

    .line 225
    iget-object v1, p0, Lcom/mojang/minecraftpe/HardwareInformation;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 227
    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public getIsRooted()Z
    .locals 1

    .line 247
    invoke-direct {p0}, Lcom/mojang/minecraftpe/HardwareInformation;->checkRootA()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/mojang/minecraftpe/HardwareInformation;->checkRootB()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/mojang/minecraftpe/HardwareInformation;->checkRootC()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public getSecureId()Ljava/lang/String;
    .locals 2

    .line 211
    iget-object v0, p0, Lcom/mojang/minecraftpe/HardwareInformation;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSignaturesHashCode()I
    .locals 5

    const/4 v0, 0x0

    .line 233
    :try_start_0
    iget-object v1, p0, Lcom/mojang/minecraftpe/HardwareInformation;->packageManager:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/mojang/minecraftpe/HardwareInformation;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x40

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 234
    array-length v2, v1

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move v3, v0

    :goto_0
    if-ge v0, v2, :cond_0

    :try_start_1
    aget-object v4, v1, v0

    .line 236
    invoke-virtual {v4}, Landroid/content/pm/Signature;->hashCode()I

    move-result v4

    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    xor-int/2addr v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v1

    move v3, v0

    move-object v0, v1

    .line 241
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return v3
.end method
