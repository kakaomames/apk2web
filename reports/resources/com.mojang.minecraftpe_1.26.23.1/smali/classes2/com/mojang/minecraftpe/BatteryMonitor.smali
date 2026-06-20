.class public Lcom/mojang/minecraftpe/BatteryMonitor;
.super Landroid/content/BroadcastReceiver;
.source "BatteryMonitor.java"


# instance fields
.field public mBatteryLevel:I

.field public mBatteryScale:I

.field public mBatteryStatus:I

.field public mBatteryTemperature:I

.field public final mContext:Landroid/content/Context;

.field public mLastCallTime:J

.field public mMinimumCallDelayInMilliseconds:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 19
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, -0x1

    .line 12
    iput v0, p0, Lcom/mojang/minecraftpe/BatteryMonitor;->mBatteryLevel:I

    .line 13
    iput v0, p0, Lcom/mojang/minecraftpe/BatteryMonitor;->mBatteryScale:I

    .line 14
    iput v0, p0, Lcom/mojang/minecraftpe/BatteryMonitor;->mBatteryStatus:I

    .line 15
    iput v0, p0, Lcom/mojang/minecraftpe/BatteryMonitor;->mBatteryTemperature:I

    const-wide/16 v0, 0x0

    .line 16
    iput-wide v0, p0, Lcom/mojang/minecraftpe/BatteryMonitor;->mLastCallTime:J

    const-wide/16 v0, 0xfa

    .line 17
    iput-wide v0, p0, Lcom/mojang/minecraftpe/BatteryMonitor;->mMinimumCallDelayInMilliseconds:J

    .line 20
    iput-object p1, p0, Lcom/mojang/minecraftpe/BatteryMonitor;->mContext:Landroid/content/Context;

    .line 23
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public static native nativeUpdateBatteryStatus(III)V
.end method

.method public static native nativeUpdateBatteryThermalStatus(I)V
.end method


# virtual methods
.method protected finalize()V
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/mojang/minecraftpe/BatteryMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public getBatteryLevel()I
    .locals 1

    .line 32
    iget v0, p0, Lcom/mojang/minecraftpe/BatteryMonitor;->mBatteryLevel:I

    return v0
.end method

.method public getBatteryScale()I
    .locals 1

    .line 36
    iget v0, p0, Lcom/mojang/minecraftpe/BatteryMonitor;->mBatteryScale:I

    return v0
.end method

.method public getBatteryStatus()I
    .locals 1

    .line 40
    iget v0, p0, Lcom/mojang/minecraftpe/BatteryMonitor;->mBatteryStatus:I

    return v0
.end method

.method public getBatteryTemperature()I
    .locals 1

    .line 44
    iget v0, p0, Lcom/mojang/minecraftpe/BatteryMonitor;->mBatteryTemperature:I

    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 49
    const-string p1, "level"

    const/4 v0, -0x1

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/mojang/minecraftpe/BatteryMonitor;->mBatteryLevel:I

    .line 50
    const-string p1, "scale"

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/mojang/minecraftpe/BatteryMonitor;->mBatteryScale:I

    .line 51
    const-string/jumbo p1, "status"

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/mojang/minecraftpe/BatteryMonitor;->mBatteryStatus:I

    .line 52
    const-string/jumbo p1, "temperature"

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/mojang/minecraftpe/BatteryMonitor;->mBatteryTemperature:I

    .line 56
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    .line 57
    iget-wide v0, p0, Lcom/mojang/minecraftpe/BatteryMonitor;->mLastCallTime:J

    iget-wide v2, p0, Lcom/mojang/minecraftpe/BatteryMonitor;->mMinimumCallDelayInMilliseconds:J

    add-long/2addr v0, v2

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 58
    iget v0, p0, Lcom/mojang/minecraftpe/BatteryMonitor;->mBatteryLevel:I

    iget v1, p0, Lcom/mojang/minecraftpe/BatteryMonitor;->mBatteryScale:I

    iget v2, p0, Lcom/mojang/minecraftpe/BatteryMonitor;->mBatteryStatus:I

    invoke-static {v0, v1, v2}, Lcom/mojang/minecraftpe/BatteryMonitor;->nativeUpdateBatteryStatus(III)V

    .line 64
    iget v0, p0, Lcom/mojang/minecraftpe/BatteryMonitor;->mBatteryTemperature:I

    invoke-static {v0}, Lcom/mojang/minecraftpe/BatteryMonitor;->nativeUpdateBatteryThermalStatus(I)V

    .line 66
    iput-wide p1, p0, Lcom/mojang/minecraftpe/BatteryMonitor;->mLastCallTime:J

    :cond_0
    return-void
.end method
