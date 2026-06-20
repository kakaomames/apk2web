.class public Lcom/microsoft/applications/events/EventPropertyBooleanValue;
.super Lcom/microsoft/applications/events/EventPropertyValue;
.source "EventPropertyBooleanValue.java"


# instance fields
.field private m_value:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    .line 11
    sget-object v0, Lcom/microsoft/applications/events/EventPropertyType;->TYPE_BOOLEAN:Lcom/microsoft/applications/events/EventPropertyType;

    invoke-direct {p0, v0}, Lcom/microsoft/applications/events/EventPropertyValue;-><init>(Lcom/microsoft/applications/events/EventPropertyType;)V

    .line 12
    iput-boolean p1, p0, Lcom/microsoft/applications/events/EventPropertyBooleanValue;->m_value:Z

    return-void
.end method


# virtual methods
.method public getBoolean()Z
    .locals 1

    .line 17
    iget-boolean v0, p0, Lcom/microsoft/applications/events/EventPropertyBooleanValue;->m_value:Z

    return v0
.end method
