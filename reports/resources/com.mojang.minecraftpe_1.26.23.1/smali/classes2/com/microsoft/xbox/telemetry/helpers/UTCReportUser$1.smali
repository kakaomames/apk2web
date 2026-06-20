.class Lcom/microsoft/xbox/telemetry/helpers/UTCReportUser$1;
.super Ljava/lang/Object;
.source "UTCReportUser.java"

# interfaces
.implements Lcom/microsoft/xbox/telemetry/helpers/UTCEventTracker$UTCEventDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/xbox/telemetry/helpers/UTCReportUser;->trackReportView(Ljava/lang/CharSequence;Ljava/lang/String;)V
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

    .line 23
    iput-object p1, p0, Lcom/microsoft/xbox/telemetry/helpers/UTCReportUser$1;->val$activityTitle:Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/microsoft/xbox/telemetry/helpers/UTCReportUser$1;->val$targetXUID:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 3

    .line 26
    iget-object v0, p0, Lcom/microsoft/xbox/telemetry/helpers/UTCReportUser$1;->val$activityTitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Lcom/microsoft/xbox/telemetry/helpers/UTCReportUser;->access$002(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 27
    iget-object v0, p0, Lcom/microsoft/xbox/telemetry/helpers/UTCReportUser$1;->val$targetXUID:Ljava/lang/String;

    invoke-static {v0}, Lcom/microsoft/xbox/telemetry/helpers/UTCReportUser;->access$102(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    invoke-static {}, Lcom/microsoft/xbox/telemetry/helpers/UTCReportUser;->access$000()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/xbox/telemetry/helpers/UTCReportUser$1;->val$targetXUID:Ljava/lang/String;

    invoke-static {v1}, Lcom/microsoft/xbox/telemetry/helpers/UTCReportUser;->access$200(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "People Hub Report view"

    invoke-static {v2, v0, v1}, Lcom/microsoft/xbox/telemetry/helpers/UTCPageView;->track(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/util/HashMap;)V

    return-void
.end method
