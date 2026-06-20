.class public Lcom/microsoft/applications/events/EventProperty;
.super Ljava/lang/Object;
.source "EventProperty.java"


# instance fields
.field private m_category:Lcom/microsoft/applications/events/DataCategory;

.field private m_eventPropertyValue:Lcom/microsoft/applications/events/EventPropertyValue;

.field private m_piiKind:Lcom/microsoft/applications/events/PiiKind;


# direct methods
.method public constructor <init>(D)V
    .locals 1

    .line 163
    sget-object v0, Lcom/microsoft/applications/events/PiiKind;->None:Lcom/microsoft/applications/events/PiiKind;

    invoke-direct {p0, p1, p2, v0}, Lcom/microsoft/applications/events/EventProperty;-><init>(DLcom/microsoft/applications/events/PiiKind;)V

    return-void
.end method

.method public constructor <init>(DLcom/microsoft/applications/events/PiiKind;)V
    .locals 1

    .line 173
    sget-object v0, Lcom/microsoft/applications/events/DataCategory;->PartC:Lcom/microsoft/applications/events/DataCategory;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/microsoft/applications/events/EventProperty;-><init>(DLcom/microsoft/applications/events/PiiKind;Lcom/microsoft/applications/events/DataCategory;)V

    return-void
.end method

.method public constructor <init>(DLcom/microsoft/applications/events/PiiKind;Lcom/microsoft/applications/events/DataCategory;)V
    .locals 1

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    sget-object v0, Lcom/microsoft/applications/events/DataCategory;->PartC:Lcom/microsoft/applications/events/DataCategory;

    iput-object v0, p0, Lcom/microsoft/applications/events/EventProperty;->m_category:Lcom/microsoft/applications/events/DataCategory;

    if-eqz p3, :cond_1

    if-eqz p4, :cond_0

    .line 190
    iput-object p3, p0, Lcom/microsoft/applications/events/EventProperty;->m_piiKind:Lcom/microsoft/applications/events/PiiKind;

    .line 191
    iput-object p4, p0, Lcom/microsoft/applications/events/EventProperty;->m_category:Lcom/microsoft/applications/events/DataCategory;

    .line 192
    new-instance p3, Lcom/microsoft/applications/events/EventPropertyDoubleValue;

    invoke-direct {p3, p1, p2}, Lcom/microsoft/applications/events/EventPropertyDoubleValue;-><init>(D)V

    iput-object p3, p0, Lcom/microsoft/applications/events/EventProperty;->m_eventPropertyValue:Lcom/microsoft/applications/events/EventPropertyValue;

    return-void

    .line 188
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "category is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 186
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "piiKind is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 90
    sget-object v0, Lcom/microsoft/applications/events/PiiKind;->None:Lcom/microsoft/applications/events/PiiKind;

    invoke-direct {p0, p1, v0}, Lcom/microsoft/applications/events/EventProperty;-><init>(ILcom/microsoft/applications/events/PiiKind;)V

    return-void
.end method

.method public constructor <init>(ILcom/microsoft/applications/events/PiiKind;)V
    .locals 1

    .line 100
    sget-object v0, Lcom/microsoft/applications/events/DataCategory;->PartC:Lcom/microsoft/applications/events/DataCategory;

    invoke-direct {p0, p1, p2, v0}, Lcom/microsoft/applications/events/EventProperty;-><init>(ILcom/microsoft/applications/events/PiiKind;Lcom/microsoft/applications/events/DataCategory;)V

    return-void
.end method

.method public constructor <init>(ILcom/microsoft/applications/events/PiiKind;Lcom/microsoft/applications/events/DataCategory;)V
    .locals 2

    int-to-long v0, p1

    .line 112
    invoke-direct {p0, v0, v1, p2, p3}, Lcom/microsoft/applications/events/EventProperty;-><init>(JLcom/microsoft/applications/events/PiiKind;Lcom/microsoft/applications/events/DataCategory;)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    .line 123
    sget-object v0, Lcom/microsoft/applications/events/PiiKind;->None:Lcom/microsoft/applications/events/PiiKind;

    invoke-direct {p0, p1, p2, v0}, Lcom/microsoft/applications/events/EventProperty;-><init>(JLcom/microsoft/applications/events/PiiKind;)V

    return-void
.end method

.method public constructor <init>(JLcom/microsoft/applications/events/PiiKind;)V
    .locals 1

    .line 133
    sget-object v0, Lcom/microsoft/applications/events/DataCategory;->PartC:Lcom/microsoft/applications/events/DataCategory;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/microsoft/applications/events/EventProperty;-><init>(JLcom/microsoft/applications/events/PiiKind;Lcom/microsoft/applications/events/DataCategory;)V

    return-void
.end method

.method public constructor <init>(JLcom/microsoft/applications/events/PiiKind;Lcom/microsoft/applications/events/DataCategory;)V
    .locals 1

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    sget-object v0, Lcom/microsoft/applications/events/DataCategory;->PartC:Lcom/microsoft/applications/events/DataCategory;

    iput-object v0, p0, Lcom/microsoft/applications/events/EventProperty;->m_category:Lcom/microsoft/applications/events/DataCategory;

    if-eqz p3, :cond_1

    if-eqz p4, :cond_0

    .line 150
    iput-object p3, p0, Lcom/microsoft/applications/events/EventProperty;->m_piiKind:Lcom/microsoft/applications/events/PiiKind;

    .line 151
    iput-object p4, p0, Lcom/microsoft/applications/events/EventProperty;->m_category:Lcom/microsoft/applications/events/DataCategory;

    .line 152
    new-instance p3, Lcom/microsoft/applications/events/EventPropertyLongValue;

    invoke-direct {p3, p1, p2}, Lcom/microsoft/applications/events/EventPropertyLongValue;-><init>(J)V

    iput-object p3, p0, Lcom/microsoft/applications/events/EventProperty;->m_eventPropertyValue:Lcom/microsoft/applications/events/EventPropertyValue;

    return-void

    .line 148
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "category is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 146
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "piiKind is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private constructor <init>(Lcom/microsoft/applications/events/TimeTicks;Lcom/microsoft/applications/events/PiiKind;Lcom/microsoft/applications/events/DataCategory;)V
    .locals 2

    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    sget-object v0, Lcom/microsoft/applications/events/DataCategory;->PartC:Lcom/microsoft/applications/events/DataCategory;

    iput-object v0, p0, Lcom/microsoft/applications/events/EventProperty;->m_category:Lcom/microsoft/applications/events/DataCategory;

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    .line 284
    iput-object p2, p0, Lcom/microsoft/applications/events/EventProperty;->m_piiKind:Lcom/microsoft/applications/events/PiiKind;

    .line 285
    iput-object p3, p0, Lcom/microsoft/applications/events/EventProperty;->m_category:Lcom/microsoft/applications/events/DataCategory;

    .line 286
    new-instance p2, Lcom/microsoft/applications/events/EventPropertyTimeTicksValue;

    invoke-virtual {p1}, Lcom/microsoft/applications/events/TimeTicks;->getTicks()J

    move-result-wide v0

    invoke-direct {p2, v0, v1}, Lcom/microsoft/applications/events/EventPropertyTimeTicksValue;-><init>(J)V

    iput-object p2, p0, Lcom/microsoft/applications/events/EventProperty;->m_eventPropertyValue:Lcom/microsoft/applications/events/EventPropertyValue;

    return-void

    .line 282
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "category is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 280
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "piiKind is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 278
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "value is null or empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 48
    sget-object v0, Lcom/microsoft/applications/events/PiiKind;->None:Lcom/microsoft/applications/events/PiiKind;

    invoke-direct {p0, p1, v0}, Lcom/microsoft/applications/events/EventProperty;-><init>(Ljava/lang/String;Lcom/microsoft/applications/events/PiiKind;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/microsoft/applications/events/PiiKind;)V
    .locals 1

    .line 58
    sget-object v0, Lcom/microsoft/applications/events/DataCategory;->PartC:Lcom/microsoft/applications/events/DataCategory;

    invoke-direct {p0, p1, p2, v0}, Lcom/microsoft/applications/events/EventProperty;-><init>(Ljava/lang/String;Lcom/microsoft/applications/events/PiiKind;Lcom/microsoft/applications/events/DataCategory;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/microsoft/applications/events/PiiKind;Lcom/microsoft/applications/events/DataCategory;)V
    .locals 1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    sget-object v0, Lcom/microsoft/applications/events/DataCategory;->PartC:Lcom/microsoft/applications/events/DataCategory;

    iput-object v0, p0, Lcom/microsoft/applications/events/EventProperty;->m_category:Lcom/microsoft/applications/events/DataCategory;

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    .line 77
    iput-object p2, p0, Lcom/microsoft/applications/events/EventProperty;->m_piiKind:Lcom/microsoft/applications/events/PiiKind;

    .line 78
    iput-object p3, p0, Lcom/microsoft/applications/events/EventProperty;->m_category:Lcom/microsoft/applications/events/DataCategory;

    .line 79
    new-instance p2, Lcom/microsoft/applications/events/EventPropertyStringValue;

    invoke-direct {p2, p1}, Lcom/microsoft/applications/events/EventPropertyStringValue;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/microsoft/applications/events/EventProperty;->m_eventPropertyValue:Lcom/microsoft/applications/events/EventPropertyValue;

    return-void

    .line 75
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "category is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 73
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "piiKind is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 71
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "value is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/util/Date;)V
    .locals 1

    .line 243
    sget-object v0, Lcom/microsoft/applications/events/PiiKind;->None:Lcom/microsoft/applications/events/PiiKind;

    invoke-direct {p0, p1, v0}, Lcom/microsoft/applications/events/EventProperty;-><init>(Ljava/util/Date;Lcom/microsoft/applications/events/PiiKind;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Date;Lcom/microsoft/applications/events/PiiKind;)V
    .locals 1

    .line 253
    sget-object v0, Lcom/microsoft/applications/events/DataCategory;->PartC:Lcom/microsoft/applications/events/DataCategory;

    invoke-direct {p0, p1, p2, v0}, Lcom/microsoft/applications/events/EventProperty;-><init>(Ljava/util/Date;Lcom/microsoft/applications/events/PiiKind;Lcom/microsoft/applications/events/DataCategory;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Date;Lcom/microsoft/applications/events/PiiKind;Lcom/microsoft/applications/events/DataCategory;)V
    .locals 1

    .line 265
    new-instance v0, Lcom/microsoft/applications/events/TimeTicks;

    invoke-direct {v0, p1}, Lcom/microsoft/applications/events/TimeTicks;-><init>(Ljava/util/Date;)V

    invoke-direct {p0, v0, p2, p3}, Lcom/microsoft/applications/events/EventProperty;-><init>(Lcom/microsoft/applications/events/TimeTicks;Lcom/microsoft/applications/events/PiiKind;Lcom/microsoft/applications/events/DataCategory;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;)V
    .locals 1

    .line 297
    sget-object v0, Lcom/microsoft/applications/events/PiiKind;->None:Lcom/microsoft/applications/events/PiiKind;

    invoke-direct {p0, p1, v0}, Lcom/microsoft/applications/events/EventProperty;-><init>(Ljava/util/UUID;Lcom/microsoft/applications/events/PiiKind;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;Lcom/microsoft/applications/events/PiiKind;)V
    .locals 1

    .line 307
    sget-object v0, Lcom/microsoft/applications/events/DataCategory;->PartC:Lcom/microsoft/applications/events/DataCategory;

    invoke-direct {p0, p1, p2, v0}, Lcom/microsoft/applications/events/EventProperty;-><init>(Ljava/util/UUID;Lcom/microsoft/applications/events/PiiKind;Lcom/microsoft/applications/events/DataCategory;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;Lcom/microsoft/applications/events/PiiKind;Lcom/microsoft/applications/events/DataCategory;)V
    .locals 1

    .line 318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    sget-object v0, Lcom/microsoft/applications/events/DataCategory;->PartC:Lcom/microsoft/applications/events/DataCategory;

    iput-object v0, p0, Lcom/microsoft/applications/events/EventProperty;->m_category:Lcom/microsoft/applications/events/DataCategory;

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    .line 326
    iput-object p2, p0, Lcom/microsoft/applications/events/EventProperty;->m_piiKind:Lcom/microsoft/applications/events/PiiKind;

    .line 327
    iput-object p3, p0, Lcom/microsoft/applications/events/EventProperty;->m_category:Lcom/microsoft/applications/events/DataCategory;

    .line 328
    new-instance p2, Lcom/microsoft/applications/events/EventPropertyGuidValue;

    invoke-direct {p2, p1}, Lcom/microsoft/applications/events/EventPropertyGuidValue;-><init>(Ljava/util/UUID;)V

    iput-object p2, p0, Lcom/microsoft/applications/events/EventProperty;->m_eventPropertyValue:Lcom/microsoft/applications/events/EventPropertyValue;

    return-void

    .line 324
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "category is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 322
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "piiKind is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 320
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "value is null or empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 203
    sget-object v0, Lcom/microsoft/applications/events/PiiKind;->None:Lcom/microsoft/applications/events/PiiKind;

    invoke-direct {p0, p1, v0}, Lcom/microsoft/applications/events/EventProperty;-><init>(ZLcom/microsoft/applications/events/PiiKind;)V

    return-void
.end method

.method public constructor <init>(ZLcom/microsoft/applications/events/PiiKind;)V
    .locals 1

    .line 213
    sget-object v0, Lcom/microsoft/applications/events/DataCategory;->PartC:Lcom/microsoft/applications/events/DataCategory;

    invoke-direct {p0, p1, p2, v0}, Lcom/microsoft/applications/events/EventProperty;-><init>(ZLcom/microsoft/applications/events/PiiKind;Lcom/microsoft/applications/events/DataCategory;)V

    return-void
.end method

.method public constructor <init>(ZLcom/microsoft/applications/events/PiiKind;Lcom/microsoft/applications/events/DataCategory;)V
    .locals 1

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    sget-object v0, Lcom/microsoft/applications/events/DataCategory;->PartC:Lcom/microsoft/applications/events/DataCategory;

    iput-object v0, p0, Lcom/microsoft/applications/events/EventProperty;->m_category:Lcom/microsoft/applications/events/DataCategory;

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    .line 230
    iput-object p2, p0, Lcom/microsoft/applications/events/EventProperty;->m_piiKind:Lcom/microsoft/applications/events/PiiKind;

    .line 231
    iput-object p3, p0, Lcom/microsoft/applications/events/EventProperty;->m_category:Lcom/microsoft/applications/events/DataCategory;

    .line 232
    new-instance p2, Lcom/microsoft/applications/events/EventPropertyBooleanValue;

    invoke-direct {p2, p1}, Lcom/microsoft/applications/events/EventPropertyBooleanValue;-><init>(Z)V

    iput-object p2, p0, Lcom/microsoft/applications/events/EventProperty;->m_eventPropertyValue:Lcom/microsoft/applications/events/EventPropertyValue;

    return-void

    .line 228
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const/4 p2, 0x0

    sget-object p2, Landroidx/browser/trusted/XVPk/TRDIJWgKAJDvEL;->tBIZIKcJCNQov:Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 226
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "piiKind is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>([D)V
    .locals 1

    .line 423
    sget-object v0, Lcom/microsoft/applications/events/PiiKind;->None:Lcom/microsoft/applications/events/PiiKind;

    invoke-direct {p0, p1, v0}, Lcom/microsoft/applications/events/EventProperty;-><init>([DLcom/microsoft/applications/events/PiiKind;)V

    return-void
.end method

.method public constructor <init>([DLcom/microsoft/applications/events/PiiKind;)V
    .locals 1

    .line 433
    sget-object v0, Lcom/microsoft/applications/events/DataCategory;->PartC:Lcom/microsoft/applications/events/DataCategory;

    invoke-direct {p0, p1, p2, v0}, Lcom/microsoft/applications/events/EventProperty;-><init>([DLcom/microsoft/applications/events/PiiKind;Lcom/microsoft/applications/events/DataCategory;)V

    return-void
.end method

.method public constructor <init>([DLcom/microsoft/applications/events/PiiKind;Lcom/microsoft/applications/events/DataCategory;)V
    .locals 1

    .line 444
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    sget-object v0, Lcom/microsoft/applications/events/DataCategory;->PartC:Lcom/microsoft/applications/events/DataCategory;

    iput-object v0, p0, Lcom/microsoft/applications/events/EventProperty;->m_category:Lcom/microsoft/applications/events/DataCategory;

    if-eqz p1, :cond_2

    .line 445
    array-length v0, p1

    if-eqz v0, :cond_2

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    .line 452
    iput-object p2, p0, Lcom/microsoft/applications/events/EventProperty;->m_piiKind:Lcom/microsoft/applications/events/PiiKind;

    .line 453
    iput-object p3, p0, Lcom/microsoft/applications/events/EventProperty;->m_category:Lcom/microsoft/applications/events/DataCategory;

    .line 454
    new-instance p2, Lcom/microsoft/applications/events/EventPropertyDoubleArrayValue;

    invoke-direct {p2, p1}, Lcom/microsoft/applications/events/EventPropertyDoubleArrayValue;-><init>([D)V

    iput-object p2, p0, Lcom/microsoft/applications/events/EventProperty;->m_eventPropertyValue:Lcom/microsoft/applications/events/EventPropertyValue;

    return-void

    .line 450
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "category is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 448
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "piiKind is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 446
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "value is null or empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>([J)V
    .locals 1

    .line 381
    sget-object v0, Lcom/microsoft/applications/events/PiiKind;->None:Lcom/microsoft/applications/events/PiiKind;

    invoke-direct {p0, p1, v0}, Lcom/microsoft/applications/events/EventProperty;-><init>([JLcom/microsoft/applications/events/PiiKind;)V

    return-void
.end method

.method public constructor <init>([JLcom/microsoft/applications/events/PiiKind;)V
    .locals 1

    .line 391
    sget-object v0, Lcom/microsoft/applications/events/DataCategory;->PartC:Lcom/microsoft/applications/events/DataCategory;

    invoke-direct {p0, p1, p2, v0}, Lcom/microsoft/applications/events/EventProperty;-><init>([JLcom/microsoft/applications/events/PiiKind;Lcom/microsoft/applications/events/DataCategory;)V

    return-void
.end method

.method public constructor <init>([JLcom/microsoft/applications/events/PiiKind;Lcom/microsoft/applications/events/DataCategory;)V
    .locals 1

    .line 402
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    sget-object v0, Lcom/microsoft/applications/events/DataCategory;->PartC:Lcom/microsoft/applications/events/DataCategory;

    iput-object v0, p0, Lcom/microsoft/applications/events/EventProperty;->m_category:Lcom/microsoft/applications/events/DataCategory;

    if-eqz p1, :cond_2

    .line 403
    array-length v0, p1

    if-eqz v0, :cond_2

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    .line 410
    iput-object p2, p0, Lcom/microsoft/applications/events/EventProperty;->m_piiKind:Lcom/microsoft/applications/events/PiiKind;

    .line 411
    iput-object p3, p0, Lcom/microsoft/applications/events/EventProperty;->m_category:Lcom/microsoft/applications/events/DataCategory;

    .line 412
    new-instance p2, Lcom/microsoft/applications/events/EventPropertyLongArrayValue;

    invoke-direct {p2, p1}, Lcom/microsoft/applications/events/EventPropertyLongArrayValue;-><init>([J)V

    iput-object p2, p0, Lcom/microsoft/applications/events/EventProperty;->m_eventPropertyValue:Lcom/microsoft/applications/events/EventPropertyValue;

    return-void

    .line 408
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "category is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 406
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "piiKind is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 404
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "value is null or empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 1

    .line 339
    sget-object v0, Lcom/microsoft/applications/events/PiiKind;->None:Lcom/microsoft/applications/events/PiiKind;

    invoke-direct {p0, p1, v0}, Lcom/microsoft/applications/events/EventProperty;-><init>([Ljava/lang/String;Lcom/microsoft/applications/events/PiiKind;)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Lcom/microsoft/applications/events/PiiKind;)V
    .locals 1

    .line 349
    sget-object v0, Lcom/microsoft/applications/events/DataCategory;->PartC:Lcom/microsoft/applications/events/DataCategory;

    invoke-direct {p0, p1, p2, v0}, Lcom/microsoft/applications/events/EventProperty;-><init>([Ljava/lang/String;Lcom/microsoft/applications/events/PiiKind;Lcom/microsoft/applications/events/DataCategory;)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Lcom/microsoft/applications/events/PiiKind;Lcom/microsoft/applications/events/DataCategory;)V
    .locals 1

    .line 360
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    sget-object v0, Lcom/microsoft/applications/events/DataCategory;->PartC:Lcom/microsoft/applications/events/DataCategory;

    iput-object v0, p0, Lcom/microsoft/applications/events/EventProperty;->m_category:Lcom/microsoft/applications/events/DataCategory;

    if-eqz p1, :cond_2

    .line 361
    array-length v0, p1

    if-eqz v0, :cond_2

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    .line 368
    iput-object p2, p0, Lcom/microsoft/applications/events/EventProperty;->m_piiKind:Lcom/microsoft/applications/events/PiiKind;

    .line 369
    iput-object p3, p0, Lcom/microsoft/applications/events/EventProperty;->m_category:Lcom/microsoft/applications/events/DataCategory;

    .line 370
    new-instance p2, Lcom/microsoft/applications/events/EventPropertyStringArrayValue;

    invoke-direct {p2, p1}, Lcom/microsoft/applications/events/EventPropertyStringArrayValue;-><init>([Ljava/lang/String;)V

    iput-object p2, p0, Lcom/microsoft/applications/events/EventProperty;->m_eventPropertyValue:Lcom/microsoft/applications/events/EventPropertyValue;

    return-void

    .line 366
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "category is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 364
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "piiKind is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 362
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "value is null or empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>([Ljava/util/UUID;)V
    .locals 1

    .line 465
    sget-object v0, Lcom/microsoft/applications/events/PiiKind;->None:Lcom/microsoft/applications/events/PiiKind;

    invoke-direct {p0, p1, v0}, Lcom/microsoft/applications/events/EventProperty;-><init>([Ljava/util/UUID;Lcom/microsoft/applications/events/PiiKind;)V

    return-void
.end method

.method public constructor <init>([Ljava/util/UUID;Lcom/microsoft/applications/events/PiiKind;)V
    .locals 1

    .line 475
    sget-object v0, Lcom/microsoft/applications/events/DataCategory;->PartC:Lcom/microsoft/applications/events/DataCategory;

    invoke-direct {p0, p1, p2, v0}, Lcom/microsoft/applications/events/EventProperty;-><init>([Ljava/util/UUID;Lcom/microsoft/applications/events/PiiKind;Lcom/microsoft/applications/events/DataCategory;)V

    return-void
.end method

.method public constructor <init>([Ljava/util/UUID;Lcom/microsoft/applications/events/PiiKind;Lcom/microsoft/applications/events/DataCategory;)V
    .locals 1

    .line 486
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    sget-object v0, Lcom/microsoft/applications/events/DataCategory;->PartC:Lcom/microsoft/applications/events/DataCategory;

    iput-object v0, p0, Lcom/microsoft/applications/events/EventProperty;->m_category:Lcom/microsoft/applications/events/DataCategory;

    if-eqz p1, :cond_2

    .line 487
    array-length v0, p1

    if-eqz v0, :cond_2

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    .line 494
    iput-object p2, p0, Lcom/microsoft/applications/events/EventProperty;->m_piiKind:Lcom/microsoft/applications/events/PiiKind;

    .line 495
    iput-object p3, p0, Lcom/microsoft/applications/events/EventProperty;->m_category:Lcom/microsoft/applications/events/DataCategory;

    .line 496
    new-instance p2, Lcom/microsoft/applications/events/EventPropertyGuidArrayValue;

    invoke-direct {p2, p1}, Lcom/microsoft/applications/events/EventPropertyGuidArrayValue;-><init>([Ljava/util/UUID;)V

    iput-object p2, p0, Lcom/microsoft/applications/events/EventProperty;->m_eventPropertyValue:Lcom/microsoft/applications/events/EventPropertyValue;

    return-void

    .line 492
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "category is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 490
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "piiKind is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 488
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "value is null or empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method getDataCategory()Lcom/microsoft/applications/events/DataCategory;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/microsoft/applications/events/EventProperty;->m_category:Lcom/microsoft/applications/events/DataCategory;

    return-object v0
.end method

.method getDataCategoryValue()I
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/microsoft/applications/events/EventProperty;->m_category:Lcom/microsoft/applications/events/DataCategory;

    invoke-virtual {v0}, Lcom/microsoft/applications/events/DataCategory;->getValue()I

    move-result v0

    return v0
.end method

.method public getEventPropertyValue()Lcom/microsoft/applications/events/EventPropertyValue;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/microsoft/applications/events/EventProperty;->m_eventPropertyValue:Lcom/microsoft/applications/events/EventPropertyValue;

    return-object v0
.end method

.method public getPiiKind()Lcom/microsoft/applications/events/PiiKind;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/microsoft/applications/events/EventProperty;->m_piiKind:Lcom/microsoft/applications/events/PiiKind;

    return-object v0
.end method

.method getPiiKindValue()I
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/microsoft/applications/events/EventProperty;->m_piiKind:Lcom/microsoft/applications/events/PiiKind;

    invoke-virtual {v0}, Lcom/microsoft/applications/events/PiiKind;->getValue()I

    move-result v0

    return v0
.end method
