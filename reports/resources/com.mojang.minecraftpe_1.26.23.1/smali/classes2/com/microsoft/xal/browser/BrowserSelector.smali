.class public Lcom/microsoft/xal/browser/BrowserSelector;
.super Ljava/lang/Object;
.source "BrowserSelector.java"


# static fields
.field public static final customTabsAllowedBrowsers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/microsoft/xal/browser/BrowserSelector;->customTabsAllowedBrowsers:Ljava/util/Map;

    .line 36
    const-string v1, "com.android.chrome"

    const-string v2, "OJGKRT0HGZNU+LGa8F7GViztV4g="

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    const-string v1, "org.mozilla.firefox"

    const-string v2, "kg9Idqale0pqL0zK9l99Kc4m/yw="

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    const-string v1, "com.microsoft.emmx"

    const-string v2, "P2QOJ59jvOpxCCrn6MfvotoBTK0="

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    const-string v1, "com.sec.android.app.sbrowser"

    const-string v2, "nKUXDzgZGd/gRG/NqxixmhQ7MWM="

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static browserAllowedForCustomTabs(Landroid/content/Context;Lcom/microsoft/xal/logging/XalLogger;Ljava/lang/String;)Z
    .locals 4

    const-string v0, "No package info found for package: "

    .line 159
    sget-object v1, Lcom/microsoft/xal/browser/BrowserSelector;->customTabsAllowedBrowsers:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 168
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v3, 0x40

    invoke-virtual {p0, p2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-nez p0, :cond_1

    .line 171
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/microsoft/xal/logging/XalLogger;->Important(Ljava/lang/String;)V

    return v2

    .line 175
    :cond_1
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length p2, p0

    move v0, v2

    :goto_0
    if-ge v0, p2, :cond_3

    aget-object v3, p0, v0

    .line 177
    invoke-static {v3}, Lcom/microsoft/xal/browser/BrowserSelector;->hashFromSignature(Landroid/content/pm/Signature;)Ljava/lang/String;

    move-result-object v3

    .line 178
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 190
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "browserAllowedForCustomTabs() Error in hashFromSignature(): "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/microsoft/xal/logging/XalLogger;->Error(Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception p0

    .line 186
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "browserAllowedForCustomTabs() Error in getPackageInfo(): "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/microsoft/xal/logging/XalLogger;->Error(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return v2
.end method

.method public static browserInfoImpliesNoUserDefault(Lcom/microsoft/xal/browser/BrowserSelectionResult$BrowserInfo;)Z
    .locals 1

    .line 149
    iget v0, p0, Lcom/microsoft/xal/browser/BrowserSelectionResult$BrowserInfo;->versionCode:I

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/microsoft/xal/browser/BrowserSelectionResult$BrowserInfo;->versionName:Ljava/lang/String;

    const-string v0, "none"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static browserSupportsCustomTabs(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    .line 198
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.support.customtabs.action.CustomTabsService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 199
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    .line 201
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 203
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public static hashFromSignature(Landroid/content/pm/Signature;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 214
    const-string v0, "SHA"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 215
    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 216
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    const/4 v0, 0x2

    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static selectBrowser(Landroid/content/Context;Z)Lcom/microsoft/xal/browser/BrowserSelectionResult;
    .locals 4

    .line 63
    new-instance v0, Lcom/microsoft/xal/logging/XalLogger;

    const-string v1, "BrowserSelector"

    invoke-direct {v0, v1}, Lcom/microsoft/xal/logging/XalLogger;-><init>(Ljava/lang/String;)V

    .line 65
    :try_start_0
    invoke-static {p0, v0}, Lcom/microsoft/xal/browser/BrowserSelector;->userDefaultBrowserInfo(Landroid/content/Context;Lcom/microsoft/xal/logging/XalLogger;)Lcom/microsoft/xal/browser/BrowserSelectionResult$BrowserInfo;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 71
    const-string p0, "inProcRequested"

    goto :goto_0

    .line 73
    :cond_0
    invoke-static {v1}, Lcom/microsoft/xal/browser/BrowserSelector;->browserInfoImpliesNoUserDefault(Lcom/microsoft/xal/browser/BrowserSelectionResult$BrowserInfo;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 75
    const-string p0, "noDefault"

    goto :goto_0

    .line 79
    :cond_1
    iget-object p1, v1, Lcom/microsoft/xal/browser/BrowserSelectionResult$BrowserInfo;->packageName:Ljava/lang/String;

    .line 81
    invoke-static {p0, p1}, Lcom/microsoft/xal/browser/BrowserSelector;->browserSupportsCustomTabs(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 83
    const-string p0, "selectBrowser() Default browser does not support custom tabs."

    invoke-virtual {v0, p0}, Lcom/microsoft/xal/logging/XalLogger;->Important(Ljava/lang/String;)V

    .line 84
    const-string p0, "CTNotSupported"

    goto :goto_0

    .line 86
    :cond_2
    invoke-static {p0, v0, p1}, Lcom/microsoft/xal/browser/BrowserSelector;->browserAllowedForCustomTabs(Landroid/content/Context;Lcom/microsoft/xal/logging/XalLogger;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_3

    .line 88
    const-string p0, "selectBrowser() Default browser supports custom tabs, but is not allowed."

    invoke-virtual {v0, p0}, Lcom/microsoft/xal/logging/XalLogger;->Important(Ljava/lang/String;)V

    .line 89
    const-string p0, "CTSupportedButNotAllowed"

    goto :goto_0

    .line 93
    :cond_3
    const-string p0, "selectBrowser() Default browser supports custom tabs and is allowed."

    invoke-virtual {v0, p0}, Lcom/microsoft/xal/logging/XalLogger;->Important(Ljava/lang/String;)V

    .line 94
    const-string p0, "CTSupportedAndAllowed"

    const/4 v2, 0x1

    .line 99
    :goto_0
    new-instance p1, Lcom/microsoft/xal/browser/BrowserSelectionResult;

    invoke-direct {p1, v1, p0, v2}, Lcom/microsoft/xal/browser/BrowserSelectionResult;-><init>(Lcom/microsoft/xal/browser/BrowserSelectionResult$BrowserInfo;Ljava/lang/String;Z)V

    .line 100
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lcom/microsoft/xal/logging/XalLogger;->close()V

    return-object p1

    :catchall_0
    move-exception p0

    .line 63
    :try_start_1
    invoke-virtual {v0}, Lcom/microsoft/xal/logging/XalLogger;->close()V

    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0
.end method

.method public static userDefaultBrowserInfo(Landroid/content/Context;Lcom/microsoft/xal/logging/XalLogger;)Lcom/microsoft/xal/browser/BrowserSelectionResult$BrowserInfo;
    .locals 5

    .line 106
    new-instance v0, Landroid/content/Intent;

    const-string v1, "https://microsoft.com"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 107
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, 0x10000

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 108
    :cond_0
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    :goto_0
    const/4 v1, 0x0

    .line 110
    const-string v2, "none"

    if-nez v0, :cond_1

    .line 114
    const-string/jumbo p0, "userDefaultBrowserInfo() No default browser resolved."

    invoke-virtual {p1, p0}, Lcom/microsoft/xal/logging/XalLogger;->Important(Ljava/lang/String;)V

    .line 115
    new-instance p0, Lcom/microsoft/xal/browser/BrowserSelectionResult$BrowserInfo;

    invoke-direct {p0, v2, v1, v2}, Lcom/microsoft/xal/browser/BrowserSelectionResult$BrowserInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-object p0

    .line 117
    :cond_1
    const-string v3, "android"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 121
    const-string/jumbo p0, "userDefaultBrowserInfo() System resolved as default browser."

    invoke-virtual {p1, p0}, Lcom/microsoft/xal/logging/XalLogger;->Important(Ljava/lang/String;)V

    .line 122
    new-instance p0, Lcom/microsoft/xal/browser/BrowserSelectionResult$BrowserInfo;

    invoke-direct {p0, v3, v1, v2}, Lcom/microsoft/xal/browser/BrowserSelectionResult$BrowserInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-object p0

    :cond_2
    const/4 v2, -0x1

    .line 133
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 134
    iget v2, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 135
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 139
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "userDefaultBrowserInfo() Error in getPackageInfo(): "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/microsoft/xal/logging/XalLogger;->Error(Ljava/lang/String;)V

    const-string/jumbo p0, "unknown"

    .line 142
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "userDefaultBrowserInfo() Found "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " as user\'s default browser."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/microsoft/xal/logging/XalLogger;->Important(Ljava/lang/String;)V

    .line 143
    new-instance p1, Lcom/microsoft/xal/browser/BrowserSelectionResult$BrowserInfo;

    invoke-direct {p1, v0, v2, p0}, Lcom/microsoft/xal/browser/BrowserSelectionResult$BrowserInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-object p1
.end method
