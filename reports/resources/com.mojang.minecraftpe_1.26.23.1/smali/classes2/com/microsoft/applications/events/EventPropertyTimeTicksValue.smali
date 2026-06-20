.class public Lcom/microsoft/applications/events/EventPropertyTimeTicksValue;
.super Lcom/microsoft/applications/events/EventPropertyValue;
.source "EventPropertyTimeTicksValue.java"


# instance fields
.field private m_value:J


# direct methods
.method public constructor <init>(J)V
    .locals 1

    .line 11
    sget-object v0, Lcom/microsoft/applications/events/EventPropertyType;->TYPE_TIME:Lcom/microsoft/applications/events/EventPropertyType;

    invoke-direct {p0, v0}, Lcom/microsoft/applications/events/EventPropertyValue;-><init>(Lcom/microsoft/applications/events/EventPropertyType;)V

    .line 12
    iput-wide p1, p0, Lcom/microsoft/applications/events/EventPropertyTimeTicksValue;->m_value:J

    return-void
.end method


# virtual methods
.method public getTimeTicks()J
    .locals 2

    .line 17
    iget-wide v0, p0, Lcom/microsoft/applications/events/EventPropertyTimeTicksValue;->m_value:J

    return-wide v0
.end method
