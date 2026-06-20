.class public Lcom/microsoft/applications/events/EventPropertyDoubleValue;
.super Lcom/microsoft/applications/events/EventPropertyValue;
.source "EventPropertyDoubleValue.java"


# instance fields
.field private m_value:D


# direct methods
.method public constructor <init>(D)V
    .locals 1

    .line 11
    sget-object v0, Lcom/microsoft/applications/events/EventPropertyType;->TYPE_DOUBLE:Lcom/microsoft/applications/events/EventPropertyType;

    invoke-direct {p0, v0}, Lcom/microsoft/applications/events/EventPropertyValue;-><init>(Lcom/microsoft/applications/events/EventPropertyType;)V

    .line 12
    iput-wide p1, p0, Lcom/microsoft/applications/events/EventPropertyDoubleValue;->m_value:D

    return-void
.end method


# virtual methods
.method public getDouble()D
    .locals 2

    .line 17
    iget-wide v0, p0, Lcom/microsoft/applications/events/EventPropertyDoubleValue;->m_value:D

    return-wide v0
.end method
