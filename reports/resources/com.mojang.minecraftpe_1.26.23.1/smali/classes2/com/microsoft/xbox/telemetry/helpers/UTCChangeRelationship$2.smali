.class Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$2;
.super Ljava/lang/Object;
.source "UTCChangeRelationship.java"

# interfaces
.implements Lcom/microsoft/xbox/telemetry/helpers/UTCEventTracker$UTCEventDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship;->trackChangeRelationshipAction(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activityTitle:Ljava/lang/CharSequence;

.field final synthetic val$isFollowing:Z

.field final synthetic val$isFromFacebook:Z

.field final synthetic val$targetXUID:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;ZLjava/lang/CharSequence;Z)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$2;->val$targetXUID:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$2;->val$isFollowing:Z

    iput-object p3, p0, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$2;->val$activityTitle:Ljava/lang/CharSequence;

    iput-boolean p4, p0, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$2;->val$isFromFacebook:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 7

    .line 117
    iget-object v0, p0, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$2;->val$targetXUID:Ljava/lang/String;

    invoke-static {v0}, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship;->access$200(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 118
    iget-boolean v1, p0, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$2;->val$isFollowing:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$Relationship;->EXISTINGFRIEND:Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$Relationship;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$Relationship;->ADDFRIEND:Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$Relationship;

    :goto_0
    invoke-virtual {v1}, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$Relationship;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "relationship"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    const-string v1, "Change Relationship - Action"

    iget-object v2, p0, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$2;->val$activityTitle:Ljava/lang/CharSequence;

    invoke-static {v1, v2, v0}, Lcom/microsoft/xbox/telemetry/helpers/UTCPageAction;->track(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/util/HashMap;)V

    .line 122
    iget-boolean v0, p0, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$2;->val$isFromFacebook:Z

    if-eqz v0, :cond_1

    .line 125
    iget-object v1, p0, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$2;->val$activityTitle:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$2;->val$targetXUID:Ljava/lang/String;

    sget-object v3, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$Relationship;->ADDFRIEND:Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$Relationship;

    sget-object v4, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$RealNameStatus;->SHARINGON:Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$RealNameStatus;

    sget-object v5, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$FavoriteStatus;->NOTFAVORITED:Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$FavoriteStatus;

    sget-object v6, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$GamerType;->FACEBOOK:Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$GamerType;

    invoke-static/range {v1 .. v6}, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship;->trackChangeRelationshipDone(Ljava/lang/CharSequence;Ljava/lang/String;Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$Relationship;Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$RealNameStatus;Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$FavoriteStatus;Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$GamerType;)V

    :cond_1
    return-void
.end method
