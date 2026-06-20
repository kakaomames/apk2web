.class Lcom/microsoft/xbox/telemetry/helpers/UTCPeopleHub$2;
.super Ljava/lang/Object;
.source "UTCPeopleHub.java"

# interfaces
.implements Lcom/microsoft/xbox/telemetry/helpers/UTCEventTracker$UTCEventDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/xbox/telemetry/helpers/UTCPeopleHub;->trackMute(Ljava/lang/CharSequence;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activityTitle:Ljava/lang/CharSequence;

.field final synthetic val$targetXUID:Ljava/lang/String;

.field final synthetic val$toBeMuted:Z


# direct methods
.method constructor <init>(Ljava/lang/String;ZLjava/lang/CharSequence;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/microsoft/xbox/telemetry/helpers/UTCPeopleHub$2;->val$targetXUID:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/microsoft/xbox/telemetry/helpers/UTCPeopleHub$2;->val$toBeMuted:Z

    iput-object p3, p0, Lcom/microsoft/xbox/telemetry/helpers/UTCPeopleHub$2;->val$activityTitle:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 3

    .line 47
    iget-object v0, p0, Lcom/microsoft/xbox/telemetry/helpers/UTCPeopleHub$2;->val$targetXUID:Ljava/lang/String;

    invoke-static {v0}, Lcom/microsoft/xbox/telemetry/helpers/UTCPeopleHub;->access$200(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 48
    iget-boolean v1, p0, Lcom/microsoft/xbox/telemetry/helpers/UTCPeopleHub$2;->val$toBeMuted:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "isMuted"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    const-string v1, "People Hub - Mute"

    iget-object v2, p0, Lcom/microsoft/xbox/telemetry/helpers/UTCPeopleHub$2;->val$activityTitle:Ljava/lang/CharSequence;

    invoke-static {v1, v2, v0}, Lcom/microsoft/xbox/telemetry/helpers/UTCPageAction;->track(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/util/HashMap;)V

    return-void
.end method
