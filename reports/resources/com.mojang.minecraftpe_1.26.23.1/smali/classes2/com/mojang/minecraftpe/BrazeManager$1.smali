.class public Lcom/mojang/minecraftpe/BrazeManager$1;
.super Ljava/lang/Object;
.source "BrazeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mojang/minecraftpe/BrazeManager;->requestPushPermission()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/mojang/minecraftpe/BrazeManager;


# direct methods
.method public constructor <init>(Lcom/mojang/minecraftpe/BrazeManager;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/mojang/minecraftpe/BrazeManager$1;->this$0:Lcom/mojang/minecraftpe/BrazeManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v0, 0x1

    .line 98
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.POST_NOTIFICATIONS"

    aput-object v2, v0, v1

    .line 101
    iget-object v1, p0, Lcom/mojang/minecraftpe/BrazeManager$1;->this$0:Lcom/mojang/minecraftpe/BrazeManager;

    invoke-static {v1}, Lcom/mojang/minecraftpe/BrazeManager;->-$$Nest$fgetmActivity(Lcom/mojang/minecraftpe/BrazeManager;)Lcom/mojang/minecraftpe/MainActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mojang/minecraftpe/MainActivity;->suspendGameplayUpdates()V

    .line 102
    iget-object v1, p0, Lcom/mojang/minecraftpe/BrazeManager$1;->this$0:Lcom/mojang/minecraftpe/BrazeManager;

    invoke-static {v1}, Lcom/mojang/minecraftpe/BrazeManager;->-$$Nest$fgetmActivity(Lcom/mojang/minecraftpe/BrazeManager;)Lcom/mojang/minecraftpe/MainActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/mojang/minecraftpe/BrazeManager$1;->this$0:Lcom/mojang/minecraftpe/BrazeManager;

    invoke-static {v2}, Lcom/mojang/minecraftpe/BrazeManager;->-$$Nest$fgetmActivity(Lcom/mojang/minecraftpe/BrazeManager;)Lcom/mojang/minecraftpe/MainActivity;

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Lcom/mojang/minecraftpe/MainActivity;->requestPermissions([Ljava/lang/String;I)V

    return-void
.end method
