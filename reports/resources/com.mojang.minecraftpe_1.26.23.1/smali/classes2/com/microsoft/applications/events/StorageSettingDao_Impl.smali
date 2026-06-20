.class public final Lcom/microsoft/applications/events/StorageSettingDao_Impl;
.super Ljava/lang/Object;
.source "StorageSettingDao_Impl.java"

# interfaces
.implements Lcom/microsoft/applications/events/StorageSettingDao;


# instance fields
.field private final __db:Landroidx/room/RoomDatabase;

.field private final __preparedStmtOfDeleteAllSettings:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfDeleteSetting:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfSetValue:Landroidx/room/SharedSQLiteStatement;


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/microsoft/applications/events/StorageSettingDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 29
    new-instance v0, Lcom/microsoft/applications/events/StorageSettingDao_Impl$1;

    invoke-direct {v0, p0, p1}, Lcom/microsoft/applications/events/StorageSettingDao_Impl$1;-><init>(Lcom/microsoft/applications/events/StorageSettingDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/microsoft/applications/events/StorageSettingDao_Impl;->__preparedStmtOfSetValue:Landroidx/room/SharedSQLiteStatement;

    .line 36
    new-instance v0, Lcom/microsoft/applications/events/StorageSettingDao_Impl$2;

    invoke-direct {v0, p0, p1}, Lcom/microsoft/applications/events/StorageSettingDao_Impl$2;-><init>(Lcom/microsoft/applications/events/StorageSettingDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/microsoft/applications/events/StorageSettingDao_Impl;->__preparedStmtOfDeleteAllSettings:Landroidx/room/SharedSQLiteStatement;

    .line 43
    new-instance v0, Lcom/microsoft/applications/events/StorageSettingDao_Impl$3;

    invoke-direct {v0, p0, p1}, Lcom/microsoft/applications/events/StorageSettingDao_Impl$3;-><init>(Lcom/microsoft/applications/events/StorageSettingDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/microsoft/applications/events/StorageSettingDao_Impl;->__preparedStmtOfDeleteSetting:Landroidx/room/SharedSQLiteStatement;

    return-void
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

    .line 198
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public deleteAllSettings()I
    .locals 3

    .line 81
    iget-object v0, p0, Lcom/microsoft/applications/events/StorageSettingDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 82
    iget-object v0, p0, Lcom/microsoft/applications/events/StorageSettingDao_Impl;->__preparedStmtOfDeleteAllSettings:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    .line 83
    iget-object v1, p0, Lcom/microsoft/applications/events/StorageSettingDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 85
    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    move-result v1

    .line 86
    iget-object v2, p0, Lcom/microsoft/applications/events/StorageSettingDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V

    .line 89
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Lcom/microsoft/applications/events/StorageSettingDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 90
    iget-object v2, p0, Lcom/microsoft/applications/events/StorageSettingDao_Impl;->__preparedStmtOfDeleteAllSettings:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return v1

    :catchall_0
    move-exception v1

    .line 89
    iget-object v2, p0, Lcom/microsoft/applications/events/StorageSettingDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 90
    iget-object v2, p0, Lcom/microsoft/applications/events/StorageSettingDao_Impl;->__preparedStmtOfDeleteAllSettings:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 91
    throw v1
.end method

.method public deleteSetting(Ljava/lang/String;)I
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/microsoft/applications/events/StorageSettingDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 97
    iget-object v0, p0, Lcom/microsoft/applications/events/StorageSettingDao_Impl;->__preparedStmtOfDeleteSetting:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 100
    invoke-interface {v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 102
    :cond_0
    invoke-interface {v0, v1, p1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 104
    :goto_0
    iget-object p1, p0, Lcom/microsoft/applications/events/StorageSettingDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 106
    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    move-result p1

    .line 107
    iget-object v1, p0, Lcom/microsoft/applications/events/StorageSettingDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V

    .line 110
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/microsoft/applications/events/StorageSettingDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 111
    iget-object v1, p0, Lcom/microsoft/applications/events/StorageSettingDao_Impl;->__preparedStmtOfDeleteSetting:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return p1

    :catchall_0
    move-exception p1

    .line 110
    iget-object v1, p0, Lcom/microsoft/applications/events/StorageSettingDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 111
    iget-object v1, p0, Lcom/microsoft/applications/events/StorageSettingDao_Impl;->__preparedStmtOfDeleteSetting:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 112
    throw p1
.end method

.method public getValues(Ljava/lang/String;)[Lcom/microsoft/applications/events/StorageSetting;
    .locals 9

    .line 118
    const-string v0, "SELECT * FROM StorageSetting WHERE name = ?"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    if-nez p1, :cond_0

    .line 121
    invoke-virtual {v0, v1}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 123
    :cond_0
    invoke-virtual {v0, v1, p1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 125
    :goto_0
    iget-object p1, p0, Lcom/microsoft/applications/events/StorageSettingDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 126
    iget-object p1, p0, Lcom/microsoft/applications/events/StorageSettingDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    .line 128
    :try_start_0
    const-string v3, "name"

    invoke-static {p1, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    .line 129
    const-string/jumbo v4, "value"

    invoke-static {p1, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 130
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v5

    new-array v5, v5, [Lcom/microsoft/applications/events/StorageSetting;

    .line 132
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 135
    invoke-interface {p1, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v6, v2

    goto :goto_2

    .line 138
    :cond_1
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 141
    :goto_2
    invoke-interface {p1, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_2

    move-object v7, v2

    goto :goto_3

    .line 144
    :cond_2
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 146
    :goto_3
    new-instance v8, Lcom/microsoft/applications/events/StorageSetting;

    invoke-direct {v8, v6, v7}, Lcom/microsoft/applications/events/StorageSetting;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    aput-object v8, v5, v1

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 152
    :cond_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 153
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v5

    :catchall_0
    move-exception v1

    .line 152
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 153
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 154
    throw v1
.end method

.method public setValue(Ljava/lang/String;Ljava/lang/String;)J
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/microsoft/applications/events/StorageSettingDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 55
    iget-object v0, p0, Lcom/microsoft/applications/events/StorageSettingDao_Impl;->__preparedStmtOfSetValue:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 58
    invoke-interface {v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 60
    :cond_0
    invoke-interface {v0, v1, p1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_0
    const/4 p1, 0x2

    if-nez p2, :cond_1

    .line 64
    invoke-interface {v0, p1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_1

    .line 66
    :cond_1
    invoke-interface {v0, p1, p2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 68
    :goto_1
    iget-object p1, p0, Lcom/microsoft/applications/events/StorageSettingDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 70
    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeInsert()J

    move-result-wide p1

    .line 71
    iget-object v1, p0, Lcom/microsoft/applications/events/StorageSettingDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V

    .line 74
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/microsoft/applications/events/StorageSettingDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 75
    iget-object v1, p0, Lcom/microsoft/applications/events/StorageSettingDao_Impl;->__preparedStmtOfSetValue:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return-wide p1

    :catchall_0
    move-exception p1

    .line 74
    iget-object p2, p0, Lcom/microsoft/applications/events/StorageSettingDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 75
    iget-object p2, p0, Lcom/microsoft/applications/events/StorageSettingDao_Impl;->__preparedStmtOfSetValue:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 76
    throw p1
.end method

.method public totalSettingCount()J
    .locals 5

    .line 180
    const-string v0, "SELECT count(*) FROM StorageSetting"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    .line 181
    iget-object v2, p0, Lcom/microsoft/applications/events/StorageSettingDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 182
    iget-object v2, p0, Lcom/microsoft/applications/events/StorageSettingDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v3, 0x0

    invoke-static {v2, v0, v1, v3}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    .line 185
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 186
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x0

    .line 192
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 193
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-wide v3

    :catchall_0
    move-exception v1

    .line 192
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 193
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 194
    throw v1
.end method

.method public totalSize()J
    .locals 5

    .line 160
    const/4 v0, 0x0

    sget-object v0, Lcom/google/firebase/components/ry/rJEhvHEtgO;->KuFvOQzs:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    .line 161
    iget-object v2, p0, Lcom/microsoft/applications/events/StorageSettingDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 162
    iget-object v2, p0, Lcom/microsoft/applications/events/StorageSettingDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v3, 0x0

    invoke-static {v2, v0, v1, v3}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    .line 165
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 166
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x0

    .line 172
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 173
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-wide v3

    :catchall_0
    move-exception v1

    .line 172
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 173
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 174
    throw v1
.end method
