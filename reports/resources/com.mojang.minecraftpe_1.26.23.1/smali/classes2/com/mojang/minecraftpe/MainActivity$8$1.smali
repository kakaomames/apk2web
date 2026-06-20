.class public Lcom/mojang/minecraftpe/MainActivity$8$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mojang/minecraftpe/MainActivity$8;->onDeleteKeyPressed()V
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

    .line 807
    iput-object p1, p0, Lcom/mojang/minecraftpe/MainActivity$8$1;->this$1:Lcom/mojang/minecraftpe/MainActivity$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 811
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity$8$1;->this$1:Lcom/mojang/minecraftpe/MainActivity$8;

    iget-object v0, v0, Lcom/mojang/minecraftpe/MainActivity$8;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    invoke-virtual {v0}, Lcom/mojang/minecraftpe/MainActivity;->nativeBackSpacePressed()V

    return-void
.end method
