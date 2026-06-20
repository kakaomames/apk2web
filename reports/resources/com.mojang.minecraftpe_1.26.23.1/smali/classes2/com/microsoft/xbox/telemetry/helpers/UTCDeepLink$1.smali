.class Lcom/microsoft/xbox/telemetry/helpers/UTCDeepLink$1;
.super Ljava/lang/Object;
.source "UTCDeepLink.java"

# interfaces
.implements Lcom/microsoft/xbox/telemetry/helpers/UTCEventTracker$UTCStringEventDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/xbox/telemetry/helpers/UTCDeepLink;->trackUserProfileLink(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activityTitle:Ljava/lang/CharSequence;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$targetXuid:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/microsoft/xbox/telemetry/helpers/UTCDeepLink$1;->val$packageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/microsoft/xbox/telemetry/helpers/UTCDeepLink$1;->val$targetXuid:Ljava/lang/String;

    iput-object p3, p0, Lcom/microsoft/xbox/telemetry/helpers/UTCDeepLink$1;->val$activityTitle:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/String;
    .locals 3

    .line 35
    iget-object v0, p0, Lcom/microsoft/xbox/telemetry/helpers/UTCDeepLink$1;->val$packageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/microsoft/xbox/telemetry/helpers/UTCDeepLink;->access$000(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "x:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/microsoft/xbox/telemetry/helpers/UTCDeepLink$1;->val$targetXuid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "targetXUID"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    const-string v1, "DeepLink - User Profile"

    iget-object v2, p0, Lcom/microsoft/xbox/telemetry/helpers/UTCDeepLink$1;->val$activityTitle:Ljava/lang/CharSequence;

    invoke-static {v1, v2, v0}, Lcom/microsoft/xbox/telemetry/helpers/UTCPageAction;->track(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/util/HashMap;)V

    .line 38
    const-string v1, "deepLinkId"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
