.class public abstract Lcom/microsoft/applications/events/OfflineRoomDatabase;
.super Landroidx/room/RoomDatabase;
.source "OfflineRoomDatabase.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Landroidx/room/RoomDatabase;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getStorageRecordDao()Lcom/microsoft/applications/events/StorageRecordDao;
.end method

.method public abstract getStorageSettingDao()Lcom/microsoft/applications/events/StorageSettingDao;
.end method
