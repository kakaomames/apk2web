.class Lcom/microsoft/applications/events/StorageRecordDao_Impl$4;
.super Landroidx/room/SharedSQLiteStatement;
.source "StorageRecordDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/applications/events/StorageRecordDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/applications/events/StorageRecordDao_Impl;


# direct methods
.method constructor <init>(Lcom/microsoft/applications/events/StorageRecordDao_Impl;Landroidx/room/RoomDatabase;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/microsoft/applications/events/StorageRecordDao_Impl$4;->this$0:Lcom/microsoft/applications/events/StorageRecordDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/SharedSQLiteStatement;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public createQuery()Ljava/lang/String;
    .locals 1

    .line 89
    const-string v0, "DELETE FROM StorageRecord WHERE id IN (SELECT id FROM StorageRecord ORDER BY persistence ASC, timestamp ASC LIMIT ?)"

    return-object v0
.end method
