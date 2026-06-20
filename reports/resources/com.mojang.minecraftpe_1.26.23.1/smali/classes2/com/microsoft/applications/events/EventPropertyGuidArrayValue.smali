.class public Lcom/microsoft/applications/events/EventPropertyGuidArrayValue;
.super Lcom/microsoft/applications/events/EventPropertyValue;
.source "EventPropertyGuidArrayValue.java"


# instance fields
.field private m_value:[Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/util/UUID;)V
    .locals 3

    .line 13
    sget-object v0, Lcom/microsoft/applications/events/EventPropertyType;->TYPE_GUID_ARRAY:Lcom/microsoft/applications/events/EventPropertyType;

    invoke-direct {p0, v0}, Lcom/microsoft/applications/events/EventPropertyValue;-><init>(Lcom/microsoft/applications/events/EventPropertyType;)V

    if-eqz p1, :cond_2

    .line 14
    array-length v0, p1

    if-eqz v0, :cond_2

    .line 17
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/microsoft/applications/events/EventPropertyGuidArrayValue;->m_value:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 18
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 19
    aget-object v1, p1, v0

    if-eqz v1, :cond_0

    .line 23
    iget-object v2, p0, Lcom/microsoft/applications/events/EventPropertyGuidArrayValue;->m_value:[Ljava/lang/String;

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 21
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "UUID value is null for array index:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-void

    .line 15
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "value is null or empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getGuidArray()[Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/microsoft/applications/events/EventPropertyGuidArrayValue;->m_value:[Ljava/lang/String;

    return-object v0
.end method
