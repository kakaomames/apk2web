.class public Lcom/microsoft/applications/events/OfflineRoom;
.super Ljava/lang/Object;
.source "OfflineRoom.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/applications/events/OfflineRoom$TrimTransaction;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field m_db:Lcom/microsoft/applications/events/OfflineRoomDatabase;

.field m_pageSize:J

.field m_settingDao:Lcom/microsoft/applications/events/StorageSettingDao;

.field m_srDao:Lcom/microsoft/applications/events/StorageRecordDao;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 90
    iput-object v0, p0, Lcom/microsoft/applications/events/OfflineRoom;->m_db:Lcom/microsoft/applications/events/OfflineRoomDatabase;

    .line 91
    iput-object v0, p0, Lcom/microsoft/applications/events/OfflineRoom;->m_srDao:Lcom/microsoft/applications/events/StorageRecordDao;

    .line 92
    iput-object v0, p0, Lcom/microsoft/applications/events/OfflineRoom;->m_settingDao:Lcom/microsoft/applications/events/StorageSettingDao;

    const-wide/16 v1, 0x1000

    .line 93
    iput-wide v1, p0, Lcom/microsoft/applications/events/OfflineRoom;->m_pageSize:J

    .line 97
    const-string v1, ":memory:"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 98
    const-class p2, Lcom/microsoft/applications/events/OfflineRoomDatabase;

    invoke-static {p1, p2}, Landroidx/room/Room;->inMemoryDatabaseBuilder(Landroid/content/Context;Ljava/lang/Class;)Landroidx/room/RoomDatabase$Builder;

    move-result-object p1

    goto :goto_0

    .line 101
    :cond_0
    const-class v1, Lcom/microsoft/applications/events/OfflineRoomDatabase;

    invoke-static {p1, v1, p2}, Landroidx/room/Room;->databaseBuilder(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroidx/room/RoomDatabase$Builder;

    move-result-object p1

    .line 103
    :goto_0
    invoke-virtual {p1}, Landroidx/room/RoomDatabase$Builder;->fallbackToDestructiveMigration()Landroidx/room/RoomDatabase$Builder;

    .line 104
    sget-object p2, Landroidx/room/RoomDatabase$JournalMode;->WRITE_AHEAD_LOGGING:Landroidx/room/RoomDatabase$JournalMode;

    invoke-virtual {p1, p2}, Landroidx/room/RoomDatabase$Builder;->setJournalMode(Landroidx/room/RoomDatabase$JournalMode;)Landroidx/room/RoomDatabase$Builder;

    .line 105
    invoke-virtual {p1}, Landroidx/room/RoomDatabase$Builder;->build()Landroidx/room/RoomDatabase;

    move-result-object p1

    check-cast p1, Lcom/microsoft/applications/events/OfflineRoomDatabase;

    iput-object p1, p0, Lcom/microsoft/applications/events/OfflineRoom;->m_db:Lcom/microsoft/applications/events/OfflineRoomDatabase;

    .line 106
    invoke-virtual {p1}, Lcom/microsoft/applications/events/OfflineRoomDatabase;->getStorageRecordDao()Lcom/microsoft/applications/events/StorageRecordDao;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/applications/events/OfflineRoom;->m_srDao:Lcom/microsoft/applications/events/StorageRecordDao;

    .line 107
    iget-object p1, p0, Lcom/microsoft/applications/events/OfflineRoom;->m_db:Lcom/microsoft/applications/events/OfflineRoomDatabase;

    invoke-virtual {p1}, Lcom/microsoft/applications/events/OfflineRoomDatabase;->getStorageSettingDao()Lcom/microsoft/applications/events/StorageSettingDao;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/applications/events/OfflineRoom;->m_settingDao:Lcom/microsoft/applications/events/StorageSettingDao;

    .line 108
    iget-object p1, p0, Lcom/microsoft/applications/events/OfflineRoom;->m_db:Lcom/microsoft/applications/events/OfflineRoomDatabase;

    const-string p2, "PRAGMA page_size"

    invoke-virtual {p1, p2, v0}, Lcom/microsoft/applications/events/OfflineRoomDatabase;->query(Ljava/lang/String;[Ljava/lang/Object;)Landroid/database/Cursor;

    move-result-object p1

    .line 109
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p2, v2, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->getColumnCount()I

    move-result p2

    if-ne p2, v2, :cond_1

    .line 110
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 111
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/microsoft/applications/events/OfflineRoom;->m_pageSize:J

    goto :goto_1

    .line 113
    :cond_1
    const-string p2, "MAE"

    const-string v3, "Unexpected result from PRAGMA page_size: %d rows, %d columns"

    .line 115
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 116
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    .line 114
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 113
    invoke-static {p2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :goto_1
    if-eqz p1, :cond_2

    .line 118
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 120
    :cond_2
    iget-object p1, p0, Lcom/microsoft/applications/events/OfflineRoom;->m_db:Lcom/microsoft/applications/events/OfflineRoomDatabase;

    const-string p2, "PRAGMA page_count"

    invoke-virtual {p1, p2, v0}, Lcom/microsoft/applications/events/OfflineRoomDatabase;->query(Ljava/lang/String;[Ljava/lang/Object;)Landroid/database/Cursor;

    move-result-object p1

    .line 121
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p2

    if-ne p2, v2, :cond_3

    invoke-interface {p1}, Landroid/database/Cursor;->getColumnCount()I

    move-result p2

    if-ne p2, v2, :cond_3

    .line 122
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 123
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    if-eqz p1, :cond_4

    .line 125
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_4
    return-void

    :catchall_0
    move-exception p2

    if-eqz p1, :cond_5

    .line 120
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_2
    throw p2

    :catchall_2
    move-exception p2

    if-eqz p1, :cond_6

    .line 108
    :try_start_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception p1

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_3
    throw p2
.end method

.method public static native connectContext(Landroid/content/Context;)V
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/microsoft/applications/events/OfflineRoom;->m_db:Lcom/microsoft/applications/events/OfflineRoomDatabase;

    invoke-virtual {v0}, Lcom/microsoft/applications/events/OfflineRoomDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/microsoft/applications/events/OfflineRoom;->m_db:Lcom/microsoft/applications/events/OfflineRoomDatabase;

    invoke-virtual {v0}, Lcom/microsoft/applications/events/OfflineRoomDatabase;->close()V

    :cond_0
    const/4 v0, 0x0

    .line 137
    iput-object v0, p0, Lcom/microsoft/applications/events/OfflineRoom;->m_srDao:Lcom/microsoft/applications/events/StorageRecordDao;

    .line 138
    iput-object v0, p0, Lcom/microsoft/applications/events/OfflineRoom;->m_settingDao:Lcom/microsoft/applications/events/StorageSettingDao;

    .line 139
    iput-object v0, p0, Lcom/microsoft/applications/events/OfflineRoom;->m_db:Lcom/microsoft/applications/events/OfflineRoomDatabase;

    return-void
.end method

.method public deleteAllRecords()J
    .locals 2

    .line 241
    iget-object v0, p0, Lcom/microsoft/applications/events/OfflineRoom;->m_srDao:Lcom/microsoft/applications/events/StorageRecordDao;

    invoke-virtual {v0}, Lcom/microsoft/applications/events/StorageRecordDao;->deleteAllRecords()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public deleteAllSettings()V
    .locals 1

    .line 295
    iget-object v0, p0, Lcom/microsoft/applications/events/OfflineRoom;->m_settingDao:Lcom/microsoft/applications/events/StorageSettingDao;

    invoke-interface {v0}, Lcom/microsoft/applications/events/StorageSettingDao;->deleteAllSettings()I

    return-void
.end method

.method public deleteById([J)J
    .locals 2

    .line 276
    iget-object v0, p0, Lcom/microsoft/applications/events/OfflineRoom;->m_srDao:Lcom/microsoft/applications/events/StorageRecordDao;

    invoke-virtual {v0, p1}, Lcom/microsoft/applications/events/StorageRecordDao;->deleteById([J)I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public deleteByToken(Ljava/lang/String;)J
    .locals 2

    .line 281
    iget-object v0, p0, Lcom/microsoft/applications/events/OfflineRoom;->m_srDao:Lcom/microsoft/applications/events/StorageRecordDao;

    invoke-virtual {v0, p1}, Lcom/microsoft/applications/events/StorageRecordDao;->deleteRecordsByToken(Ljava/lang/String;)I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public deleteSetting(Ljava/lang/String;)V
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/microsoft/applications/events/OfflineRoom;->m_settingDao:Lcom/microsoft/applications/events/StorageSettingDao;

    invoke-interface {v0, p1}, Lcom/microsoft/applications/events/StorageSettingDao;->deleteSetting(Ljava/lang/String;)I

    return-void
.end method

.method public explain(Ljava/lang/String;)V
    .locals 11

    .line 144
    iget-object v0, p0, Lcom/microsoft/applications/events/OfflineRoom;->m_db:Lcom/microsoft/applications/events/OfflineRoomDatabase;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "EXPLAIN QUERY PLAN "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/microsoft/applications/events/OfflineRoomDatabase;->query(Ljava/lang/String;[Ljava/lang/Object;)Landroid/database/Cursor;

    move-result-object p1

    .line 145
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 146
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v1

    .line 147
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 148
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    .line 149
    :goto_0
    array-length v5, v2

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v6, "MAE"

    if-ge v4, v5, :cond_0

    .line 150
    :try_start_1
    const-string v5, "Type for column %s (%d): %d"

    aget-object v7, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getType(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    filled-new-array {v7, v8, v9}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_1
    if-ge v4, v0, :cond_3

    .line 153
    invoke-interface {p1, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_3

    :cond_1
    move v5, v3

    :goto_2
    if-ge v5, v1, :cond_2

    .line 157
    const-string v7, "%d %s: %s"

    .line 158
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aget-object v9, v2, v5

    .line 160
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    filled-new-array {v8, v9, v10}, [Ljava/lang/Object;

    move-result-object v8

    .line 157
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    :goto_3
    if-eqz p1, :cond_4

    .line 163
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_4
    return-void

    :catchall_0
    move-exception v0

    if-eqz p1, :cond_5

    .line 144
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception p1

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_4
    throw v0
.end method

.method public getAndReserve(IJJJ)[Lcom/microsoft/applications/events/StorageRecord;
    .locals 8

    .line 286
    iget-object v0, p0, Lcom/microsoft/applications/events/OfflineRoom;->m_srDao:Lcom/microsoft/applications/events/StorageRecordDao;

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-wide v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/microsoft/applications/events/StorageRecordDao;->getAndReserve(IJJJ)[Lcom/microsoft/applications/events/StorageRecord;

    move-result-object p1

    return-object p1
.end method

.method public getRecordCount(I)J
    .locals 2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 200
    iget-object p1, p0, Lcom/microsoft/applications/events/OfflineRoom;->m_srDao:Lcom/microsoft/applications/events/StorageRecordDao;

    invoke-virtual {p1}, Lcom/microsoft/applications/events/StorageRecordDao;->totalRecordCount()J

    move-result-wide v0

    return-wide v0

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/microsoft/applications/events/OfflineRoom;->m_srDao:Lcom/microsoft/applications/events/StorageRecordDao;

    invoke-virtual {v0, p1}, Lcom/microsoft/applications/events/StorageRecordDao;->recordCount(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getRecords(ZIJ)[Lcom/microsoft/applications/events/StorageRecord;
    .locals 1

    .line 272
    iget-object v0, p0, Lcom/microsoft/applications/events/OfflineRoom;->m_srDao:Lcom/microsoft/applications/events/StorageRecordDao;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/microsoft/applications/events/StorageRecordDao;->getRecords(ZIJ)[Lcom/microsoft/applications/events/StorageRecord;

    move-result-object p1

    return-object p1
.end method

.method public getSetting(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/microsoft/applications/events/OfflineRoom;->m_settingDao:Lcom/microsoft/applications/events/StorageSettingDao;

    invoke-interface {v0, p1}, Lcom/microsoft/applications/events/StorageSettingDao;->getValues(Ljava/lang/String;)[Lcom/microsoft/applications/events/StorageSetting;

    move-result-object p1

    .line 252
    array-length v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 253
    aget-object p1, p1, v0

    iget-object p1, p1, Lcom/microsoft/applications/events/StorageSetting;->value:Ljava/lang/String;

    return-object p1

    .line 255
    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method public releaseRecords([JZJ)[Lcom/microsoft/applications/events/ByTenant;
    .locals 7

    .line 223
    new-instance v6, Ljava/util/TreeMap;

    invoke-direct {v6}, Ljava/util/TreeMap;-><init>()V

    .line 225
    iget-object v0, p0, Lcom/microsoft/applications/events/OfflineRoom;->m_srDao:Lcom/microsoft/applications/events/StorageRecordDao;

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/microsoft/applications/events/StorageRecordDao;->releaseRecords([JZJLjava/util/TreeMap;)J

    .line 226
    invoke-virtual {v6}, Ljava/util/TreeMap;->size()I

    move-result p1

    new-array p1, p1, [Lcom/microsoft/applications/events/ByTenant;

    .line 229
    invoke-virtual {v6}, Ljava/util/TreeMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object p2

    const/4 p3, 0x0

    :goto_0
    if-eqz p2, :cond_0

    .line 233
    new-instance p4, Lcom/microsoft/applications/events/ByTenant;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-direct {p4, v0, v1}, Lcom/microsoft/applications/events/ByTenant;-><init>(Ljava/lang/String;Ljava/lang/Long;)V

    aput-object p4, p1, p3

    add-int/lit8 p3, p3, 0x1

    .line 231
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v6, p2}, Ljava/util/TreeMap;->higherEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p2

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public releaseUnconsumed([Lcom/microsoft/applications/events/StorageRecord;I)V
    .locals 1

    .line 291
    iget-object v0, p0, Lcom/microsoft/applications/events/OfflineRoom;->m_srDao:Lcom/microsoft/applications/events/StorageRecordDao;

    invoke-virtual {v0, p1, p2}, Lcom/microsoft/applications/events/StorageRecordDao;->releaseUnconsumed([Lcom/microsoft/applications/events/StorageRecord;I)V

    return-void
.end method

.method public storeFromBuffers(I[I[B[I[J)V
    .locals 0

    .line 195
    invoke-virtual/range {p0 .. p5}, Lcom/microsoft/applications/events/OfflineRoom;->storeFromBuffersIds(I[I[B[I[J)[J

    return-void
.end method

.method public storeFromBuffersIds(I[I[B[I[J)[J
    .locals 20

    move/from16 v0, p1

    move-object/from16 v1, p3

    .line 169
    new-array v2, v0, [Lcom/microsoft/applications/events/StorageRecord;

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v4, v0, :cond_1

    mul-int/lit8 v6, v4, 0x3

    .line 171
    aget-wide v8, p5, v6

    .line 172
    new-instance v10, Ljava/lang/String;

    mul-int/lit8 v7, v4, 0x2

    aget v11, p2, v7

    invoke-direct {v10, v1, v5, v11}, Ljava/lang/String;-><init>([BII)V

    .line 173
    aget v11, p2, v7

    add-int/2addr v5, v11

    add-int/lit8 v7, v7, 0x1

    .line 174
    aget v11, p2, v7

    new-array v15, v11, [B

    move v11, v3

    .line 175
    :goto_1
    aget v12, p2, v7

    if-ge v11, v12, :cond_0

    add-int v12, v11, v5

    .line 176
    aget-byte v12, v1, v12

    aput-byte v12, v15, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_0
    add-int/2addr v5, v12

    .line 179
    new-instance v19, Lcom/microsoft/applications/events/StorageRecord;

    aget v11, p4, v6

    add-int/lit8 v7, v6, 0x1

    aget v12, p4, v7

    aget-wide v13, p5, v7

    add-int/lit8 v6, v6, 0x2

    aget v16, p4, v6

    aget-wide v17, p5, v6

    move-object/from16 v7, v19

    move-object v6, v15

    move/from16 v15, v16

    move-wide/from16 v16, v17

    move-object/from16 v18, v6

    invoke-direct/range {v7 .. v18}, Lcom/microsoft/applications/events/StorageRecord;-><init>(JLjava/lang/String;IIJIJ[B)V

    aput-object v19, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v4, p0

    .line 189
    invoke-virtual {v4, v2}, Lcom/microsoft/applications/events/OfflineRoom;->storeRecords([Lcom/microsoft/applications/events/StorageRecord;)[J

    move-result-object v0

    return-object v0
.end method

.method public varargs storeRecords([Lcom/microsoft/applications/events/StorageRecord;)[J
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/microsoft/applications/events/OfflineRoom;->m_srDao:Lcom/microsoft/applications/events/StorageRecordDao;

    invoke-virtual {v0, p1}, Lcom/microsoft/applications/events/StorageRecordDao;->insertRecords([Lcom/microsoft/applications/events/StorageRecord;)[J

    move-result-object p1

    return-object p1
.end method

.method public storeSetting(Ljava/lang/String;Ljava/lang/String;)J
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/microsoft/applications/events/OfflineRoom;->m_settingDao:Lcom/microsoft/applications/events/StorageSettingDao;

    invoke-interface {v0, p1, p2}, Lcom/microsoft/applications/events/StorageSettingDao;->setValue(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide p1

    return-wide p1
.end method

.method public totalSize()J
    .locals 5

    .line 261
    iget-object v0, p0, Lcom/microsoft/applications/events/OfflineRoom;->m_db:Lcom/microsoft/applications/events/OfflineRoomDatabase;

    const-string v1, "PRAGMA page_count"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/microsoft/applications/events/OfflineRoomDatabase;->query(Ljava/lang/String;[Ljava/lang/Object;)Landroid/database/Cursor;

    move-result-object v0

    .line 263
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v1, 0x0

    .line 264
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 265
    iget-wide v3, p0, Lcom/microsoft/applications/events/OfflineRoom;->m_pageSize:J

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    mul-long/2addr v1, v3

    if-eqz v0, :cond_0

    .line 266
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    return-wide v1

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    .line 261
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1
.end method

.method public trim(J)J
    .locals 4

    .line 206
    invoke-virtual {p0}, Lcom/microsoft/applications/events/OfflineRoom;->totalSize()J

    move-result-wide v0

    cmp-long v0, v0, p1

    const-wide/16 v1, 0x0

    if-gtz v0, :cond_0

    return-wide v1

    .line 210
    :cond_0
    const-string v0, "Start trim"

    const-string v3, "MAE"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    new-instance v0, Lcom/microsoft/applications/events/OfflineRoom$TrimTransaction;

    invoke-direct {v0, p0, p0, p1, p2}, Lcom/microsoft/applications/events/OfflineRoom$TrimTransaction;-><init>(Lcom/microsoft/applications/events/OfflineRoom;Lcom/microsoft/applications/events/OfflineRoom;J)V

    .line 212
    iget-object p1, p0, Lcom/microsoft/applications/events/OfflineRoom;->m_db:Lcom/microsoft/applications/events/OfflineRoomDatabase;

    invoke-virtual {p1, v0}, Lcom/microsoft/applications/events/OfflineRoomDatabase;->runInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-nez p1, :cond_1

    .line 214
    const-string p1, "Null result from trim"

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v1

    .line 217
    :cond_1
    const-string p2, "Dropped %d records in trim"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    return-wide p1
.end method
