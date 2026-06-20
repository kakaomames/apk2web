.class Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$3;
.super Ljava/lang/Object;
.source "UTCChangeRelationship.java"

# interfaces
.implements Lcom/microsoft/xbox/telemetry/helpers/UTCEventTracker$UTCEventDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship;->trackChangeRelationshipRemoveFriend(Ljava/lang/CharSequence;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activityTitle:Ljava/lang/CharSequence;

.field final synthetic val$targetXUID:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$3;->val$targetXUID:Ljava/lang/String;

    iput-object p2, p0, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$3;->val$activityTitle:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 3

    .line 146
    iget-object v0, p0, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$3;->val$targetXUID:Ljava/lang/String;

    invoke-static {v0}, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship;->access$200(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 147
    const-string v1, "relationship"

    sget-object v2, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$Relationship;->REMOVEFRIEND:Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$Relationship;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    const-string v1, "Change Relationship - Action"

    iget-object v2, p0, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$3;->val$activityTitle:Ljava/lang/CharSequence;

    invoke-static {v1, v2, v0}, Lcom/microsoft/xbox/telemetry/helpers/UTCPageAction;->track(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/util/HashMap;)V

    return-void
.end method
