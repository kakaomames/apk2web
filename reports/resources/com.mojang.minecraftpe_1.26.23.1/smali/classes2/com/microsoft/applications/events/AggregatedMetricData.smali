.class public Lcom/microsoft/applications/events/AggregatedMetricData;
.super Ljava/lang/Object;
.source "AggregatedMetricData.java"


# instance fields
.field public aggregates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/microsoft/applications/events/AggregateType;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field public buckets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public count:J

.field public duration:J

.field public instanceName:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public objectClass:Ljava/lang/String;

.field public objectId:Ljava/lang/String;

.field public units:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;JJ)V
    .locals 1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/microsoft/applications/events/AggregatedMetricData;->units:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lcom/microsoft/applications/events/AggregatedMetricData;->instanceName:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Lcom/microsoft/applications/events/AggregatedMetricData;->objectClass:Ljava/lang/String;

    .line 47
    iput-object v0, p0, Lcom/microsoft/applications/events/AggregatedMetricData;->objectId:Ljava/lang/String;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/microsoft/applications/events/AggregatedMetricData;->aggregates:Ljava/util/Map;

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/microsoft/applications/events/AggregatedMetricData;->buckets:Ljava/util/Map;

    .line 72
    iput-object p1, p0, Lcom/microsoft/applications/events/AggregatedMetricData;->name:Ljava/lang/String;

    .line 73
    iput-wide p2, p0, Lcom/microsoft/applications/events/AggregatedMetricData;->duration:J

    .line 74
    iput-wide p4, p0, Lcom/microsoft/applications/events/AggregatedMetricData;->count:J

    return-void
.end method
