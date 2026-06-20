.class Lcom/microsoft/applications/events/Logger;
.super Ljava/lang/Object;
.source "Logger.java"

# interfaces
.implements Lcom/microsoft/applications/events/ILogger;


# instance fields
.field private m_nativePtr:J


# direct methods
.method constructor <init>(J)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-wide p1, p0, Lcom/microsoft/applications/events/Logger;->m_nativePtr:J

    .line 17
    invoke-static {p0}, Lcom/microsoft/applications/events/LogManager;->registerLogger(Lcom/microsoft/applications/events/Logger;)V

    return-void
.end method

.method private native nativeGetSemanticContext(J)J
.end method

.method private native nativeLogAggregatedMetric(JLjava/lang/String;JJLjava/lang/String;Ljava/lang/String;IIDJJ[Ljava/lang/Object;[Ljava/lang/Object;)V
.end method

.method private native nativeLogAggregatedMetricData(JLjava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[I[D[J[JLjava/lang/String;Ljava/lang/String;IIDJJ[Ljava/lang/Object;[Ljava/lang/Object;)V
.end method

.method private native nativeLogAppLifecycle(JILjava/lang/String;Ljava/lang/String;IIDJJ[Ljava/lang/Object;[Ljava/lang/Object;)V
.end method

.method private native nativeLogEventName(JLjava/lang/String;)V
.end method

.method private native nativeLogEventProperties(JLjava/lang/String;Ljava/lang/String;IIDJJ[Ljava/lang/Object;[Ljava/lang/Object;)V
.end method

.method private native nativeLogFailure(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIDJJ[Ljava/lang/Object;[Ljava/lang/Object;)V
.end method

.method private native nativeLogFailureWithCategoryId(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIDJJ[Ljava/lang/Object;[Ljava/lang/Object;)V
.end method

.method private native nativeLogPageAction(JLjava/lang/String;ILjava/lang/String;Ljava/lang/String;IIDJJ[Ljava/lang/Object;[Ljava/lang/Object;)V
.end method

.method private native nativeLogPageActionData(JLjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;SLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIDJJ[Ljava/lang/Object;[Ljava/lang/Object;)V
.end method

.method private native nativeLogPageView(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIDJJ[Ljava/lang/Object;[Ljava/lang/Object;)V
.end method

.method private native nativeLogPageViewWithUri(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIDJJ[Ljava/lang/Object;[Ljava/lang/Object;)V
.end method

.method private native nativeLogSampledMetric(JLjava/lang/String;DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIDJJ[Ljava/lang/Object;[Ljava/lang/Object;)V
.end method

.method private native nativeLogSampledMetricWithObjectId(JLjava/lang/String;DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIDJJ[Ljava/lang/Object;[Ljava/lang/Object;)V
.end method

.method private native nativeLogSession(JILjava/lang/String;Ljava/lang/String;IIDJJ[Ljava/lang/Object;[Ljava/lang/Object;)V
.end method

.method private native nativeLogTrace(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIDJJ[Ljava/lang/Object;[Ljava/lang/Object;)V
.end method

.method private native nativeLogUserState(JIJLjava/lang/String;Ljava/lang/String;IIDJJ[Ljava/lang/Object;[Ljava/lang/Object;)V
.end method

.method private static native nativeSetContextBoolValue(JLjava/lang/String;ZI)V
.end method

.method private static native nativeSetContextDoubleValue(JLjava/lang/String;DI)V
.end method

.method private native nativeSetContextEventProperty(JLjava/lang/String;Lcom/microsoft/applications/events/EventProperty;)V
.end method

.method private static native nativeSetContextGuidValue(JLjava/lang/String;Ljava/lang/String;I)V
.end method

.method private static native nativeSetContextIntValue(JLjava/lang/String;II)V
.end method

.method private static native nativeSetContextLongValue(JLjava/lang/String;JI)V
.end method

.method private static native nativeSetContextStringValue(JLjava/lang/String;Ljava/lang/String;I)V
.end method

.method private static native nativeSetContextTimeTicksValue(JLjava/lang/String;JI)V
.end method

.method private native nativeSetLevel(JI)V
.end method

.method private native nativeSetParentContext(JJ)V
.end method

.method private setContext(Ljava/lang/String;Lcom/microsoft/applications/events/TimeTicks;Lcom/microsoft/applications/events/PiiKind;)V
    .locals 7

    if-eqz p1, :cond_2

    .line 217
    invoke-static {p1}, Lcom/microsoft/applications/events/Utils;->validatePropertyName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    .line 222
    iget-wide v1, p0, Lcom/microsoft/applications/events/Logger;->m_nativePtr:J

    invoke-virtual {p2}, Lcom/microsoft/applications/events/TimeTicks;->getTicks()J

    move-result-wide v4

    invoke-virtual {p3}, Lcom/microsoft/applications/events/PiiKind;->getValue()I

    move-result v6

    move-object v3, p1

    invoke-static/range {v1 .. v6}, Lcom/microsoft/applications/events/Logger;->nativeSetContextTimeTicksValue(JLjava/lang/String;JI)V

    return-void

    .line 220
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "piiKind is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 219
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "value is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 218
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "name is null or invalid"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public SetContext(Ljava/lang/String;Lcom/microsoft/applications/events/EventProperty;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 298
    invoke-static {p1}, Lcom/microsoft/applications/events/Utils;->validatePropertyName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    .line 302
    iget-wide v0, p0, Lcom/microsoft/applications/events/Logger;->m_nativePtr:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/microsoft/applications/events/Logger;->nativeSetContextEventProperty(JLjava/lang/String;Lcom/microsoft/applications/events/EventProperty;)V

    return-void

    .line 300
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "prop is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 299
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "name is null or invalid"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public declared-synchronized clearNative()V
    .locals 2

    monitor-enter p0

    const-wide/16 v0, 0x0

    .line 1393
    :try_start_0
    iput-wide v0, p0, Lcom/microsoft/applications/events/Logger;->m_nativePtr:J

    .line 1394
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0

    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public close()V
    .locals 0

    .line 1378
    invoke-static {p0}, Lcom/microsoft/applications/events/LogManager;->removeLogger(Lcom/microsoft/applications/events/Logger;)V

    .line 1379
    invoke-virtual {p0}, Lcom/microsoft/applications/events/Logger;->clearNative()V

    return-void
.end method

.method public getNativeILoggerPtr()J
    .locals 2

    .line 1389
    iget-wide v0, p0, Lcom/microsoft/applications/events/Logger;->m_nativePtr:J

    return-wide v0
.end method

.method public getSemanticContext()Lcom/microsoft/applications/events/ISemanticContext;
    .locals 3

    .line 30
    new-instance v0, Lcom/microsoft/applications/events/SemanticContext;

    iget-wide v1, p0, Lcom/microsoft/applications/events/Logger;->m_nativePtr:J

    invoke-direct {p0, v1, v2}, Lcom/microsoft/applications/events/Logger;->nativeGetSemanticContext(J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/microsoft/applications/events/SemanticContext;-><init>(J)V

    return-object v0
.end method

.method public logAggregatedMetric(Lcom/microsoft/applications/events/AggregatedMetricData;Lcom/microsoft/applications/events/EventProperties;)V
    .locals 32

    move-object/from16 v0, p1

    if-eqz v0, :cond_4

    if-eqz p2, :cond_3

    .line 1188
    invoke-virtual/range {p2 .. p2}, Lcom/microsoft/applications/events/EventProperties;->getName()Ljava/lang/String;

    move-result-object v17

    .line 1189
    invoke-virtual/range {p2 .. p2}, Lcom/microsoft/applications/events/EventProperties;->getType()Ljava/lang/String;

    move-result-object v18

    .line 1190
    invoke-virtual/range {p2 .. p2}, Lcom/microsoft/applications/events/EventProperties;->getLatency()Lcom/microsoft/applications/events/EventLatency;

    move-result-object v1

    .line 1191
    invoke-virtual/range {p2 .. p2}, Lcom/microsoft/applications/events/EventProperties;->getPersistence()Lcom/microsoft/applications/events/EventPersistence;

    move-result-object v13

    .line 1192
    invoke-virtual/range {p2 .. p2}, Lcom/microsoft/applications/events/EventProperties;->getPopSample()D

    move-result-wide v21

    .line 1193
    invoke-virtual/range {p2 .. p2}, Lcom/microsoft/applications/events/EventProperties;->getPolicyBitFlags()J

    move-result-wide v23

    .line 1194
    invoke-virtual/range {p2 .. p2}, Lcom/microsoft/applications/events/EventProperties;->getTimestamp()J

    move-result-wide v25

    .line 1196
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 1197
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 1198
    invoke-virtual/range {p2 .. p2}, Lcom/microsoft/applications/events/EventProperties;->getProperties()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1199
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1200
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/microsoft/applications/events/EventProperty;

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1203
    :cond_0
    iget-object v2, v0, Lcom/microsoft/applications/events/AggregatedMetricData;->aggregates:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    new-array v12, v2, [I

    .line 1204
    iget-object v2, v0, Lcom/microsoft/applications/events/AggregatedMetricData;->aggregates:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    new-array v11, v2, [D

    .line 1206
    iget-object v2, v0, Lcom/microsoft/applications/events/AggregatedMetricData;->aggregates:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 1207
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/microsoft/applications/events/AggregateType;

    invoke-virtual {v6}, Lcom/microsoft/applications/events/AggregateType;->getValue()I

    move-result v6

    aput v6, v12, v4

    .line 1208
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    aput-wide v5, v11, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1212
    :cond_1
    iget-object v2, v0, Lcom/microsoft/applications/events/AggregatedMetricData;->buckets:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    new-array v10, v2, [J

    .line 1213
    iget-object v2, v0, Lcom/microsoft/applications/events/AggregatedMetricData;->buckets:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    new-array v9, v2, [J

    .line 1215
    iget-object v2, v0, Lcom/microsoft/applications/events/AggregatedMetricData;->buckets:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 1216
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    aput-wide v5, v10, v3

    .line 1217
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aput-wide v4, v9, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    move-object/from16 v7, p0

    .line 1221
    iget-wide v2, v7, Lcom/microsoft/applications/events/Logger;->m_nativePtr:J

    iget-object v4, v0, Lcom/microsoft/applications/events/AggregatedMetricData;->name:Ljava/lang/String;

    iget-wide v5, v0, Lcom/microsoft/applications/events/AggregatedMetricData;->duration:J

    iget-wide v7, v0, Lcom/microsoft/applications/events/AggregatedMetricData;->count:J

    move-object/from16 v16, v9

    iget-object v9, v0, Lcom/microsoft/applications/events/AggregatedMetricData;->units:Ljava/lang/String;

    move-object/from16 v19, v10

    iget-object v10, v0, Lcom/microsoft/applications/events/AggregatedMetricData;->instanceName:Ljava/lang/String;

    move-object/from16 v29, v19

    move-object/from16 v19, v11

    iget-object v11, v0, Lcom/microsoft/applications/events/AggregatedMetricData;->objectClass:Ljava/lang/String;

    move-object/from16 v30, v19

    iget-object v0, v0, Lcom/microsoft/applications/events/AggregatedMetricData;->objectId:Ljava/lang/String;

    move-object/from16 v31, v12

    move-object v12, v0

    .line 1236
    invoke-virtual {v1}, Lcom/microsoft/applications/events/EventLatency;->getValue()I

    move-result v19

    .line 1237
    invoke-virtual {v13}, Lcom/microsoft/applications/events/EventPersistence;->getValue()I

    move-result v20

    .line 1241
    invoke-virtual {v14}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v27

    .line 1242
    invoke-virtual {v15}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v28

    move-object/from16 v1, p0

    move-object/from16 v13, v31

    move-object/from16 v14, v30

    move-object/from16 v15, v29

    .line 1221
    invoke-direct/range {v1 .. v28}, Lcom/microsoft/applications/events/Logger;->nativeLogAggregatedMetricData(JLjava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[I[D[J[JLjava/lang/String;Ljava/lang/String;IIDJJ[Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void

    .line 1186
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "properties is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1185
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "metricData is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public logAggregatedMetric(Ljava/lang/String;JJLcom/microsoft/applications/events/EventProperties;)V
    .locals 20

    if-eqz p1, :cond_2

    .line 1113
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p6, :cond_1

    .line 1117
    invoke-virtual/range {p6 .. p6}, Lcom/microsoft/applications/events/EventProperties;->getName()Ljava/lang/String;

    move-result-object v8

    .line 1118
    invoke-virtual/range {p6 .. p6}, Lcom/microsoft/applications/events/EventProperties;->getType()Ljava/lang/String;

    move-result-object v9

    .line 1119
    invoke-virtual/range {p6 .. p6}, Lcom/microsoft/applications/events/EventProperties;->getLatency()Lcom/microsoft/applications/events/EventLatency;

    move-result-object v0

    .line 1120
    invoke-virtual/range {p6 .. p6}, Lcom/microsoft/applications/events/EventProperties;->getPersistence()Lcom/microsoft/applications/events/EventPersistence;

    move-result-object v3

    .line 1121
    invoke-virtual/range {p6 .. p6}, Lcom/microsoft/applications/events/EventProperties;->getPopSample()D

    move-result-wide v12

    .line 1122
    invoke-virtual/range {p6 .. p6}, Lcom/microsoft/applications/events/EventProperties;->getPolicyBitFlags()J

    move-result-wide v14

    .line 1123
    invoke-virtual/range {p6 .. p6}, Lcom/microsoft/applications/events/EventProperties;->getTimestamp()J

    move-result-wide v16

    .line 1125
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1126
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1127
    invoke-virtual/range {p6 .. p6}, Lcom/microsoft/applications/events/EventProperties;->getProperties()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1128
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1129
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/microsoft/applications/events/EventProperty;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move-object/from16 v6, p0

    .line 1132
    iget-wide v1, v6, Lcom/microsoft/applications/events/Logger;->m_nativePtr:J

    .line 1139
    invoke-virtual {v0}, Lcom/microsoft/applications/events/EventLatency;->getValue()I

    move-result v10

    .line 1140
    invoke-virtual {v3}, Lcom/microsoft/applications/events/EventPersistence;->getValue()I

    move-result v11

    .line 1144
    invoke-virtual {v4}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v18

    .line 1145
    invoke-virtual {v5}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v3, p1

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    .line 1132
    invoke-direct/range {v0 .. v19}, Lcom/microsoft/applications/events/Logger;->nativeLogAggregatedMetric(JLjava/lang/String;JJLjava/lang/String;Ljava/lang/String;IIDJJ[Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void

    .line 1115
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "properties is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1114
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "name is null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public logAppLifecycle(Lcom/microsoft/applications/events/AppLifecycleState;Lcom/microsoft/applications/events/EventProperties;)V
    .locals 20

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    .line 349
    invoke-virtual/range {p2 .. p2}, Lcom/microsoft/applications/events/EventProperties;->getName()Ljava/lang/String;

    move-result-object v4

    .line 350
    invoke-virtual/range {p2 .. p2}, Lcom/microsoft/applications/events/EventProperties;->getType()Ljava/lang/String;

    move-result-object v5

    .line 351
    invoke-virtual/range {p2 .. p2}, Lcom/microsoft/applications/events/EventProperties;->getLatency()Lcom/microsoft/applications/events/EventLatency;

    move-result-object v0

    .line 352
    invoke-virtual/range {p2 .. p2}, Lcom/microsoft/applications/events/EventProperties;->getPersistence()Lcom/microsoft/applications/events/EventPersistence;

    move-result-object v1

    .line 353
    invoke-virtual/range {p2 .. p2}, Lcom/microsoft/applications/events/EventProperties;->getPopSample()D

    move-result-wide v8

    .line 354
    invoke-virtual/range {p2 .. p2}, Lcom/microsoft/applications/events/EventProperties;->getPolicyBitFlags()J

    move-result-wide v10

    .line 355
    invoke-virtual/range {p2 .. p2}, Lcom/microsoft/applications/events/EventProperties;->getTimestamp()J

    move-result-wide v12

    .line 357
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 358
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 359
    invoke-virtual/range {p2 .. p2}, Lcom/microsoft/applications/events/EventProperties;->getProperties()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 360
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 361
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/microsoft/applications/events/EventProperty;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move-object/from16 v15, p0

    .line 364
    iget-wide v6, v15, Lcom/microsoft/applications/events/Logger;->m_nativePtr:J

    .line 366
    invoke-virtual/range {p1 .. p1}, Lcom/microsoft/applications/events/AppLifecycleState;->getValue()I

    move-result v14

    .line 369
    invoke-virtual {v0}, Lcom/microsoft/applications/events/EventLatency;->getValue()I

    move-result v16

    .line 370
    invoke-virtual {v1}, Lcom/microsoft/applications/events/EventPersistence;->getValue()I

    move-result v17

    .line 374
    invoke-virtual {v2}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v18

    .line 375
    invoke-virtual {v3}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, p0

    move-wide v1, v6

    move v3, v14

    move/from16 v6, v16

    move/from16 v7, v17

    move-object/from16 v14, v18

    move-object/from16 v15, v19

    .line 364
    invoke-direct/range {v0 .. v15}, Lcom/microsoft/applications/events/Logger;->nativeLogAppLifecycle(JILjava/lang/String;Ljava/lang/String;IIDJJ[Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void

    .line 347
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "properties is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 346
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "state is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public logEvent(Lcom/microsoft/applications/events/EventProperties;)V
    .locals 19

    if-eqz p1, :cond_1

    .line 470
    invoke-virtual/range {p1 .. p1}, Lcom/microsoft/applications/events/EventProperties;->getName()Ljava/lang/String;

    move-result-object v3

    .line 471
    invoke-virtual/range {p1 .. p1}, Lcom/microsoft/applications/events/EventProperties;->getType()Ljava/lang/String;

    move-result-object v4

    .line 472
    invoke-virtual/range {p1 .. p1}, Lcom/microsoft/applications/events/EventProperties;->getLatency()Lcom/microsoft/applications/events/EventLatency;

    move-result-object v0

    .line 473
    invoke-virtual/range {p1 .. p1}, Lcom/microsoft/applications/events/EventProperties;->getPersistence()Lcom/microsoft/applications/events/EventPersistence;

    move-result-object v1

    .line 474
    invoke-virtual/range {p1 .. p1}, Lcom/microsoft/applications/events/EventProperties;->getPopSample()D

    move-result-wide v7

    .line 475
    invoke-virtual/range {p1 .. p1}, Lcom/microsoft/applications/events/EventProperties;->getPolicyBitFlags()J

    move-result-wide v9

    .line 476
    invoke-virtual/range {p1 .. p1}, Lcom/microsoft/applications/events/EventProperties;->getTimestamp()J

    move-result-wide v11

    .line 478
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 479
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 480
    invoke-virtual/range {p1 .. p1}, Lcom/microsoft/applications/events/EventProperties;->getProperties()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    .line 481
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 482
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/microsoft/applications/events/EventProperty;

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move-object/from16 v15, p0

    .line 485
    iget-wide v13, v15, Lcom/microsoft/applications/events/Logger;->m_nativePtr:J

    .line 489
    invoke-virtual {v0}, Lcom/microsoft/applications/events/EventLatency;->getValue()I

    move-result v6

    .line 490
    invoke-virtual {v1}, Lcom/microsoft/applications/events/EventPersistence;->getValue()I

    move-result v16

    .line 494
    invoke-virtual {v2}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v17

    .line 495
    invoke-virtual {v5}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, p0

    move-wide v1, v13

    move v5, v6

    move/from16 v6, v16

    move-object/from16 v13, v17

    move-object/from16 v14, v18

    .line 485
    invoke-direct/range {v0 .. v14}, Lcom/microsoft/applications/events/Logger;->nativeLogEventProperties(JLjava/lang/String;Ljava/lang/String;IIDJJ[Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void

    :cond_1
    move-object/from16 v15, p0

    .line 468
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "properties is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public logEvent(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 442
    invoke-static {p1}, Lcom/microsoft/applications/events/Utils;->validateEventName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 445
    iget-wide v0, p0, Lcom/microsoft/applications/events/Logger;->m_nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lcom/microsoft/applications/events/Logger;->nativeLogEventName(JLjava/lang/String;)V

    return-void

    .line 443
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "name is null or invalid"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public logFailure(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/applications/events/EventProperties;)V
    .locals 17

    if-eqz p1, :cond_3

    .line 524
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p2, :cond_2

    .line 526
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p3, :cond_1

    .line 530
    invoke-virtual/range {p3 .. p3}, Lcom/microsoft/applications/events/EventProperties;->getName()Ljava/lang/String;

    move-result-object v5

    .line 531
    invoke-virtual/range {p3 .. p3}, Lcom/microsoft/applications/events/EventProperties;->getType()Ljava/lang/String;

    move-result-object v6

    .line 532
    invoke-virtual/range {p3 .. p3}, Lcom/microsoft/applications/events/EventProperties;->getLatency()Lcom/microsoft/applications/events/EventLatency;

    move-result-object v0

    .line 533
    invoke-virtual/range {p3 .. p3}, Lcom/microsoft/applications/events/EventProperties;->getPersistence()Lcom/microsoft/applications/events/EventPersistence;

    move-result-object v3

    .line 534
    invoke-virtual/range {p3 .. p3}, Lcom/microsoft/applications/events/EventProperties;->getPopSample()D

    move-result-wide v9

    .line 535
    invoke-virtual/range {p3 .. p3}, Lcom/microsoft/applications/events/EventProperties;->getPolicyBitFlags()J

    move-result-wide v11

    .line 536
    invoke-virtual/range {p3 .. p3}, Lcom/microsoft/applications/events/EventProperties;->getTimestamp()J

    move-result-wide v13

    .line 538
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 539
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 540
    invoke-virtual/range {p3 .. p3}, Lcom/microsoft/applications/events/EventProperties;->getProperties()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 541
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 542
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/microsoft/applications/events/EventProperty;

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move-object/from16 v8, p0

    .line 545
    iget-wide v1, v8, Lcom/microsoft/applications/events/Logger;->m_nativePtr:J

    .line 551
    invoke-virtual {v0}, Lcom/microsoft/applications/events/EventLatency;->getValue()I

    move-result v7

    .line 552
    invoke-virtual {v3}, Lcom/microsoft/applications/events/EventPersistence;->getValue()I

    move-result v0

    move v8, v0

    .line 556
    invoke-virtual {v4}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    move-object v3, v15

    move-object v15, v0

    .line 557
    invoke-virtual {v3}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    .line 545
    invoke-direct/range {v0 .. v16}, Lcom/microsoft/applications/events/Logger;->nativeLogFailure(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIDJJ[Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void

    .line 528
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "properties is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 527
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "detail is null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 525
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "signature is null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public logFailure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/applications/events/EventProperties;)V
    .locals 19

    if-eqz p1, :cond_3

    .line 595
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p2, :cond_2

    .line 597
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p5, :cond_1

    .line 601
    invoke-virtual/range {p5 .. p5}, Lcom/microsoft/applications/events/EventProperties;->getName()Ljava/lang/String;

    move-result-object v7

    .line 602
    invoke-virtual/range {p5 .. p5}, Lcom/microsoft/applications/events/EventProperties;->getType()Ljava/lang/String;

    move-result-object v8

    .line 603
    invoke-virtual/range {p5 .. p5}, Lcom/microsoft/applications/events/EventProperties;->getLatency()Lcom/microsoft/applications/events/EventLatency;

    move-result-object v0

    .line 604
    invoke-virtual/range {p5 .. p5}, Lcom/microsoft/applications/events/EventProperties;->getPersistence()Lcom/microsoft/applications/events/EventPersistence;

    move-result-object v3

    .line 605
    invoke-virtual/range {p5 .. p5}, Lcom/microsoft/applications/events/EventProperties;->getPopSample()D

    move-result-wide v11

    .line 606
    invoke-virtual/range {p5 .. p5}, Lcom/microsoft/applications/events/EventProperties;->getPolicyBitFlags()J

    move-result-wide v13

    .line 607
    invoke-virtual/range {p5 .. p5}, Lcom/microsoft/applications/events/EventProperties;->getTimestamp()J

    move-result-wide v15

    .line 609
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 610
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 611
    invoke-virtual/range {p5 .. p5}, Lcom/microsoft/applications/events/EventProperties;->getProperties()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 612
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 613
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/microsoft/applications/events/EventProperty;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move-object/from16 v6, p0

    .line 616
    iget-wide v1, v6, Lcom/microsoft/applications/events/Logger;->m_nativePtr:J

    .line 624
    invoke-virtual {v0}, Lcom/microsoft/applications/events/EventLatency;->getValue()I

    move-result v9

    .line 625
    invoke-virtual {v3}, Lcom/microsoft/applications/events/EventPersistence;->getValue()I

    move-result v10

    .line 629
    invoke-virtual {v4}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v17

    .line 630
    invoke-virtual {v5}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    .line 616
    invoke-direct/range {v0 .. v18}, Lcom/microsoft/applications/events/Logger;->nativeLogFailureWithCategoryId(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIDJJ[Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void

    .line 599
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "properties is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 598
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "detail is null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 596
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "signature is null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public logPageAction(Lcom/microsoft/applications/events/PageActionData;Lcom/microsoft/applications/events/EventProperties;)V
    .locals 27

    move-object/from16 v0, p1

    if-eqz v0, :cond_2

    if-eqz p2, :cond_1

    .line 886
    invoke-virtual/range {p2 .. p2}, Lcom/microsoft/applications/events/EventProperties;->getName()Ljava/lang/String;

    move-result-object v15

    .line 887
    invoke-virtual/range {p2 .. p2}, Lcom/microsoft/applications/events/EventProperties;->getType()Ljava/lang/String;

    move-result-object v16

    .line 888
    invoke-virtual/range {p2 .. p2}, Lcom/microsoft/applications/events/EventProperties;->getLatency()Lcom/microsoft/applications/events/EventLatency;

    move-result-object v1

    .line 889
    invoke-virtual/range {p2 .. p2}, Lcom/microsoft/applications/events/EventProperties;->getPersistence()Lcom/microsoft/applications/events/EventPersistence;

    move-result-object v18

    .line 890
    invoke-virtual/range {p2 .. p2}, Lcom/microsoft/applications/events/EventProperties;->getPopSample()D

    move-result-wide v19

    .line 891
    invoke-virtual/range {p2 .. p2}, Lcom/microsoft/applications/events/EventProperties;->getPolicyBitFlags()J

    move-result-wide v21

    .line 892
    invoke-virtual/range {p2 .. p2}, Lcom/microsoft/applications/events/EventProperties;->getTimestamp()J

    move-result-wide v23

    .line 894
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 895
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 896
    invoke-virtual/range {p2 .. p2}, Lcom/microsoft/applications/events/EventProperties;->getProperties()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 897
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 898
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/microsoft/applications/events/EventProperty;

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move-object/from16 v12, p0

    .line 901
    iget-wide v2, v12, Lcom/microsoft/applications/events/Logger;->m_nativePtr:J

    iget-object v4, v0, Lcom/microsoft/applications/events/PageActionData;->pageViewId:Ljava/lang/String;

    iget-object v5, v0, Lcom/microsoft/applications/events/PageActionData;->actionType:Lcom/microsoft/applications/events/ActionType;

    .line 904
    invoke-virtual {v5}, Lcom/microsoft/applications/events/ActionType;->getValue()I

    move-result v5

    iget-object v6, v0, Lcom/microsoft/applications/events/PageActionData;->rawActionType:Lcom/microsoft/applications/events/RawActionType;

    .line 905
    invoke-virtual {v6}, Lcom/microsoft/applications/events/RawActionType;->getValue()I

    move-result v6

    iget-object v7, v0, Lcom/microsoft/applications/events/PageActionData;->inputDeviceType:Lcom/microsoft/applications/events/InputDeviceType;

    .line 906
    invoke-virtual {v7}, Lcom/microsoft/applications/events/InputDeviceType;->getValue()I

    move-result v7

    iget-object v8, v0, Lcom/microsoft/applications/events/PageActionData;->targetItemId:Ljava/lang/String;

    iget-object v9, v0, Lcom/microsoft/applications/events/PageActionData;->targetItemDataSourceName:Ljava/lang/String;

    iget-object v10, v0, Lcom/microsoft/applications/events/PageActionData;->targetItemDataSourceCategory:Ljava/lang/String;

    iget-object v11, v0, Lcom/microsoft/applications/events/PageActionData;->targetItemDataSourceCollection:Ljava/lang/String;

    iget-object v12, v0, Lcom/microsoft/applications/events/PageActionData;->targetItemLayoutContainer:Ljava/lang/String;

    move-object/from16 v17, v13

    iget-short v13, v0, Lcom/microsoft/applications/events/PageActionData;->targetItemLayoutRank:S

    move-object/from16 v26, v17

    iget-object v0, v0, Lcom/microsoft/applications/events/PageActionData;->destinationUri:Ljava/lang/String;

    move-object/from16 v25, v14

    move-object v14, v0

    .line 916
    invoke-virtual {v1}, Lcom/microsoft/applications/events/EventLatency;->getValue()I

    move-result v17

    .line 917
    invoke-virtual/range {v18 .. v18}, Lcom/microsoft/applications/events/EventPersistence;->getValue()I

    move-result v18

    .line 921
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v25

    .line 922
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v26

    move-object/from16 v1, p0

    .line 901
    invoke-direct/range {v1 .. v26}, Lcom/microsoft/applications/events/Logger;->nativeLogPageActionData(JLjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;SLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIDJJ[Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void

    .line 884
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "properties is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 883
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pageActionData is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public logPageAction(Ljava/lang/String;Lcom/microsoft/applications/events/ActionType;Lcom/microsoft/applications/events/EventProperties;)V
    .locals 17

    if-eqz p1, :cond_3

    .line 813
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p2, :cond_2

    if-eqz p3, :cond_1

    .line 818
    invoke-virtual/range {p3 .. p3}, Lcom/microsoft/applications/events/EventProperties;->getName()Ljava/lang/String;

    move-result-object v5

    .line 819
    invoke-virtual/range {p3 .. p3}, Lcom/microsoft/applications/events/EventProperties;->getType()Ljava/lang/String;

    move-result-object v6

    .line 820
    invoke-virtual/range {p3 .. p3}, Lcom/microsoft/applications/events/EventProperties;->getLatency()Lcom/microsoft/applications/events/EventLatency;

    move-result-object v0

    .line 821
    invoke-virtual/range {p3 .. p3}, Lcom/microsoft/applications/events/EventProperties;->getPersistence()Lcom/microsoft/applications/events/EventPersistence;

    move-result-object v3

    .line 822
    invoke-virtual/range {p3 .. p3}, Lcom/microsoft/applications/events/EventProperties;->getPopSample()D

    move-result-wide v9

    .line 823
    invoke-virtual/range {p3 .. p3}, Lcom/microsoft/applications/events/EventProperties;->getPolicyBitFlags()J

    move-result-wide v11

    .line 824
    invoke-virtual/range {p3 .. p3}, Lcom/microsoft/applications/events/EventProperties;->getTimestamp()J

    move-result-wide v13

    .line 826
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 827
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 828
    invoke-virtual/range {p3 .. p3}, Lcom/microsoft/applications/events/EventProperties;->getProperties()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 829
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 830
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/microsoft/applications/events/EventProperty;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move-object/from16 v7, p0

    .line 833
    iget-wide v1, v7, Lcom/microsoft/applications/events/Logger;->m_nativePtr:J

    .line 836
    invoke-virtual/range {p2 .. p2}, Lcom/microsoft/applications/events/ActionType;->getValue()I

    move-result v4

    .line 839
    invoke-virtual {v0}, Lcom/microsoft/applications/events/EventLatency;->getValue()I

    move-result v0

    move v7, v0

    .line 840
    invoke-virtual {v3}, Lcom/microsoft/applications/events/EventPersistence;->getValue()I

    move-result v0

    move-object v3, v8

    move v8, v0

    .line 844
    invoke-virtual {v15}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v15

    .line 845
    invoke-virtual {v3}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v3, p1

    .line 833
    invoke-direct/range {v0 .. v16}, Lcom/microsoft/applications/events/Logger;->nativeLogPageAction(JLjava/lang/String;ILjava/lang/String;Ljava/lang/String;IIDJJ[Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void

    .line 816
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "properties is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 815
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "actionType is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 814
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pageViewId is null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public logPageView(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/applications/events/EventProperties;)V
    .locals 17

    if-eqz p1, :cond_3

    .line 662
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p2, :cond_2

    .line 664
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p3, :cond_1

    .line 668
    invoke-virtual/range {p3 .. p3}, Lcom/microsoft/applications/events/EventProperties;->getName()Ljava/lang/String;

    move-result-object v5

    .line 669
    invoke-virtual/range {p3 .. p3}, Lcom/microsoft/applications/events/EventProperties;->getType()Ljava/lang/String;

    move-result-object v6

    .line 670
    invoke-virtual/range {p3 .. p3}, Lcom/microsoft/applications/events/EventProperties;->getLatency()Lcom/microsoft/applications/events/EventLatency;

    move-result-object v0

    .line 671
    invoke-virtual/range {p3 .. p3}, Lcom/microsoft/applications/events/EventProperties;->getPersistence()Lcom/microsoft/applications/events/EventPersistence;

    move-result-object v3

    .line 672
    invoke-virtual/range {p3 .. p3}, Lcom/microsoft/applications/events/EventProperties;->getPopSample()D

    move-result-wide v9

    .line 673
    invoke-virtual/range {p3 .. p3}, Lcom/microsoft/applications/events/EventProperties;->getPolicyBitFlags()J

    move-result-wide v11

    .line 674
    invoke-virtual/range {p3 .. p3}, Lcom/microsoft/applications/events/EventProperties;->getTimestamp()J

    move-result-wide v13

    .line 676
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 677
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 678
    invoke-virtual/range {p3 .. p3}, Lcom/microsoft/applications/events/EventProperties;->getProperties()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 679
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 680
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/microsoft/applications/events/EventProperty;

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move-object/from16 v8, p0

    .line 683
    iget-wide v1, v8, Lcom/microsoft/applications/events/Logger;->m_nativePtr:J

    .line 689
    invoke-virtual {v0}, Lcom/microsoft/applications/events/EventLatency;->getValue()I

    move-result v7

    .line 690
    invoke-virtual {v3}, Lcom/microsoft/applications/events/EventPersistence;->getValue()I

    move-result v0

    move v8, v0

    .line 694
    invoke-virtual {v4}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    move-object v3, v15

    move-object v15, v0

    .line 695
    invoke-virtual {v3}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    .line 683
    invoke-direct/range {v0 .. v16}, Lcom/microsoft/applications/events/Logger;->nativeLogPageView(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIDJJ[Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void

    .line 666
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "properties is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 665
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pageName is null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 663
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "id is null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public logPageView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/applications/events/EventProperties;)V
    .locals 20

    if-eqz p1, :cond_6

    .line 740
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    if-eqz p2, :cond_5

    .line 742
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    if-eqz p3, :cond_4

    .line 744
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    if-eqz p4, :cond_3

    .line 746
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p5, :cond_2

    .line 748
    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p6, :cond_1

    .line 752
    invoke-virtual/range {p6 .. p6}, Lcom/microsoft/applications/events/EventProperties;->getName()Ljava/lang/String;

    move-result-object v8

    .line 753
    invoke-virtual/range {p6 .. p6}, Lcom/microsoft/applications/events/EventProperties;->getType()Ljava/lang/String;

    move-result-object v9

    .line 754
    invoke-virtual/range {p6 .. p6}, Lcom/microsoft/applications/events/EventProperties;->getLatency()Lcom/microsoft/applications/events/EventLatency;

    move-result-object v0

    .line 755
    invoke-virtual/range {p6 .. p6}, Lcom/microsoft/applications/events/EventProperties;->getPersistence()Lcom/microsoft/applications/events/EventPersistence;

    move-result-object v3

    .line 756
    invoke-virtual/range {p6 .. p6}, Lcom/microsoft/applications/events/EventProperties;->getPopSample()D

    move-result-wide v12

    .line 757
    invoke-virtual/range {p6 .. p6}, Lcom/microsoft/applications/events/EventProperties;->getPolicyBitFlags()J

    move-result-wide v14

    .line 758
    invoke-virtual/range {p6 .. p6}, Lcom/microsoft/applications/events/EventProperties;->getTimestamp()J

    move-result-wide v16

    .line 760
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 761
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 762
    invoke-virtual/range {p6 .. p6}, Lcom/microsoft/applications/events/EventProperties;->getProperties()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 763
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 764
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/microsoft/applications/events/EventProperty;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move-object/from16 v7, p0

    .line 767
    iget-wide v1, v7, Lcom/microsoft/applications/events/Logger;->m_nativePtr:J

    .line 776
    invoke-virtual {v0}, Lcom/microsoft/applications/events/EventLatency;->getValue()I

    move-result v10

    .line 777
    invoke-virtual {v3}, Lcom/microsoft/applications/events/EventPersistence;->getValue()I

    move-result v11

    .line 781
    invoke-virtual {v4}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v18

    .line 782
    invoke-virtual {v5}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    .line 767
    invoke-direct/range {v0 .. v19}, Lcom/microsoft/applications/events/Logger;->nativeLogPageViewWithUri(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIDJJ[Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void

    .line 750
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "properties is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 749
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "referrerUri is null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 747
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "uri is null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 745
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "category is null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 743
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pageName is null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 741
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "id is null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public logSampledMetric(Ljava/lang/String;DLjava/lang/String;Lcom/microsoft/applications/events/EventProperties;)V
    .locals 19

    if-eqz p1, :cond_3

    .line 956
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p4, :cond_2

    .line 958
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p5, :cond_1

    .line 962
    invoke-virtual/range {p5 .. p5}, Lcom/microsoft/applications/events/EventProperties;->getName()Ljava/lang/String;

    move-result-object v7

    .line 963
    invoke-virtual/range {p5 .. p5}, Lcom/microsoft/applications/events/EventProperties;->getType()Ljava/lang/String;

    move-result-object v8

    .line 964
    invoke-virtual/range {p5 .. p5}, Lcom/microsoft/applications/events/EventProperties;->getLatency()Lcom/microsoft/applications/events/EventLatency;

    move-result-object v0

    .line 965
    invoke-virtual/range {p5 .. p5}, Lcom/microsoft/applications/events/EventProperties;->getPersistence()Lcom/microsoft/applications/events/EventPersistence;

    move-result-object v3

    .line 966
    invoke-virtual/range {p5 .. p5}, Lcom/microsoft/applications/events/EventProperties;->getPopSample()D

    move-result-wide v11

    .line 967
    invoke-virtual/range {p5 .. p5}, Lcom/microsoft/applications/events/EventProperties;->getPolicyBitFlags()J

    move-result-wide v13

    .line 968
    invoke-virtual/range {p5 .. p5}, Lcom/microsoft/applications/events/EventProperties;->getTimestamp()J

    move-result-wide v15

    .line 970
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 971
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 972
    invoke-virtual/range {p5 .. p5}, Lcom/microsoft/applications/events/EventProperties;->getProperties()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 973
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 974
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/microsoft/applications/events/EventProperty;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move-object/from16 v6, p0

    .line 977
    iget-wide v1, v6, Lcom/microsoft/applications/events/Logger;->m_nativePtr:J

    .line 984
    invoke-virtual {v0}, Lcom/microsoft/applications/events/EventLatency;->getValue()I

    move-result v9

    .line 985
    invoke-virtual {v3}, Lcom/microsoft/applications/events/EventPersistence;->getValue()I

    move-result v10

    .line 989
    invoke-virtual {v4}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v17

    .line 990
    invoke-virtual {v5}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v3, p1

    move-wide/from16 v4, p2

    move-object/from16 v6, p4

    .line 977
    invoke-direct/range {v0 .. v18}, Lcom/microsoft/applications/events/Logger;->nativeLogSampledMetric(JLjava/lang/String;DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIDJJ[Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void

    .line 960
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "properties is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 959
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "units is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 957
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "name is null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public logSampledMetric(Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/applications/events/EventProperties;)V
    .locals 22

    if-eqz p1, :cond_6

    .line 1038
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    if-eqz p4, :cond_5

    .line 1040
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    if-eqz p5, :cond_4

    .line 1042
    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    if-eqz p6, :cond_3

    .line 1044
    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p7, :cond_2

    .line 1046
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p8, :cond_1

    .line 1050
    invoke-virtual/range {p8 .. p8}, Lcom/microsoft/applications/events/EventProperties;->getName()Ljava/lang/String;

    move-result-object v10

    .line 1051
    invoke-virtual/range {p8 .. p8}, Lcom/microsoft/applications/events/EventProperties;->getType()Ljava/lang/String;

    move-result-object v11

    .line 1052
    invoke-virtual/range {p8 .. p8}, Lcom/microsoft/applications/events/EventProperties;->getLatency()Lcom/microsoft/applications/events/EventLatency;

    move-result-object v0

    .line 1053
    invoke-virtual/range {p8 .. p8}, Lcom/microsoft/applications/events/EventProperties;->getPersistence()Lcom/microsoft/applications/events/EventPersistence;

    move-result-object v3

    .line 1054
    invoke-virtual/range {p8 .. p8}, Lcom/microsoft/applications/events/EventProperties;->getPopSample()D

    move-result-wide v14

    .line 1055
    invoke-virtual/range {p8 .. p8}, Lcom/microsoft/applications/events/EventProperties;->getPolicyBitFlags()J

    move-result-wide v16

    .line 1056
    invoke-virtual/range {p8 .. p8}, Lcom/microsoft/applications/events/EventProperties;->getTimestamp()J

    move-result-wide v18

    .line 1058
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1059
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1060
    invoke-virtual/range {p8 .. p8}, Lcom/microsoft/applications/events/EventProperties;->getProperties()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1061
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1062
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/microsoft/applications/events/EventProperty;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move-object/from16 v9, p0

    .line 1065
    iget-wide v1, v9, Lcom/microsoft/applications/events/Logger;->m_nativePtr:J

    .line 1075
    invoke-virtual {v0}, Lcom/microsoft/applications/events/EventLatency;->getValue()I

    move-result v12

    .line 1076
    invoke-virtual {v3}, Lcom/microsoft/applications/events/EventPersistence;->getValue()I

    move-result v13

    .line 1080
    invoke-virtual {v4}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v20

    .line 1081
    invoke-virtual {v5}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v3, p1

    move-wide/from16 v4, p2

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    .line 1065
    invoke-direct/range {v0 .. v21}, Lcom/microsoft/applications/events/Logger;->nativeLogSampledMetricWithObjectId(JLjava/lang/String;DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIDJJ[Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void

    .line 1048
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "properties is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1047
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "objectId is null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1045
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "objectClass is null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1043
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "instanceName is null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1041
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "units is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1039
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "name is null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public logSession(Lcom/microsoft/applications/events/SessionState;Lcom/microsoft/applications/events/EventProperties;)V
    .locals 20

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    .line 404
    invoke-virtual/range {p2 .. p2}, Lcom/microsoft/applications/events/EventProperties;->getName()Ljava/lang/String;

    move-result-object v4

    .line 405
    invoke-virtual/range {p2 .. p2}, Lcom/microsoft/applications/events/EventProperties;->getType()Ljava/lang/String;

    move-result-object v5

    .line 406
    invoke-virtual/range {p2 .. p2}, Lcom/microsoft/applications/events/EventProperties;->getLatency()Lcom/microsoft/applications/events/EventLatency;

    move-result-object v0

    .line 407
    invoke-virtual/range {p2 .. p2}, Lcom/microsoft/applications/events/EventProperties;->getPersistence()Lcom/microsoft/applications/events/EventPersistence;

    move-result-object v1

    .line 408
    invoke-virtual/range {p2 .. p2}, Lcom/microsoft/applications/events/EventProperties;->getPopSample()D

    move-result-wide v8

    .line 409
    invoke-virtual/range {p2 .. p2}, Lcom/microsoft/applications/events/EventProperties;->getPolicyBitFlags()J

    move-result-wide v10

    .line 410
    invoke-virtual/range {p2 .. p2}, Lcom/microsoft/applications/events/EventProperties;->getTimestamp()J

    move-result-wide v12

    .line 412
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 413
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 414
    invoke-virtual/range {p2 .. p2}, Lcom/microsoft/applications/events/EventProperties;->getProperties()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 415
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 416
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/microsoft/applications/events/EventProperty;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move-object/from16 v15, p0

    .line 419
    iget-wide v6, v15, Lcom/microsoft/applications/events/Logger;->m_nativePtr:J

    .line 421
    invoke-virtual/range {p1 .. p1}, Lcom/microsoft/applications/events/SessionState;->getValue()I

    move-result v14

    .line 424
    invoke-virtual {v0}, Lcom/microsoft/applications/events/EventLatency;->getValue()I

    move-result v16

    .line 425
    invoke-virtual {v1}, Lcom/microsoft/applications/events/EventPersistence;->getValue()I

    move-result v17

    .line 429
    invoke-virtual {v2}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v18

    .line 430
    invoke-virtual {v3}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, p0

    move-wide v1, v6

    move v3, v14

    move/from16 v6, v16

    move/from16 v7, v17

    move-object/from16 v14, v18

    move-object/from16 v15, v19

    .line 419
    invoke-direct/range {v0 .. v15}, Lcom/microsoft/applications/events/Logger;->nativeLogSession(JILjava/lang/String;Ljava/lang/String;IIDJJ[Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void

    .line 402
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x0

    sget-object v1, Landroid/support/v4/graphics/drawable/kjo/dIduDPQKyFC;->WjkTwcxwsNGhSm:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 401
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "state is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public logTrace(Lcom/microsoft/applications/events/TraceLevel;Ljava/lang/String;Lcom/microsoft/applications/events/EventProperties;)V
    .locals 17

    if-eqz p2, :cond_2

    .line 1270
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    .line 1274
    invoke-virtual/range {p3 .. p3}, Lcom/microsoft/applications/events/EventProperties;->getName()Ljava/lang/String;

    move-result-object v5

    .line 1275
    invoke-virtual/range {p3 .. p3}, Lcom/microsoft/applications/events/EventProperties;->getType()Ljava/lang/String;

    move-result-object v6

    .line 1276
    invoke-virtual/range {p3 .. p3}, Lcom/microsoft/applications/events/EventProperties;->getLatency()Lcom/microsoft/applications/events/EventLatency;

    move-result-object v0

    .line 1277
    invoke-virtual/range {p3 .. p3}, Lcom/microsoft/applications/events/EventProperties;->getPersistence()Lcom/microsoft/applications/events/EventPersistence;

    move-result-object v4

    .line 1278
    invoke-virtual/range {p3 .. p3}, Lcom/microsoft/applications/events/EventProperties;->getPopSample()D

    move-result-wide v9

    .line 1279
    invoke-virtual/range {p3 .. p3}, Lcom/microsoft/applications/events/EventProperties;->getPolicyBitFlags()J

    move-result-wide v11

    .line 1280
    invoke-virtual/range {p3 .. p3}, Lcom/microsoft/applications/events/EventProperties;->getTimestamp()J

    move-result-wide v13

    .line 1282
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 1283
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1284
    invoke-virtual/range {p3 .. p3}, Lcom/microsoft/applications/events/EventProperties;->getProperties()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1285
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1286
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/microsoft/applications/events/EventProperty;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move-object/from16 v7, p0

    .line 1289
    iget-wide v1, v7, Lcom/microsoft/applications/events/Logger;->m_nativePtr:J

    .line 1291
    invoke-virtual/range {p1 .. p1}, Lcom/microsoft/applications/events/TraceLevel;->getValue()I

    move-result v3

    .line 1295
    invoke-virtual {v0}, Lcom/microsoft/applications/events/EventLatency;->getValue()I

    move-result v0

    move v7, v0

    .line 1296
    invoke-virtual {v4}, Lcom/microsoft/applications/events/EventPersistence;->getValue()I

    move-result v0

    move-object v4, v8

    move v8, v0

    .line 1300
    invoke-virtual {v15}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v15

    .line 1301
    invoke-virtual {v4}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v4, p2

    .line 1289
    invoke-direct/range {v0 .. v16}, Lcom/microsoft/applications/events/Logger;->nativeLogTrace(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIDJJ[Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void

    .line 1272
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "level is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1271
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "message is null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public logUserState(Lcom/microsoft/applications/events/UserState;JLcom/microsoft/applications/events/EventProperties;)V
    .locals 18

    if-eqz p1, :cond_1

    .line 1334
    invoke-virtual/range {p4 .. p4}, Lcom/microsoft/applications/events/EventProperties;->getName()Ljava/lang/String;

    move-result-object v6

    .line 1335
    invoke-virtual/range {p4 .. p4}, Lcom/microsoft/applications/events/EventProperties;->getType()Ljava/lang/String;

    move-result-object v7

    .line 1336
    invoke-virtual/range {p4 .. p4}, Lcom/microsoft/applications/events/EventProperties;->getLatency()Lcom/microsoft/applications/events/EventLatency;

    move-result-object v0

    .line 1337
    invoke-virtual/range {p4 .. p4}, Lcom/microsoft/applications/events/EventProperties;->getPersistence()Lcom/microsoft/applications/events/EventPersistence;

    move-result-object v4

    .line 1338
    invoke-virtual/range {p4 .. p4}, Lcom/microsoft/applications/events/EventProperties;->getPopSample()D

    move-result-wide v10

    .line 1339
    invoke-virtual/range {p4 .. p4}, Lcom/microsoft/applications/events/EventProperties;->getPolicyBitFlags()J

    move-result-wide v12

    .line 1340
    invoke-virtual/range {p4 .. p4}, Lcom/microsoft/applications/events/EventProperties;->getTimestamp()J

    move-result-wide v14

    .line 1342
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1343
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1344
    invoke-virtual/range {p4 .. p4}, Lcom/microsoft/applications/events/EventProperties;->getProperties()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1345
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1346
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/microsoft/applications/events/EventProperty;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move-object/from16 v8, p0

    .line 1349
    iget-wide v1, v8, Lcom/microsoft/applications/events/Logger;->m_nativePtr:J

    .line 1351
    invoke-virtual/range {p1 .. p1}, Lcom/microsoft/applications/events/UserState;->getValue()I

    move-result v3

    .line 1355
    invoke-virtual {v0}, Lcom/microsoft/applications/events/EventLatency;->getValue()I

    move-result v0

    move v8, v0

    .line 1356
    invoke-virtual {v4}, Lcom/microsoft/applications/events/EventPersistence;->getValue()I

    move-result v0

    move-object v4, v9

    move v9, v0

    .line 1360
    invoke-virtual {v5}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v16

    .line 1361
    invoke-virtual {v4}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, p0

    move-wide/from16 v4, p2

    .line 1349
    invoke-direct/range {v0 .. v17}, Lcom/microsoft/applications/events/Logger;->nativeLogUserState(JIJLjava/lang/String;Ljava/lang/String;IIDJJ[Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void

    .line 1332
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "state is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setContext(Ljava/lang/String;D)V
    .locals 1

    .line 99
    sget-object v0, Lcom/microsoft/applications/events/PiiKind;->None:Lcom/microsoft/applications/events/PiiKind;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/microsoft/applications/events/Logger;->setContext(Ljava/lang/String;DLcom/microsoft/applications/events/PiiKind;)V

    return-void
.end method

.method public setContext(Ljava/lang/String;DLcom/microsoft/applications/events/PiiKind;)V
    .locals 7

    if-eqz p1, :cond_1

    .line 82
    invoke-static {p1}, Lcom/microsoft/applications/events/Utils;->validatePropertyName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p4, :cond_0

    .line 86
    iget-wide v1, p0, Lcom/microsoft/applications/events/Logger;->m_nativePtr:J

    invoke-virtual {p4}, Lcom/microsoft/applications/events/PiiKind;->getValue()I

    move-result v6

    move-object v3, p1

    move-wide v4, p2

    invoke-static/range {v1 .. v6}, Lcom/microsoft/applications/events/Logger;->nativeSetContextDoubleValue(JLjava/lang/String;DI)V

    return-void

    .line 84
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "piiKind is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 83
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "name is null or invalid"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setContext(Ljava/lang/String;I)V
    .locals 1

    .line 167
    sget-object v0, Lcom/microsoft/applications/events/PiiKind;->None:Lcom/microsoft/applications/events/PiiKind;

    invoke-virtual {p0, p1, p2, v0}, Lcom/microsoft/applications/events/Logger;->setContext(Ljava/lang/String;ILcom/microsoft/applications/events/PiiKind;)V

    return-void
.end method

.method public setContext(Ljava/lang/String;ILcom/microsoft/applications/events/PiiKind;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 150
    invoke-static {p1}, Lcom/microsoft/applications/events/Utils;->validatePropertyName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p3, :cond_0

    .line 154
    iget-wide v0, p0, Lcom/microsoft/applications/events/Logger;->m_nativePtr:J

    invoke-virtual {p3}, Lcom/microsoft/applications/events/PiiKind;->getValue()I

    move-result p3

    invoke-static {v0, v1, p1, p2, p3}, Lcom/microsoft/applications/events/Logger;->nativeSetContextIntValue(JLjava/lang/String;II)V

    return-void

    .line 152
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "piiKind is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 151
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "name is null or invalid"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setContext(Ljava/lang/String;J)V
    .locals 1

    .line 133
    sget-object v0, Lcom/microsoft/applications/events/PiiKind;->None:Lcom/microsoft/applications/events/PiiKind;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/microsoft/applications/events/Logger;->setContext(Ljava/lang/String;JLcom/microsoft/applications/events/PiiKind;)V

    return-void
.end method

.method public setContext(Ljava/lang/String;JLcom/microsoft/applications/events/PiiKind;)V
    .locals 7

    if-eqz p1, :cond_1

    .line 116
    invoke-static {p1}, Lcom/microsoft/applications/events/Utils;->validatePropertyName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p4, :cond_0

    .line 120
    iget-wide v1, p0, Lcom/microsoft/applications/events/Logger;->m_nativePtr:J

    invoke-virtual {p4}, Lcom/microsoft/applications/events/PiiKind;->getValue()I

    move-result v6

    move-object v3, p1

    move-wide v4, p2

    invoke-static/range {v1 .. v6}, Lcom/microsoft/applications/events/Logger;->nativeSetContextLongValue(JLjava/lang/String;JI)V

    return-void

    .line 118
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "piiKind is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 117
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "name is null or invalid"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setContext(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 65
    sget-object v0, Lcom/microsoft/applications/events/PiiKind;->None:Lcom/microsoft/applications/events/PiiKind;

    invoke-virtual {p0, p1, p2, v0}, Lcom/microsoft/applications/events/Logger;->setContext(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/applications/events/PiiKind;)V

    return-void
.end method

.method public setContext(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/applications/events/PiiKind;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 47
    invoke-static {p1}, Lcom/microsoft/applications/events/Utils;->validatePropertyName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    .line 52
    iget-wide v0, p0, Lcom/microsoft/applications/events/Logger;->m_nativePtr:J

    invoke-virtual {p3}, Lcom/microsoft/applications/events/PiiKind;->getValue()I

    move-result p3

    invoke-static {v0, v1, p1, p2, p3}, Lcom/microsoft/applications/events/Logger;->nativeSetContextStringValue(JLjava/lang/String;Ljava/lang/String;I)V

    return-void

    .line 50
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "piiKind is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 49
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "value is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 48
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "name is null or invalid"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setContext(Ljava/lang/String;Ljava/util/Date;)V
    .locals 1

    .line 249
    sget-object v0, Lcom/microsoft/applications/events/PiiKind;->None:Lcom/microsoft/applications/events/PiiKind;

    invoke-virtual {p0, p1, p2, v0}, Lcom/microsoft/applications/events/Logger;->setContext(Ljava/lang/String;Ljava/util/Date;Lcom/microsoft/applications/events/PiiKind;)V

    return-void
.end method

.method public setContext(Ljava/lang/String;Ljava/util/Date;Lcom/microsoft/applications/events/PiiKind;)V
    .locals 1

    .line 236
    new-instance v0, Lcom/microsoft/applications/events/TimeTicks;

    invoke-direct {v0, p2}, Lcom/microsoft/applications/events/TimeTicks;-><init>(Ljava/util/Date;)V

    invoke-direct {p0, p1, v0, p3}, Lcom/microsoft/applications/events/Logger;->setContext(Ljava/lang/String;Lcom/microsoft/applications/events/TimeTicks;Lcom/microsoft/applications/events/PiiKind;)V

    return-void
.end method

.method public setContext(Ljava/lang/String;Ljava/util/UUID;)V
    .locals 1

    .line 284
    sget-object v0, Lcom/microsoft/applications/events/PiiKind;->None:Lcom/microsoft/applications/events/PiiKind;

    invoke-virtual {p0, p1, p2, v0}, Lcom/microsoft/applications/events/Logger;->setContext(Ljava/lang/String;Ljava/util/UUID;Lcom/microsoft/applications/events/PiiKind;)V

    return-void
.end method

.method public setContext(Ljava/lang/String;Ljava/util/UUID;Lcom/microsoft/applications/events/PiiKind;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 266
    invoke-static {p1}, Lcom/microsoft/applications/events/Utils;->validatePropertyName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    .line 271
    iget-wide v0, p0, Lcom/microsoft/applications/events/Logger;->m_nativePtr:J

    invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3}, Lcom/microsoft/applications/events/PiiKind;->getValue()I

    move-result p3

    invoke-static {v0, v1, p1, p2, p3}, Lcom/microsoft/applications/events/Logger;->nativeSetContextGuidValue(JLjava/lang/String;Ljava/lang/String;I)V

    return-void

    .line 269
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "piiKind is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 268
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "value is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 267
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "name is null or invalid"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setContext(Ljava/lang/String;Z)V
    .locals 1

    .line 201
    sget-object v0, Lcom/microsoft/applications/events/PiiKind;->None:Lcom/microsoft/applications/events/PiiKind;

    invoke-virtual {p0, p1, p2, v0}, Lcom/microsoft/applications/events/Logger;->setContext(Ljava/lang/String;ZLcom/microsoft/applications/events/PiiKind;)V

    return-void
.end method

.method public setContext(Ljava/lang/String;ZLcom/microsoft/applications/events/PiiKind;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 184
    invoke-static {p1}, Lcom/microsoft/applications/events/Utils;->validatePropertyName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p3, :cond_0

    .line 188
    iget-wide v0, p0, Lcom/microsoft/applications/events/Logger;->m_nativePtr:J

    invoke-virtual {p3}, Lcom/microsoft/applications/events/PiiKind;->getValue()I

    move-result p3

    invoke-static {v0, v1, p1, p2, p3}, Lcom/microsoft/applications/events/Logger;->nativeSetContextBoolValue(JLjava/lang/String;ZI)V

    return-void

    .line 186
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "piiKind is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 185
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "name is null or invalid"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setLevel(Lcom/microsoft/applications/events/DiagnosticLevel;)V
    .locals 2

    .line 1373
    iget-wide v0, p0, Lcom/microsoft/applications/events/Logger;->m_nativePtr:J

    invoke-virtual {p1}, Lcom/microsoft/applications/events/DiagnosticLevel;->getValue()I

    move-result p1

    invoke-direct {p0, v0, v1, p1}, Lcom/microsoft/applications/events/Logger;->nativeSetLevel(JI)V

    return-void
.end method

.method public setParentContext(Lcom/microsoft/applications/events/ISemanticContext;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 319
    iget-wide v0, p0, Lcom/microsoft/applications/events/Logger;->m_nativePtr:J

    check-cast p1, Lcom/microsoft/applications/events/SemanticContext;

    invoke-virtual {p1}, Lcom/microsoft/applications/events/SemanticContext;->getNativeSemanticContextPtr()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/microsoft/applications/events/Logger;->nativeSetParentContext(JJ)V

    return-void

    .line 317
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "context is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
