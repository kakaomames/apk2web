.class public Lcom/microsoft/xbox/idp/util/XboxAppLinker;
.super Ljava/lang/Object;
.source "XboxAppLinker.java"


# static fields
.field private static final AMAZON_STORE_URI:Ljava/lang/String; = "amzn://apps/android?p="

.field private static final AMAZON_TABLET_STORE_PACKAGE:Ljava/lang/String; = "com.amazon.venezia"

.field private static final AMAZON_UNDERGROUND_PACKAGE:Ljava/lang/String; = "com.amazon.mShop.android"

.field private static final OCULUS_STORE_WEB_URI:Ljava/lang/String; = "oculus.store://link/products?referrer=manual&item_id="

.field private static final OCULUS_XBOXAPP_APP_ID:Ljava/lang/String; = "1193603937358048"

.field private static final PLAY_STORE_PACKAGE:Ljava/lang/String; = "com.android.vending"

.field private static final PLAY_STORE_URI:Ljava/lang/String; = "market://details?id="

.field private static final PLAY_STORE_WEB_URI:Ljava/lang/String; = "https://play.google.com/store/apps/details?id="

.field private static final TAG:Ljava/lang/String; = "XboxAppLinker"

.field public static final XBOXAPP_BETA_PACKAGE:Ljava/lang/String; = "com.microsoft.xboxone.smartglass.beta"

.field public static final XBOXAPP_PACKAGE:Ljava/lang/String; = "com.microsoft.xboxone.smartglass"

.field public static betaAppInstalled:Z

.field public static mainAppInstalled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 0

    .line 128
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static getXboxAppInAnyMarketIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .line 81
    const-string v0, "market://details?id="

    const-string v1, "com.android.vending"

    invoke-static {p0, v0, v1}, Lcom/microsoft/xbox/idp/util/XboxAppLinker;->getXboxAppInMarketIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 84
    const/4 v1, 0x0

    sget-object v1, Lorg/conscrypt/io/fMC/nEChR;->mfeOUbWz:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 85
    const-string v0, "com.amazon.mShop.android"

    invoke-static {p0, v1, v0}, Lcom/microsoft/xbox/idp/util/XboxAppLinker;->getXboxAppInMarketIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    .line 90
    const-string v0, "com.amazon.venezia"

    invoke-static {p0, v1, v0}, Lcom/microsoft/xbox/idp/util/XboxAppLinker;->getXboxAppInMarketIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    .line 95
    new-instance v0, Landroid/content/Intent;

    const-string p0, "https://play.google.com/store/apps/details?id=com.microsoft.xboxone.smartglass"

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    :cond_2
    const p0, 0x10208000

    .line 98
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method public static getXboxAppInMarketIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .line 103
    new-instance v0, Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "com.microsoft.xboxone.smartglass"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 104
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    .line 106
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    .line 107
    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    iget-object p0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 111
    new-instance p1, Landroid/content/ComponentName;

    iget-object p2, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p2, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {p1, p2, p0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 p0, 0x10200000

    .line 116
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 117
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getXboxAppInOculusMarketIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .line 75
    new-instance p0, Landroid/content/Intent;

    const-string v0, "oculus.store://link/products?referrer=manual&item_id=1193603937358048"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {p0, v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const v0, 0x10208000

    .line 76
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-object p0
.end method

.method public static getXboxAppLaunchIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1

    .line 132
    sget-boolean v0, Lcom/microsoft/xbox/idp/util/XboxAppLinker;->betaAppInstalled:Z

    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "com.microsoft.xboxone.smartglass.beta"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    goto :goto_0

    .line 134
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "com.microsoft.xboxone.smartglass"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static isInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .line 39
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isServiceInstalled(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    .line 48
    :try_start_0
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, p0, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 52
    sget-object p1, Lcom/microsoft/xbox/idp/util/XboxAppLinker;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static launchXboxAppStorePage(Landroid/content/Context;)V
    .locals 1

    .line 33
    invoke-static {p0}, Lcom/microsoft/xbox/idp/util/XboxAppLinker;->getXboxAppInAnyMarketIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 34
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static xboxAppIsInstalled(Landroid/content/Context;)Z
    .locals 3

    .line 59
    const-string v0, "com.microsoft.xboxone.smartglass"

    invoke-static {p0, v0}, Lcom/microsoft/xbox/idp/util/XboxAppLinker;->isInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 60
    sput-boolean v1, Lcom/microsoft/xbox/idp/util/XboxAppLinker;->mainAppInstalled:Z

    goto :goto_0

    .line 62
    :cond_0
    sput-boolean v2, Lcom/microsoft/xbox/idp/util/XboxAppLinker;->mainAppInstalled:Z

    .line 65
    :goto_0
    const-string v0, "com.microsoft.xboxone.smartglass.beta"

    invoke-static {p0, v0}, Lcom/microsoft/xbox/idp/util/XboxAppLinker;->isInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 66
    sput-boolean v1, Lcom/microsoft/xbox/idp/util/XboxAppLinker;->betaAppInstalled:Z

    goto :goto_1

    .line 68
    :cond_1
    sput-boolean v2, Lcom/microsoft/xbox/idp/util/XboxAppLinker;->betaAppInstalled:Z

    .line 71
    :goto_1
    sget-boolean p0, Lcom/microsoft/xbox/idp/util/XboxAppLinker;->mainAppInstalled:Z

    if-nez p0, :cond_3

    sget-boolean p0, Lcom/microsoft/xbox/idp/util/XboxAppLinker;->betaAppInstalled:Z

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :cond_3
    :goto_2
    return v1
.end method
