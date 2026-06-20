.class public Lcom/mojang/minecraftpe/MainActivity$IncomingHandler;
.super Landroid/os/Handler;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mojang/minecraftpe/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IncomingHandler"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/mojang/minecraftpe/MainActivity;


# direct methods
.method public constructor <init>(Lcom/mojang/minecraftpe/MainActivity;)V
    .locals 0

    .line 577
    iput-object p1, p0, Lcom/mojang/minecraftpe/MainActivity$IncomingHandler;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12

    .line 582
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x345

    if-eq v0, v1, :cond_0

    .line 611
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 585
    :cond_0
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity$IncomingHandler;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    invoke-virtual {v0}, Lcom/mojang/minecraftpe/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 586
    iget-object v1, p0, Lcom/mojang/minecraftpe/MainActivity$IncomingHandler;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    invoke-virtual {v1}, Lcom/mojang/minecraftpe/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 587
    const-string v2, ""

    const-string v3, "deviceId"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 590
    :try_start_0
    iget-object v2, p0, Lcom/mojang/minecraftpe/MainActivity$IncomingHandler;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    invoke-virtual {v2}, Lcom/mojang/minecraftpe/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-wide v6, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    .line 594
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 595
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "sessionId"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 596
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string/jumbo v0, "time"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v9

    cmp-long p1, v6, v9

    if-lez p1, :cond_1

    .line 598
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 599
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 600
    iget-object v5, p0, Lcom/mojang/minecraftpe/MainActivity$IncomingHandler;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    invoke-virtual/range {v5 .. v11}, Lcom/mojang/minecraftpe/MainActivity;->nativeDeviceCorrelation(JLjava/lang/String;JLjava/lang/String;)V

    .line 602
    :cond_1
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 603
    const-string v0, "correlationAttempts"

    invoke-interface {p1, v0, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 604
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 605
    iget-object p1, p0, Lcom/mojang/minecraftpe/MainActivity$IncomingHandler;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    iget-object p1, p1, Lcom/mojang/minecraftpe/MainActivity;->mBound:Lcom/mojang/minecraftpe/MainActivity$MessageConnectionStatus;

    sget-object v0, Lcom/mojang/minecraftpe/MainActivity$MessageConnectionStatus;->CONNECTED:Lcom/mojang/minecraftpe/MainActivity$MessageConnectionStatus;

    if-ne p1, v0, :cond_2

    .line 607
    iget-object p1, p0, Lcom/mojang/minecraftpe/MainActivity$IncomingHandler;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    invoke-static {p1}, Lcom/mojang/minecraftpe/MainActivity;->-$$Nest$fgetmConnection(Lcom/mojang/minecraftpe/MainActivity;)Landroid/content/ServiceConnection;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mojang/minecraftpe/MainActivity;->unbindService(Landroid/content/ServiceConnection;)V

    :catch_0
    :cond_2
    :goto_0
    return-void
.end method
