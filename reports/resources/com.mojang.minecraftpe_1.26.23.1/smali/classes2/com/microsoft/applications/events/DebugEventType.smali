.class public final enum Lcom/microsoft/applications/events/DebugEventType;
.super Ljava/lang/Enum;
.source "DebugEventType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/applications/events/DebugEventType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/applications/events/DebugEventType;

.field public static final enum EVT_ADDED:Lcom/microsoft/applications/events/DebugEventType;

.field public static final enum EVT_CACHED:Lcom/microsoft/applications/events/DebugEventType;

.field public static final enum EVT_COMPRESS_FAILED:Lcom/microsoft/applications/events/DebugEventType;

.field public static final enum EVT_CONN_FAILURE:Lcom/microsoft/applications/events/DebugEventType;

.field public static final enum EVT_DROPPED:Lcom/microsoft/applications/events/DebugEventType;

.field public static final enum EVT_FILTERED:Lcom/microsoft/applications/events/DebugEventType;

.field public static final enum EVT_HTTP_ERROR:Lcom/microsoft/applications/events/DebugEventType;

.field public static final enum EVT_HTTP_FAILURE:Lcom/microsoft/applications/events/DebugEventType;

.field public static final enum EVT_HTTP_OK:Lcom/microsoft/applications/events/DebugEventType;

.field public static final enum EVT_HTTP_STATE:Lcom/microsoft/applications/events/DebugEventType;

.field public static final enum EVT_LOG_AGGRMETR:Lcom/microsoft/applications/events/DebugEventType;

.field public static final enum EVT_LOG_EVENT:Lcom/microsoft/applications/events/DebugEventType;

.field public static final enum EVT_LOG_FAILURE:Lcom/microsoft/applications/events/DebugEventType;

.field public static final enum EVT_LOG_LIFECYCLE:Lcom/microsoft/applications/events/DebugEventType;

.field public static final enum EVT_LOG_PAGEACTION:Lcom/microsoft/applications/events/DebugEventType;

.field public static final enum EVT_LOG_PAGEVIEW:Lcom/microsoft/applications/events/DebugEventType;

.field public static final enum EVT_LOG_SAMPLEMETR:Lcom/microsoft/applications/events/DebugEventType;

.field public static final enum EVT_LOG_SESSION:Lcom/microsoft/applications/events/DebugEventType;

.field public static final enum EVT_LOG_TRACE:Lcom/microsoft/applications/events/DebugEventType;

.field public static final enum EVT_LOG_USERSTATE:Lcom/microsoft/applications/events/DebugEventType;

.field public static final enum EVT_NET_CHANGED:Lcom/microsoft/applications/events/DebugEventType;

.field public static final enum EVT_REJECTED:Lcom/microsoft/applications/events/DebugEventType;

.field public static final enum EVT_SENDING:Lcom/microsoft/applications/events/DebugEventType;

.field public static final enum EVT_SEND_FAILED:Lcom/microsoft/applications/events/DebugEventType;

.field public static final enum EVT_SEND_RETRY:Lcom/microsoft/applications/events/DebugEventType;

.field public static final enum EVT_SEND_RETRY_DROPPED:Lcom/microsoft/applications/events/DebugEventType;

.field public static final enum EVT_SEND_SKIP_UTC_REGISTRATION:Lcom/microsoft/applications/events/DebugEventType;

.field public static final enum EVT_SENT:Lcom/microsoft/applications/events/DebugEventType;

.field public static final enum EVT_STORAGE_FAILED:Lcom/microsoft/applications/events/DebugEventType;

.field public static final enum EVT_STORAGE_FULL:Lcom/microsoft/applications/events/DebugEventType;

.field public static final enum EVT_TICKET_EXPIRED:Lcom/microsoft/applications/events/DebugEventType;

.field public static final enum EVT_UNKNOWN:Lcom/microsoft/applications/events/DebugEventType;

.field public static final enum EVT_UNKNOWN_HOST:Lcom/microsoft/applications/events/DebugEventType;

.field static final eventMap:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/Long;",
            "Lcom/microsoft/applications/events/DebugEventType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private value:J


# direct methods
.method static constructor <clinit>()V
    .locals 39

    .line 7
    new-instance v1, Lcom/microsoft/applications/events/DebugEventType;

    move-object v0, v1

    const-wide/32 v2, 0x1000000

    const-string v4, "EVT_LOG_EVENT"

    const/4 v15, 0x0

    invoke-direct {v1, v4, v15, v2, v3}, Lcom/microsoft/applications/events/DebugEventType;-><init>(Ljava/lang/String;IJ)V

    sput-object v1, Lcom/microsoft/applications/events/DebugEventType;->EVT_LOG_EVENT:Lcom/microsoft/applications/events/DebugEventType;

    .line 9
    new-instance v2, Lcom/microsoft/applications/events/DebugEventType;

    move-object v1, v2

    const/4 v3, 0x1

    const-wide/32 v4, 0x1000001

    const-string v6, "EVT_LOG_LIFECYCLE"

    invoke-direct {v2, v6, v3, v4, v5}, Lcom/microsoft/applications/events/DebugEventType;-><init>(Ljava/lang/String;IJ)V

    sput-object v2, Lcom/microsoft/applications/events/DebugEventType;->EVT_LOG_LIFECYCLE:Lcom/microsoft/applications/events/DebugEventType;

    .line 11
    new-instance v3, Lcom/microsoft/applications/events/DebugEventType;

    move-object v2, v3

    const/4 v4, 0x2

    const-wide/32 v5, 0x1000002

    const-string v7, "EVT_LOG_FAILURE"

    invoke-direct {v3, v7, v4, v5, v6}, Lcom/microsoft/applications/events/DebugEventType;-><init>(Ljava/lang/String;IJ)V

    sput-object v3, Lcom/microsoft/applications/events/DebugEventType;->EVT_LOG_FAILURE:Lcom/microsoft/applications/events/DebugEventType;

    .line 13
    new-instance v4, Lcom/microsoft/applications/events/DebugEventType;

    move-object v3, v4

    const/4 v5, 0x3

    const-wide/32 v6, 0x1000004

    const-string v8, "EVT_LOG_PAGEVIEW"

    invoke-direct {v4, v8, v5, v6, v7}, Lcom/microsoft/applications/events/DebugEventType;-><init>(Ljava/lang/String;IJ)V

    sput-object v4, Lcom/microsoft/applications/events/DebugEventType;->EVT_LOG_PAGEVIEW:Lcom/microsoft/applications/events/DebugEventType;

    .line 15
    new-instance v5, Lcom/microsoft/applications/events/DebugEventType;

    move-object v4, v5

    const/4 v6, 0x4

    const-wide/32 v7, 0x1000005

    const-string v9, "EVT_LOG_PAGEACTION"

    invoke-direct {v5, v9, v6, v7, v8}, Lcom/microsoft/applications/events/DebugEventType;-><init>(Ljava/lang/String;IJ)V

    sput-object v5, Lcom/microsoft/applications/events/DebugEventType;->EVT_LOG_PAGEACTION:Lcom/microsoft/applications/events/DebugEventType;

    .line 17
    new-instance v6, Lcom/microsoft/applications/events/DebugEventType;

    move-object v5, v6

    const/4 v7, 0x5

    const-wide/32 v8, 0x1000006

    const-string v10, "EVT_LOG_SAMPLEMETR"

    invoke-direct {v6, v10, v7, v8, v9}, Lcom/microsoft/applications/events/DebugEventType;-><init>(Ljava/lang/String;IJ)V

    sput-object v6, Lcom/microsoft/applications/events/DebugEventType;->EVT_LOG_SAMPLEMETR:Lcom/microsoft/applications/events/DebugEventType;

    .line 19
    new-instance v7, Lcom/microsoft/applications/events/DebugEventType;

    move-object v6, v7

    const/4 v8, 0x6

    const-wide/32 v9, 0x1000007

    const-string v11, "EVT_LOG_AGGRMETR"

    invoke-direct {v7, v11, v8, v9, v10}, Lcom/microsoft/applications/events/DebugEventType;-><init>(Ljava/lang/String;IJ)V

    sput-object v7, Lcom/microsoft/applications/events/DebugEventType;->EVT_LOG_AGGRMETR:Lcom/microsoft/applications/events/DebugEventType;

    .line 21
    new-instance v8, Lcom/microsoft/applications/events/DebugEventType;

    move-object v7, v8

    const/4 v9, 0x7

    const-wide/32 v10, 0x1000008

    const-string v12, "EVT_LOG_TRACE"

    invoke-direct {v8, v12, v9, v10, v11}, Lcom/microsoft/applications/events/DebugEventType;-><init>(Ljava/lang/String;IJ)V

    sput-object v8, Lcom/microsoft/applications/events/DebugEventType;->EVT_LOG_TRACE:Lcom/microsoft/applications/events/DebugEventType;

    .line 23
    new-instance v9, Lcom/microsoft/applications/events/DebugEventType;

    move-object v8, v9

    const/16 v10, 0x8

    const-wide/32 v11, 0x1000009

    const-string v13, "EVT_LOG_USERSTATE"

    invoke-direct {v9, v13, v10, v11, v12}, Lcom/microsoft/applications/events/DebugEventType;-><init>(Ljava/lang/String;IJ)V

    sput-object v9, Lcom/microsoft/applications/events/DebugEventType;->EVT_LOG_USERSTATE:Lcom/microsoft/applications/events/DebugEventType;

    .line 25
    new-instance v10, Lcom/microsoft/applications/events/DebugEventType;

    move-object v9, v10

    const/16 v11, 0x9

    const-wide/32 v12, 0x100000a

    const-string v14, "EVT_LOG_SESSION"

    invoke-direct {v10, v14, v11, v12, v13}, Lcom/microsoft/applications/events/DebugEventType;-><init>(Ljava/lang/String;IJ)V

    sput-object v10, Lcom/microsoft/applications/events/DebugEventType;->EVT_LOG_SESSION:Lcom/microsoft/applications/events/DebugEventType;

    .line 28
    new-instance v11, Lcom/microsoft/applications/events/DebugEventType;

    move-object v10, v11

    const/16 v12, 0xa

    const-wide/32 v13, 0x1001000

    const-string v15, "EVT_ADDED"

    invoke-direct {v11, v15, v12, v13, v14}, Lcom/microsoft/applications/events/DebugEventType;-><init>(Ljava/lang/String;IJ)V

    sput-object v11, Lcom/microsoft/applications/events/DebugEventType;->EVT_ADDED:Lcom/microsoft/applications/events/DebugEventType;

    .line 30
    new-instance v12, Lcom/microsoft/applications/events/DebugEventType;

    move-object v11, v12

    const/16 v13, 0xb

    const-wide/32 v14, 0x2000000

    move-object/from16 v33, v0

    const-string v0, "EVT_CACHED"

    invoke-direct {v12, v0, v13, v14, v15}, Lcom/microsoft/applications/events/DebugEventType;-><init>(Ljava/lang/String;IJ)V

    sput-object v12, Lcom/microsoft/applications/events/DebugEventType;->EVT_CACHED:Lcom/microsoft/applications/events/DebugEventType;

    .line 32
    new-instance v0, Lcom/microsoft/applications/events/DebugEventType;

    move-object v12, v0

    const/16 v13, 0xc

    const-wide/32 v14, 0x3000000

    move-object/from16 v34, v1

    const-string v1, "EVT_DROPPED"

    invoke-direct {v0, v1, v13, v14, v15}, Lcom/microsoft/applications/events/DebugEventType;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/microsoft/applications/events/DebugEventType;->EVT_DROPPED:Lcom/microsoft/applications/events/DebugEventType;

    .line 34
    new-instance v0, Lcom/microsoft/applications/events/DebugEventType;

    move-object v13, v0

    const/16 v1, 0xd

    const-wide/32 v14, 0x3000001

    move-object/from16 v35, v2

    const-string v2, "EVT_FILTERED"

    invoke-direct {v0, v2, v1, v14, v15}, Lcom/microsoft/applications/events/DebugEventType;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/microsoft/applications/events/DebugEventType;->EVT_FILTERED:Lcom/microsoft/applications/events/DebugEventType;

    .line 37
    new-instance v0, Lcom/microsoft/applications/events/DebugEventType;

    move-object v14, v0

    const-string v1, "EVT_SENT"

    const/16 v2, 0xe

    move-object/from16 v36, v3

    move-object/from16 v37, v4

    const-wide/32 v3, 0x4000000

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/microsoft/applications/events/DebugEventType;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/microsoft/applications/events/DebugEventType;->EVT_SENT:Lcom/microsoft/applications/events/DebugEventType;

    .line 39
    new-instance v0, Lcom/microsoft/applications/events/DebugEventType;

    const/16 v38, 0x0

    move-object v15, v0

    const-string v1, "EVT_SENDING"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/microsoft/applications/events/DebugEventType;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/microsoft/applications/events/DebugEventType;->EVT_SENDING:Lcom/microsoft/applications/events/DebugEventType;

    .line 41
    new-instance v0, Lcom/microsoft/applications/events/DebugEventType;

    move-object/from16 v16, v0

    const/16 v1, 0x10

    const-wide/32 v2, 0x4000001

    const-string v4, "EVT_SEND_FAILED"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/microsoft/applications/events/DebugEventType;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/microsoft/applications/events/DebugEventType;->EVT_SEND_FAILED:Lcom/microsoft/applications/events/DebugEventType;

    .line 43
    new-instance v0, Lcom/microsoft/applications/events/DebugEventType;

    move-object/from16 v17, v0

    const/16 v1, 0x11

    const-wide/32 v2, 0x4000002

    const-string v4, "EVT_SEND_RETRY"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/microsoft/applications/events/DebugEventType;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/microsoft/applications/events/DebugEventType;->EVT_SEND_RETRY:Lcom/microsoft/applications/events/DebugEventType;

    .line 45
    new-instance v0, Lcom/microsoft/applications/events/DebugEventType;

    move-object/from16 v18, v0

    const/16 v1, 0x12

    const-wide/32 v2, 0x4000003

    const-string v4, "EVT_SEND_RETRY_DROPPED"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/microsoft/applications/events/DebugEventType;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/microsoft/applications/events/DebugEventType;->EVT_SEND_RETRY_DROPPED:Lcom/microsoft/applications/events/DebugEventType;

    .line 47
    new-instance v0, Lcom/microsoft/applications/events/DebugEventType;

    move-object/from16 v19, v0

    const/16 v1, 0x13

    const-wide/32 v2, 0x4000004

    const-string v4, "EVT_SEND_SKIP_UTC_REGISTRATION"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/microsoft/applications/events/DebugEventType;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/microsoft/applications/events/DebugEventType;->EVT_SEND_SKIP_UTC_REGISTRATION:Lcom/microsoft/applications/events/DebugEventType;

    .line 51
    new-instance v0, Lcom/microsoft/applications/events/DebugEventType;

    move-object/from16 v20, v0

    const/16 v1, 0x14

    const-wide/32 v2, 0x5000000

    const-string v4, "EVT_REJECTED"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/microsoft/applications/events/DebugEventType;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/microsoft/applications/events/DebugEventType;->EVT_REJECTED:Lcom/microsoft/applications/events/DebugEventType;

    .line 54
    new-instance v0, Lcom/microsoft/applications/events/DebugEventType;

    move-object/from16 v21, v0

    const/16 v1, 0x15

    const-wide/32 v2, 0x9000000

    const-string v4, "EVT_HTTP_STATE"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/microsoft/applications/events/DebugEventType;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/microsoft/applications/events/DebugEventType;->EVT_HTTP_STATE:Lcom/microsoft/applications/events/DebugEventType;

    .line 64
    new-instance v0, Lcom/microsoft/applications/events/DebugEventType;

    move-object/from16 v22, v0

    const/16 v1, 0x16

    const-wide/32 v2, 0xa000000

    const-string v4, "EVT_CONN_FAILURE"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/microsoft/applications/events/DebugEventType;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/microsoft/applications/events/DebugEventType;->EVT_CONN_FAILURE:Lcom/microsoft/applications/events/DebugEventType;

    .line 66
    new-instance v0, Lcom/microsoft/applications/events/DebugEventType;

    move-object/from16 v23, v0

    const/16 v1, 0x17

    const-wide/32 v2, 0xa000001

    const-string v4, "EVT_HTTP_FAILURE"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/microsoft/applications/events/DebugEventType;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/microsoft/applications/events/DebugEventType;->EVT_HTTP_FAILURE:Lcom/microsoft/applications/events/DebugEventType;

    .line 68
    new-instance v0, Lcom/microsoft/applications/events/DebugEventType;

    move-object/from16 v24, v0

    const/16 v1, 0x18

    const-wide/32 v2, 0xa000002

    const-string v4, "EVT_COMPRESS_FAILED"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/microsoft/applications/events/DebugEventType;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/microsoft/applications/events/DebugEventType;->EVT_COMPRESS_FAILED:Lcom/microsoft/applications/events/DebugEventType;

    .line 70
    new-instance v0, Lcom/microsoft/applications/events/DebugEventType;

    move-object/from16 v25, v0

    const/16 v1, 0x19

    const-wide/32 v2, 0xa000003

    const-string v4, "EVT_UNKNOWN_HOST"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/microsoft/applications/events/DebugEventType;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/microsoft/applications/events/DebugEventType;->EVT_UNKNOWN_HOST:Lcom/microsoft/applications/events/DebugEventType;

    .line 74
    new-instance v0, Lcom/microsoft/applications/events/DebugEventType;

    move-object/from16 v26, v0

    const/16 v1, 0x1a

    const-wide/32 v2, 0xb000000

    const-string v4, "EVT_HTTP_ERROR"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/microsoft/applications/events/DebugEventType;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/microsoft/applications/events/DebugEventType;->EVT_HTTP_ERROR:Lcom/microsoft/applications/events/DebugEventType;

    .line 76
    new-instance v0, Lcom/microsoft/applications/events/DebugEventType;

    move-object/from16 v27, v0

    const/16 v1, 0x1b

    const-wide/32 v2, 0xc000000

    const-string v4, "EVT_HTTP_OK"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/microsoft/applications/events/DebugEventType;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/microsoft/applications/events/DebugEventType;->EVT_HTTP_OK:Lcom/microsoft/applications/events/DebugEventType;

    .line 79
    new-instance v0, Lcom/microsoft/applications/events/DebugEventType;

    move-object/from16 v28, v0

    const/16 v1, 0x1c

    const-wide/32 v2, 0xd000000

    const-string v4, "EVT_NET_CHANGED"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/microsoft/applications/events/DebugEventType;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/microsoft/applications/events/DebugEventType;->EVT_NET_CHANGED:Lcom/microsoft/applications/events/DebugEventType;

    .line 82
    new-instance v0, Lcom/microsoft/applications/events/DebugEventType;

    move-object/from16 v29, v0

    const/16 v1, 0x1d

    const-wide/32 v2, 0xe000000

    const-string v4, "EVT_STORAGE_FULL"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/microsoft/applications/events/DebugEventType;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/microsoft/applications/events/DebugEventType;->EVT_STORAGE_FULL:Lcom/microsoft/applications/events/DebugEventType;

    .line 84
    new-instance v0, Lcom/microsoft/applications/events/DebugEventType;

    move-object/from16 v30, v0

    const/16 v1, 0x1e

    const-wide/32 v2, 0xe000001

    const-string v4, "EVT_STORAGE_FAILED"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/microsoft/applications/events/DebugEventType;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/microsoft/applications/events/DebugEventType;->EVT_STORAGE_FAILED:Lcom/microsoft/applications/events/DebugEventType;

    .line 87
    new-instance v0, Lcom/microsoft/applications/events/DebugEventType;

    move-object/from16 v31, v0

    const/16 v1, 0x1f

    const-wide/32 v2, 0xf000000

    const-string v4, "EVT_TICKET_EXPIRED"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/microsoft/applications/events/DebugEventType;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/microsoft/applications/events/DebugEventType;->EVT_TICKET_EXPIRED:Lcom/microsoft/applications/events/DebugEventType;

    .line 89
    new-instance v0, Lcom/microsoft/applications/events/DebugEventType;

    move-object/from16 v32, v0

    const/16 v1, 0x20

    const-wide v2, 0xdeadbeefL

    const-string v4, "EVT_UNKNOWN"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/microsoft/applications/events/DebugEventType;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/microsoft/applications/events/DebugEventType;->EVT_UNKNOWN:Lcom/microsoft/applications/events/DebugEventType;

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    move-object/from16 v4, v37

    .line 5
    filled-new-array/range {v0 .. v32}, [Lcom/microsoft/applications/events/DebugEventType;

    move-result-object v0

    sput-object v0, Lcom/microsoft/applications/events/DebugEventType;->$VALUES:[Lcom/microsoft/applications/events/DebugEventType;

    .line 101
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    sput-object v0, Lcom/microsoft/applications/events/DebugEventType;->eventMap:Ljava/util/TreeMap;

    .line 104
    invoke-static {}, Lcom/microsoft/applications/events/DebugEventType;->values()[Lcom/microsoft/applications/events/DebugEventType;

    move-result-object v0

    array-length v1, v0

    move/from16 v15, v38

    :goto_0
    if-ge v15, v1, :cond_0

    aget-object v2, v0, v15

    .line 105
    sget-object v3, Lcom/microsoft/applications/events/DebugEventType;->eventMap:Ljava/util/TreeMap;

    invoke-virtual {v2}, Lcom/microsoft/applications/events/DebugEventType;->value()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)V"
        }
    .end annotation

    .line 93
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 94
    iput-wide p3, p0, Lcom/microsoft/applications/events/DebugEventType;->value:J

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/applications/events/DebugEventType;
    .locals 1

    .line 5
    const-class v0, Lcom/microsoft/applications/events/DebugEventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/applications/events/DebugEventType;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/applications/events/DebugEventType;
    .locals 1

    .line 5
    sget-object v0, Lcom/microsoft/applications/events/DebugEventType;->$VALUES:[Lcom/microsoft/applications/events/DebugEventType;

    invoke-virtual {v0}, [Lcom/microsoft/applications/events/DebugEventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/applications/events/DebugEventType;

    return-object v0
.end method


# virtual methods
.method public value()J
    .locals 2

    .line 98
    iget-wide v0, p0, Lcom/microsoft/applications/events/DebugEventType;->value:J

    return-wide v0
.end method
