.class public Lcom/microsoft/applications/events/DebugEvent;
.super Ljava/lang/Object;
.source "DebugEvent.java"


# instance fields
.field data:Ljava/lang/Object;

.field param1:J

.field param2:J

.field public seq:J

.field size:J

.field public ts:J

.field public type:Lcom/microsoft/applications/events/DebugEventType;


# direct methods
.method public constructor <init>(JJJJJLjava/lang/Object;J)V
    .locals 4

    move-object v0, p0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v1, 0x0

    .line 8
    iput-wide v1, v0, Lcom/microsoft/applications/events/DebugEvent;->seq:J

    .line 10
    iput-wide v1, v0, Lcom/microsoft/applications/events/DebugEvent;->ts:J

    .line 12
    sget-object v3, Lcom/microsoft/applications/events/DebugEventType;->EVT_UNKNOWN:Lcom/microsoft/applications/events/DebugEventType;

    iput-object v3, v0, Lcom/microsoft/applications/events/DebugEvent;->type:Lcom/microsoft/applications/events/DebugEventType;

    .line 14
    iput-wide v1, v0, Lcom/microsoft/applications/events/DebugEvent;->param1:J

    .line 16
    iput-wide v1, v0, Lcom/microsoft/applications/events/DebugEvent;->param2:J

    const/4 v3, 0x0

    .line 18
    iput-object v3, v0, Lcom/microsoft/applications/events/DebugEvent;->data:Ljava/lang/Object;

    .line 20
    iput-wide v1, v0, Lcom/microsoft/applications/events/DebugEvent;->size:J

    move-wide v1, p1

    .line 24
    iput-wide v1, v0, Lcom/microsoft/applications/events/DebugEvent;->seq:J

    move-wide v1, p3

    .line 25
    iput-wide v1, v0, Lcom/microsoft/applications/events/DebugEvent;->ts:J

    .line 26
    sget-object v1, Lcom/microsoft/applications/events/DebugEventType;->eventMap:Ljava/util/TreeMap;

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 27
    sget-object v1, Lcom/microsoft/applications/events/DebugEventType;->eventMap:Ljava/util/TreeMap;

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/applications/events/DebugEventType;

    iput-object v1, v0, Lcom/microsoft/applications/events/DebugEvent;->type:Lcom/microsoft/applications/events/DebugEventType;

    goto :goto_0

    .line 29
    :cond_0
    sget-object v1, Lcom/microsoft/applications/events/DebugEventType;->EVT_UNKNOWN:Lcom/microsoft/applications/events/DebugEventType;

    iput-object v1, v0, Lcom/microsoft/applications/events/DebugEvent;->type:Lcom/microsoft/applications/events/DebugEventType;

    :goto_0
    move-wide v1, p7

    .line 31
    iput-wide v1, v0, Lcom/microsoft/applications/events/DebugEvent;->param1:J

    move-wide v1, p9

    .line 32
    iput-wide v1, v0, Lcom/microsoft/applications/events/DebugEvent;->param2:J

    move-object v1, p11

    .line 33
    iput-object v1, v0, Lcom/microsoft/applications/events/DebugEvent;->data:Ljava/lang/Object;

    move-wide/from16 v1, p12

    .line 34
    iput-wide v1, v0, Lcom/microsoft/applications/events/DebugEvent;->size:J

    return-void
.end method
