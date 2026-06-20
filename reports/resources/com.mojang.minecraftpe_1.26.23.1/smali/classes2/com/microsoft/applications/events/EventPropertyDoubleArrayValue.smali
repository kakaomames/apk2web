.class public Lcom/microsoft/applications/events/EventPropertyDoubleArrayValue;
.super Lcom/microsoft/applications/events/EventPropertyValue;
.source "EventPropertyDoubleArrayValue.java"


# instance fields
.field private m_value:[D


# direct methods
.method public constructor <init>([D)V
    .locals 1

    .line 11
    sget-object v0, Lcom/microsoft/applications/events/EventPropertyType;->TYPE_DOUBLE_ARRAY:Lcom/microsoft/applications/events/EventPropertyType;

    invoke-direct {p0, v0}, Lcom/microsoft/applications/events/EventPropertyValue;-><init>(Lcom/microsoft/applications/events/EventPropertyType;)V

    if-eqz p1, :cond_0

    .line 12
    array-length v0, p1

    if-eqz v0, :cond_0

    .line 14
    iput-object p1, p0, Lcom/microsoft/applications/events/EventPropertyDoubleArrayValue;->m_value:[D

    return-void

    .line 13
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "value is null or empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getDoubleArray()[D
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/microsoft/applications/events/EventPropertyDoubleArrayValue;->m_value:[D

    return-object v0
.end method
