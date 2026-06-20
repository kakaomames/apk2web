.class Lcom/microsoft/applications/events/StorageRecordDao_Impl$2;
.super Landroidx/room/EntityDeletionOrUpdateAdapter;
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
        "Landroidx/room/EntityDeletionOrUpdateAdapter<",
        "Lcom/microsoft/applications/events/StorageRecord;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/applications/events/StorageRecordDao_Impl;


# direct methods
.method constructor <init>(Lcom/microsoft/applications/events/StorageRecordDao_Impl;Landroidx/room/RoomDatabase;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/microsoft/applications/events/StorageRecordDao_Impl$2;->this$0:Lcom/microsoft/applications/events/StorageRecordDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/EntityDeletionOrUpdateAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/microsoft/applications/events/StorageRecord;)V
    .locals 3

    const/4 v0, 0x1

    .line 75
    iget-wide v1, p2, Lcom/microsoft/applications/events/StorageRecord;->id:J

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    return-void
.end method

.method public bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 67
    check-cast p2, Lcom/microsoft/applications/events/StorageRecord;

    invoke-virtual {p0, p1, p2}, Lcom/microsoft/applications/events/StorageRecordDao_Impl$2;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/microsoft/applications/events/StorageRecord;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    .line 70
    const-string v0, "DELETE FROM `StorageRecord` WHERE `id` = ?"

    return-object v0
.end method
