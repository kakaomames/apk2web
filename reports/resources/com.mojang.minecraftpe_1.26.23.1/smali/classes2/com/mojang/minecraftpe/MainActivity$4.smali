.class public Lcom/mojang/minecraftpe/MainActivity$4;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mojang/minecraftpe/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/mojang/minecraftpe/MainActivity;


# direct methods
.method public constructor <init>(Lcom/mojang/minecraftpe/MainActivity;)V
    .locals 0

    .line 617
    iput-object p1, p0, Lcom/mojang/minecraftpe/MainActivity$4;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 620
    iget-object p1, p0, Lcom/mojang/minecraftpe/MainActivity$4;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iput-object v0, p1, Lcom/mojang/minecraftpe/MainActivity;->mService:Landroid/os/Messenger;

    .line 621
    iget-object p1, p0, Lcom/mojang/minecraftpe/MainActivity$4;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    sget-object p2, Lcom/mojang/minecraftpe/MainActivity$MessageConnectionStatus;->CONNECTED:Lcom/mojang/minecraftpe/MainActivity$MessageConnectionStatus;

    iput-object p2, p1, Lcom/mojang/minecraftpe/MainActivity;->mBound:Lcom/mojang/minecraftpe/MainActivity$MessageConnectionStatus;

    const/16 p1, 0x2a0

    const/4 p2, 0x0

    const/4 v0, 0x0

    .line 622
    invoke-static {v0, p1, p2, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p1

    .line 623
    iget-object p2, p0, Lcom/mojang/minecraftpe/MainActivity$4;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    iget-object p2, p2, Lcom/mojang/minecraftpe/MainActivity;->mMessenger:Landroid/os/Messenger;

    iput-object p2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 625
    :try_start_0
    iget-object p2, p0, Lcom/mojang/minecraftpe/MainActivity$4;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    iget-object p2, p2, Lcom/mojang/minecraftpe/MainActivity;->mService:Landroid/os/Messenger;

    invoke-virtual {p2, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 632
    iget-object p1, p0, Lcom/mojang/minecraftpe/MainActivity$4;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/mojang/minecraftpe/MainActivity;->mService:Landroid/os/Messenger;

    .line 633
    iget-object p1, p0, Lcom/mojang/minecraftpe/MainActivity$4;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    sget-object v0, Lcom/mojang/minecraftpe/MainActivity$MessageConnectionStatus;->DISCONNECTED:Lcom/mojang/minecraftpe/MainActivity$MessageConnectionStatus;

    iput-object v0, p1, Lcom/mojang/minecraftpe/MainActivity;->mBound:Lcom/mojang/minecraftpe/MainActivity$MessageConnectionStatus;

    return-void
.end method
