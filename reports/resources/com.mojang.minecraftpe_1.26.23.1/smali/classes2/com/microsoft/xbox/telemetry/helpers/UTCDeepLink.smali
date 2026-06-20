.class public Lcom/microsoft/xbox/telemetry/helpers/UTCDeepLink;
.super Ljava/lang/Object;
.source "UTCDeepLink.java"


# static fields
.field public static final CALLING_APP_KEY:Ljava/lang/String; = "deepLinkCaller"

.field public static final DEEPLINK_KEY_NAME:Ljava/lang/String; = "deepLinkId"

.field public static final INTENDED_ACTION_KEY:Ljava/lang/String; = "intendedAction"

.field public static final TARGET_TITLE_KEY:Ljava/lang/String; = "targetTitleId"

.field public static final TARGET_XUID_KEY:Ljava/lang/String; = "targetXUID"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 0

    .line 8
    invoke-static {p0}, Lcom/microsoft/xbox/telemetry/helpers/UTCDeepLink;->getAdditionalInfo(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p0

    return-object p0
.end method

.method private static generateCorrelationId()Ljava/lang/String;
    .locals 1

    .line 18
    invoke-static {}, Lcom/microsoft/xbox/telemetry/utc/CommonData;->getApplicationSession()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getAdditionalInfo(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 24
    const-string v1, "deepLinkId"

    invoke-static {}, Lcom/microsoft/xbox/telemetry/helpers/UTCDeepLink;->generateCorrelationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    const-string v1, "deepLinkCaller"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static trackFriendSuggestionsLink(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 90
    new-instance v0, Lcom/microsoft/xbox/telemetry/helpers/UTCDeepLink$6;

    invoke-direct {v0, p1, p0}, Lcom/microsoft/xbox/telemetry/helpers/UTCDeepLink$6;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/microsoft/xbox/telemetry/helpers/UTCEventTracker;->callStringTrackWrapper(Lcom/microsoft/xbox/telemetry/helpers/UTCEventTracker$UTCStringEventDelegate;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static trackGameHubAchievementsLink(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 56
    new-instance v0, Lcom/microsoft/xbox/telemetry/helpers/UTCDeepLink$3;

    invoke-direct {v0, p1, p2, p0}, Lcom/microsoft/xbox/telemetry/helpers/UTCDeepLink$3;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/microsoft/xbox/telemetry/helpers/UTCEventTracker;->callStringTrackWrapper(Lcom/microsoft/xbox/telemetry/helpers/UTCEventTracker$UTCStringEventDelegate;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static trackGameHubLink(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 44
    new-instance v0, Lcom/microsoft/xbox/telemetry/helpers/UTCDeepLink$2;

    invoke-direct {v0, p1, p2, p0}, Lcom/microsoft/xbox/telemetry/helpers/UTCDeepLink$2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/microsoft/xbox/telemetry/helpers/UTCEventTracker;->callStringTrackWrapper(Lcom/microsoft/xbox/telemetry/helpers/UTCEventTracker$UTCStringEventDelegate;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static trackUserProfileLink(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 32
    new-instance v0, Lcom/microsoft/xbox/telemetry/helpers/UTCDeepLink$1;

    invoke-direct {v0, p1, p2, p0}, Lcom/microsoft/xbox/telemetry/helpers/UTCDeepLink$1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/microsoft/xbox/telemetry/helpers/UTCEventTracker;->callStringTrackWrapper(Lcom/microsoft/xbox/telemetry/helpers/UTCEventTracker$UTCStringEventDelegate;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static trackUserSendToStore(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 79
    new-instance v0, Lcom/microsoft/xbox/telemetry/helpers/UTCDeepLink$5;

    invoke-direct {v0, p1, p2, p0}, Lcom/microsoft/xbox/telemetry/helpers/UTCDeepLink$5;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/microsoft/xbox/telemetry/helpers/UTCEventTracker;->callTrackWrapper(Lcom/microsoft/xbox/telemetry/helpers/UTCEventTracker$UTCEventDelegate;)V

    return-void
.end method

.method public static trackUserSettingsLink(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 68
    new-instance v0, Lcom/microsoft/xbox/telemetry/helpers/UTCDeepLink$4;

    invoke-direct {v0, p1, p0}, Lcom/microsoft/xbox/telemetry/helpers/UTCDeepLink$4;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/microsoft/xbox/telemetry/helpers/UTCEventTracker;->callStringTrackWrapper(Lcom/microsoft/xbox/telemetry/helpers/UTCEventTracker$UTCStringEventDelegate;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
