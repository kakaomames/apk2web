.class public Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship;
.super Ljava/lang/Object;
.source "UTCChangeRelationship.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$GamerType;,
        Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$RealNameStatus;,
        Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$FavoriteStatus;,
        Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$Relationship;
    }
.end annotation


# static fields
.field private static currentActivityTitle:Ljava/lang/CharSequence;

.field private static currentXUID:Ljava/lang/String; = ""


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    const-string v0, ""

    sput-object v0, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship;->currentActivityTitle:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/CharSequence;
    .locals 1

    .line 7
    sget-object v0, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship;->currentActivityTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$002(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    .line 7
    sput-object p0, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship;->currentActivityTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 7
    sget-object v0, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship;->currentXUID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 7
    sput-object p0, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship;->currentXUID:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 0

    .line 7
    invoke-static {p0}, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship;->getAdditionalInfo(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p0

    return-object p0
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

    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "x:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v1, "targetXUID"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static trackChangeRelationshipAction(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)V
    .locals 1

    .line 114
    new-instance v0, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$2;

    invoke-direct {v0, p1, p2, p0, p3}, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$2;-><init>(Ljava/lang/String;ZLjava/lang/CharSequence;Z)V

    invoke-static {v0}, Lcom/microsoft/xbox/telemetry/helpers/UTCEventTracker;->callTrackWrapper(Lcom/microsoft/xbox/telemetry/helpers/UTCEventTracker$UTCEventDelegate;)V

    return-void
.end method

.method public static trackChangeRelationshipAction(ZZ)V
    .locals 2

    .line 109
    invoke-static {}, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship;->verifyTrackedDefaults()V

    .line 110
    sget-object v0, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship;->currentActivityTitle:Ljava/lang/CharSequence;

    sget-object v1, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship;->currentXUID:Ljava/lang/String;

    invoke-static {v0, v1, p0, p1}, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship;->trackChangeRelationshipAction(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public static trackChangeRelationshipDone(Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$Relationship;Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$RealNameStatus;Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$FavoriteStatus;Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$GamerType;)V
    .locals 6

    .line 160
    invoke-static {}, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship;->verifyTrackedDefaults()V

    .line 161
    sget-object v0, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship;->currentActivityTitle:Ljava/lang/CharSequence;

    sget-object v1, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship;->currentXUID:Ljava/lang/String;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship;->trackChangeRelationshipDone(Ljava/lang/CharSequence;Ljava/lang/String;Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$Relationship;Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$RealNameStatus;Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$FavoriteStatus;Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$GamerType;)V

    return-void
.end method

.method public static trackChangeRelationshipDone(Ljava/lang/CharSequence;Ljava/lang/String;Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$Relationship;Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$RealNameStatus;Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$FavoriteStatus;Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$GamerType;)V
    .locals 8

    .line 172
    new-instance v7, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$4;

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p3

    move-object v5, p5

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$4;-><init>(Ljava/lang/String;Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$Relationship;Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$FavoriteStatus;Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$RealNameStatus;Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$GamerType;Ljava/lang/CharSequence;)V

    invoke-static {v7}, Lcom/microsoft/xbox/telemetry/helpers/UTCEventTracker;->callTrackWrapper(Lcom/microsoft/xbox/telemetry/helpers/UTCEventTracker$UTCEventDelegate;)V

    return-void
.end method

.method public static trackChangeRelationshipRemoveFriend()V
    .locals 2

    .line 138
    invoke-static {}, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship;->verifyTrackedDefaults()V

    .line 139
    sget-object v0, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship;->currentActivityTitle:Ljava/lang/CharSequence;

    sget-object v1, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship;->currentXUID:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship;->trackChangeRelationshipRemoveFriend(Ljava/lang/CharSequence;Ljava/lang/String;)V

    return-void
.end method

.method public static trackChangeRelationshipRemoveFriend(Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 1

    .line 143
    new-instance v0, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$3;

    invoke-direct {v0, p1, p0}, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$3;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/microsoft/xbox/telemetry/helpers/UTCEventTracker;->callTrackWrapper(Lcom/microsoft/xbox/telemetry/helpers/UTCEventTracker$UTCEventDelegate;)V

    return-void
.end method

.method public static trackChangeRelationshipView(Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 1

    .line 98
    new-instance v0, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$1;

    invoke-direct {v0, p0, p1}, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$1;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/microsoft/xbox/telemetry/helpers/UTCEventTracker;->callTrackWrapper(Lcom/microsoft/xbox/telemetry/helpers/UTCEventTracker$UTCEventDelegate;)V

    return-void
.end method

.method private static verifyTrackedDefaults()V
    .locals 3

    .line 85
    sget-object v0, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship;->currentXUID:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "Called trackPeopleHubView without set currentXUID"

    invoke-static {v2, v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertFalse(Ljava/lang/String;Z)V

    .line 86
    sget-object v0, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship;->currentActivityTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "Called trackPeopleHubView without set activityTitle"

    invoke-static {v1, v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertFalse(Ljava/lang/String;Z)V

    return-void
.end method
