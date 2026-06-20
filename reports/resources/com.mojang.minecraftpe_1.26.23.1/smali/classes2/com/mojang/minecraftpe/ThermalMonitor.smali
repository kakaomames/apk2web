.class public Lcom/mojang/minecraftpe/ThermalMonitor;
.super Landroid/content/BroadcastReceiver;
.source "ThermalMonitor.java"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mLowPowerModeEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 14
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/mojang/minecraftpe/ThermalMonitor;->mLowPowerModeEnabled:Z

    .line 15
    iput-object p1, p0, Lcom/mojang/minecraftpe/ThermalMonitor;->mContext:Landroid/content/Context;

    .line 18
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 21
    invoke-direct {p0, p1}, Lcom/mojang/minecraftpe/ThermalMonitor;->readPowerMode(Landroid/content/Context;)V

    return-void
.end method

.method public static native nativeUpdateLowPowerModeStatus(Z)V
.end method

.method private readPowerMode(Landroid/content/Context;)V
    .locals 1

    .line 39
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    .line 40
    invoke-virtual {p1}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result p1

    iput-boolean p1, p0, Lcom/mojang/minecraftpe/ThermalMonitor;->mLowPowerModeEnabled:Z

    .line 41
    invoke-static {p1}, Lcom/mojang/minecraftpe/ThermalMonitor;->nativeUpdateLowPowerModeStatus(Z)V

    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/mojang/minecraftpe/ThermalMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public getLowPowerModeEnabled()Z
    .locals 1

    .line 30
    iget-boolean v0, p0, Lcom/mojang/minecraftpe/ThermalMonitor;->mLowPowerModeEnabled:Z

    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/mojang/minecraftpe/ThermalMonitor;->readPowerMode(Landroid/content/Context;)V

    return-void
.end method
