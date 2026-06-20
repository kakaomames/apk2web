.class public Lcom/microsoft/applications/events/HttpClient;
.super Ljava/lang/Object;
.source "HttpClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/applications/events/HttpClient$FutureShim;
    }
.end annotation


# static fields
.field private static final MAX_HTTP_THREADS:I = 0x2


# instance fields
.field private m_callback:Lcom/microsoft/applications/events/ConnectivityCallback;

.field private m_connectivityManager:Landroid/net/ConnectivityManager;

.field private final m_context:Landroid/content/Context;

.field private final m_executor:Ljava/util/concurrent/ExecutorService;

.field private m_power_receiver:Lcom/microsoft/applications/events/PowerInfoReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 202
    iput-object p1, p0, Lcom/microsoft/applications/events/HttpClient;->m_context:Landroid/content/Context;

    .line 203
    const-string v0, "java.io.tmpdir"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 204
    invoke-virtual {p0, v0}, Lcom/microsoft/applications/events/HttpClient;->setCacheFilePath(Ljava/lang/String;)V

    .line 205
    invoke-direct {p0, p1}, Lcom/microsoft/applications/events/HttpClient;->calculateID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/microsoft/applications/events/HttpClient;->setDeviceInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    invoke-direct {p0, p1}, Lcom/microsoft/applications/events/HttpClient;->calculateAndSetSystemInfo(Landroid/content/Context;)V

    .line 207
    invoke-virtual {p0}, Lcom/microsoft/applications/events/HttpClient;->createExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/applications/events/HttpClient;->m_executor:Ljava/util/concurrent/ExecutorService;

    .line 208
    invoke-virtual {p0}, Lcom/microsoft/applications/events/HttpClient;->createClientInstance()V

    .line 210
    invoke-virtual {p0}, Lcom/microsoft/applications/events/HttpClient;->hasConnectivityManager()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 214
    :try_start_0
    const-string v0, "connectivity"

    .line 215
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/microsoft/applications/events/HttpClient;->m_connectivityManager:Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    .line 217
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->isActiveNetworkMetered()Z

    move-result v0

    .line 218
    new-instance v1, Lcom/microsoft/applications/events/ConnectivityCallback;

    invoke-direct {v1, p0, v0}, Lcom/microsoft/applications/events/ConnectivityCallback;-><init>(Lcom/microsoft/applications/events/HttpClient;Z)V

    iput-object v1, p0, Lcom/microsoft/applications/events/HttpClient;->m_callback:Lcom/microsoft/applications/events/ConnectivityCallback;

    .line 219
    invoke-virtual {p0, v0}, Lcom/microsoft/applications/events/HttpClient;->onCostChange(Z)V

    .line 220
    iget-object v0, p0, Lcom/microsoft/applications/events/HttpClient;->m_connectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/microsoft/applications/events/HttpClient;->m_callback:Lcom/microsoft/applications/events/ConnectivityCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 237
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    new-instance v0, Lcom/microsoft/applications/events/PowerInfoReceiver;

    invoke-direct {v0, p0}, Lcom/microsoft/applications/events/PowerInfoReceiver;-><init>(Lcom/microsoft/applications/events/HttpClient;)V

    iput-object v0, p0, Lcom/microsoft/applications/events/HttpClient;->m_power_receiver:Lcom/microsoft/applications/events/PowerInfoReceiver;

    .line 238
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 239
    iget-object v1, p0, Lcom/microsoft/applications/events/HttpClient;->m_power_receiver:Lcom/microsoft/applications/events/PowerInfoReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 241
    iget-object v1, p0, Lcom/microsoft/applications/events/HttpClient;->m_power_receiver:Lcom/microsoft/applications/events/PowerInfoReceiver;

    invoke-virtual {v1, p1, v0}, Lcom/microsoft/applications/events/PowerInfoReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method private calculateAndSetSystemInfo(Landroid/content/Context;)V
    .locals 9

    .line 262
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 265
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_0

    .line 270
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 271
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    goto :goto_1

    .line 273
    :cond_0
    const-string v1, ""

    :goto_1
    move-object v4, v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {p1}, Lcom/microsoft/applications/events/HttpClient;->getLanguageTag(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    .line 275
    invoke-static {}, Lcom/microsoft/applications/events/HttpClient;->getTimeZone()Ljava/lang/String;

    move-result-object v8

    .line 277
    sget-object p1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    if-nez p1, :cond_1

    .line 279
    const-string p1, "GECOS III"

    :cond_1
    move-object v6, p1

    .line 281
    sget-object p1, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    filled-new-array {v6, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "%s %s"

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 282
    const-string p1, "A:%s"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 283
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object v2, p0

    .line 282
    invoke-virtual/range {v2 .. v8}, Lcom/microsoft/applications/events/HttpClient;->setSystemInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private calculateID(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 295
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 298
    :try_start_0
    const-string v0, "android_id"

    invoke-static {p1, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 300
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_0

    .line 303
    const/4 p1, 0x0

    sget-object p1, Landroidx/browser/trusted/XVPk/TRDIJWgKAJDvEL;->jjYNkJNvK:Ljava/lang/String;

    return-object p1

    .line 305
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "a:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static getLanguageTag(Ljava/util/Locale;)Ljava/lang/String;
    .locals 0

    .line 248
    invoke-virtual {p0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getTimeZone()Ljava/lang/String;
    .locals 4

    .line 254
    const-string v0, "GMT"

    .line 255
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 256
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "Z"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 257
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 258
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v1, v1, -0x2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public native createClientInstance()V
.end method

.method protected createExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 1

    const/4 v0, 0x2

    .line 310
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public createTask(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;[I[B)Ljava/util/concurrent/FutureTask;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[B",
            "Ljava/lang/String;",
            "[I[B)",
            "Ljava/util/concurrent/FutureTask<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 364
    :try_start_0
    new-instance v8, Lcom/microsoft/applications/events/Request;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/microsoft/applications/events/Request;-><init>(Lcom/microsoft/applications/events/HttpClient;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;[I[B)V

    .line 365
    new-instance p1, Lcom/microsoft/applications/events/HttpClient$FutureShim;

    invoke-direct {p1, v8}, Lcom/microsoft/applications/events/HttpClient$FutureShim;-><init>(Lcom/microsoft/applications/events/Request;)V

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public native deleteClientInstance()V
.end method

.method public native dispatchCallback(Ljava/lang/String;I[Ljava/lang/Object;[B)V
.end method

.method public executeTask(Ljava/util/concurrent/FutureTask;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/FutureTask<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 373
    iget-object v0, p0, Lcom/microsoft/applications/events/HttpClient;->m_executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public finalize()V
    .locals 3

    .line 319
    iget-object v0, p0, Lcom/microsoft/applications/events/HttpClient;->m_callback:Lcom/microsoft/applications/events/ConnectivityCallback;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 320
    iget-object v2, p0, Lcom/microsoft/applications/events/HttpClient;->m_connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v2, v0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 321
    iput-object v1, p0, Lcom/microsoft/applications/events/HttpClient;->m_callback:Lcom/microsoft/applications/events/ConnectivityCallback;

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/microsoft/applications/events/HttpClient;->m_context:Landroid/content/Context;

    iget-object v2, p0, Lcom/microsoft/applications/events/HttpClient;->m_power_receiver:Lcom/microsoft/applications/events/PowerInfoReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 324
    iput-object v1, p0, Lcom/microsoft/applications/events/HttpClient;->m_power_receiver:Lcom/microsoft/applications/events/PowerInfoReceiver;

    .line 325
    invoke-virtual {p0}, Lcom/microsoft/applications/events/HttpClient;->deleteClientInstance()V

    .line 326
    iget-object v0, p0, Lcom/microsoft/applications/events/HttpClient;->m_executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method

.method protected hasConnectivityManager()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public newUrl(Ljava/lang/String;)Ljava/net/URL;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .line 330
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public native onCostChange(Z)V
.end method

.method public native onPowerChange(ZZ)V
.end method

.method public native setCacheFilePath(Ljava/lang/String;)V
.end method

.method public native setDeviceInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public native setSystemInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method
