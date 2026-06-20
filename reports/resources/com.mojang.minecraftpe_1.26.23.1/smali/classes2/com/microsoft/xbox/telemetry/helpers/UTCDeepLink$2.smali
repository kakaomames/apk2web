.class Lcom/microsoft/xbox/telemetry/helpers/UTCDeepLink$2;
.super Ljava/lang/Object;
.source "UTCDeepLink.java"

# interfaces
.implements Lcom/microsoft/xbox/telemetry/helpers/UTCEventTracker$UTCStringEventDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/xbox/telemetry/helpers/UTCDeepLink;->trackGameHubLink(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activityTitle:Ljava/lang/CharSequence;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$titleId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/microsoft/xbox/telemetry/helpers/UTCDeepLink$2;->val$packageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/microsoft/xbox/telemetry/helpers/UTCDeepLink$2;->val$titleId:Ljava/lang/String;

    iput-object p3, p0, Lcom/microsoft/xbox/telemetry/helpers/UTCDeepLink$2;->val$activityTitle:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/String;
    .locals 3

    .line 47
    iget-object v0, p0, Lcom/microsoft/xbox/telemetry/helpers/UTCDeepLink$2;->val$packageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/microsoft/xbox/telemetry/helpers/UTCDeepLink;->access$000(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 48
    const-string/jumbo v1, "targetXUID"

    iget-object v2, p0, Lcom/microsoft/xbox/telemetry/helpers/UTCDeepLink$2;->val$titleId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    const-string v1, "DeepLink - GameHub"

    iget-object v2, p0, Lcom/microsoft/xbox/telemetry/helpers/UTCDeepLink$2;->val$activityTitle:Ljava/lang/CharSequence;

    invoke-static {v1, v2, v0}, Lcom/microsoft/xbox/telemetry/helpers/UTCPageAction;->track(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/util/HashMap;)V

    .line 50
    const-string v1, "deepLinkId"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
