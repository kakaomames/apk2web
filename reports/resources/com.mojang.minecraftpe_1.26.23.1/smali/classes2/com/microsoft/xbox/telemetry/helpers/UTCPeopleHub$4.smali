.class Lcom/microsoft/xbox/telemetry/helpers/UTCPeopleHub$4;
.super Ljava/lang/Object;
.source "UTCPeopleHub.java"

# interfaces
.implements Lcom/microsoft/xbox/telemetry/helpers/UTCEventTracker$UTCEventDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/xbox/telemetry/helpers/UTCPeopleHub;->trackBlock(Ljava/lang/CharSequence;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activityTitle:Ljava/lang/CharSequence;

.field final synthetic val$targetXUID:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/microsoft/xbox/telemetry/helpers/UTCPeopleHub$4;->val$activityTitle:Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/microsoft/xbox/telemetry/helpers/UTCPeopleHub$4;->val$targetXUID:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 3

    .line 78
    iget-object v0, p0, Lcom/microsoft/xbox/telemetry/helpers/UTCPeopleHub$4;->val$activityTitle:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/microsoft/xbox/telemetry/helpers/UTCPeopleHub$4;->val$targetXUID:Ljava/lang/String;

    invoke-static {v1}, Lcom/microsoft/xbox/telemetry/helpers/UTCPeopleHub;->access$200(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "People Hub - Block"

    invoke-static {v2, v0, v1}, Lcom/microsoft/xbox/telemetry/helpers/UTCPageAction;->track(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/util/HashMap;)V

    return-void
.end method
