.class Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$4;
.super Ljava/lang/Object;
.source "GooglePlayStore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;->queryPurchases()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;


# direct methods
.method constructor <init>(Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;)V
    .locals 0

    .line 215
    iput-object p1, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$4;->this$0:Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$4;->this$0:Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;

    iget-object v0, v0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;->mBillingImpl:Lcom/mojang/minecraftpe/store/googleplay/GooglePlayBillingImpl;

    invoke-virtual {v0}, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayBillingImpl;->queryPurchases()V

    return-void
.end method
