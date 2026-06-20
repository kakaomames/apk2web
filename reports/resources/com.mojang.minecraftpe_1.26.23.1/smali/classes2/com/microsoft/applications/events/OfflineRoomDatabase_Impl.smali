.class public final Lcom/microsoft/applications/events/OfflineRoomDatabase_Impl;
.super Lcom/microsoft/applications/events/OfflineRoomDatabase;
.source "OfflineRoomDatabase_Impl.java"


# instance fields
.field private volatile _storageRecordDao:Lcom/microsoft/applications/events/StorageRecordDao;

.field private volatile _storageSettingDao:Lcom/microsoft/applications/events/StorageSettingDao;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/microsoft/applications/events/OfflineRoomDatabase;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/microsoft/applications/events/OfflineRoomDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/microsoft/applications/events/OfflineRoomDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/microsoft/applications/events/OfflineRoomDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/microsoft/applications/events/OfflineRoomDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/microsoft/applications/events/OfflineRoomDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/microsoft/applications/events/OfflineRoomDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/microsoft/applications/events/OfflineRoomDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/microsoft/applications/events/OfflineRoomDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/microsoft/applications/events/OfflineRoomDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/microsoft/applications/events/OfflineRoomDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Lcom/microsoft/applications/events/OfflineRoomDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/microsoft/applications/events/OfflineRoomDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$500(Lcom/microsoft/applications/events/OfflineRoomDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/microsoft/applications/events/OfflineRoomDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$602(Lcom/microsoft/applications/events/OfflineRoomDatabase_Impl;Landroidx/sqlite/db/SupportSQLiteDatabase;)Landroidx/sqlite/db/SupportSQLiteDatabase;
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/microsoft/applications/events/OfflineRoomDatabase_Impl;->mDatabase:Landroidx/sqlite/db/SupportSQLiteDatabase;

    return-object p1
.end method

.method static synthetic access$700(Lcom/microsoft/applications/events/OfflineRoomDatabase_Impl;Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Lcom/microsoft/applications/events/OfflineRoomDatabase_Impl;->internalInitInvalidationTracker(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    return-void
.end method

.method static synthetic access$800(Lcom/microsoft/applications/events/OfflineRoomDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/microsoft/applications/events/OfflineRoomDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$900(Lcom/microsoft/applications/events/OfflineRoomDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/microsoft/applications/events/OfflineRoomDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public clearAllTables()V
    .locals 4

    .line 144
    const-string v0, "VACUUM"

    const-string v1, "PRAGMA wal_checkpoint(FULL)"

    invoke-super {p0}, Lcom/microsoft/applications/events/OfflineRoomDatabase;->assertNotMainThread()V

    .line 145
    invoke-super {p0}, Lcom/microsoft/applications/events/OfflineRoomDatabase;->getOpenHelper()Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object v2

    invoke-interface {v2}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->getWritableDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object v2

    .line 147
    :try_start_0
    invoke-super {p0}, Lcom/microsoft/applications/events/OfflineRoomDatabase;->beginTransaction()V

    .line 148
    const-string v3, "DELETE FROM `StorageRecord`"

    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 149
    const-string v3, "DELETE FROM `StorageSetting`"

    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 150
    invoke-super {p0}, Lcom/microsoft/applications/events/OfflineRoomDatabase;->setTransactionSuccessful()V

    .line 152
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Lcom/microsoft/applications/events/OfflineRoomDatabase;->endTransaction()V

    .line 153
    invoke-interface {v2, v1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 154
    invoke-interface {v2}, Landroidx/sqlite/db/SupportSQLiteDatabase;->inTransaction()Z

    move-result v1

    if-nez v1, :cond_0

    .line 155
    invoke-interface {v2, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v3

    .line 152
    invoke-super {p0}, Lcom/microsoft/applications/events/OfflineRoomDatabase;->endTransaction()V

    .line 153
    invoke-interface {v2, v1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 154
    invoke-interface {v2}, Landroidx/sqlite/db/SupportSQLiteDatabase;->inTransaction()Z

    move-result v1

    if-nez v1, :cond_1

    .line 155
    invoke-interface {v2, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 157
    :cond_1
    throw v3
.end method

.method protected createInvalidationTracker()Landroidx/room/InvalidationTracker;
    .locals 6

    .line 137
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 138
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 139
    new-instance v3, Landroidx/room/InvalidationTracker;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "StorageRecord"

    aput-object v5, v4, v1

    const/4 v1, 0x1

    const-string v5, "StorageSetting"

    aput-object v5, v4, v1

    invoke-direct {v3, p0, v0, v2, v4}, Landroidx/room/InvalidationTracker;-><init>(Landroidx/room/RoomDatabase;Ljava/util/Map;Ljava/util/Map;[Ljava/lang/String;)V

    return-object v3
.end method

.method protected createOpenHelper(Landroidx/room/DatabaseConfiguration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;
    .locals 4

    .line 39
    new-instance v0, Landroidx/room/RoomOpenHelper;

    new-instance v1, Lcom/microsoft/applications/events/OfflineRoomDatabase_Impl$1;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lcom/microsoft/applications/events/OfflineRoomDatabase_Impl$1;-><init>(Lcom/microsoft/applications/events/OfflineRoomDatabase_Impl;I)V

    const-string v2, "c562644244e4b7e47787917e9f63a59e"

    const-string v3, "2b88cd37477c619d428f0b5e60adeaef"

    invoke-direct {v0, p1, v1, v2, v3}, Landroidx/room/RoomOpenHelper;-><init>(Landroidx/room/DatabaseConfiguration;Landroidx/room/RoomOpenHelper$Delegate;Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iget-object v1, p1, Landroidx/room/DatabaseConfiguration;->context:Landroid/content/Context;

    invoke-static {v1}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;->builder(Landroid/content/Context;)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v1

    iget-object v2, p1, Landroidx/room/DatabaseConfiguration;->name:Ljava/lang/String;

    .line 128
    invoke-virtual {v1, v2}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->name(Ljava/lang/String;)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v1

    .line 129
    invoke-virtual {v1, v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->callback(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v0

    .line 130
    invoke-virtual {v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->build()Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;

    move-result-object v0

    .line 131
    iget-object p1, p1, Landroidx/room/DatabaseConfiguration;->sqliteOpenHelperFactory:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;->create(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object p1

    return-object p1
.end method

.method public getAutoMigrations(Ljava/util/Map;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/room/migration/AutoMigrationSpec;",
            ">;",
            "Landroidx/room/migration/AutoMigrationSpec;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/room/migration/Migration;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    .line 177
    new-array p1, p1, [Landroidx/room/migration/Migration;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getRequiredAutoMigrationSpecs()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/room/migration/AutoMigrationSpec;",
            ">;>;"
        }
    .end annotation

    .line 170
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    return-object v0
.end method

.method protected getRequiredTypeConverters()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;>;"
        }
    .end annotation

    .line 162
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 163
    const-class v1, Lcom/microsoft/applications/events/StorageRecordDao;

    invoke-static {}, Lcom/microsoft/applications/events/StorageRecordDao_Impl;->getRequiredConverters()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    const-class v1, Lcom/microsoft/applications/events/StorageSettingDao;

    invoke-static {}, Lcom/microsoft/applications/events/StorageSettingDao_Impl;->getRequiredConverters()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public getStorageRecordDao()Lcom/microsoft/applications/events/StorageRecordDao;
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/microsoft/applications/events/OfflineRoomDatabase_Impl;->_storageRecordDao:Lcom/microsoft/applications/events/StorageRecordDao;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/microsoft/applications/events/OfflineRoomDatabase_Impl;->_storageRecordDao:Lcom/microsoft/applications/events/StorageRecordDao;

    return-object v0

    .line 185
    :cond_0
    monitor-enter p0

    .line 186
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/applications/events/OfflineRoomDatabase_Impl;->_storageRecordDao:Lcom/microsoft/applications/events/StorageRecordDao;

    if-nez v0, :cond_1

    .line 187
    new-instance v0, Lcom/microsoft/applications/events/StorageRecordDao_Impl;

    invoke-direct {v0, p0}, Lcom/microsoft/applications/events/StorageRecordDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/microsoft/applications/events/OfflineRoomDatabase_Impl;->_storageRecordDao:Lcom/microsoft/applications/events/StorageRecordDao;

    .line 189
    :cond_1
    iget-object v0, p0, Lcom/microsoft/applications/events/OfflineRoomDatabase_Impl;->_storageRecordDao:Lcom/microsoft/applications/events/StorageRecordDao;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 190
    monitor-exit p0

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getStorageSettingDao()Lcom/microsoft/applications/events/StorageSettingDao;
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/microsoft/applications/events/OfflineRoomDatabase_Impl;->_storageSettingDao:Lcom/microsoft/applications/events/StorageSettingDao;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/microsoft/applications/events/OfflineRoomDatabase_Impl;->_storageSettingDao:Lcom/microsoft/applications/events/StorageSettingDao;

    return-object v0

    .line 199
    :cond_0
    monitor-enter p0

    .line 200
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/applications/events/OfflineRoomDatabase_Impl;->_storageSettingDao:Lcom/microsoft/applications/events/StorageSettingDao;

    if-nez v0, :cond_1

    .line 201
    new-instance v0, Lcom/microsoft/applications/events/StorageSettingDao_Impl;

    invoke-direct {v0, p0}, Lcom/microsoft/applications/events/StorageSettingDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/microsoft/applications/events/OfflineRoomDatabase_Impl;->_storageSettingDao:Lcom/microsoft/applications/events/StorageSettingDao;

    .line 203
    :cond_1
    iget-object v0, p0, Lcom/microsoft/applications/events/OfflineRoomDatabase_Impl;->_storageSettingDao:Lcom/microsoft/applications/events/StorageSettingDao;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 204
    monitor-exit p0

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
