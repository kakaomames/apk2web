.class public Lcom/braze/configuration/BrazeConfigurationProvider;
.super Lcom/braze/configuration/CachedConfigurationProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/braze/configuration/BrazeConfigurationProvider$b;,
        Lcom/braze/configuration/BrazeConfigurationProvider$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000~\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\"\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u0016\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0014\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0017\u0018\u0000 r2\u00020\u0001:\u0002stB\u000f\u0012\u0006\u0010\r\u001a\u00020\u000c\u00a2\u0006\u0004\u0008p\u0010qJ4\u0010\t\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0008\"\u000e\u0008\u0000\u0010\u0003*\u0008\u0012\u0004\u0012\u00028\u00000\u00022\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0008\u0010\u000b\u001a\u00020\nH\u0007R \u0010\r\u001a\u00020\u000c8\u0000X\u0081\u0004\u00a2\u0006\u0012\n\u0004\u0008\r\u0010\u000e\u0012\u0004\u0008\u0011\u0010\u0012\u001a\u0004\u0008\u000f\u0010\u0010R\u001a\u0010\u0017\u001a\u00020\u00138BX\u0082\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u0016\u0010\u0012\u001a\u0004\u0008\u0014\u0010\u0015R\u0011\u0010\u0019\u001a\u00020\u00188F\u00a2\u0006\u0006\u001a\u0004\u0008\u0019\u0010\u001aR\u0017\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u001b8F\u00a2\u0006\u0006\u001a\u0004\u0008\u001c\u0010\u001dR\u0011\u0010 \u001a\u00020\u00138F\u00a2\u0006\u0006\u001a\u0004\u0008\u001f\u0010\u0015R\u0011\u0010$\u001a\u00020!8F\u00a2\u0006\u0006\u001a\u0004\u0008\"\u0010#R\u0011\u0010%\u001a\u00020\u00188F\u00a2\u0006\u0006\u001a\u0004\u0008%\u0010\u001aR\u0011\u0010&\u001a\u00020\u00188F\u00a2\u0006\u0006\u001a\u0004\u0008&\u0010\u001aR\u0011\u0010\'\u001a\u00020\u00188F\u00a2\u0006\u0006\u001a\u0004\u0008\'\u0010\u001aR\u0011\u0010+\u001a\u00020(8F\u00a2\u0006\u0006\u001a\u0004\u0008)\u0010*R\u0011\u0010-\u001a\u00020(8F\u00a2\u0006\u0006\u001a\u0004\u0008,\u0010*R\u0011\u00101\u001a\u00020.8F\u00a2\u0006\u0006\u001a\u0004\u0008/\u00100R\u0011\u00103\u001a\u00020(8F\u00a2\u0006\u0006\u001a\u0004\u00082\u0010*R\u0017\u00106\u001a\u00020(8F\u00a2\u0006\u000c\u0012\u0004\u00085\u0010\u0012\u001a\u0004\u00084\u0010*R\u0013\u00108\u001a\u0004\u0018\u00010\u00138F\u00a2\u0006\u0006\u001a\u0004\u00087\u0010\u0015R\u0011\u0010:\u001a\u00020\u00188F\u00a2\u0006\u0006\u001a\u0004\u00089\u0010\u001aR\u0011\u0010;\u001a\u00020\u00188F\u00a2\u0006\u0006\u001a\u0004\u0008;\u0010\u001aR\u0011\u0010=\u001a\u00020\u00138F\u00a2\u0006\u0006\u001a\u0004\u0008<\u0010\u0015R\u0011\u0010?\u001a\u00020\u00138F\u00a2\u0006\u0006\u001a\u0004\u0008>\u0010\u0015R\u0011\u0010A\u001a\u00020(8F\u00a2\u0006\u0006\u001a\u0004\u0008@\u0010*R\u0017\u0010D\u001a\u00020(8G\u00a2\u0006\u000c\u0012\u0004\u0008C\u0010\u0012\u001a\u0004\u0008B\u0010*R\u0013\u0010H\u001a\u0004\u0018\u00010E8F\u00a2\u0006\u0006\u001a\u0004\u0008F\u0010GR\u0011\u0010I\u001a\u00020\u00188F\u00a2\u0006\u0006\u001a\u0004\u0008I\u0010\u001aR\u0013\u0010K\u001a\u0004\u0018\u00010\u00138F\u00a2\u0006\u0006\u001a\u0004\u0008J\u0010\u0015R\u0011\u0010L\u001a\u00020\u00188F\u00a2\u0006\u0006\u001a\u0004\u0008L\u0010\u001aR\u0011\u0010M\u001a\u00020\u00188F\u00a2\u0006\u0006\u001a\u0004\u0008M\u0010\u001aR\u0011\u0010N\u001a\u00020\u00188F\u00a2\u0006\u0006\u001a\u0004\u0008N\u0010\u001aR\u0013\u0010P\u001a\u0004\u0018\u00010\u00138F\u00a2\u0006\u0006\u001a\u0004\u0008O\u0010\u0015R\u0017\u0010T\u001a\u0008\u0012\u0004\u0012\u00020Q0\u00088G\u00a2\u0006\u0006\u001a\u0004\u0008R\u0010SR\u0017\u0010V\u001a\u0008\u0012\u0004\u0012\u00020Q0\u00088F\u00a2\u0006\u0006\u001a\u0004\u0008U\u0010SR\u0011\u0010W\u001a\u00020\u00188G\u00a2\u0006\u0006\u001a\u0004\u0008W\u0010\u001aR\u0011\u0010X\u001a\u00020\u00188F\u00a2\u0006\u0006\u001a\u0004\u0008X\u0010\u001aR\u0011\u0010Y\u001a\u00020\u00188F\u00a2\u0006\u0006\u001a\u0004\u0008Y\u0010\u001aR\u0011\u0010Z\u001a\u00020\u00188F\u00a2\u0006\u0006\u001a\u0004\u0008Z\u0010\u001aR\u0011\u0010[\u001a\u00020\u00188F\u00a2\u0006\u0006\u001a\u0004\u0008[\u0010\u001aR\u0011\u0010]\u001a\u00020\u00188F\u00a2\u0006\u0006\u001a\u0004\u0008\\\u0010\u001aR\u0011\u0010^\u001a\u00020\u00188F\u00a2\u0006\u0006\u001a\u0004\u0008^\u0010\u001aR\u0011\u0010_\u001a\u00020\u00188F\u00a2\u0006\u0006\u001a\u0004\u0008_\u0010\u001aR\u0011\u0010a\u001a\u00020(8F\u00a2\u0006\u0006\u001a\u0004\u0008`\u0010*R\u0013\u0010c\u001a\u0004\u0018\u00010\u00138F\u00a2\u0006\u0006\u001a\u0004\u0008b\u0010\u0015R\u0011\u0010e\u001a\u00020(8F\u00a2\u0006\u0006\u001a\u0004\u0008d\u0010*R\u0017\u0010h\u001a\u0008\u0012\u0004\u0012\u00020f0\u00088F\u00a2\u0006\u0006\u001a\u0004\u0008g\u0010SR\u0011\u0010i\u001a\u00020\u00188F\u00a2\u0006\u0006\u001a\u0004\u0008i\u0010\u001aR\u0011\u0010j\u001a\u00020\u00188F\u00a2\u0006\u0006\u001a\u0004\u0008j\u0010\u001aR\u0011\u0010k\u001a\u00020\u00188F\u00a2\u0006\u0006\u001a\u0004\u0008k\u0010\u001aR\u0011\u0010l\u001a\u00020\u00188F\u00a2\u0006\u0006\u001a\u0004\u0008l\u0010\u001aR\u0017\u0010o\u001a\u0008\u0012\u0004\u0012\u00020m0\u00088F\u00a2\u0006\u0006\u001a\u0004\u0008n\u0010S\u00a8\u0006u"
    }
    d2 = {
        "Lcom/braze/configuration/BrazeConfigurationProvider;",
        "Lcom/braze/configuration/CachedConfigurationProvider;",
        "",
        "E",
        "Ljava/lang/Class;",
        "targetEnumClass",
        "Lcom/braze/configuration/BrazeConfigurationProvider$b;",
        "configField",
        "Ljava/util/EnumSet;",
        "getGenericEnumSetFromStringSet",
        "",
        "clear",
        "Landroid/content/Context;",
        "context",
        "Landroid/content/Context;",
        "getContext$android_sdk_base_release",
        "()Landroid/content/Context;",
        "getContext$android_sdk_base_release$annotations",
        "()V",
        "",
        "getServerTarget",
        "()Ljava/lang/String;",
        "getServerTarget$annotations",
        "serverTarget",
        "",
        "isEphemeralEventsEnabled",
        "()Z",
        "",
        "getEphemeralEventKeys",
        "()Ljava/util/Set;",
        "ephemeralEventKeys",
        "getBaseUrlForRequests",
        "baseUrlForRequests",
        "Lbo/app/i;",
        "getBrazeApiKey",
        "()Lbo/app/i;",
        "brazeApiKey",
        "isAdmMessagingRegistrationEnabled",
        "isLocationCollectionEnabled",
        "isGeofencesEnabled",
        "",
        "getSmallNotificationIconResourceId",
        "()I",
        "smallNotificationIconResourceId",
        "getLargeNotificationIconResourceId",
        "largeNotificationIconResourceId",
        "",
        "getTriggerActionMinimumTimeIntervalInSeconds",
        "()J",
        "triggerActionMinimumTimeIntervalInSeconds",
        "getSessionTimeoutSeconds",
        "sessionTimeoutSeconds",
        "getVersionCode",
        "getVersionCode$annotations",
        "versionCode",
        "getCustomEndpoint",
        "customEndpoint",
        "getDoesHandlePushDeepLinksAutomatically",
        "doesHandlePushDeepLinksAutomatically",
        "isNewsfeedVisualIndicatorOn",
        "getDefaultNotificationChannelName",
        "defaultNotificationChannelName",
        "getDefaultNotificationChannelDescription",
        "defaultNotificationChannelDescription",
        "getApplicationIconResourceId",
        "applicationIconResourceId",
        "getDefaultNotificationAccentColor",
        "getDefaultNotificationAccentColor$annotations",
        "defaultNotificationAccentColor",
        "Lcom/braze/enums/SdkFlavor;",
        "getSdkFlavor",
        "()Lcom/braze/enums/SdkFlavor;",
        "sdkFlavor",
        "isPushDeepLinkBackStackActivityEnabled",
        "getPushDeepLinkBackStackActivityClassName",
        "pushDeepLinkBackStackActivityClassName",
        "isSessionStartBasedTimeoutEnabled",
        "isFirebaseCloudMessagingRegistrationEnabled",
        "isContentCardsUnreadVisualIndicatorEnabled",
        "getFirebaseCloudMessagingSenderIdKey",
        "firebaseCloudMessagingSenderIdKey",
        "Lcom/braze/enums/DeviceKey;",
        "getDeviceObjectWhitelist",
        "()Ljava/util/EnumSet;",
        "deviceObjectWhitelist",
        "getDeviceObjectAllowlist",
        "deviceObjectAllowlist",
        "isDeviceObjectWhitelistEnabled",
        "isDeviceObjectAllowlistEnabled",
        "isInAppMessageAccessibilityExclusiveModeEnabled",
        "isPushWakeScreenForNotificationEnabled",
        "isPushNotificationHtmlRenderingEnabled",
        "getDoesPushStoryDismissOnClick",
        "doesPushStoryDismissOnClick",
        "isInAppMessageTestPushEagerDisplayEnabled",
        "isAutomaticGeofenceRequestsEnabled",
        "getLoggerInitialLogLevel",
        "loggerInitialLogLevel",
        "getCustomHtmlWebViewActivityClassName",
        "customHtmlWebViewActivityClassName",
        "getInAppMessageWebViewClientOnPageFinishedMaxWaitMs",
        "inAppMessageWebViewClientOnPageFinishedMaxWaitMs",
        "Lcom/braze/enums/LocationProviderName;",
        "getCustomLocationProviderNames",
        "customLocationProviderNames",
        "isFirebaseMessagingServiceOnNewTokenRegistrationEnabled",
        "isSdkAuthenticationEnabled",
        "isTouchModeRequiredForHtmlInAppMessages",
        "isHtmlInAppMessageApplyWindowInsetsEnabled",
        "Lcom/braze/enums/BrazeSdkMetadata;",
        "getSdkMetadata",
        "sdkMetadata",
        "<init>",
        "(Landroid/content/Context;)V",
        "Companion",
        "a",
        "b",
        "android-sdk-base_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# static fields
.field public static final Companion:Lcom/braze/configuration/BrazeConfigurationProvider$a;

.field public static final DEFAULT_IN_APP_MESSAGE_WEBVIEW_ONPAGEFINISHED_WAIT_MS:I

.field public static final DEFAULT_NOTIFICATION_CHANNEL_DESCRIPTION_DEFAULT_VALUE:Ljava/lang/String; = ""

.field public static final DEFAULT_NOTIFICATION_CHANNEL_NAME_DEFAULT_VALUE:Ljava/lang/String; = "General"

.field private static final DEFAULT_SESSION_TIMEOUT_SECONDS:I = 0xa

.field private static final DEFAULT_TRIGGER_MINIMUM_INTERVAL:I = 0x1e

.field public static final MAX_ALLOWED_EPHEMERAL_EVENTS:I = 0xc


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/braze/configuration/BrazeConfigurationProvider$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/braze/configuration/BrazeConfigurationProvider$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/braze/configuration/BrazeConfigurationProvider;->Companion:Lcom/braze/configuration/BrazeConfigurationProvider$a;

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xf

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    long-to-int v0, v0

    .line 2
    sput v0, Lcom/braze/configuration/BrazeConfigurationProvider;->DEFAULT_IN_APP_MESSAGE_WEBVIEW_ONPAGEFINISHED_WAIT_MS:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    .line 1
    invoke-direct/range {v1 .. v6}, Lcom/braze/configuration/CachedConfigurationProvider;-><init>(Landroid/content/Context;ZLcom/braze/configuration/RuntimeAppConfigurationProvider;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "context.applicationContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/braze/configuration/BrazeConfigurationProvider;->context:Landroid/content/Context;

    return-void
.end method

.method public static synthetic getContext$android_sdk_base_release$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getDefaultNotificationAccentColor$annotations()V
    .locals 0

    return-void
.end method

.method private final getGenericEnumSetFromStringSet(Ljava/lang/Class;Lcom/braze/configuration/BrazeConfigurationProvider$b;)Ljava/util/EnumSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(",
            "Ljava/lang/Class<",
            "TE;>;",
            "Lcom/braze/configuration/BrazeConfigurationProvider$b;",
            ")",
            "Ljava/util/EnumSet<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcom/braze/configuration/BrazeConfigurationProvider$b;->b()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/braze/configuration/CachedConfigurationProvider;->getConfigurationCache()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/braze/configuration/CachedConfigurationProvider;->getConfigurationCache()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Ljava/util/EnumSet;

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type java.util.EnumSet<E of com.braze.configuration.BrazeConfigurationProvider.getGenericEnumSetFromStringSet>"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_1
    invoke-virtual {p2}, Lcom/braze/configuration/BrazeConfigurationProvider$b;->b()Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p0, p2, v1}, Lcom/braze/configuration/CachedConfigurationProvider;->getStringSetValue(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p2

    if-nez p2, :cond_2

    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    .line 7
    :cond_2
    invoke-static {p1, p2}, Lbo/app/v0;->a(Ljava/lang/Class;Ljava/util/Set;)Ljava/util/EnumSet;

    move-result-object p1

    .line 12
    invoke-virtual {p0}, Lcom/braze/configuration/CachedConfigurationProvider;->getConfigurationCache()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method private final getServerTarget()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lcom/braze/configuration/BrazeConfigurationProvider$b;->f:Lcom/braze/configuration/BrazeConfigurationProvider$b;

    invoke-virtual {v0}, Lcom/braze/configuration/BrazeConfigurationProvider$b;->b()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v1, Lorg/conscrypt/io/fMC/nEChR;->INerIPvtMVUsDS:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/braze/configuration/CachedConfigurationProvider;->getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method private static synthetic getServerTarget$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getVersionCode$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/braze/configuration/CachedConfigurationProvider;->getConfigurationCache()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 2
    invoke-virtual {p0}, Lcom/braze/configuration/CachedConfigurationProvider;->getRuntimeAppConfigurationProvider()Lcom/braze/configuration/RuntimeAppConfigurationProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/braze/configuration/RuntimeAppConfigurationProvider;->getStorageMap()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 5
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final getApplicationIconResourceId()I
    .locals 7

    .line 2
    invoke-virtual {p0}, Lcom/braze/configuration/CachedConfigurationProvider;->getConfigurationCache()Ljava/util/Map;

    move-result-object v0

    const-string v1, "application_icon"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/braze/configuration/CachedConfigurationProvider;->getConfigurationCache()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_2

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type kotlin.Int"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/braze/configuration/BrazeConfigurationProvider;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    .line 8
    :try_start_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x21

    if-lt v3, v4, :cond_2

    .line 9
    iget-object v3, p0, Lcom/braze/configuration/BrazeConfigurationProvider;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Landroid/content/pm/PackageManager$ApplicationInfoFlags;->of(J)Landroid/content/pm/PackageManager$ApplicationInfoFlags;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$ApplicationInfoFlags;)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    goto :goto_0

    .line 12
    :cond_2
    iget-object v3, p0, Lcom/braze/configuration/BrazeConfigurationProvider;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 13
    :goto_0
    const-string v4, "if (Build.VERSION.SDK_IN\u2026 0)\n                    }"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    iget v0, v3, Landroid/content/pm/ApplicationInfo;->icon:I

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 21
    sget-object v4, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v5, Lcom/braze/support/BrazeLogger$Priority;->E:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v6, Lcom/braze/configuration/BrazeConfigurationProvider$c;

    invoke-direct {v6, v0}, Lcom/braze/configuration/BrazeConfigurationProvider$c;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0, v5, v3, v6}, Lcom/braze/support/BrazeLogger;->brazelog(Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V

    move v0, v2

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 23
    invoke-virtual {p0}, Lcom/braze/configuration/CachedConfigurationProvider;->getConfigurationCache()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    return v0
.end method

.method public final getBaseUrlForRequests()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/braze/configuration/BrazeConfigurationProvider;->getServerTarget()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "US"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "this as java.lang.String).toUpperCase(locale)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "STAGING"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    const-string v0, "https://sondheim.braze.com/api/v3/"

    goto :goto_0

    .line 4
    :cond_0
    const-string v0, "https://sdk.iad-01.braze.com/api/v3/"

    :goto_0
    return-object v0
.end method

.method public final getBrazeApiKey()Lbo/app/i;
    .locals 10

    .line 1
    sget-object v0, Lcom/braze/configuration/BrazeConfigurationProvider$b;->e:Lcom/braze/configuration/BrazeConfigurationProvider$b;

    invoke-virtual {v0}, Lcom/braze/configuration/BrazeConfigurationProvider$b;->b()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/braze/configuration/CachedConfigurationProvider;->getConfigurationCache()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/braze/configuration/CachedConfigurationProvider;->getRuntimeAppConfigurationProvider()Lcom/braze/configuration/RuntimeAppConfigurationProvider;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/braze/configuration/RuntimeAppConfigurationProvider;->getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 6
    sget-object v3, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v5, Lcom/braze/support/BrazeLogger$Priority;->I:Lcom/braze/support/BrazeLogger$Priority;

    sget-object v7, Lcom/braze/configuration/BrazeConfigurationProvider$e;->b:Lcom/braze/configuration/BrazeConfigurationProvider$e;

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v6, 0x0

    move-object v4, p0

    invoke-static/range {v3 .. v9}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p0, v0, v2}, Lcom/braze/configuration/CachedConfigurationProvider;->getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_1

    .line 13
    invoke-virtual {p0}, Lcom/braze/configuration/CachedConfigurationProvider;->getConfigurationCache()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz v1, :cond_2

    .line 31
    new-instance v0, Lbo/app/i;

    invoke-direct {v0, v1}, Lbo/app/i;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 32
    :cond_2
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v1, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    sget-object v6, Lcom/braze/configuration/BrazeConfigurationProvider$f;->b:Lcom/braze/configuration/BrazeConfigurationProvider$f;

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v5, 0x0

    move-object v2, v0

    move-object v3, p0

    move-object v4, v1

    invoke-static/range {v2 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 33
    sget-object v6, Lcom/braze/configuration/BrazeConfigurationProvider$g;->b:Lcom/braze/configuration/BrazeConfigurationProvider$g;

    invoke-static/range {v2 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 34
    sget-object v6, Lcom/braze/configuration/BrazeConfigurationProvider$h;->b:Lcom/braze/configuration/BrazeConfigurationProvider$h;

    invoke-static/range {v2 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 35
    sget-object v6, Lcom/braze/configuration/BrazeConfigurationProvider$i;->b:Lcom/braze/configuration/BrazeConfigurationProvider$i;

    invoke-static/range {v2 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 36
    sget-object v6, Lcom/braze/configuration/BrazeConfigurationProvider$j;->b:Lcom/braze/configuration/BrazeConfigurationProvider$j;

    invoke-static/range {v2 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 37
    sget-object v6, Lcom/braze/configuration/BrazeConfigurationProvider$k;->b:Lcom/braze/configuration/BrazeConfigurationProvider$k;

    invoke-static/range {v2 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 38
    sget-object v6, Lcom/braze/configuration/BrazeConfigurationProvider$l;->b:Lcom/braze/configuration/BrazeConfigurationProvider$l;

    invoke-static/range {v2 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 39
    sget-object v6, Lcom/braze/configuration/BrazeConfigurationProvider$m;->b:Lcom/braze/configuration/BrazeConfigurationProvider$m;

    invoke-static/range {v2 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 40
    sget-object v6, Lcom/braze/configuration/BrazeConfigurationProvider$d;->b:Lcom/braze/configuration/BrazeConfigurationProvider$d;

    invoke-static/range {v2 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 41
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unable to read the Braze API key from the res/values/braze.xml file or from runtime configuration via BrazeConfig. See log for more details."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getContext$android_sdk_base_release()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/braze/configuration/BrazeConfigurationProvider;->context:Landroid/content/Context;

    return-object v0
.end method

.method public final getCustomEndpoint()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lcom/braze/configuration/BrazeConfigurationProvider$b;->q:Lcom/braze/configuration/BrazeConfigurationProvider$b;

    invoke-virtual {v0}, Lcom/braze/configuration/BrazeConfigurationProvider$b;->b()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/braze/configuration/CachedConfigurationProvider;->getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getCustomHtmlWebViewActivityClassName()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lcom/braze/configuration/BrazeConfigurationProvider$b;->I:Lcom/braze/configuration/BrazeConfigurationProvider$b;

    invoke-virtual {v0}, Lcom/braze/configuration/BrazeConfigurationProvider$b;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/braze/configuration/CachedConfigurationProvider;->getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getCustomLocationProviderNames()Ljava/util/EnumSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lcom/braze/enums/LocationProviderName;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/braze/configuration/BrazeConfigurationProvider$b;->K:Lcom/braze/configuration/BrazeConfigurationProvider$b;

    .line 2
    const-class v1, Lcom/braze/enums/LocationProviderName;

    invoke-direct {p0, v1, v0}, Lcom/braze/configuration/BrazeConfigurationProvider;->getGenericEnumSetFromStringSet(Ljava/lang/Class;Lcom/braze/configuration/BrazeConfigurationProvider$b;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultNotificationAccentColor()I
    .locals 8

    .line 1
    sget-object v0, Lcom/braze/configuration/BrazeConfigurationProvider$b;->l:Lcom/braze/configuration/BrazeConfigurationProvider$b;

    invoke-virtual {v0}, Lcom/braze/configuration/BrazeConfigurationProvider$b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/braze/configuration/CachedConfigurationProvider;->getColorValue(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v5, Lcom/braze/configuration/BrazeConfigurationProvider$n;->b:Lcom/braze/configuration/BrazeConfigurationProvider$n;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 4
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final getDefaultNotificationChannelDescription()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lcom/braze/configuration/BrazeConfigurationProvider$b;->s:Lcom/braze/configuration/BrazeConfigurationProvider$b;

    invoke-virtual {v0}, Lcom/braze/configuration/BrazeConfigurationProvider$b;->b()Ljava/lang/String;

    move-result-object v0

    .line 2
    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/braze/configuration/CachedConfigurationProvider;->getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method public final getDefaultNotificationChannelName()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lcom/braze/configuration/BrazeConfigurationProvider$b;->r:Lcom/braze/configuration/BrazeConfigurationProvider$b;

    invoke-virtual {v0}, Lcom/braze/configuration/BrazeConfigurationProvider$b;->b()Ljava/lang/String;

    move-result-object v0

    .line 2
    const-string v1, "General"

    invoke-virtual {p0, v0, v1}, Lcom/braze/configuration/CachedConfigurationProvider;->getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method public final getDeviceObjectAllowlist()Ljava/util/EnumSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lcom/braze/enums/DeviceKey;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/braze/configuration/BrazeConfigurationProvider$b;->A:Lcom/braze/configuration/BrazeConfigurationProvider$b;

    .line 2
    const-class v1, Lcom/braze/enums/DeviceKey;

    invoke-direct {p0, v1, v0}, Lcom/braze/configuration/BrazeConfigurationProvider;->getGenericEnumSetFromStringSet(Ljava/lang/Class;Lcom/braze/configuration/BrazeConfigurationProvider$b;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method public final getDeviceObjectWhitelist()Ljava/util/EnumSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lcom/braze/enums/DeviceKey;",
            ">;"
        }
    .end annotation
    .annotation runtime Lkotlin/Deprecated;
        message = "Use {@link #getDeviceObjectAllowList()}"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "getDeviceObjectAllowlist"
            imports = {}
        .end subannotation
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/braze/configuration/BrazeConfigurationProvider;->getDeviceObjectAllowlist()Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method public final getDoesHandlePushDeepLinksAutomatically()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/braze/configuration/BrazeConfigurationProvider$b;->n:Lcom/braze/configuration/BrazeConfigurationProvider$b;

    invoke-virtual {v0}, Lcom/braze/configuration/BrazeConfigurationProvider$b;->b()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/braze/configuration/CachedConfigurationProvider;->getBooleanValue(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final getDoesPushStoryDismissOnClick()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/braze/configuration/BrazeConfigurationProvider$b;->E:Lcom/braze/configuration/BrazeConfigurationProvider$b;

    invoke-virtual {v0}, Lcom/braze/configuration/BrazeConfigurationProvider$b;->b()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/braze/configuration/CachedConfigurationProvider;->getBooleanValue(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final getEphemeralEventKeys()Ljava/util/Set;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/braze/configuration/BrazeConfigurationProvider$b;->d:Lcom/braze/configuration/BrazeConfigurationProvider$b;

    invoke-virtual {v0}, Lcom/braze/configuration/BrazeConfigurationProvider$b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/braze/configuration/CachedConfigurationProvider;->getStringSetValue(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v0

    .line 2
    :cond_0
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    const/16 v2, 0xc

    if-le v1, v2, :cond_1

    .line 3
    sget-object v3, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v5, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    sget-object v7, Lcom/braze/configuration/BrazeConfigurationProvider$o;->b:Lcom/braze/configuration/BrazeConfigurationProvider$o;

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v6, 0x0

    move-object v4, p0

    invoke-static/range {v3 .. v9}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 10
    :cond_1
    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v0

    .line 11
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final getFirebaseCloudMessagingSenderIdKey()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lcom/braze/configuration/BrazeConfigurationProvider$b;->x:Lcom/braze/configuration/BrazeConfigurationProvider$b;

    invoke-virtual {v0}, Lcom/braze/configuration/BrazeConfigurationProvider$b;->b()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/braze/configuration/CachedConfigurationProvider;->getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getInAppMessageWebViewClientOnPageFinishedMaxWaitMs()I
    .locals 2

    .line 1
    sget-object v0, Lcom/braze/configuration/BrazeConfigurationProvider$b;->L:Lcom/braze/configuration/BrazeConfigurationProvider$b;

    invoke-virtual {v0}, Lcom/braze/configuration/BrazeConfigurationProvider$b;->b()Ljava/lang/String;

    move-result-object v0

    .line 2
    sget v1, Lcom/braze/configuration/BrazeConfigurationProvider;->DEFAULT_IN_APP_MESSAGE_WEBVIEW_ONPAGEFINISHED_WAIT_MS:I

    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/braze/configuration/CachedConfigurationProvider;->getIntValue(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final getLargeNotificationIconResourceId()I
    .locals 2

    .line 1
    sget-object v0, Lcom/braze/configuration/BrazeConfigurationProvider$b;->i:Lcom/braze/configuration/BrazeConfigurationProvider$b;

    invoke-virtual {v0}, Lcom/braze/configuration/BrazeConfigurationProvider$b;->b()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/braze/configuration/CachedConfigurationProvider;->getDrawableValue(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final getLoggerInitialLogLevel()I
    .locals 2

    .line 1
    sget-object v0, Lcom/braze/configuration/BrazeConfigurationProvider$b;->H:Lcom/braze/configuration/BrazeConfigurationProvider$b;

    invoke-virtual {v0}, Lcom/braze/configuration/BrazeConfigurationProvider$b;->b()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/braze/configuration/CachedConfigurationProvider;->getIntValue(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final getPushDeepLinkBackStackActivityClassName()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lcom/braze/configuration/BrazeConfigurationProvider$b;->u:Lcom/braze/configuration/BrazeConfigurationProvider$b;

    invoke-virtual {v0}, Lcom/braze/configuration/BrazeConfigurationProvider$b;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/braze/configuration/CachedConfigurationProvider;->getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getSdkFlavor()Lcom/braze/enums/SdkFlavor;
    .locals 5

    .line 1
    sget-object v0, Lcom/braze/configuration/BrazeConfigurationProvider$b;->p:Lcom/braze/configuration/BrazeConfigurationProvider$b;

    invoke-virtual {v0}, Lcom/braze/configuration/BrazeConfigurationProvider$b;->b()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/braze/configuration/CachedConfigurationProvider;->getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    :try_start_0
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "US"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "this as java.lang.String).toUpperCase(locale)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/braze/enums/SdkFlavor;->valueOf(Ljava/lang/String;)Lcom/braze/enums/SdkFlavor;

    move-result-object v1

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 8
    sget-object v2, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v3, Lcom/braze/support/BrazeLogger$Priority;->E:Lcom/braze/support/BrazeLogger$Priority;

    sget-object v4, Lcom/braze/configuration/BrazeConfigurationProvider$p;->b:Lcom/braze/configuration/BrazeConfigurationProvider$p;

    invoke-virtual {v2, p0, v3, v0, v4}, Lcom/braze/support/BrazeLogger;->brazelog(Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V

    :cond_1
    :goto_0
    return-object v1
.end method

.method public final getSdkMetadata()Ljava/util/EnumSet;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lcom/braze/enums/BrazeSdkMetadata;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/braze/configuration/BrazeConfigurationProvider$b;->S:Lcom/braze/configuration/BrazeConfigurationProvider$b;

    invoke-virtual {v0}, Lcom/braze/configuration/BrazeConfigurationProvider$b;->b()Ljava/lang/String;

    move-result-object v0

    .line 3
    sget-object v1, Lcom/braze/configuration/CachedConfigurationProvider$b;->h:Lcom/braze/configuration/CachedConfigurationProvider$b;

    .line 5
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 6
    invoke-virtual {p0, v1, v0, v2}, Lcom/braze/configuration/CachedConfigurationProvider;->getResourceConfigurationValue(Lcom/braze/configuration/CachedConfigurationProvider$b;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-static {v0}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableSet(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    .line 11
    sget-object v2, Lcom/braze/configuration/BrazeConfigurationProvider$b;->T:Lcom/braze/configuration/BrazeConfigurationProvider$b;

    invoke-virtual {v2}, Lcom/braze/configuration/BrazeConfigurationProvider$b;->b()Ljava/lang/String;

    move-result-object v2

    .line 15
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 16
    invoke-virtual {p0, v1, v2, v3}, Lcom/braze/configuration/CachedConfigurationProvider;->getResourceConfigurationValue(Lcom/braze/configuration/CachedConfigurationProvider$b;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "null cannot be cast to non-null type kotlin.collections.Set<kotlin.String>"

    if-eqz v3, :cond_4

    check-cast v3, Ljava/util/Set;

    .line 26
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 27
    invoke-virtual {p0, v1, v2, v5}, Lcom/braze/configuration/CachedConfigurationProvider;->getRuntimeConfigurationValue(Lcom/braze/configuration/CachedConfigurationProvider$b;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    check-cast v1, Ljava/util/Set;

    .line 34
    invoke-interface {v0, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 35
    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 36
    sget-object v1, Lbo/app/v0;->a:Lbo/app/v0;

    .line 37
    const-class v1, Lcom/braze/enums/BrazeSdkMetadata;

    invoke-static {v1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    .line 38
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 39
    :try_start_0
    sget-object v3, Lbo/app/v0;->a:Lbo/app/v0;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "US"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "this as java.lang.String).toUpperCase(locale)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/braze/enums/BrazeSdkMetadata;->values()[Lcom/braze/enums/BrazeSdkMetadata;

    move-result-object v4

    .line 40
    array-length v5, v4

    const/4 v6, 0x0

    :cond_0
    if-ge v6, v5, :cond_1

    aget-object v7, v4, v6

    add-int/lit8 v6, v6, 0x1

    .line 41
    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 42
    invoke-virtual {v1, v7}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 43
    :cond_1
    new-instance v3, Ljava/util/NoSuchElementException;

    const-string v4, "Array contains no element matching the predicate."

    invoke-direct {v3, v4}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v3

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v3

    .line 44
    sget-object v4, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v5, Lbo/app/v0;->a:Lbo/app/v0;

    sget-object v6, Lcom/braze/support/BrazeLogger$Priority;->E:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v7, Lbo/app/w0;

    invoke-direct {v7, v2}, Lbo/app/w0;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6, v3, v7}, Lcom/braze/support/BrazeLogger;->brazelog(Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V

    goto :goto_0

    .line 47
    :cond_2
    const-string v0, "result"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1

    .line 48
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type kotlin.collections.MutableSet<kotlin.String>"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getSessionTimeoutSeconds()I
    .locals 2

    .line 1
    sget-object v0, Lcom/braze/configuration/BrazeConfigurationProvider$b;->j:Lcom/braze/configuration/BrazeConfigurationProvider$b;

    invoke-virtual {v0}, Lcom/braze/configuration/BrazeConfigurationProvider$b;->b()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Lcom/braze/configuration/CachedConfigurationProvider;->getIntValue(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final getSmallNotificationIconResourceId()I
    .locals 2

    .line 1
    sget-object v0, Lcom/braze/configuration/BrazeConfigurationProvider$b;->h:Lcom/braze/configuration/BrazeConfigurationProvider$b;

    invoke-virtual {v0}, Lcom/braze/configuration/BrazeConfigurationProvider$b;->b()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/braze/configuration/CachedConfigurationProvider;->getDrawableValue(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final getTriggerActionMinimumTimeIntervalInSeconds()J
    .locals 2

    .line 1
    sget-object v0, Lcom/braze/configuration/BrazeConfigurationProvider$b;->m:Lcom/braze/configuration/BrazeConfigurationProvider$b;

    invoke-virtual {v0}, Lcom/braze/configuration/BrazeConfigurationProvider$b;->b()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1e

    .line 2
    invoke-virtual {p0, v0, v1}, Lcom/braze/configuration/CachedConfigurationProvider;->getIntValue(Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public final getVersionCode()I
    .locals 5

    .line 2
    invoke-virtual {p0}, Lcom/braze/configuration/CachedConfigurationProvider;->getConfigurationCache()Ljava/util/Map;

    move-result-object v0

    const-string v1, "version_code"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/braze/configuration/CachedConfigurationProvider;->getConfigurationCache()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type kotlin.Int"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/braze/configuration/BrazeConfigurationProvider;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/braze/support/PackageUtils;->getResourcePackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 7
    iget-object v2, p0, Lcom/braze/configuration/BrazeConfigurationProvider;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 8
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 10
    sget-object v2, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v3, Lcom/braze/support/BrazeLogger$Priority;->E:Lcom/braze/support/BrazeLogger$Priority;

    sget-object v4, Lcom/braze/configuration/BrazeConfigurationProvider$q;->b:Lcom/braze/configuration/BrazeConfigurationProvider$q;

    invoke-virtual {v2, p0, v3, v0, v4}, Lcom/braze/support/BrazeLogger;->brazelog(Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V

    const/4 v0, -0x1

    .line 11
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 19
    invoke-virtual {p0}, Lcom/braze/configuration/CachedConfigurationProvider;->getConfigurationCache()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    return v0
.end method

.method public final isAdmMessagingRegistrationEnabled()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/braze/configuration/BrazeConfigurationProvider$b;->g:Lcom/braze/configuration/BrazeConfigurationProvider$b;

    invoke-virtual {v0}, Lcom/braze/configuration/BrazeConfigurationProvider$b;->b()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/braze/configuration/CachedConfigurationProvider;->getBooleanValue(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final isAutomaticGeofenceRequestsEnabled()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/braze/configuration/BrazeConfigurationProvider$b;->J:Lcom/braze/configuration/BrazeConfigurationProvider$b;

    invoke-virtual {v0}, Lcom/braze/configuration/BrazeConfigurationProvider$b;->b()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/braze/configuration/CachedConfigurationProvider;->getBooleanValue(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final isContentCardsUnreadVisualIndicatorEnabled()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/braze/configuration/BrazeConfigurationProvider$b;->y:Lcom/braze/configuration/BrazeConfigurationProvider$b;

    invoke-virtual {v0}, Lcom/braze/configuration/BrazeConfigurationProvider$b;->b()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/braze/configuration/CachedConfigurationProvider;->getBooleanValue(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final isDeviceObjectAllowlistEnabled()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/braze/configuration/BrazeConfigurationProvider$b;->z:Lcom/braze/configuration/BrazeConfigurationProvider$b;

    invoke-virtual {v0}, Lcom/braze/configuration/BrazeConfigurationProvider$b;->b()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/braze/configuration/CachedConfigurationProvider;->getBooleanValue(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final isDeviceObjectWhitelistEnabled()Z
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        message = "Use {@link #getIsDeviceObjectAllowlistEnabled()}"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "isDeviceObjectAllowlistEnabled"
            imports = {}
        .end subannotation
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/braze/configuration/BrazeConfigurationProvider;->isDeviceObjectAllowlistEnabled()Z

    move-result v0

    return v0
.end method

.method public final isEphemeralEventsEnabled()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/braze/configuration/BrazeConfigurationProvider$b;->c:Lcom/braze/configuration/BrazeConfigurationProvider$b;

    invoke-virtual {v0}, Lcom/braze/configuration/BrazeConfigurationProvider$b;->b()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, v1}, Lcom/braze/configuration/CachedConfigurationProvider;->getBooleanValue(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final isFirebaseCloudMessagingRegistrationEnabled()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/braze/configuration/BrazeConfigurationProvider$b;->w:Lcom/braze/configuration/BrazeConfigurationProvider$b;

    invoke-virtual {v0}, Lcom/braze/configuration/BrazeConfigurationProvider$b;->b()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, v1}, Lcom/braze/configuration/CachedConfigurationProvider;->getBooleanValue(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final isFirebaseMessagingServiceOnNewTokenRegistrationEnabled()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/braze/configuration/BrazeConfigurationProvider$b;->M:Lcom/braze/configuration/BrazeConfigurationProvider$b;

    invoke-virtual {v0}, Lcom/braze/configuration/BrazeConfigurationProvider$b;->b()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/braze/configuration/BrazeConfigurationProvider;->isFirebaseCloudMessagingRegistrationEnabled()Z

    move-result v1

    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/braze/configuration/CachedConfigurationProvider;->getBooleanValue(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final isGeofencesEnabled()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/braze/configuration/BrazeConfigurationProvider$b;->F:Lcom/braze/configuration/BrazeConfigurationProvider$b;

    invoke-virtual {v0}, Lcom/braze/configuration/BrazeConfigurationProvider$b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/braze/configuration/BrazeConfigurationProvider;->isLocationCollectionEnabled()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/braze/configuration/CachedConfigurationProvider;->getBooleanValue(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final isHtmlInAppMessageApplyWindowInsetsEnabled()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/braze/configuration/BrazeConfigurationProvider$b;->U:Lcom/braze/configuration/BrazeConfigurationProvider$b;

    invoke-virtual {v0}, Lcom/braze/configuration/BrazeConfigurationProvider$b;->b()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, v1}, Lcom/braze/configuration/CachedConfigurationProvider;->getBooleanValue(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final isInAppMessageAccessibilityExclusiveModeEnabled()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/braze/configuration/BrazeConfigurationProvider$b;->B:Lcom/braze/configuration/BrazeConfigurationProvider$b;

    invoke-virtual {v0}, Lcom/braze/configuration/BrazeConfigurationProvider$b;->b()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, v1}, Lcom/braze/configuration/CachedConfigurationProvider;->getBooleanValue(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final isInAppMessageTestPushEagerDisplayEnabled()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/braze/configuration/BrazeConfigurationProvider$b;->G:Lcom/braze/configuration/BrazeConfigurationProvider$b;

    invoke-virtual {v0}, Lcom/braze/configuration/BrazeConfigurationProvider$b;->b()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/braze/configuration/CachedConfigurationProvider;->getBooleanValue(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final isLocationCollectionEnabled()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/braze/configuration/BrazeConfigurationProvider$b;->k:Lcom/braze/configuration/BrazeConfigurationProvider$b;

    invoke-virtual {v0}, Lcom/braze/configuration/BrazeConfigurationProvider$b;->b()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/braze/configuration/CachedConfigurationProvider;->getBooleanValue(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final isNewsfeedVisualIndicatorOn()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/braze/configuration/BrazeConfigurationProvider$b;->o:Lcom/braze/configuration/BrazeConfigurationProvider$b;

    invoke-virtual {v0}, Lcom/braze/configuration/BrazeConfigurationProvider$b;->b()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/braze/configuration/CachedConfigurationProvider;->getBooleanValue(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final isPushDeepLinkBackStackActivityEnabled()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/braze/configuration/BrazeConfigurationProvider$b;->t:Lcom/braze/configuration/BrazeConfigurationProvider$b;

    invoke-virtual {v0}, Lcom/braze/configuration/BrazeConfigurationProvider$b;->b()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/braze/configuration/CachedConfigurationProvider;->getBooleanValue(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final isPushNotificationHtmlRenderingEnabled()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/braze/configuration/BrazeConfigurationProvider$b;->D:Lcom/braze/configuration/BrazeConfigurationProvider$b;

    invoke-virtual {v0}, Lcom/braze/configuration/BrazeConfigurationProvider$b;->b()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/braze/configuration/CachedConfigurationProvider;->getBooleanValue(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final isPushWakeScreenForNotificationEnabled()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/braze/configuration/BrazeConfigurationProvider$b;->C:Lcom/braze/configuration/BrazeConfigurationProvider$b;

    invoke-virtual {v0}, Lcom/braze/configuration/BrazeConfigurationProvider$b;->b()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/braze/configuration/CachedConfigurationProvider;->getBooleanValue(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final isSdkAuthenticationEnabled()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/braze/configuration/BrazeConfigurationProvider$b;->N:Lcom/braze/configuration/BrazeConfigurationProvider$b;

    invoke-virtual {v0}, Lcom/braze/configuration/BrazeConfigurationProvider$b;->b()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/braze/configuration/CachedConfigurationProvider;->getBooleanValue(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final isSessionStartBasedTimeoutEnabled()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/braze/configuration/BrazeConfigurationProvider$b;->v:Lcom/braze/configuration/BrazeConfigurationProvider$b;

    invoke-virtual {v0}, Lcom/braze/configuration/BrazeConfigurationProvider$b;->b()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/braze/configuration/CachedConfigurationProvider;->getBooleanValue(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final isTouchModeRequiredForHtmlInAppMessages()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/braze/configuration/BrazeConfigurationProvider$b;->O:Lcom/braze/configuration/BrazeConfigurationProvider$b;

    invoke-virtual {v0}, Lcom/braze/configuration/BrazeConfigurationProvider$b;->b()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p0, v0, v1}, Lcom/braze/configuration/CachedConfigurationProvider;->getBooleanValue(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
