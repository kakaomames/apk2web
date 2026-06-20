.class public Lcom/mojang/minecraftpe/MainActivity$8$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mojang/minecraftpe/MainActivity$8;->onBackKeyPressed()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/mojang/minecraftpe/MainActivity$8;


# direct methods
.method public constructor <init>(Lcom/mojang/minecraftpe/MainActivity$8;)V
    .locals 0

    .line 819
    iput-object p1, p0, Lcom/mojang/minecraftpe/MainActivity$8$2;->this$1:Lcom/mojang/minecraftpe/MainActivity$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 822
    const-string v0, "mcpe - keyboard"

    const-string/jumbo v1, "textInputWidget.onBackPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity$8$2;->this$1:Lcom/mojang/minecraftpe/MainActivity$8;

    iget-object v0, v0, Lcom/mojang/minecraftpe/MainActivity$8;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    invoke-virtual {v0}, Lcom/mojang/minecraftpe/MainActivity;->nativeBackPressed()V

    return-void
.end method
