.class public Lcom/microsoft/applications/events/LogManagerProvider$LogManagerImpl$LogSessionDataImpl;
.super Ljava/lang/Object;
.source "LogManagerProvider.java"

# interfaces
.implements Lcom/microsoft/applications/events/LogSessionData;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/applications/events/LogManagerProvider$LogManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "LogSessionDataImpl"
.end annotation


# instance fields
.field private m_first_time:J

.field private m_uuid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 229
    iput-wide v0, p0, Lcom/microsoft/applications/events/LogManagerProvider$LogManagerImpl$LogSessionDataImpl;->m_first_time:J

    const/4 v0, 0x0

    .line 230
    iput-object v0, p0, Lcom/microsoft/applications/events/LogManagerProvider$LogManagerImpl$LogSessionDataImpl;->m_uuid:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getSessionFirstTime()J
    .locals 2

    .line 235
    iget-wide v0, p0, Lcom/microsoft/applications/events/LogManagerProvider$LogManagerImpl$LogSessionDataImpl;->m_first_time:J

    return-wide v0
.end method

.method public getSessionSDKUid()Ljava/lang/String;
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/microsoft/applications/events/LogManagerProvider$LogManagerImpl$LogSessionDataImpl;->m_uuid:Ljava/lang/String;

    return-object v0
.end method
