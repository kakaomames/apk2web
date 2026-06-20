.class public Lcom/microsoft/xbox/telemetry/utc/CommonData;
.super Ljava/lang/Object;
.source "CommonData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xbox/telemetry/utc/CommonData$NetworkType;
    }
.end annotation


# static fields
.field private static final DEFAULTSANDBOX:Ljava/lang/String; = "RETAIL"

.field private static final DEFAULTSERVICES:Ljava/lang/String; = "none"

.field private static final EVENTVERSION:Ljava/lang/String; = "1.1"

.field private static final UNKNOWNAPP:Ljava/lang/String; = "UNKNOWN"

.field private static final UNKNOWNUSER:Ljava/lang/String; = "0"

.field private static applicationSession:Ljava/util/UUID;

.field private static netType:Lcom/microsoft/xbox/telemetry/utc/CommonData$NetworkType;

.field private static staticAccessibilityInfo:Ljava/lang/String;

.field private static staticAppName:Ljava/lang/String;

.field private static staticDeviceModel:Ljava/lang/String;

.field private static staticOSLocale:Ljava/lang/String;


# instance fields
.field private accessibilityInfo:Ljava/lang/String;

.field public additionalInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public appName:Ljava/lang/String;

.field public appSessionId:Ljava/lang/String;

.field public clientLanguage:Ljava/lang/String;

.field public deviceModel:Ljava/lang/String;

.field public eventVersion:Ljava/lang/String;

.field public network:I

.field public sandboxId:Ljava/lang/String;

.field public titleDeviceId:Ljava/lang/String;

.field public titleSessionId:Ljava/lang/String;

.field public userId:Ljava/lang/String;

.field public xsapiVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 68
    invoke-static {}, Lcom/microsoft/xbox/telemetry/utc/CommonData;->getNetworkConnection()Lcom/microsoft/xbox/telemetry/utc/CommonData$NetworkType;

    move-result-object v0

    sput-object v0, Lcom/microsoft/xbox/telemetry/utc/CommonData;->netType:Lcom/microsoft/xbox/telemetry/utc/CommonData$NetworkType;

    .line 69
    invoke-static {}, Lcom/microsoft/xbox/telemetry/utc/CommonData;->getDeviceModel()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/microsoft/xbox/telemetry/utc/CommonData;->staticDeviceModel:Ljava/lang/String;

    .line 70
    invoke-static {}, Lcom/microsoft/xbox/telemetry/utc/CommonData;->getAppName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/microsoft/xbox/telemetry/utc/CommonData;->staticAppName:Ljava/lang/String;

    .line 71
    invoke-static {}, Lcom/microsoft/xbox/telemetry/utc/CommonData;->getDeviceLocale()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/microsoft/xbox/telemetry/utc/CommonData;->staticOSLocale:Ljava/lang/String;

    .line 72
    invoke-static {}, Lcom/microsoft/xbox/telemetry/utc/CommonData;->getAccessibilityInfo()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/microsoft/xbox/telemetry/utc/CommonData;->staticAccessibilityInfo:Ljava/lang/String;

    .line 73
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/microsoft/xbox/telemetry/utc/CommonData;->applicationSession:Ljava/util/UUID;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    sget-object v0, Lcom/microsoft/xbox/telemetry/utc/CommonData;->staticDeviceModel:Ljava/lang/String;

    iput-object v0, p0, Lcom/microsoft/xbox/telemetry/utc/CommonData;->deviceModel:Ljava/lang/String;

    .line 31
    const-string v0, "1.0"

    iput-object v0, p0, Lcom/microsoft/xbox/telemetry/utc/CommonData;->xsapiVersion:Ljava/lang/String;

    .line 34
    sget-object v0, Lcom/microsoft/xbox/telemetry/utc/CommonData;->staticAppName:Ljava/lang/String;

    iput-object v0, p0, Lcom/microsoft/xbox/telemetry/utc/CommonData;->appName:Ljava/lang/String;

    .line 37
    sget-object v0, Lcom/microsoft/xbox/telemetry/utc/CommonData;->staticOSLocale:Ljava/lang/String;

    iput-object v0, p0, Lcom/microsoft/xbox/telemetry/utc/CommonData;->clientLanguage:Ljava/lang/String;

    .line 40
    sget-object v0, Lcom/microsoft/xbox/telemetry/utc/CommonData;->netType:Lcom/microsoft/xbox/telemetry/utc/CommonData$NetworkType;

    invoke-virtual {v0}, Lcom/microsoft/xbox/telemetry/utc/CommonData$NetworkType;->getValue()I

    move-result v0

    iput v0, p0, Lcom/microsoft/xbox/telemetry/utc/CommonData;->network:I

    .line 43
    invoke-static {}, Lcom/microsoft/xbox/telemetry/utc/CommonData;->getSandboxId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/xbox/telemetry/utc/CommonData;->sandboxId:Ljava/lang/String;

    .line 46
    invoke-static {}, Lcom/microsoft/xbox/telemetry/utc/CommonData;->getApplicationSession()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/xbox/telemetry/utc/CommonData;->appSessionId:Ljava/lang/String;

    .line 49
    const-string v0, "0"

    iput-object v0, p0, Lcom/microsoft/xbox/telemetry/utc/CommonData;->userId:Ljava/lang/String;

    .line 52
    invoke-static {}, Lcom/microsoft/xbox/telemetry/utc/CommonData;->get_title_telemetry_device_id()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/xbox/telemetry/utc/CommonData;->titleDeviceId:Ljava/lang/String;

    .line 55
    invoke-static {}, Lcom/microsoft/xbox/telemetry/utc/CommonData;->get_title_telemetry_session_id()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/xbox/telemetry/utc/CommonData;->titleSessionId:Ljava/lang/String;

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/microsoft/xbox/telemetry/utc/CommonData;->additionalInfo:Ljava/util/HashMap;

    .line 61
    sget-object v0, Lcom/microsoft/xbox/telemetry/utc/CommonData;->staticAccessibilityInfo:Ljava/lang/String;

    iput-object v0, p0, Lcom/microsoft/xbox/telemetry/utc/CommonData;->accessibilityInfo:Ljava/lang/String;

    .line 83
    const-string v0, "1.1"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "%s.%s"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/xbox/telemetry/utc/CommonData;->eventVersion:Ljava/lang/String;

    return-void
.end method

.method private static getAccessibilityInfo()Ljava/lang/String;
    .locals 7

    .line 220
    const/4 v0, 0x0

    sget-object v0, Lorg/apache/http/impl/auth/ZJ/Ygkg;->hAmgdQElsMKcQ:Ljava/lang/String;

    .line 223
    :try_start_0
    invoke-static {}, Lcom/microsoft/xbox/idp/interop/Interop;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 226
    const-string v2, "accessibility"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    .line 227
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 230
    const-string v3, "isenabled"

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, -0x1

    .line 232
    invoke-virtual {v1, v3}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v1

    .line 234
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "none"

    move-object v4, v3

    :goto_0
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 236
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 238
    invoke-virtual {v5}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getId()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 242
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ";%s"

    invoke-virtual {v5}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getId()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 245
    :cond_1
    const-string v1, "enabledservices"

    invoke-virtual {v2, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    new-instance v1, Lcom/google/gson/GsonBuilder;

    invoke-direct {v1}, Lcom/google/gson/GsonBuilder;-><init>()V

    .line 248
    invoke-virtual {v1}, Lcom/google/gson/GsonBuilder;->serializeNulls()Lcom/google/gson/GsonBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v1

    .line 249
    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 254
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/microsoft/xbox/telemetry/helpers/UTCLog;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    :goto_1
    return-object v0
.end method

.method private static getAppName()Ljava/lang/String;
    .locals 3

    .line 103
    const-string v0, "UNKNOWN"

    .line 106
    :try_start_0
    invoke-static {}, Lcom/microsoft/xbox/idp/interop/Interop;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 111
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 116
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/microsoft/xbox/telemetry/helpers/UTCLog;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-object v0
.end method

.method public static getApplicationSession()Ljava/lang/String;
    .locals 1

    .line 88
    sget-object v0, Lcom/microsoft/xbox/telemetry/utc/CommonData;->applicationSession:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getDeviceLocale()Ljava/lang/String;
    .locals 3

    .line 126
    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 127
    const-string v1, "%s-%s"

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 131
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/microsoft/xbox/telemetry/helpers/UTCLog;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private static getDeviceModel()Ljava/lang/String;
    .locals 3

    .line 93
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 96
    const-string/jumbo v1, "|"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 98
    :cond_0
    const-string v0, "UNKNOWN"

    return-object v0
.end method

.method private static getNetworkConnection()Lcom/microsoft/xbox/telemetry/utc/CommonData$NetworkType;
    .locals 3

    .line 176
    sget-object v0, Lcom/microsoft/xbox/telemetry/utc/CommonData;->netType:Lcom/microsoft/xbox/telemetry/utc/CommonData$NetworkType;

    sget-object v1, Lcom/microsoft/xbox/telemetry/utc/CommonData$NetworkType;->UNKNOWN:Lcom/microsoft/xbox/telemetry/utc/CommonData$NetworkType;

    if-ne v0, v1, :cond_4

    invoke-static {}, Lcom/microsoft/xbox/idp/interop/Interop;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 180
    :try_start_0
    invoke-static {}, Lcom/microsoft/xbox/idp/interop/Interop;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v1, Lcom/google/firebase/iid/EBY/WEjYEmdPgeUUZ;->BRjSS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 183
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 186
    sget-object v0, Lcom/microsoft/xbox/telemetry/utc/CommonData;->netType:Lcom/microsoft/xbox/telemetry/utc/CommonData$NetworkType;

    return-object v0

    .line 189
    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    .line 190
    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v1, v2, :cond_4

    .line 192
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x6

    if-eq v0, v1, :cond_3

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    .line 205
    sget-object v0, Lcom/microsoft/xbox/telemetry/utc/CommonData$NetworkType;->UNKNOWN:Lcom/microsoft/xbox/telemetry/utc/CommonData$NetworkType;

    sput-object v0, Lcom/microsoft/xbox/telemetry/utc/CommonData;->netType:Lcom/microsoft/xbox/telemetry/utc/CommonData$NetworkType;

    goto :goto_0

    .line 202
    :cond_1
    sget-object v0, Lcom/microsoft/xbox/telemetry/utc/CommonData$NetworkType;->WIRED:Lcom/microsoft/xbox/telemetry/utc/CommonData$NetworkType;

    sput-object v0, Lcom/microsoft/xbox/telemetry/utc/CommonData;->netType:Lcom/microsoft/xbox/telemetry/utc/CommonData$NetworkType;

    goto :goto_0

    .line 199
    :cond_2
    sget-object v0, Lcom/microsoft/xbox/telemetry/utc/CommonData$NetworkType;->WIFI:Lcom/microsoft/xbox/telemetry/utc/CommonData$NetworkType;

    sput-object v0, Lcom/microsoft/xbox/telemetry/utc/CommonData;->netType:Lcom/microsoft/xbox/telemetry/utc/CommonData$NetworkType;

    goto :goto_0

    .line 196
    :cond_3
    sget-object v0, Lcom/microsoft/xbox/telemetry/utc/CommonData$NetworkType;->CELLULAR:Lcom/microsoft/xbox/telemetry/utc/CommonData$NetworkType;

    sput-object v0, Lcom/microsoft/xbox/telemetry/utc/CommonData;->netType:Lcom/microsoft/xbox/telemetry/utc/CommonData$NetworkType;

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 211
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/microsoft/xbox/telemetry/helpers/UTCLog;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 212
    sget-object v0, Lcom/microsoft/xbox/telemetry/utc/CommonData$NetworkType;->UNKNOWN:Lcom/microsoft/xbox/telemetry/utc/CommonData$NetworkType;

    sput-object v0, Lcom/microsoft/xbox/telemetry/utc/CommonData;->netType:Lcom/microsoft/xbox/telemetry/utc/CommonData$NetworkType;

    .line 215
    :cond_4
    :goto_0
    sget-object v0, Lcom/microsoft/xbox/telemetry/utc/CommonData;->netType:Lcom/microsoft/xbox/telemetry/utc/CommonData$NetworkType;

    return-object v0
.end method

.method private static getSandboxId()Ljava/lang/String;
    .locals 2

    .line 140
    :try_start_0
    new-instance v0, Lcom/microsoft/xbox/idp/interop/XboxLiveAppConfig;

    invoke-direct {v0}, Lcom/microsoft/xbox/idp/interop/XboxLiveAppConfig;-><init>()V

    .line 141
    invoke-virtual {v0}, Lcom/microsoft/xbox/idp/interop/XboxLiveAppConfig;->getSandbox()Ljava/lang/String;

    move-result-object v0

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 145
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/microsoft/xbox/telemetry/helpers/UTCLog;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 147
    const-string v0, "RETAIL"

    return-object v0
.end method

.method private static native get_title_telemetry_device_id()Ljava/lang/String;
.end method

.method private static native get_title_telemetry_session_id()Ljava/lang/String;
.end method


# virtual methods
.method public GetAdditionalInfoString()Ljava/lang/String;
    .locals 3

    .line 279
    :try_start_0
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    .line 280
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->serializeNulls()Lcom/google/gson/GsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    .line 281
    iget-object v1, p0, Lcom/microsoft/xbox/telemetry/utc/CommonData;->additionalInfo:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :try_end_0
    .catch Lcom/google/gson/JsonIOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 285
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error in json serialization"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/gson/JsonIOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "UTCJsonSerializer"

    invoke-static {v1, v0}, Lcom/microsoft/xbox/telemetry/helpers/UTCLog;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public ToJson()Ljava/lang/String;
    .locals 3

    .line 264
    :try_start_0
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    .line 265
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->serializeNulls()Lcom/google/gson/GsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    .line 266
    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :try_end_0
    .catch Lcom/google/gson/JsonIOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 270
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error in json serialization"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/gson/JsonIOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "UTCJsonSerializer"

    invoke-static {v1, v0}, Lcom/microsoft/xbox/telemetry/helpers/UTCLog;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, ""

    :goto_0
    return-object v0
.end method
