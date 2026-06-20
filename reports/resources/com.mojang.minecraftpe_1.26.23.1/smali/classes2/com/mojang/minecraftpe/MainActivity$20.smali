.class public Lcom/mojang/minecraftpe/MainActivity$20;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mojang/minecraftpe/MainActivity;->runNativeCallbackOnUiThread(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/mojang/minecraftpe/MainActivity;

.field public final synthetic val$fn:J


# direct methods
.method public constructor <init>(Lcom/mojang/minecraftpe/MainActivity;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2193
    iput-object p1, p0, Lcom/mojang/minecraftpe/MainActivity$20;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    iput-wide p2, p0, Lcom/mojang/minecraftpe/MainActivity$20;->val$fn:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2193
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity$20;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2196
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity$20;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    iget-wide v1, p0, Lcom/mojang/minecraftpe/MainActivity$20;->val$fn:J

    invoke-virtual {v0, v1, v2}, Lcom/mojang/minecraftpe/MainActivity;->nativeRunNativeCallbackOnUiThread(J)V

    const/4 v0, 0x0

    return-object v0
.end method
