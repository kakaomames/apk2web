.class public Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$UserPresence;
.super Ljava/lang/Object;
.source "IFollowerPresenceResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserPresence"
.end annotation


# instance fields
.field private broadcastRecord:Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$BroadcastRecord;

.field private broadcastRecordSet:Z

.field public devices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$DeviceRecord;",
            ">;"
        }
    .end annotation
.end field

.field public lastSeen:Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$LastSeenRecord;

.field public state:Ljava/lang/String;

.field public xuid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBroadcastRecord(J)Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$BroadcastRecord;
    .locals 5

    .line 68
    iget-boolean v0, p0, Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$UserPresence;->broadcastRecordSet:Z

    if-nez v0, :cond_3

    .line 69
    const-string v0, "Online"

    iget-object v1, p0, Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$UserPresence;->state:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 71
    iget-object v0, p0, Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$UserPresence;->devices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$DeviceRecord;

    .line 72
    invoke-virtual {v1}, Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$DeviceRecord;->isXboxOne()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 73
    iget-object v1, v1, Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$DeviceRecord;->titles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$TitleRecord;

    .line 74
    iget-wide v3, v2, Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$TitleRecord;->id:J

    cmp-long v3, v3, p1

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$TitleRecord;->isRunningInFullOrFill()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$TitleRecord;->activity:Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$ActivityRecord;

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$TitleRecord;->activity:Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$ActivityRecord;

    iget-object v3, v3, Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$ActivityRecord;->broadcast:Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$BroadcastRecord;

    if-eqz v3, :cond_1

    .line 75
    iget-object p1, v2, Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$TitleRecord;->activity:Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$ActivityRecord;

    iget-object p1, p1, Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$ActivityRecord;->broadcast:Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$BroadcastRecord;

    iput-object p1, p0, Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$UserPresence;->broadcastRecord:Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$BroadcastRecord;

    :cond_2
    const/4 p1, 0x1

    .line 82
    iput-boolean p1, p0, Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$UserPresence;->broadcastRecordSet:Z

    .line 84
    :cond_3
    iget-object p1, p0, Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$UserPresence;->broadcastRecord:Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$BroadcastRecord;

    return-object p1
.end method

.method public getBroadcastingViewerCount(J)I
    .locals 0

    .line 88
    invoke-virtual {p0, p1, p2}, Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$UserPresence;->getBroadcastRecord(J)Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$BroadcastRecord;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 89
    :cond_0
    iget p1, p1, Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$BroadcastRecord;->viewers:I

    :goto_0
    return p1
.end method

.method public getXboxOneNowPlayingDate()Ljava/util/Date;
    .locals 5

    .line 114
    const-string v0, "Online"

    iget-object v1, p0, Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$UserPresence;->state:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 115
    iget-object v0, p0, Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$UserPresence;->devices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$DeviceRecord;

    .line 116
    invoke-virtual {v2}, Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$DeviceRecord;->isXboxOne()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 117
    iget-object v2, v2, Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$DeviceRecord;->titles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$TitleRecord;

    .line 118
    invoke-virtual {v3}, Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$TitleRecord;->isRunningInFullOrFill()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 119
    iget-object v1, v3, Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$TitleRecord;->lastModified:Ljava/util/Date;

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public getXboxOneNowPlayingTitleId()J
    .locals 6

    .line 95
    const-string v0, "Online"

    iget-object v1, p0, Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$UserPresence;->state:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_2

    .line 96
    iget-object v0, p0, Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$UserPresence;->devices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$DeviceRecord;

    .line 97
    invoke-virtual {v3}, Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$DeviceRecord;->isXboxOne()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 98
    iget-object v3, v3, Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$DeviceRecord;->titles:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$TitleRecord;

    .line 99
    invoke-virtual {v4}, Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$TitleRecord;->isRunningInFullOrFill()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 100
    iget-wide v1, v4, Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$TitleRecord;->id:J

    goto :goto_0

    :cond_2
    return-wide v1
.end method
