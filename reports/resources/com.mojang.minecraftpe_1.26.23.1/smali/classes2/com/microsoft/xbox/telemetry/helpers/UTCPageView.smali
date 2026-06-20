.class public Lcom/microsoft/xbox/telemetry/helpers/UTCPageView;
.super Ljava/lang/Object;
.source "UTCPageView.java"


# static fields
.field private static pages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/microsoft/xbox/telemetry/helpers/UTCPageView;->pages:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addPage(Ljava/lang/String;)V
    .locals 1

    .line 39
    sget-object v0, Lcom/microsoft/xbox/telemetry/helpers/UTCPageView;->pages:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/microsoft/xbox/telemetry/helpers/UTCPageView;->pages:Ljava/util/ArrayList;

    .line 42
    :cond_0
    sget-object v0, Lcom/microsoft/xbox/telemetry/helpers/UTCPageView;->pages:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p0, :cond_1

    .line 43
    sget-object v0, Lcom/microsoft/xbox/telemetry/helpers/UTCPageView;->pages:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public static getCurrentPage()Ljava/lang/String;
    .locals 2

    .line 19
    invoke-static {}, Lcom/microsoft/xbox/telemetry/helpers/UTCPageView;->getSize()I

    move-result v0

    if-nez v0, :cond_0

    .line 22
    const-string v0, "Unknown"

    return-object v0

    .line 25
    :cond_0
    sget-object v1, Lcom/microsoft/xbox/telemetry/helpers/UTCPageView;->pages:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getPreviousPage()Ljava/lang/String;
    .locals 3

    .line 29
    invoke-static {}, Lcom/microsoft/xbox/telemetry/helpers/UTCPageView;->getSize()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 32
    const-string v0, "Unknown"

    return-object v0

    .line 35
    :cond_0
    sget-object v2, Lcom/microsoft/xbox/telemetry/helpers/UTCPageView;->pages:Ljava/util/ArrayList;

    sub-int/2addr v0, v1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getSize()I
    .locals 1

    .line 12
    sget-object v0, Lcom/microsoft/xbox/telemetry/helpers/UTCPageView;->pages:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/microsoft/xbox/telemetry/helpers/UTCPageView;->pages:Ljava/util/ArrayList;

    .line 15
    :cond_0
    sget-object v0, Lcom/microsoft/xbox/telemetry/helpers/UTCPageView;->pages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public static removePage()V
    .locals 2

    .line 48
    invoke-static {}, Lcom/microsoft/xbox/telemetry/helpers/UTCPageView;->getSize()I

    move-result v0

    if-lez v0, :cond_0

    .line 50
    sget-object v1, Lcom/microsoft/xbox/telemetry/helpers/UTCPageView;->pages:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static track(Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 1

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p0, p1, v0}, Lcom/microsoft/xbox/telemetry/helpers/UTCPageView;->track(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/util/HashMap;)V

    return-void
.end method

.method public static track(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/CharSequence;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 70
    :try_start_0
    const-string v0, "activityTitle"

    invoke-virtual {p2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    :cond_0
    invoke-static {p0}, Lcom/microsoft/xbox/telemetry/helpers/UTCPageView;->addPage(Ljava/lang/String;)V

    .line 75
    invoke-static {}, Lcom/microsoft/xbox/telemetry/helpers/UTCPageView;->getPreviousPage()Ljava/lang/String;

    move-result-object p1

    .line 77
    new-instance v0, Lcom/microsoft/xbox/telemetry/utc/PageView;

    invoke-direct {v0}, Lcom/microsoft/xbox/telemetry/utc/PageView;-><init>()V

    .line 78
    iput-object p0, v0, Lcom/microsoft/xbox/telemetry/utc/PageView;->pageName:Ljava/lang/String;

    .line 79
    iput-object p1, v0, Lcom/microsoft/xbox/telemetry/utc/PageView;->fromPage:Ljava/lang/String;

    .line 80
    iput-object p2, v0, Lcom/microsoft/xbox/telemetry/utc/PageView;->additionalInfo:Ljava/util/HashMap;

    .line 82
    const-string v1, "pageView:%s, fromPage:%s, additionalInfo:%s"

    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/microsoft/xbox/telemetry/helpers/UTCLog;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    invoke-static {v0}, Lcom/microsoft/xbox/telemetry/helpers/UTCTelemetry;->LogEvent(Lcom/microsoft/xbox/telemetry/utc/CommonData;)V

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 87
    const-string p1, "UTCPageView.track"

    invoke-static {p0, p1}, Lcom/microsoft/xbox/telemetry/helpers/UTCError;->trackException(Ljava/lang/Exception;Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/microsoft/xbox/telemetry/helpers/UTCLog;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
