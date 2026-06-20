.class Lcom/microsoft/applications/events/OfflineRoom$TrimTransaction;
.super Ljava/lang/Object;
.source "OfflineRoom.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/applications/events/OfflineRoom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TrimTransaction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field m_byteLimit:J

.field m_room:Lcom/microsoft/applications/events/OfflineRoom;

.field final synthetic this$0:Lcom/microsoft/applications/events/OfflineRoom;


# direct methods
.method public constructor <init>(Lcom/microsoft/applications/events/OfflineRoom;Lcom/microsoft/applications/events/OfflineRoom;J)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/microsoft/applications/events/OfflineRoom$TrimTransaction;->this$0:Lcom/microsoft/applications/events/OfflineRoom;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p2, p0, Lcom/microsoft/applications/events/OfflineRoom$TrimTransaction;->m_room:Lcom/microsoft/applications/events/OfflineRoom;

    .line 30
    iput-wide p3, p0, Lcom/microsoft/applications/events/OfflineRoom$TrimTransaction;->m_byteLimit:J

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Long;
    .locals 14

    .line 45
    const-string v0, "MAE"

    iget-object v1, p0, Lcom/microsoft/applications/events/OfflineRoom$TrimTransaction;->m_room:Lcom/microsoft/applications/events/OfflineRoom;

    if-eqz v1, :cond_6

    iget-wide v2, p0, Lcom/microsoft/applications/events/OfflineRoom$TrimTransaction;->m_byteLimit:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    goto/16 :goto_1

    .line 48
    :cond_0
    invoke-virtual {v1}, Lcom/microsoft/applications/events/OfflineRoom;->totalSize()J

    move-result-wide v1

    .line 49
    iget-wide v6, p0, Lcom/microsoft/applications/events/OfflineRoom$TrimTransaction;->m_byteLimit:J

    cmp-long v3, v1, v6

    if-gtz v3, :cond_1

    .line 50
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, v4, v5}, Ljava/lang/Long;-><init>(J)V

    return-object v0

    .line 54
    :cond_1
    :try_start_0
    invoke-virtual {p0, v1, v2}, Lcom/microsoft/applications/events/OfflineRoom$TrimTransaction;->vacuum(J)J

    move-result-wide v1

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 56
    const-string v6, "Exception in VACUUM"

    invoke-static {v0, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 59
    :goto_0
    iget-wide v6, p0, Lcom/microsoft/applications/events/OfflineRoom$TrimTransaction;->m_byteLimit:J

    cmp-long v3, v1, v6

    if-gtz v3, :cond_2

    .line 60
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, v4, v5}, Ljava/lang/Long;-><init>(J)V

    return-object v0

    .line 63
    :cond_2
    iget-object v3, p0, Lcom/microsoft/applications/events/OfflineRoom$TrimTransaction;->m_room:Lcom/microsoft/applications/events/OfflineRoom;

    iget-object v3, v3, Lcom/microsoft/applications/events/OfflineRoom;->m_srDao:Lcom/microsoft/applications/events/StorageRecordDao;

    invoke-virtual {v3}, Lcom/microsoft/applications/events/StorageRecordDao;->totalRecordCount()J

    move-result-wide v6

    .line 65
    iget-wide v8, p0, Lcom/microsoft/applications/events/OfflineRoom$TrimTransaction;->m_byteLimit:J

    iget-object v3, p0, Lcom/microsoft/applications/events/OfflineRoom$TrimTransaction;->m_room:Lcom/microsoft/applications/events/OfflineRoom;

    iget-wide v10, v3, Lcom/microsoft/applications/events/OfflineRoom;->m_pageSize:J

    cmp-long v3, v8, v10

    const-wide/high16 v8, 0x3fd0000000000000L

    if-lez v3, :cond_3

    .line 66
    iget-wide v10, p0, Lcom/microsoft/applications/events/OfflineRoom$TrimTransaction;->m_byteLimit:J

    long-to-double v10, v10

    long-to-double v1, v1

    const-wide/high16 v12, 0x3ff0000000000000L

    div-double/2addr v10, v1

    sub-double/2addr v12, v10

    .line 68
    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    :cond_3
    long-to-double v1, v6

    mul-double/2addr v8, v1

    .line 70
    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-long v1, v1

    cmp-long v3, v1, v4

    if-gtz v3, :cond_4

    .line 72
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, v4, v5}, Ljava/lang/Long;-><init>(J)V

    return-object v0

    .line 74
    :cond_4
    iget-object v3, p0, Lcom/microsoft/applications/events/OfflineRoom$TrimTransaction;->m_room:Lcom/microsoft/applications/events/OfflineRoom;

    iget-object v3, v3, Lcom/microsoft/applications/events/OfflineRoom;->m_srDao:Lcom/microsoft/applications/events/StorageRecordDao;

    invoke-virtual {v3, v1, v2}, Lcom/microsoft/applications/events/StorageRecordDao;->trim(J)I

    move-result v1

    int-to-long v1, v1

    .line 75
    iget-object v3, p0, Lcom/microsoft/applications/events/OfflineRoom$TrimTransaction;->m_room:Lcom/microsoft/applications/events/OfflineRoom;

    invoke-virtual {v3}, Lcom/microsoft/applications/events/OfflineRoom;->totalSize()J

    move-result-wide v3

    .line 77
    iget-wide v5, p0, Lcom/microsoft/applications/events/OfflineRoom$TrimTransaction;->m_byteLimit:J

    cmp-long v5, v3, v5

    if-lez v5, :cond_5

    .line 78
    invoke-virtual {p0, v3, v4}, Lcom/microsoft/applications/events/OfflineRoom$TrimTransaction;->vacuum(J)J

    move-result-wide v3

    .line 83
    :cond_5
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 84
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    filled-new-array {v5, v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 81
    const-string v4, "Trim: dropped %d records, new size %d bytes"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 80
    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    return-object v0

    :cond_6
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 22
    invoke-virtual {p0}, Lcom/microsoft/applications/events/OfflineRoom$TrimTransaction;->call()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected vacuum(J)J
    .locals 3

    .line 34
    iget-object v0, p0, Lcom/microsoft/applications/events/OfflineRoom$TrimTransaction;->m_room:Lcom/microsoft/applications/events/OfflineRoom;

    iget-object v0, v0, Lcom/microsoft/applications/events/OfflineRoom;->m_db:Lcom/microsoft/applications/events/OfflineRoomDatabase;

    const-string v1, "VACUUM"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/microsoft/applications/events/OfflineRoomDatabase;->query(Ljava/lang/String;[Ljava/lang/Object;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/microsoft/applications/events/OfflineRoom$TrimTransaction;->m_room:Lcom/microsoft/applications/events/OfflineRoom;

    invoke-virtual {v0}, Lcom/microsoft/applications/events/OfflineRoom;->totalSize()J

    move-result-wide v0

    .line 38
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 39
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    .line 36
    const-string p2, "Vacuum: %d before, %d after"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "MAE"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v0
.end method
