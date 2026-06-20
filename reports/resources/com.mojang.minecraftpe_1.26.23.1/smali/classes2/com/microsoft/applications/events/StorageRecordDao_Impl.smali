.class public final Lcom/microsoft/applications/events/StorageRecordDao_Impl;
.super Lcom/microsoft/applications/events/StorageRecordDao;
.source "StorageRecordDao_Impl.java"


# instance fields
.field private final __db:Landroidx/room/RoomDatabase;

.field private final __deletionAdapterOfStorageRecord:Landroidx/room/EntityDeletionOrUpdateAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityDeletionOrUpdateAdapter<",
            "Lcom/microsoft/applications/events/StorageRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final __insertionAdapterOfStorageRecord:Landroidx/room/EntityInsertionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertionAdapter<",
            "Lcom/microsoft/applications/events/StorageRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final __preparedStmtOfDeleteAllRecords:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfDeleteRecordsByToken:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfReleaseExpired:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfTrim:Landroidx/room/SharedSQLiteStatement;


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1

    .line 39
    invoke-direct {p0}, Lcom/microsoft/applications/events/StorageRecordDao;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/microsoft/applications/events/StorageRecordDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 41
    new-instance v0, Lcom/microsoft/applications/events/StorageRecordDao_Impl$1;

    invoke-direct {v0, p0, p1}, Lcom/microsoft/applications/events/StorageRecordDao_Impl$1;-><init>(Lcom/microsoft/applications/events/StorageRecordDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/microsoft/applications/events/StorageRecordDao_Impl;->__insertionAdapterOfStorageRecord:Landroidx/room/EntityInsertionAdapter;

    .line 67
    new-instance v0, Lcom/microsoft/applications/events/StorageRecordDao_Impl$2;

    invoke-direct {v0, p0, p1}, Lcom/microsoft/applications/events/StorageRecordDao_Impl$2;-><init>(Lcom/microsoft/applications/events/StorageRecordDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/microsoft/applications/events/StorageRecordDao_Impl;->__deletionAdapterOfStorageRecord:Landroidx/room/EntityDeletionOrUpdateAdapter;

    .line 78
    new-instance v0, Lcom/microsoft/applications/events/StorageRecordDao_Impl$3;

    invoke-direct {v0, p0, p1}, Lcom/microsoft/applications/events/StorageRecordDao_Impl$3;-><init>(Lcom/microsoft/applications/events/StorageRecordDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/microsoft/applications/events/StorageRecordDao_Impl;->__preparedStmtOfDeleteAllRecords:Landroidx/room/SharedSQLiteStatement;

    .line 85
    new-instance v0, Lcom/microsoft/applications/events/StorageRecordDao_Impl$4;

    invoke-direct {v0, p0, p1}, Lcom/microsoft/applications/events/StorageRecordDao_Impl$4;-><init>(Lcom/microsoft/applications/events/StorageRecordDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/microsoft/applications/events/StorageRecordDao_Impl;->__preparedStmtOfTrim:Landroidx/room/SharedSQLiteStatement;

    .line 92
    new-instance v0, Lcom/microsoft/applications/events/StorageRecordDao_Impl$5;

    invoke-direct {v0, p0, p1}, Lcom/microsoft/applications/events/StorageRecordDao_Impl$5;-><init>(Lcom/microsoft/applications/events/StorageRecordDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/microsoft/applications/events/StorageRecordDao_Impl;->__preparedStmtOfReleaseExpired:Landroidx/room/SharedSQLiteStatement;

    .line 99
    new-instance v0, Lcom/microsoft/applications/events/StorageRecordDao_Impl$6;

    invoke-direct {v0, p0, p1}, Lcom/microsoft/applications/events/StorageRecordDao_Impl$6;-><init>(Lcom/microsoft/applications/events/StorageRecordDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/microsoft/applications/events/StorageRecordDao_Impl;->__preparedStmtOfDeleteRecordsByToken:Landroidx/room/SharedSQLiteStatement;

    return-void
.end method

.method static synthetic access$001(Lcom/microsoft/applications/events/StorageRecordDao_Impl;ZIJ)[Lcom/microsoft/applications/events/StorageRecord;
    .locals 0

    .line 24
    invoke-super {p0, p1, p2, p3, p4}, Lcom/microsoft/applications/events/StorageRecordDao;->getRecords(ZIJ)[Lcom/microsoft/applications/events/StorageRecord;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$101(Lcom/microsoft/applications/events/StorageRecordDao_Impl;[J)I
    .locals 0

    .line 24
    invoke-super {p0, p1}, Lcom/microsoft/applications/events/StorageRecordDao;->deleteById([J)I

    move-result p0

    return p0
.end method

.method static synthetic access$201(Lcom/microsoft/applications/events/StorageRecordDao_Impl;IJJJ)[Lcom/microsoft/applications/events/StorageRecord;
    .locals 0

    .line 24
    invoke-super/range {p0 .. p7}, Lcom/microsoft/applications/events/StorageRecordDao;->getAndReserve(IJJJ)[Lcom/microsoft/applications/events/StorageRecord;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$301(Lcom/microsoft/applications/events/StorageRecordDao_Impl;[JJ)V
    .locals 0

    .line 24
    invoke-super {p0, p1, p2, p3}, Lcom/microsoft/applications/events/StorageRecordDao;->setReserved([JJ)V

    return-void
.end method

.method static synthetic access$401(Lcom/microsoft/applications/events/StorageRecordDao_Impl;[JZJLjava/util/TreeMap;)J
    .locals 0

    .line 24
    invoke-super/range {p0 .. p5}, Lcom/microsoft/applications/events/StorageRecordDao;->releaseRecords([JZJLjava/util/TreeMap;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getRequiredConverters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 703
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public deleteAllRecords()I
    .locals 3

    .line 199
    iget-object v0, p0, Lcom/microsoft/applications/events/StorageRecordDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 200
    iget-object v0, p0, Lcom/microsoft/applications/events/StorageRecordDao_Impl;->__preparedStmtOfDeleteAllRecords:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    .line 201
    iget-object v1, p0, Lcom/microsoft/applications/events/StorageRecordDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 203
    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    move-result v1

    .line 204
    iget-object v2, p0, Lcom/microsoft/applications/events/StorageRecordDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V

    .line 207
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Lcom/microsoft/applications/events/StorageRecordDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 208
    iget-object v2, p0, Lcom/microsoft/applications/events/StorageRecordDao_Impl;->__preparedStmtOfDeleteAllRecords:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return v1

    :catchall_0
    move-exception v1

    .line 207
    iget-object v2, p0, Lcom/microsoft/applications/events/StorageRecordDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 208
    iget-object v2, p0, Lcom/microsoft/applications/events/StorageRecordDao_Impl;->__preparedStmtOfDeleteAllRecords:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 209
    throw v1
.end method

.method public deleteById([J)I
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/microsoft/applications/events/StorageRecordDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 152
    :try_start_0
    invoke-static {p0, p1}, Lcom/microsoft/applications/events/StorageRecordDao_Impl;->access$101(Lcom/microsoft/applications/events/StorageRecordDao_Impl;[J)I

    move-result p1

    .line 153
    iget-object v0, p0, Lcom/microsoft/applications/events/StorageRecordDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V

    .line 156
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/microsoft/applications/events/StorageRecordDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    return p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/microsoft/applications/events/StorageRecordDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 157
    throw p1
.end method

.method public deleteByIdBlock([J)I
    .locals 7

    .line 625
    iget-object v0, p0, Lcom/microsoft/applications/events/StorageRecordDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 626
    invoke-static {}, Landroidx/room/util/StringUtil;->newStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 627
    const-string v1, "DELETE FROM StorageRecord WHERE id IN ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 628
    array-length v1, p1

    .line 629
    invoke-static {v0, v1}, Landroidx/room/util/StringUtil;->appendPlaceholders(Ljava/lang/StringBuilder;I)V

    .line 630
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 631
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 632
    iget-object v1, p0, Lcom/microsoft/applications/events/StorageRecordDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1, v0}, Landroidx/room/RoomDatabase;->compileStatement(Ljava/lang/String;)Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    .line 634
    array-length v1, p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    move v4, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-wide v5, p1, v3

    .line 635
    invoke-interface {v0, v4, v5, v6}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    add-int/2addr v4, v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 638
    :cond_0
    iget-object p1, p0, Lcom/microsoft/applications/events/StorageRecordDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 640
    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    move-result p1

    .line 641
    iget-object v0, p0, Lcom/microsoft/applications/events/StorageRecordDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V

    .line 644
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/microsoft/applications/events/StorageRecordDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    return p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/microsoft/applications/events/StorageRecordDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 645
    throw p1
.end method

.method public deleteRecordInner([Lcom/microsoft/applications/events/StorageRecord;)I
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/microsoft/applications/events/StorageRecordDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 125
    iget-object v0, p0, Lcom/microsoft/applications/events/StorageRecordDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 127
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/applications/events/StorageRecordDao_Impl;->__deletionAdapterOfStorageRecord:Landroidx/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityDeletionOrUpdateAdapter;->handleMultiple([Ljava/lang/Object;)I

    move-result p1

    .line 128
    iget-object v0, p0, Lcom/microsoft/applications/events/StorageRecordDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V

    .line 131
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/microsoft/applications/events/StorageRecordDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    return p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/microsoft/applications/events/StorageRecordDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 132
    throw p1
.end method

.method public deleteRecordsByToken(Ljava/lang/String;)I
    .locals 2

    .line 248
    iget-object v0, p0, Lcom/microsoft/applications/events/StorageRecordDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 249
    iget-object v0, p0, Lcom/microsoft/applications/events/StorageRecordDao_Impl;->__preparedStmtOfDeleteRecordsByToken:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 252
    invoke-interface {v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 254
    :cond_0
    invoke-interface {v0, v1, p1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 256
    :goto_0
    iget-object p1, p0, Lcom/microsoft/applications/events/StorageRecordDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 258
    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    move-result p1

    .line 259
    iget-object v1, p0, Lcom/microsoft/applications/events/StorageRecordDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V

    .line 262
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/microsoft/applications/events/StorageRecordDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 263
    iget-object v1, p0, Lcom/microsoft/applications/events/StorageRecordDao_Impl;->__preparedStmtOfDeleteRecordsByToken:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return p1

    :catchall_0
    move-exception p1

    .line 262
    iget-object v1, p0, Lcom/microsoft/applications/events/StorageRecordDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 263
    iget-object v1, p0, Lcom/microsoft/applications/events/StorageRecordDao_Impl;->__preparedStmtOfDeleteRecordsByToken:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 264
    throw p1
.end method

.method public getAndReserve(IJJJ)[Lcom/microsoft/applications/events/StorageRecord;
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/microsoft/applications/events/StorageRecordDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 165
    :try_start_0
    invoke-static/range {p0 .. p7}, Lcom/microsoft/applications/events/StorageRecordDao_Impl;->access$201(Lcom/microsoft/applications/events/StorageRecordDao_Impl;IJJJ)[Lcom/microsoft/applications/events/StorageRecord;

    move-result-object p1

    .line 166
    iget-object p2, p0, Lcom/microsoft/applications/events/StorageRecordDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V

    .line 169
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p2, p0, Lcom/microsoft/applications/events/StorageRecordDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/microsoft/applications/events/StorageRecordDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 170
    throw p1
.end method

.method public getMinLatency(J)Ljava/lang/Long;
    .locals 3

    .line 534
    const-string v0, "SELECT min(latency) FROM StorageRecord WHERE latency >= ? AND reservedUntil = 0"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    .line 536
    invoke-virtual {v0, v1, p1, p2}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 537
    iget-object p1, p0, Lcom/microsoft/applications/events/StorageRecordDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 538
    iget-object p1, p0, Lcom/microsoft/applications/events/StorageRecordDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 p2, 0x0

    const/4 v1, 0x0

    invoke-static {p1, v0, p2, v1}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    .line 541
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 543
    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 546
    :cond_0
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, p2

    .line 554
    :cond_1
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 555
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v1

    :catchall_0
    move-exception p2

    .line 554
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 555
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 556
    throw p2
.end method

.method public getRecords(IJ)[Lcom/microsoft/applications/events/StorageRecord;
    .locals 27

    move-object/from16 v1, p0

    .line 332
    const-string v0, "SELECT * FROM StorageRecord WHERE latency >= ? ORDER BY latency DESC, persistence DESC, timestamp ASC LIMIT ?"

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v3

    const/4 v0, 0x1

    move/from16 v4, p1

    int-to-long v4, v4

    .line 334
    invoke-virtual {v3, v0, v4, v5}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    move-wide/from16 v4, p2

    .line 336
    invoke-virtual {v3, v2, v4, v5}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 337
    iget-object v0, v1, Lcom/microsoft/applications/events/StorageRecordDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 338
    iget-object v0, v1, Lcom/microsoft/applications/events/StorageRecordDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 340
    :try_start_0
    iget-object v0, v1, Lcom/microsoft/applications/events/StorageRecordDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v3, v2, v4}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v5

    .line 342
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v0, "id"

    invoke-static {v5, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    .line 343
    const-string/jumbo v6, "tenantToken"

    invoke-static {v5, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    .line 344
    const-string v7, "latency"

    invoke-static {v5, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    .line 345
    const-string v8, "persistence"

    invoke-static {v5, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    .line 346
    const-string/jumbo v9, "timestamp"

    invoke-static {v5, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    .line 347
    const-string v10, "retryCount"

    invoke-static {v5, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    .line 348
    const-string v11, "reservedUntil"

    invoke-static {v5, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    .line 349
    const-string v12, "blob"

    invoke-static {v5, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    .line 350
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v13

    new-array v13, v13, [Lcom/microsoft/applications/events/StorageRecord;

    .line 352
    :goto_0
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 355
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 357
    invoke-interface {v5, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_0

    move-object/from16 v18, v4

    goto :goto_1

    .line 360
    :cond_0
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v18, v14

    .line 363
    :goto_1
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 365
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 367
    invoke-interface {v5, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    .line 369
    invoke-interface {v5, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    .line 371
    invoke-interface {v5, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    .line 373
    invoke-interface {v5, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_1

    move-object/from16 v26, v4

    goto :goto_2

    .line 376
    :cond_1
    invoke-interface {v5, v12}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v14

    move-object/from16 v26, v14

    .line 378
    :goto_2
    new-instance v14, Lcom/microsoft/applications/events/StorageRecord;

    move-object v15, v14

    invoke-direct/range {v15 .. v26}, Lcom/microsoft/applications/events/StorageRecord;-><init>(JLjava/lang/String;IIJIJ[B)V

    .line 379
    aput-object v14, v13, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 382
    :cond_2
    iget-object v0, v1, Lcom/microsoft/applications/events/StorageRecordDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V

    .line 385
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 386
    invoke-virtual {v3}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 389
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object v0, v1, Lcom/microsoft/applications/events/StorageRecordDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-object v13

    :catchall_0
    move-exception v0

    .line 385
    :try_start_3
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 386
    invoke-virtual {v3}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 387
    throw v0

    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    .line 389
    iget-object v2, v1, Lcom/microsoft/applications/events/StorageRecordDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 390
    throw v0
.end method

.method public getRecords(ZIJ)[Lcom/microsoft/applications/events/StorageRecord;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/microsoft/applications/events/StorageRecordDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 140
    :try_start_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/microsoft/applications/events/StorageRecordDao_Impl;->access$001(Lcom/microsoft/applications/events/StorageRecordDao_Impl;ZIJ)[Lcom/microsoft/applications/events/StorageRecord;

    move-result-object p1

    .line 141
    iget-object p2, p0, Lcom/microsoft/applications/events/StorageRecordDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V

    .line 144
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p2, p0, Lcom/microsoft/applications/events/StorageRecordDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/microsoft/applications/events/StorageRecordDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 145
    throw p1
.end method

.method public getRetryExpired([JJ)[Lcom/microsoft/applications/events/StorageRecord;
    .locals 27

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 459
    invoke-static {}, Landroidx/room/util/StringUtil;->newStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v2

    .line 460
    const-string v3, "SELECT * FROM StorageRecord WHERE id IN ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    array-length v3, v0

    .line 462
    invoke-static {v2, v3}, Landroidx/room/util/StringUtil;->appendPlaceholders(Ljava/lang/StringBuilder;I)V

    .line 463
    const-string v4, ") AND retryCount >= "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    const-string v4, "?"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    add-int/2addr v3, v4

    .line 467
    invoke-static {v2, v3}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v2

    .line 469
    array-length v5, v0

    const/4 v6, 0x0

    move v8, v4

    move v7, v6

    :goto_0
    if-ge v7, v5, :cond_0

    aget-wide v9, v0, v7

    .line 470
    invoke-virtual {v2, v8, v9, v10}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    add-int/2addr v8, v4

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    move-wide/from16 v7, p2

    .line 474
    invoke-virtual {v2, v3, v7, v8}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 475
    iget-object v0, v1, Lcom/microsoft/applications/events/StorageRecordDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 476
    iget-object v0, v1, Lcom/microsoft/applications/events/StorageRecordDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 478
    :try_start_0
    iget-object v0, v1, Lcom/microsoft/applications/events/StorageRecordDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v3, 0x0

    invoke-static {v0, v2, v6, v3}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v4

    .line 480
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v0, "id"

    invoke-static {v4, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    .line 481
    const-string/jumbo v5, "tenantToken"

    invoke-static {v4, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    .line 482
    const-string v7, "latency"

    invoke-static {v4, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    .line 483
    const-string v8, "persistence"

    invoke-static {v4, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    .line 484
    const-string/jumbo v9, "timestamp"

    invoke-static {v4, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    .line 485
    const-string v10, "retryCount"

    invoke-static {v4, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    .line 486
    const-string v11, "reservedUntil"

    invoke-static {v4, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    .line 487
    const-string v12, "blob"

    invoke-static {v4, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    .line 488
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v13

    new-array v13, v13, [Lcom/microsoft/applications/events/StorageRecord;

    .line 490
    :goto_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 493
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 495
    invoke-interface {v4, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_1

    move-object/from16 v18, v3

    goto :goto_2

    .line 498
    :cond_1
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v18, v14

    .line 501
    :goto_2
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 503
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 505
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    .line 507
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    .line 509
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    .line 511
    invoke-interface {v4, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_2

    move-object/from16 v26, v3

    goto :goto_3

    .line 514
    :cond_2
    invoke-interface {v4, v12}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v14

    move-object/from16 v26, v14

    .line 516
    :goto_3
    new-instance v14, Lcom/microsoft/applications/events/StorageRecord;

    move-object v15, v14

    invoke-direct/range {v15 .. v26}, Lcom/microsoft/applications/events/StorageRecord;-><init>(JLjava/lang/String;IIJIJ[B)V

    .line 517
    aput-object v14, v13, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 520
    :cond_3
    iget-object v0, v1, Lcom/microsoft/applications/events/StorageRecordDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V

    .line 523
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 524
    invoke-virtual {v2}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 527
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object v0, v1, Lcom/microsoft/applications/events/StorageRecordDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-object v13

    :catchall_0
    move-exception v0

    .line 523
    :try_start_3
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 524
    invoke-virtual {v2}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 525
    throw v0

    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    .line 527
    iget-object v2, v1, Lcom/microsoft/applications/events/StorageRecordDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 528
    throw v0
.end method

.method public getUnreservedByLatency(JJ)[Lcom/microsoft/applications/events/StorageRecord;
    .locals 27

    move-object/from16 v1, p0

    .line 562
    const-string v0, "SELECT * FROM StorageRecord WHERE latency = ? AND reservedUntil = 0 ORDER BY persistence DESC, timestamp ASC LIMIT ?"

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v3

    const/4 v0, 0x1

    move-wide/from16 v4, p1

    .line 564
    invoke-virtual {v3, v0, v4, v5}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    move-wide/from16 v4, p3

    .line 566
    invoke-virtual {v3, v2, v4, v5}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 567
    iget-object v0, v1, Lcom/microsoft/applications/events/StorageRecordDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 568
    iget-object v0, v1, Lcom/microsoft/applications/events/StorageRecordDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 570
    :try_start_0
    iget-object v0, v1, Lcom/microsoft/applications/events/StorageRecordDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v3, v2, v4}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v5

    .line 572
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v0, "id"

    invoke-static {v5, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    .line 573
    const-string/jumbo v6, "tenantToken"

    invoke-static {v5, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    .line 574
    const-string v7, "latency"

    invoke-static {v5, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    .line 575
    const-string v8, "persistence"

    invoke-static {v5, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    .line 576
    const-string/jumbo v9, "timestamp"

    invoke-static {v5, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    .line 577
    const-string v10, "retryCount"

    invoke-static {v5, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    .line 578
    const-string v11, "reservedUntil"

    invoke-static {v5, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    .line 579
    const-string v12, "blob"

    invoke-static {v5, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    .line 580
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v13

    new-array v13, v13, [Lcom/microsoft/applications/events/StorageRecord;

    .line 582
    :goto_0
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 585
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 587
    invoke-interface {v5, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_0

    move-object/from16 v18, v4

    goto :goto_1

    .line 590
    :cond_0
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v18, v14

    .line 593
    :goto_1
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 595
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 597
    invoke-interface {v5, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    .line 599
    invoke-interface {v5, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    .line 601
    invoke-interface {v5, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    .line 603
    invoke-interface {v5, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_1

    move-object/from16 v26, v4

    goto :goto_2

    .line 606
    :cond_1
    invoke-interface {v5, v12}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v14

    move-object/from16 v26, v14

    .line 608
    :goto_2
    new-instance v14, Lcom/microsoft/applications/events/StorageRecord;

    move-object v15, v14

    invoke-direct/range {v15 .. v26}, Lcom/microsoft/applications/events/StorageRecord;-><init>(JLjava/lang/String;IIJIJ[B)V

    .line 609
    aput-object v14, v13, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 612
    :cond_2
    iget-object v0, v1, Lcom/microsoft/applications/events/StorageRecordDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V

    .line 615
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 616
    invoke-virtual {v3}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 619
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object v0, v1, Lcom/microsoft/applications/events/StorageRecordDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-object v13

    :catchall_0
    move-exception v0

    .line 615
    :try_start_3
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 616
    invoke-virtual {v3}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 617
    throw v0

    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    .line 619
    iget-object v2, v1, Lcom/microsoft/applications/events/StorageRecordDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 620
    throw v0
.end method

.method public getUnreservedRecords(IJ)[Lcom/microsoft/applications/events/StorageRecord;
    .locals 27

    move-object/from16 v1, p0

    .line 396
    const-string v0, "SELECT * FROM StorageRecord WHERE latency >= ? AND reservedUntil = 0 ORDER BY latency DESC, persistence DESC, timestamp ASC LIMIT ?"

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v3

    const/4 v0, 0x1

    move/from16 v4, p1

    int-to-long v4, v4

    .line 398
    invoke-virtual {v3, v0, v4, v5}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    move-wide/from16 v4, p2

    .line 400
    invoke-virtual {v3, v2, v4, v5}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 401
    iget-object v0, v1, Lcom/microsoft/applications/events/StorageRecordDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 402
    iget-object v0, v1, Lcom/microsoft/applications/events/StorageRecordDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 404
    :try_start_0
    iget-object v0, v1, Lcom/microsoft/applications/events/StorageRecordDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v3, v2, v4}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v5

    .line 406
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v0, "id"

    invoke-static {v5, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    .line 407
    const-string/jumbo v6, "tenantToken"

    invoke-static {v5, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    .line 408
    const-string v7, "latency"

    invoke-static {v5, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    .line 409
    const-string v8, "persistence"

    invoke-static {v5, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    .line 410
    const-string/jumbo v9, "timestamp"

    invoke-static {v5, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    .line 411
    const-string v10, "retryCount"

    invoke-static {v5, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    .line 412
    const-string v11, "reservedUntil"

    invoke-static {v5, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    .line 413
    const-string v12, "blob"

    invoke-static {v5, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    .line 414
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v13

    new-array v13, v13, [Lcom/microsoft/applications/events/StorageRecord;

    .line 416
    :goto_0
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 419
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 421
    invoke-interface {v5, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_0

    move-object/from16 v18, v4

    goto :goto_1

    .line 424
    :cond_0
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v18, v14

    .line 427
    :goto_1
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 429
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 431
    invoke-interface {v5, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    .line 433
    invoke-interface {v5, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    .line 435
    invoke-interface {v5, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    .line 437
    invoke-interface {v5, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_1

    move-object/from16 v26, v4

    goto :goto_2

    .line 440
    :cond_1
    invoke-interface {v5, v12}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v14

    move-object/from16 v26, v14

    .line 442
    :goto_2
    new-instance v14, Lcom/microsoft/applications/events/StorageRecord;

    move-object v15, v14

    invoke-direct/range {v15 .. v26}, Lcom/microsoft/applications/events/StorageRecord;-><init>(JLjava/lang/String;IIJIJ[B)V

    .line 443
    aput-object v14, v13, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 446
    :cond_2
    iget-object v0, v1, Lcom/microsoft/applications/events/StorageRecordDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V

    .line 449
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 450
    invoke-virtual {v3}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 453
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object v0, v1, Lcom/microsoft/applications/events/StorageRecordDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-object v13

    :catchall_0
    move-exception v0

    .line 449
    :try_start_3
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 450
    invoke-virtual {v3}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 451
    throw v0

    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    .line 453
    iget-object v2, v1, Lcom/microsoft/applications/events/StorageRecordDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 454
    throw v0
.end method

.method public varargs insertRecords([Lcom/microsoft/applications/events/StorageRecord;)[J
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/microsoft/applications/events/StorageRecordDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 111
    iget-object v0, p0, Lcom/microsoft/applications/events/StorageRecordDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 113
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/applications/events/StorageRecordDao_Impl;->__insertionAdapterOfStorageRecord:Landroidx/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityInsertionAdapter;->insertAndReturnIdsArray([Ljava/lang/Object;)[J

    move-result-object p1

    .line 114
    iget-object v0, p0, Lcom/microsoft/applications/events/StorageRecordDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V

    .line 117
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/microsoft/applications/events/StorageRecordDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/microsoft/applications/events/StorageRecordDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 118
    throw p1
.end method

.method public recordCount(I)J
    .locals 4

    .line 270
    const-string v0, "SELECT count(*) from StorageRecord WHERE latency = ?"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    int-to-long v2, p1

    .line 272
    invoke-virtual {v0, v1, v2, v3}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 273
    iget-object p1, p0, Lcom/microsoft/applications/events/StorageRecordDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 274
    iget-object p1, p0, Lcom/microsoft/applications/events/StorageRecordDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1, v0, v2, v1}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    .line 277
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 278
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    .line 284
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 285
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-wide v1

    :catchall_0
    move-exception v1

    .line 284
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 285
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 286
    throw v1
.end method

.method public releaseAndIncrementRetryCounts([J)I
    .locals 7

    .line 679
    iget-object v0, p0, Lcom/microsoft/applications/events/StorageRecordDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 680
    invoke-static {}, Landroidx/room/util/StringUtil;->newStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 681
    const-string v1, "UPDATE StorageRecord SET reservedUntil = 0, retryCount = retryCount + 1 WHERE id IN ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 682
    array-length v1, p1

    .line 683
    invoke-static {v0, v1}, Landroidx/room/util/StringUtil;->appendPlaceholders(Ljava/lang/StringBuilder;I)V

    .line 684
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 685
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 686
    iget-object v1, p0, Lcom/microsoft/applications/events/StorageRecordDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1, v0}, Landroidx/room/RoomDatabase;->compileStatement(Ljava/lang/String;)Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    .line 688
    array-length v1, p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    move v4, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-wide v5, p1, v3

    .line 689
    invoke-interface {v0, v4, v5, v6}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    add-int/2addr v4, v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 692
    :cond_0
    iget-object p1, p0, Lcom/microsoft/applications/events/StorageRecordDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 694
    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    move-result p1

    .line 695
    iget-object v0, p0, Lcom/microsoft/applications/events/StorageRecordDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V

    .line 698
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/microsoft/applications/events/StorageRecordDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    return p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/microsoft/applications/events/StorageRecordDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 699
    throw p1
.end method

.method public releaseExpired(J)I
    .locals 2

    .line 231
    iget-object v0, p0, Lcom/microsoft/applications/events/StorageRecordDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 232
    iget-object v0, p0, Lcom/microsoft/applications/events/StorageRecordDao_Impl;->__preparedStmtOfReleaseExpired:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    const/4 v1, 0x1

    .line 234
    invoke-interface {v0, v1, p1, p2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 235
    iget-object p1, p0, Lcom/microsoft/applications/events/StorageRecordDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 237
    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    move-result p1

    .line 238
    iget-object p2, p0, Lcom/microsoft/applications/events/StorageRecordDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V

    .line 241
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p2, p0, Lcom/microsoft/applications/events/StorageRecordDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 242
    iget-object p2, p0, Lcom/microsoft/applications/events/StorageRecordDao_Impl;->__preparedStmtOfReleaseExpired:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return p1

    :catchall_0
    move-exception p1

    .line 241
    iget-object p2, p0, Lcom/microsoft/applications/events/StorageRecordDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 242
    iget-object p2, p0, Lcom/microsoft/applications/events/StorageRecordDao_Impl;->__preparedStmtOfReleaseExpired:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 243
    throw p1
.end method

.method public releaseRecords([JZJLjava/util/TreeMap;)J
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([JZJ",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    .line 187
    iget-object v0, p0, Lcom/microsoft/applications/events/StorageRecordDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 189
    :try_start_0
    invoke-static/range {p0 .. p5}, Lcom/microsoft/applications/events/StorageRecordDao_Impl;->access$401(Lcom/microsoft/applications/events/StorageRecordDao_Impl;[JZJLjava/util/TreeMap;)J

    move-result-wide p1

    .line 190
    iget-object p3, p0, Lcom/microsoft/applications/events/StorageRecordDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p3}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V

    .line 193
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p3, p0, Lcom/microsoft/applications/events/StorageRecordDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p3}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-wide p1

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/microsoft/applications/events/StorageRecordDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 194
    throw p1
.end method

.method public setReserved([JJ)V
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/microsoft/applications/events/StorageRecordDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 177
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lcom/microsoft/applications/events/StorageRecordDao_Impl;->access$301(Lcom/microsoft/applications/events/StorageRecordDao_Impl;[JJ)V

    .line 178
    iget-object p1, p0, Lcom/microsoft/applications/events/StorageRecordDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V

    .line 180
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/microsoft/applications/events/StorageRecordDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/microsoft/applications/events/StorageRecordDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 181
    throw p1
.end method

.method public setReservedBlock([JJ)I
    .locals 5

    .line 650
    iget-object v0, p0, Lcom/microsoft/applications/events/StorageRecordDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 651
    invoke-static {}, Landroidx/room/util/StringUtil;->newStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 652
    const-string v1, "UPDATE StorageRecord SET reservedUntil = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 653
    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 654
    const-string v1, " WHERE id IN ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 655
    array-length v1, p1

    .line 656
    invoke-static {v0, v1}, Landroidx/room/util/StringUtil;->appendPlaceholders(Ljava/lang/StringBuilder;I)V

    .line 657
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 658
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 659
    iget-object v1, p0, Lcom/microsoft/applications/events/StorageRecordDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1, v0}, Landroidx/room/RoomDatabase;->compileStatement(Ljava/lang/String;)Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    const/4 v1, 0x1

    .line 661
    invoke-interface {v0, v1, p2, p3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 663
    array-length p2, p1

    const/4 p3, 0x2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_0

    aget-wide v3, p1, v2

    .line 664
    invoke-interface {v0, p3, v3, v4}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    add-int/2addr p3, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 667
    :cond_0
    iget-object p1, p0, Lcom/microsoft/applications/events/StorageRecordDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 669
    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    move-result p1

    .line 670
    iget-object p2, p0, Lcom/microsoft/applications/events/StorageRecordDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V

    .line 673
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p2, p0, Lcom/microsoft/applications/events/StorageRecordDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    return p1

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/microsoft/applications/events/StorageRecordDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 674
    throw p1
.end method

.method public totalRecordCount()J
    .locals 5

    .line 292
    const/4 v0, 0x0

    sget-object v0, Lorg/spongycastle/math/field/TKPd/fRDYVDRbWIVvS;->usjCFZ:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    .line 293
    iget-object v2, p0, Lcom/microsoft/applications/events/StorageRecordDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 294
    iget-object v2, p0, Lcom/microsoft/applications/events/StorageRecordDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v3, 0x0

    invoke-static {v2, v0, v1, v3}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    .line 297
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 298
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x0

    .line 304
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 305
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-wide v3

    :catchall_0
    move-exception v1

    .line 304
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 305
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 306
    throw v1
.end method

.method public totalSize()J
    .locals 5

    .line 312
    const-string v0, "SELECT sum(length(id)) + sum(length(tenantToken)) + sum(length(blob)) + 40*count(*) from StorageRecord;"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    .line 313
    iget-object v2, p0, Lcom/microsoft/applications/events/StorageRecordDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 314
    iget-object v2, p0, Lcom/microsoft/applications/events/StorageRecordDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v3, 0x0

    invoke-static {v2, v0, v1, v3}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    .line 317
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 318
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x0

    .line 324
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 325
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-wide v3

    :catchall_0
    move-exception v1

    .line 324
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 325
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 326
    throw v1
.end method

.method public trim(J)I
    .locals 2

    .line 214
    iget-object v0, p0, Lcom/microsoft/applications/events/StorageRecordDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 215
    iget-object v0, p0, Lcom/microsoft/applications/events/StorageRecordDao_Impl;->__preparedStmtOfTrim:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    const/4 v1, 0x1

    .line 217
    invoke-interface {v0, v1, p1, p2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 218
    iget-object p1, p0, Lcom/microsoft/applications/events/StorageRecordDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 220
    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    move-result p1

    .line 221
    iget-object p2, p0, Lcom/microsoft/applications/events/StorageRecordDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V

    .line 224
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p2, p0, Lcom/microsoft/applications/events/StorageRecordDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 225
    iget-object p2, p0, Lcom/microsoft/applications/events/StorageRecordDao_Impl;->__preparedStmtOfTrim:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return p1

    :catchall_0
    move-exception p1

    .line 224
    iget-object p2, p0, Lcom/microsoft/applications/events/StorageRecordDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 225
    iget-object p2, p0, Lcom/microsoft/applications/events/StorageRecordDao_Impl;->__preparedStmtOfTrim:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 226
    throw p1
.end method
