.class public Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;
.super Ljava/lang/Object;
.source "GooglePlayStore.java"

# interfaces
.implements Lcom/mojang/minecraftpe/store/Store;
.implements Lcom/mojang/minecraftpe/ActivityListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$MinecraftLicenseCheckerCallback;
    }
.end annotation


# static fields
.field private static final SALT:[B

.field private static mReceivedLicenseResponse:Z = false

.field private static mVerifiedLicense:Z = true


# instance fields
.field mActivity:Lcom/mojang/minecraftpe/MainActivity;

.field mBillingImpl:Lcom/mojang/minecraftpe/store/googleplay/GooglePlayBillingImpl;

.field private mChecker:Lcom/googleplay/licensing/LicenseChecker;

.field private mLicenseCheckerCallback:Lcom/googleplay/licensing/LicenseCheckerCallback;

.field mListener:Lcom/mojang/minecraftpe/store/StoreListener;

.field private mPolicy:Lcom/googleplay/licensing/ServerManagedPolicy;

.field mPurchaseRequestCode:I


# direct methods
.method static bridge synthetic -$$Nest$mupdateLicenseStatus(Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;->updateLicenseStatus(ZZ)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x14

    .line 114
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;->SALT:[B

    return-void

    :array_0
    .array-data 1
        0x4bt
        0x1t
        -0x10t
        -0x7ft
        0x2at
        0x31t
        0x13t
        -0x66t
        -0x58t
        0x38t
        0x79t
        0x63t
        0x17t
        -0x18t
        -0x12t
        -0x6ft
        -0xbt
        0x21t
        -0x3et
        0x57t
    .end array-data
.end method

.method public constructor <init>(Lcom/mojang/minecraftpe/MainActivity;Ljava/lang/String;Lcom/mojang/minecraftpe/store/StoreListener;)V
    .locals 4

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput-object p3, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;->mListener:Lcom/mojang/minecraftpe/store/StoreListener;

    .line 120
    iput-object p1, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;->mActivity:Lcom/mojang/minecraftpe/MainActivity;

    .line 121
    invoke-virtual {p1, p0}, Lcom/mojang/minecraftpe/MainActivity;->addListener(Lcom/mojang/minecraftpe/ActivityListener;)V

    .line 123
    new-instance p3, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayBillingImpl;

    iget-object v0, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;->mActivity:Lcom/mojang/minecraftpe/MainActivity;

    iget-object v1, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;->mListener:Lcom/mojang/minecraftpe/store/StoreListener;

    invoke-direct {p3, v0, v1, p2}, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayBillingImpl;-><init>(Landroid/app/Activity;Lcom/mojang/minecraftpe/store/StoreListener;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;->mBillingImpl:Lcom/mojang/minecraftpe/store/googleplay/GooglePlayBillingImpl;

    .line 124
    sget p3, Lcom/mojang/minecraftpe/MainActivity;->RESULT_GOOGLEPLAY_PURCHASE:I

    iput p3, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;->mPurchaseRequestCode:I

    .line 127
    iget-object p3, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;->mActivity:Lcom/mojang/minecraftpe/MainActivity;

    invoke-virtual {p3}, Lcom/mojang/minecraftpe/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    const-string v0, "android_id"

    invoke-static {p3, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 129
    new-instance v0, Lcom/googleplay/licensing/ServerManagedPolicy;

    new-instance v1, Lcom/googleplay/licensing/AESObfuscator;

    sget-object v2, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;->SALT:[B

    iget-object v3, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;->mActivity:Lcom/mojang/minecraftpe/MainActivity;

    invoke-virtual {v3}, Lcom/mojang/minecraftpe/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, p3}, Lcom/googleplay/licensing/AESObfuscator;-><init>([BLjava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, p1, v1}, Lcom/googleplay/licensing/ServerManagedPolicy;-><init>(Landroid/content/Context;Lcom/googleplay/licensing/Obfuscator;)V

    iput-object v0, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;->mPolicy:Lcom/googleplay/licensing/ServerManagedPolicy;

    .line 130
    new-instance p3, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$MinecraftLicenseCheckerCallback;

    const/4 v0, 0x0

    invoke-direct {p3, p0, v0}, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$MinecraftLicenseCheckerCallback;-><init>(Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore-IA;)V

    iput-object p3, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;->mLicenseCheckerCallback:Lcom/googleplay/licensing/LicenseCheckerCallback;

    .line 131
    new-instance p3, Lcom/googleplay/licensing/LicenseChecker;

    iget-object v0, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;->mPolicy:Lcom/googleplay/licensing/ServerManagedPolicy;

    invoke-direct {p3, p1, v0, p2}, Lcom/googleplay/licensing/LicenseChecker;-><init>(Landroid/content/Context;Lcom/googleplay/licensing/Policy;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;->mChecker:Lcom/googleplay/licensing/LicenseChecker;

    .line 132
    iget-object p1, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;->mLicenseCheckerCallback:Lcom/googleplay/licensing/LicenseCheckerCallback;

    invoke-virtual {p3, p1}, Lcom/googleplay/licensing/LicenseChecker;->checkAccess(Lcom/googleplay/licensing/LicenseCheckerCallback;)V

    .line 134
    iget-object p1, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;->mActivity:Lcom/mojang/minecraftpe/MainActivity;

    invoke-virtual {p1}, Lcom/mojang/minecraftpe/MainActivity;->isEduMode()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 135
    sput-boolean p1, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;->mReceivedLicenseResponse:Z

    .line 136
    sput-boolean p1, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;->mVerifiedLicense:Z

    :cond_0
    return-void
.end method

.method private declared-synchronized hasReceivedLicenseResponse()Z
    .locals 1

    monitor-enter p0

    .line 46
    :try_start_0
    sget-boolean v0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;->mReceivedLicenseResponse:Z

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0

    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private declared-synchronized updateLicenseStatus(ZZ)V
    .locals 0

    monitor-enter p0

    .line 50
    :try_start_0
    sput-boolean p2, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;->mVerifiedLicense:Z

    .line 51
    sput-boolean p1, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;->mReceivedLicenseResponse:Z

    .line 52
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0

    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method


# virtual methods
.method public acknowledgePurchase(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 205
    iget-object p2, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;->mActivity:Lcom/mojang/minecraftpe/MainActivity;

    new-instance v0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$3;

    invoke-direct {v0, p0, p1}, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$3;-><init>(Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/mojang/minecraftpe/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public destructor()V
    .locals 0

    .line 243
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;->onDestroy()V

    return-void
.end method

.method public getExtraLicenseData()Lcom/mojang/minecraftpe/store/ExtraLicenseResponseData;
    .locals 9

    .line 168
    iget-object v0, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;->mPolicy:Lcom/googleplay/licensing/ServerManagedPolicy;

    invoke-virtual {v0}, Lcom/googleplay/licensing/ServerManagedPolicy;->getExtraLicenseData()[J

    move-result-object v0

    .line 169
    new-instance v8, Lcom/mojang/minecraftpe/store/ExtraLicenseResponseData;

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    const/4 v1, 0x1

    aget-wide v4, v0, v1

    const/4 v1, 0x2

    aget-wide v6, v0, v1

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/mojang/minecraftpe/store/ExtraLicenseResponseData;-><init>(JJJ)V

    return-object v8
.end method

.method public getProductSkuPrefix()Ljava/lang/String;
    .locals 1

    .line 147
    const-string v0, ""

    return-object v0
.end method

.method public getRealmsSkuPrefix()Ljava/lang/String;
    .locals 1

    .line 152
    const-string v0, ""

    return-object v0
.end method

.method public getStoreId()Ljava/lang/String;
    .locals 1

    .line 142
    const-string v0, "android.googleplay"

    return-object v0
.end method

.method public hasVerifiedLicense()Z
    .locals 1

    .line 158
    sget-boolean v0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;->mVerifiedLicense:Z

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 233
    const-string p1, "GooglePlayStore"

    const-string p2, "onActivityResult hit"

    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;->mActivity:Lcom/mojang/minecraftpe/MainActivity;

    invoke-virtual {v0, p0}, Lcom/mojang/minecraftpe/MainActivity;->removeListener(Lcom/mojang/minecraftpe/ActivityListener;)V

    return-void
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method public onStop()V
    .locals 0

    return-void
.end method

.method public purchase(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 2

    .line 184
    iget-object v0, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;->mActivity:Lcom/mojang/minecraftpe/MainActivity;

    new-instance v1, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$2;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$2;-><init>(Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;ZLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/mojang/minecraftpe/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public purchaseGame()V
    .locals 3

    .line 199
    new-instance v0, Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    sget-object v2, Lcom/microsoft/xbox/telemetry/utc/nz/ILDSXGB;->SkKkzGICv:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;->mActivity:Lcom/mojang/minecraftpe/MainActivity;

    invoke-virtual {v2}, Lcom/mojang/minecraftpe/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 200
    iget-object v1, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;->mActivity:Lcom/mojang/minecraftpe/MainActivity;

    invoke-virtual {v1, v0}, Lcom/mojang/minecraftpe/MainActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public queryProducts([Ljava/lang/String;)V
    .locals 2

    .line 174
    iget-object v0, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;->mActivity:Lcom/mojang/minecraftpe/MainActivity;

    new-instance v1, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$1;

    invoke-direct {v1, p0, p1}, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$1;-><init>(Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/mojang/minecraftpe/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public queryPurchases()V
    .locals 2

    .line 215
    iget-object v0, p0, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;->mActivity:Lcom/mojang/minecraftpe/MainActivity;

    new-instance v1, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$4;

    invoke-direct {v1, p0}, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore$4;-><init>(Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;)V

    invoke-virtual {v0, v1}, Lcom/mojang/minecraftpe/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public receivedLicenseResponse()Z
    .locals 1

    .line 163
    invoke-direct {p0}, Lcom/mojang/minecraftpe/store/googleplay/GooglePlayStore;->hasReceivedLicenseResponse()Z

    move-result v0

    return v0
.end method
