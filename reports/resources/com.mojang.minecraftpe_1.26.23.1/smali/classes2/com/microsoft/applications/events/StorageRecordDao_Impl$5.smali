.class Lcom/microsoft/applications/events/StorageRecordDao_Impl$5;
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

    .line 92
    iput-object p1, p0, Lcom/microsoft/applications/events/StorageRecordDao_Impl$5;->this$0:Lcom/microsoft/applications/events/StorageRecordDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/SharedSQLiteStatement;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public createQuery()Ljava/lang/String;
    .locals 1

    .line 96
    const-string v0, "UPDATE StorageRecord SET reservedUntil = 0 WHERE reservedUntil > 0 AND reservedUntil < ?"

    return-object v0
.end method
