.class Lcom/microsoft/applications/events/StorageRecordDao_Impl$1;
.super Landroidx/room/EntityInsertionAdapter;
.source "StorageRecordDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/applications/events/StorageRecordDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityInsertionAdapter<",
        "Lcom/microsoft/applications/events/StorageRecord;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/applications/events/StorageRecordDao_Impl;


# direct methods
.method constructor <init>(Lcom/microsoft/applications/events/StorageRecordDao_Impl;Landroidx/room/RoomDatabase;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/microsoft/applications/events/StorageRecordDao_Impl$1;->this$0:Lcom/microsoft/applications/events/StorageRecordDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/EntityInsertionAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/microsoft/applications/events/StorageRecord;)V
    .locals 3

    const/4 v0, 0x1

    .line 49
    iget-wide v1, p2, Lcom/microsoft/applications/events/StorageRecord;->id:J

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 50
    iget-object v0, p2, Lcom/microsoft/applications/events/StorageRecord;->tenantToken:Ljava/lang/String;

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 51
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 53
    :cond_0
    iget-object v0, p2, Lcom/microsoft/applications/events/StorageRecord;->tenantToken:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 55
    :goto_0
    iget v0, p2, Lcom/microsoft/applications/events/StorageRecord;->latency:I

    int-to-long v0, v0

    const/4 v2, 0x3

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 56
    iget v0, p2, Lcom/microsoft/applications/events/StorageRecord;->persistence:I

    int-to-long v0, v0

    const/4 v2, 0x4

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    const/4 v0, 0x5

    .line 57
    iget-wide v1, p2, Lcom/microsoft/applications/events/StorageRecord;->timestamp:J

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 58
    iget v0, p2, Lcom/microsoft/applications/events/StorageRecord;->retryCount:I

    int-to-long v0, v0

    const/4 v2, 0x6

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    const/4 v0, 0x7

    .line 59
    iget-wide v1, p2, Lcom/microsoft/applications/events/StorageRecord;->reservedUntil:J

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 60
    iget-object v0, p2, Lcom/microsoft/applications/events/StorageRecord;->blob:[B

    const/16 v1, 0x8

    if-nez v0, :cond_1

    .line 61
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_1

    .line 63
    :cond_1
    iget-object p2, p2, Lcom/microsoft/applications/events/StorageRecord;->blob:[B

    invoke-interface {p1, v1, p2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindBlob(I[B)V

    :goto_1
    return-void
.end method

.method public bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 41
    check-cast p2, Lcom/microsoft/applications/events/StorageRecord;

    invoke-virtual {p0, p1, p2}, Lcom/microsoft/applications/events/StorageRecordDao_Impl$1;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/microsoft/applications/events/StorageRecord;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    .line 44
    const-string v0, "INSERT OR REPLACE INTO `StorageRecord` (`id`,`tenantToken`,`latency`,`persistence`,`timestamp`,`retryCount`,`reservedUntil`,`blob`) VALUES (nullif(?, 0),?,?,?,?,?,?,?)"

    return-object v0
.end method
