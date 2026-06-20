.class public Lcom/mojang/minecraftpe/ImportService$IncomingHandler;
.super Landroid/os/Handler;
.source "ImportService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mojang/minecraftpe/ImportService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IncomingHandler"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/mojang/minecraftpe/ImportService;


# direct methods
.method public constructor <init>(Lcom/mojang/minecraftpe/ImportService;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/mojang/minecraftpe/ImportService$IncomingHandler;->this$0:Lcom/mojang/minecraftpe/ImportService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    .line 24
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x2a0

    if-eq v0, v1, :cond_0

    .line 51
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/mojang/minecraftpe/ImportService$IncomingHandler;->this$0:Lcom/mojang/minecraftpe/ImportService;

    invoke-virtual {v0}, Lcom/mojang/minecraftpe/ImportService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 27
    const-string v1, "deviceId"

    const-string v2, "?"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 28
    const-string v4, "LastDeviceSessionId"

    const-string v5, ""

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-ne v3, v2, :cond_1

    return-void

    .line 34
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/mojang/minecraftpe/ImportService$IncomingHandler;->this$0:Lcom/mojang/minecraftpe/ImportService;

    invoke-virtual {v2}, Lcom/mojang/minecraftpe/ImportService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v4, p0, Lcom/mojang/minecraftpe/ImportService$IncomingHandler;->this$0:Lcom/mojang/minecraftpe/ImportService;

    invoke-virtual {v4}, Lcom/mojang/minecraftpe/ImportService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-wide v4, v2, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    .line 38
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 39
    const-string/jumbo v6, "time"

    invoke-virtual {v2, v6, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 40
    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const-string v1, "sessionId"

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/16 v1, 0x345

    .line 42
    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 43
    invoke-virtual {v0, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 45
    :try_start_1
    iget-object p1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {p1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :goto_0
    return-void
.end method
