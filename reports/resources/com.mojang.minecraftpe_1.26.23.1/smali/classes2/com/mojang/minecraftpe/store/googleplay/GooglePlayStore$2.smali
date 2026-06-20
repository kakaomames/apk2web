.class Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$2;
.super Ljava/lang/Object;
.source "GooglePlayStore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;->purchase(Ljava/lang/String;ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;

.field final synthetic val$isSubscription:Z

.field final synthetic val$payload:Ljava/lang/String;

.field final synthetic val$productId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 184
    iput-object p1, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$2;->this$0:Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;

    iput-boolean p2, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$2;->val$isSubscription:Z

    iput-object p3, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$2;->val$productId:Ljava/lang/String;

    iput-object p4, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$2;->val$payload:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 187
    iget-boolean v0, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$2;->val$isSubscription:Z

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$2;->this$0:Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;

    iget-object v0, v0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;->mBillingImpl:Lcom/mojang/minecraftpe/store/googleplay/GooglePlayBillingImpl;

    iget-object v1, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$2;->this$0:Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;

    iget-object v1, v1, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;->mActivity:Lcom/mojang/minecraftpe/MainActivity;

    iget-object v2, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$2;->val$productId:Ljava/lang/String;

    iget-object v3, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$2;->val$payload:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayBillingImpl;->launchSubscriptionPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$2;->this$0:Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;

    iget-object v0, v0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;->mBillingImpl:Lcom/mojang/minecraftpe/store/googleplay/GooglePlayBillingImpl;

    iget-object v1, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$2;->this$0:Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;

    iget-object v1, v1, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;->mActivity:Lcom/mojang/minecraftpe/MainActivity;

    iget-object v2, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$2;->val$productId:Ljava/lang/String;

    iget-object v3, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$2;->val$payload:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayBillingImpl;->launchInAppPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
