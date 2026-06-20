.class public Lcom/mojang/minecraftpe/BrazeManager;
.super Ljava/lang/Object;
.source "BrazeManager.java"


# instance fields
.field public mActivity:Lcom/mojang/minecraftpe/MainActivity;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmActivity(Lcom/mojang/minecraftpe/BrazeManager;)Lcom/mojang/minecraftpe/MainActivity;
    .locals 0

    iget-object p0, p0, Lcom/mojang/minecraftpe/BrazeManager;->mActivity:Lcom/mojang/minecraftpe/MainActivity;

    return-object p0
.end method

.method public constructor <init>(Lcom/mojang/minecraftpe/MainActivity;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/mojang/minecraftpe/BrazeManager;->mActivity:Lcom/mojang/minecraftpe/MainActivity;

    return-void
.end method


# virtual methods
.method public configureBrazeAtRuntime()V
    .locals 4

    .line 52
    iget-object v0, p0, Lcom/mojang/minecraftpe/BrazeManager;->mActivity:Lcom/mojang/minecraftpe/MainActivity;

    invoke-virtual {v0}, Lcom/mojang/minecraftpe/MainActivity;->isBrazeEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    .line 57
    invoke-static {v0}, Lcom/braze/support/BrazeLogger;->setLogLevel(I)V

    .line 59
    iget-object v0, p0, Lcom/mojang/minecraftpe/BrazeManager;->mActivity:Lcom/mojang/minecraftpe/MainActivity;

    invoke-virtual {v0}, Lcom/mojang/minecraftpe/MainActivity;->isPublishBuild()Z

    move-result v0

    if-nez v0, :cond_1

    .line 61
    const-string v0, "d9430d08-2985-458e-9ed9-ef769d7e7e69"

    goto :goto_0

    .line 64
    :cond_1
    const-string v0, "7e90f2bd-d27b-4010-a501-a8e30021418a"

    .line 67
    :goto_0
    new-instance v1, Lcom/braze/configuration/BrazeConfig$Builder;

    invoke-direct {v1}, Lcom/braze/configuration/BrazeConfig$Builder;-><init>()V

    .line 68
    invoke-virtual {v1, v0}, Lcom/braze/configuration/BrazeConfig$Builder;->setApiKey(Ljava/lang/String;)Lcom/braze/configuration/BrazeConfig$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 69
    invoke-virtual {v0, v1}, Lcom/braze/configuration/BrazeConfig$Builder;->setAdmMessagingRegistrationEnabled(Z)Lcom/braze/configuration/BrazeConfig$Builder;

    move-result-object v0

    const/16 v2, 0xa

    .line 70
    invoke-virtual {v0, v2}, Lcom/braze/configuration/BrazeConfig$Builder;->setSessionTimeout(I)Lcom/braze/configuration/BrazeConfig$Builder;

    move-result-object v0

    const/4 v3, 0x1

    .line 71
    invoke-virtual {v0, v3}, Lcom/braze/configuration/BrazeConfig$Builder;->setHandlePushDeepLinksAutomatically(Z)Lcom/braze/configuration/BrazeConfig$Builder;

    move-result-object v0

    const/4 v3, 0x5

    .line 72
    invoke-virtual {v0, v3}, Lcom/braze/configuration/BrazeConfig$Builder;->setTriggerActionMinimumTimeIntervalSeconds(I)Lcom/braze/configuration/BrazeConfig$Builder;

    move-result-object v0

    .line 73
    invoke-virtual {v0, v1}, Lcom/braze/configuration/BrazeConfig$Builder;->setNewsfeedVisualIndicatorOn(Z)Lcom/braze/configuration/BrazeConfig$Builder;

    move-result-object v0

    const/16 v3, 0x78

    .line 74
    invoke-virtual {v0, v3}, Lcom/braze/configuration/BrazeConfig$Builder;->setBadNetworkDataFlushInterval(I)Lcom/braze/configuration/BrazeConfig$Builder;

    move-result-object v0

    const/16 v3, 0x3c

    .line 75
    invoke-virtual {v0, v3}, Lcom/braze/configuration/BrazeConfig$Builder;->setGoodNetworkDataFlushInterval(I)Lcom/braze/configuration/BrazeConfig$Builder;

    move-result-object v0

    .line 76
    invoke-virtual {v0, v2}, Lcom/braze/configuration/BrazeConfig$Builder;->setGreatNetworkDataFlushInterval(I)Lcom/braze/configuration/BrazeConfig$Builder;

    move-result-object v0

    .line 77
    invoke-virtual {v0, v1}, Lcom/braze/configuration/BrazeConfig$Builder;->setGeofencesEnabled(Z)Lcom/braze/configuration/BrazeConfig$Builder;

    move-result-object v0

    .line 78
    invoke-virtual {v0, v1}, Lcom/braze/configuration/BrazeConfig$Builder;->setIsLocationCollectionEnabled(Z)Lcom/braze/configuration/BrazeConfig$Builder;

    move-result-object v0

    .line 79
    invoke-virtual {v0, v1}, Lcom/braze/configuration/BrazeConfig$Builder;->setIsFirebaseCloudMessagingRegistrationEnabled(Z)Lcom/braze/configuration/BrazeConfig$Builder;

    move-result-object v0

    .line 80
    invoke-virtual {v0, v1}, Lcom/braze/configuration/BrazeConfig$Builder;->setIsFirebaseMessagingServiceOnNewTokenRegistrationEnabled(Z)Lcom/braze/configuration/BrazeConfig$Builder;

    move-result-object v0

    .line 81
    invoke-virtual {v0, v1}, Lcom/braze/configuration/BrazeConfig$Builder;->setIsPushWakeScreenForNotificationEnabled(Z)Lcom/braze/configuration/BrazeConfig$Builder;

    move-result-object v0

    const-string v1, "drawable/notification_icon_small"

    .line 82
    invoke-virtual {v0, v1}, Lcom/braze/configuration/BrazeConfig$Builder;->setSmallNotificationIcon(Ljava/lang/String;)Lcom/braze/configuration/BrazeConfig$Builder;

    move-result-object v0

    const v1, 0x52a435

    .line 83
    invoke-virtual {v0, v1}, Lcom/braze/configuration/BrazeConfig$Builder;->setDefaultNotificationAccentColor(I)Lcom/braze/configuration/BrazeConfig$Builder;

    move-result-object v0

    .line 84
    invoke-virtual {v0}, Lcom/braze/configuration/BrazeConfig$Builder;->build()Lcom/braze/configuration/BrazeConfig;

    move-result-object v0

    .line 85
    iget-object v1, p0, Lcom/mojang/minecraftpe/BrazeManager;->mActivity:Lcom/mojang/minecraftpe/MainActivity;

    invoke-virtual {v1}, Lcom/mojang/minecraftpe/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/braze/Braze;->configure(Landroid/content/Context;Lcom/braze/configuration/BrazeConfig;)Z

    .line 87
    iget-object v0, p0, Lcom/mojang/minecraftpe/BrazeManager;->mActivity:Lcom/mojang/minecraftpe/MainActivity;

    invoke-virtual {v0}, Lcom/mojang/minecraftpe/MainActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    new-instance v1, Lcom/mojang/minecraftpe/MinecraftActivityLifecycleCallbackListener;

    invoke-direct {v1}, Lcom/mojang/minecraftpe/MinecraftActivityLifecycleCallbackListener;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method public disableBrazeSDK()V
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/mojang/minecraftpe/BrazeManager;->mActivity:Lcom/mojang/minecraftpe/MainActivity;

    invoke-virtual {v0}, Lcom/mojang/minecraftpe/MainActivity;->isBrazeEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/mojang/minecraftpe/BrazeManager;->mActivity:Lcom/mojang/minecraftpe/MainActivity;

    invoke-virtual {v0}, Lcom/mojang/minecraftpe/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/braze/Braze;->disableSdk(Landroid/content/Context;)V

    return-void
.end method

.method public enableBrazeSDK()V
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/mojang/minecraftpe/BrazeManager;->mActivity:Lcom/mojang/minecraftpe/MainActivity;

    invoke-virtual {v0}, Lcom/mojang/minecraftpe/MainActivity;->isBrazeEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/mojang/minecraftpe/BrazeManager;->mActivity:Lcom/mojang/minecraftpe/MainActivity;

    invoke-virtual {v0}, Lcom/mojang/minecraftpe/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/braze/Braze;->enableSdk(Landroid/content/Context;)V

    return-void
.end method

.method public isBrazeSDKDisabled()Z
    .locals 1

    .line 44
    invoke-static {}, Lcom/braze/Braze;->isDisabled()Z

    move-result v0

    return v0
.end method

.method public requestImmediateDataFlush()V
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/mojang/minecraftpe/BrazeManager;->mActivity:Lcom/mojang/minecraftpe/MainActivity;

    invoke-virtual {v0}, Lcom/mojang/minecraftpe/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/braze/Braze;->getInstance(Landroid/content/Context;)Lcom/braze/Braze;

    move-result-object v0

    invoke-virtual {v0}, Lcom/braze/Braze;->requestImmediateDataFlush()V

    return-void
.end method

.method public requestPushPermission()V
    .locals 4

    .line 91
    const-string v0, "MinecraftPlatform"

    const-string v1, "MainActivity::requestPushPermission"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v0, p0, Lcom/mojang/minecraftpe/BrazeManager;->mActivity:Lcom/mojang/minecraftpe/MainActivity;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    const-string v3, "android.permission.POST_NOTIFICATIONS"

    invoke-virtual {v0, v3, v1, v2}, Lcom/mojang/minecraftpe/MainActivity;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    new-instance v0, Lcom/mojang/minecraftpe/BrazeManager$1;

    invoke-direct {v0, p0}, Lcom/mojang/minecraftpe/BrazeManager$1;-><init>(Lcom/mojang/minecraftpe/BrazeManager;)V

    .line 105
    iget-object v1, p0, Lcom/mojang/minecraftpe/BrazeManager;->mActivity:Lcom/mojang/minecraftpe/MainActivity;

    invoke-virtual {v1, v0}, Lcom/mojang/minecraftpe/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public setBrazeID(Ljava/lang/String;)V
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/mojang/minecraftpe/BrazeManager;->mActivity:Lcom/mojang/minecraftpe/MainActivity;

    invoke-virtual {v0}, Lcom/mojang/minecraftpe/MainActivity;->isBrazeEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/mojang/minecraftpe/BrazeManager;->mActivity:Lcom/mojang/minecraftpe/MainActivity;

    invoke-virtual {v0}, Lcom/mojang/minecraftpe/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/braze/Braze;->getInstance(Landroid/content/Context;)Lcom/braze/Braze;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/braze/Braze;->changeUser(Ljava/lang/String;)V

    return-void
.end method
