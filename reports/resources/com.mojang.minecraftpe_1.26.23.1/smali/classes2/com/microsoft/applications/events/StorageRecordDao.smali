.class public abstract Lcom/microsoft/applications/events/StorageRecordDao;
.super Ljava/lang/Object;
.source "StorageRecordDao.java"


# static fields
.field protected static final idCount:I = 0x40


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract deleteAllRecords()I
.end method

.method public deleteById([J)I
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 82
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_1

    .line 83
    array-length v3, p1

    sub-int/2addr v3, v1

    const/16 v4, 0x40

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 84
    new-array v4, v3, [J

    move v5, v0

    :goto_1
    if-ge v5, v3, :cond_0

    add-int v6, v1, v5

    .line 86
    aget-wide v6, p1, v6

    aput-wide v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 88
    :cond_0
    invoke-virtual {p0, v4}, Lcom/microsoft/applications/events/StorageRecordDao;->deleteByIdBlock([J)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x40

    goto :goto_0

    :cond_1
    return v2
.end method

.method public abstract deleteByIdBlock([J)I
.end method

.method public abstract deleteRecordInner([Lcom/microsoft/applications/events/StorageRecord;)I
.end method

.method public abstract deleteRecordsByToken(Ljava/lang/String;)I
.end method

.method public getAndReserve(IJJJ)[Lcom/microsoft/applications/events/StorageRecord;
    .locals 0

    .line 115
    invoke-virtual {p0, p4, p5}, Lcom/microsoft/applications/events/StorageRecordDao;->releaseExpired(J)I

    .line 116
    invoke-virtual {p0, p1, p2, p3}, Lcom/microsoft/applications/events/StorageRecordDao;->getUnreservedRecords(IJ)[Lcom/microsoft/applications/events/StorageRecord;

    move-result-object p1

    .line 117
    array-length p2, p1

    if-nez p2, :cond_0

    return-object p1

    .line 120
    :cond_0
    array-length p2, p1

    new-array p2, p2, [J

    const/4 p3, 0x0

    .line 121
    :goto_0
    array-length p4, p1

    if-ge p3, p4, :cond_1

    .line 122
    aget-object p4, p1, p3

    iget-wide p4, p4, Lcom/microsoft/applications/events/StorageRecord;->id:J

    aput-wide p4, p2, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 124
    :cond_1
    invoke-virtual {p0, p2, p6, p7}, Lcom/microsoft/applications/events/StorageRecordDao;->setReserved([JJ)V

    return-object p1
.end method

.method public abstract getMinLatency(J)Ljava/lang/Long;
.end method

.method public abstract getRecords(IJ)[Lcom/microsoft/applications/events/StorageRecord;
.end method

.method public getRecords(ZIJ)[Lcom/microsoft/applications/events/StorageRecord;
    .locals 2

    if-eqz p1, :cond_0

    .line 97
    invoke-virtual {p0, p2, p3, p4}, Lcom/microsoft/applications/events/StorageRecordDao;->getRecords(IJ)[Lcom/microsoft/applications/events/StorageRecord;

    move-result-object p1

    return-object p1

    :cond_0
    int-to-long v0, p2

    .line 100
    invoke-virtual {p0, v0, v1}, Lcom/microsoft/applications/events/StorageRecordDao;->getMinLatency(J)Ljava/lang/Long;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 109
    new-array p1, p1, [Lcom/microsoft/applications/events/StorageRecord;

    return-object p1

    .line 104
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p3, p4}, Lcom/microsoft/applications/events/StorageRecordDao;->getUnreservedByLatency(JJ)[Lcom/microsoft/applications/events/StorageRecord;

    move-result-object p1

    .line 105
    array-length v0, p1

    if-lez v0, :cond_0

    return-object p1
.end method

.method public abstract getRetryExpired([JJ)[Lcom/microsoft/applications/events/StorageRecord;
.end method

.method public abstract getUnreservedByLatency(JJ)[Lcom/microsoft/applications/events/StorageRecord;
.end method

.method public abstract getUnreservedRecords(IJ)[Lcom/microsoft/applications/events/StorageRecord;
.end method

.method public varargs abstract insertRecords([Lcom/microsoft/applications/events/StorageRecord;)[J
.end method

.method public abstract recordCount(I)J
.end method

.method public abstract releaseAndIncrementRetryCounts([J)I
.end method

.method public abstract releaseExpired(J)I
.end method

.method public releaseRecords([JZJLjava/util/TreeMap;)J
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([JZJ",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    const-wide/16 v3, 0x0

    if-eqz p2, :cond_4

    move-wide v7, v3

    const/4 v6, 0x0

    .line 162
    :goto_0
    array-length v9, v1

    if-ge v6, v9, :cond_3

    .line 163
    array-length v9, v1

    sub-int/2addr v9, v6

    const/16 v10, 0x40

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 164
    new-array v10, v9, [J

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v9, :cond_0

    add-int v12, v6, v11

    .line 166
    aget-wide v12, v1, v12

    aput-wide v12, v10, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_0
    move-wide/from16 v11, p3

    .line 168
    invoke-virtual {v0, v10, v11, v12}, Lcom/microsoft/applications/events/StorageRecordDao;->getRetryExpired([JJ)[Lcom/microsoft/applications/events/StorageRecord;

    move-result-object v9

    .line 169
    array-length v13, v9

    const/4 v14, 0x0

    :goto_2
    if-ge v14, v13, :cond_2

    aget-object v15, v9, v14

    .line 170
    iget-object v5, v15, Lcom/microsoft/applications/events/StorageRecord;->tenantToken:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    if-nez v5, :cond_1

    .line 172
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 174
    :cond_1
    iget-object v15, v15, Lcom/microsoft/applications/events/StorageRecord;->tenantToken:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    const-wide/16 v18, 0x1

    add-long v16, v16, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v15, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 176
    :cond_2
    invoke-virtual {v0, v9}, Lcom/microsoft/applications/events/StorageRecordDao;->deleteRecordInner([Lcom/microsoft/applications/events/StorageRecord;)I

    move-result v5

    int-to-long v13, v5

    add-long/2addr v7, v13

    .line 177
    invoke-virtual {v0, v10}, Lcom/microsoft/applications/events/StorageRecordDao;->releaseAndIncrementRetryCounts([J)I

    add-int/lit8 v6, v6, 0x40

    goto :goto_0

    :cond_3
    move-wide v3, v7

    goto :goto_3

    .line 181
    :cond_4
    invoke-virtual {v0, v1, v3, v4}, Lcom/microsoft/applications/events/StorageRecordDao;->setReserved([JJ)V

    :goto_3
    return-wide v3
.end method

.method public releaseUnconsumed([Lcom/microsoft/applications/events/StorageRecord;I)V
    .locals 4

    .line 130
    array-length v0, p1

    sub-int/2addr v0, p2

    .line 131
    new-array p2, v0, [J

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 134
    aget-object v2, p1, v1

    iget-wide v2, v2, Lcom/microsoft/applications/events/StorageRecord;->id:J

    aput-wide v2, p2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 136
    invoke-virtual {p0, p2, v0, v1}, Lcom/microsoft/applications/events/StorageRecordDao;->setReserved([JJ)V

    return-void
.end method

.method public setReserved([JJ)V
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    .line 142
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 143
    array-length v2, p1

    sub-int/2addr v2, v1

    const/16 v3, 0x40

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 144
    new-array v3, v2, [J

    move v4, v0

    :goto_1
    if-ge v4, v2, :cond_0

    add-int v5, v1, v4

    .line 146
    aget-wide v5, p1, v5

    aput-wide v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 148
    :cond_0
    invoke-virtual {p0, v3, p2, p3}, Lcom/microsoft/applications/events/StorageRecordDao;->setReservedBlock([JJ)I

    add-int/lit8 v1, v1, 0x40

    goto :goto_0

    :cond_1
    return-void
.end method

.method public abstract setReservedBlock([JJ)I
.end method

.method public abstract totalRecordCount()J
.end method

.method public abstract totalSize()J
.end method

.method public abstract trim(J)I
.end method
