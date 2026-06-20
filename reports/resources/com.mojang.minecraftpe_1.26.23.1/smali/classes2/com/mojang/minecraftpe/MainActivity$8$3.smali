.class public Lcom/mojang/minecraftpe/MainActivity$8$3;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mojang/minecraftpe/MainActivity$8;->updateShiftKeyState(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/mojang/minecraftpe/MainActivity$8;

.field public final synthetic val$isDown:I


# direct methods
.method public constructor <init>(Lcom/mojang/minecraftpe/MainActivity$8;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 833
    iput-object p1, p0, Lcom/mojang/minecraftpe/MainActivity$8$3;->this$1:Lcom/mojang/minecraftpe/MainActivity$8;

    iput p2, p0, Lcom/mojang/minecraftpe/MainActivity$8$3;->val$isDown:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 835
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity$8$3;->this$1:Lcom/mojang/minecraftpe/MainActivity$8;

    iget-object v0, v0, Lcom/mojang/minecraftpe/MainActivity$8;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    iget v1, p0, Lcom/mojang/minecraftpe/MainActivity$8$3;->val$isDown:I

    invoke-virtual {v0, v1}, Lcom/mojang/minecraftpe/MainActivity;->nativeShiftKeyPressed(I)V

    return-void
.end method
