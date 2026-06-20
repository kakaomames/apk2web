.class Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$4;
.super Ljava/lang/Object;
.source "UTCChangeRelationship.java"

# interfaces
.implements Lcom/microsoft/xbox/telemetry/helpers/UTCEventTracker$UTCEventDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship;->trackChangeRelationshipDone(Ljava/lang/CharSequence;Ljava/lang/String;Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$Relationship;Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$RealNameStatus;Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$FavoriteStatus;Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$GamerType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activityTitle:Ljava/lang/CharSequence;

.field final synthetic val$favoriteStatus:Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$FavoriteStatus;

.field final synthetic val$gamerType:Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$GamerType;

.field final synthetic val$realNameStatus:Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$RealNameStatus;

.field final synthetic val$relationship:Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$Relationship;

.field final synthetic val$targetXUID:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$Relationship;Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$FavoriteStatus;Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$RealNameStatus;Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$GamerType;Ljava/lang/CharSequence;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$4;->val$targetXUID:Ljava/lang/String;

    iput-object p2, p0, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$4;->val$relationship:Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$Relationship;

    iput-object p3, p0, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$4;->val$favoriteStatus:Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$FavoriteStatus;

    iput-object p4, p0, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$4;->val$realNameStatus:Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$RealNameStatus;

    iput-object p5, p0, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$4;->val$gamerType:Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$GamerType;

    iput-object p6, p0, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$4;->val$activityTitle:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 3

    .line 175
    iget-object v0, p0, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$4;->val$targetXUID:Ljava/lang/String;

    invoke-static {v0}, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship;->access$200(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 176
    iget-object v1, p0, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$4;->val$relationship:Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$Relationship;

    invoke-virtual {v1}, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$Relationship;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "relationship"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    iget-object v1, p0, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$4;->val$favoriteStatus:Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$FavoriteStatus;

    invoke-virtual {v1}, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$FavoriteStatus;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "favorite"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    iget-object v1, p0, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$4;->val$realNameStatus:Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$RealNameStatus;

    invoke-virtual {v1}, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$RealNameStatus;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "realname"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    iget-object v1, p0, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$4;->val$gamerType:Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$GamerType;

    invoke-virtual {v1}, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$GamerType;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "gamertype"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    const-string v1, "Change Relationship - Done"

    iget-object v2, p0, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$4;->val$activityTitle:Ljava/lang/CharSequence;

    invoke-static {v1, v2, v0}, Lcom/microsoft/xbox/telemetry/helpers/UTCPageAction;->track(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/util/HashMap;)V

    return-void
.end method
