.class public Lcom/microsoft/applications/events/EventPropertyStringValue;
.super Lcom/microsoft/applications/events/EventPropertyValue;
.source "EventPropertyStringValue.java"


# instance fields
.field private m_value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 11
    sget-object v0, Lcom/microsoft/applications/events/EventPropertyType;->TYPE_STRING:Lcom/microsoft/applications/events/EventPropertyType;

    invoke-direct {p0, v0}, Lcom/microsoft/applications/events/EventPropertyValue;-><init>(Lcom/microsoft/applications/events/EventPropertyType;)V

    if-eqz p1, :cond_0

    .line 14
    iput-object p1, p0, Lcom/microsoft/applications/events/EventPropertyStringValue;->m_value:Ljava/lang/String;

    return-void

    .line 13
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "value is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getString()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/microsoft/applications/events/EventPropertyStringValue;->m_value:Ljava/lang/String;

    return-object v0
.end method
