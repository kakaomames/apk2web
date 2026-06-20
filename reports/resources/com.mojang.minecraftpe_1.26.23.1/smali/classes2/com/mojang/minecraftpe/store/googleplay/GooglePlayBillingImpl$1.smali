.class Lcom/mojang/minecraftpe/store/googleplay/GooglePlayBillingImpl$1;
.super Ljava/lang/Object;
.source "GooglePlayBillingImpl.java"

# interfaces
.implements Lcom/android/billingclient/api/BillingClientStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mojang/minecraftpe/store/googleplay/GooglePlayBillingImpl;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mojang/minecraftpe/store/googleplay/GooglePlayBillingImpl;


# direct methods
.method constructor <init>(Lcom/mojang/minecraftpe/store/googleplay/GooglePlayBillingImpl;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayBillingImpl$1;->this$0:Lcom/mojang/minecraftpe/store/googleplay/GooglePlayBillingImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBillingServiceDisconnected()V
    .locals 2

    .line 72
    const-string v0, "GooglePlayBillingImpl"

    const-string v1, "Billing service disconnected."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onBillingSetupFinished(Lcom/android/billingclient/api/BillingResult;)V
    .locals 1

    .line 63
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 65
    :goto_0
    iget-object v0, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayBillingImpl$1;->this$0:Lcom/mojang/minecraftpe/store/googleplay/GooglePlayBillingImpl;

    invoke-static {v0}, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayBillingImpl;->-$$Nest$fgetmListener(Lcom/mojang/minecraftpe/store/googleplay/GooglePlayBillingImpl;)Lcom/mojang/minecraftpe/store/StoreListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mojang/minecraftpe/store/StoreListener;->onStoreInitialized(Z)V

    return-void
.end method
