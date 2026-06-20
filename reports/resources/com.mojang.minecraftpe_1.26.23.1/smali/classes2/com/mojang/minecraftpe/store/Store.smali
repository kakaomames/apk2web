.class public interface abstract Lcom/mojang/minecraftpe/store/Store;
.super Ljava/lang/Object;
.source "Store.java"


# virtual methods
.method public abstract acknowledgePurchase(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract destructor()V
.end method

.method public abstract getExtraLicenseData()Lcom/mojang/minecraftpe/store/ExtraLicenseResponseData;
.end method

.method public abstract getProductSkuPrefix()Ljava/lang/String;
.end method

.method public abstract getRealmsSkuPrefix()Ljava/lang/String;
.end method

.method public abstract getStoreId()Ljava/lang/String;
.end method

.method public abstract hasVerifiedLicense()Z
.end method

.method public abstract purchase(Ljava/lang/String;ZLjava/lang/String;)V
.end method

.method public abstract purchaseGame()V
.end method

.method public abstract queryProducts([Ljava/lang/String;)V
.end method

.method public abstract queryPurchases()V
.end method

.method public abstract receivedLicenseResponse()Z
.end method
