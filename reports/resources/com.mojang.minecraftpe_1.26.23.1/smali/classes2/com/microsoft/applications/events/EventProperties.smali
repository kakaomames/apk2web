.class public Lcom/microsoft/applications/events/EventProperties;
.super Ljava/lang/Object;
.source "EventProperties.java"


# static fields
.field private static final DEFAULT_EVENT_NAME:Ljava/lang/String; = "undefined"


# instance fields
.field private mStorage:Lcom/microsoft/applications/events/EventPropertiesStorage;


# direct methods
.method public constructor <init>(Lcom/microsoft/applications/events/EventProperties;)V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 49
    new-instance v0, Lcom/microsoft/applications/events/EventPropertiesStorage;

    iget-object p1, p1, Lcom/microsoft/applications/events/EventProperties;->mStorage:Lcom/microsoft/applications/events/EventPropertiesStorage;

    invoke-direct {v0, p1}, Lcom/microsoft/applications/events/EventPropertiesStorage;-><init>(Lcom/microsoft/applications/events/EventPropertiesStorage;)V

    iput-object v0, p0, Lcom/microsoft/applications/events/EventProperties;->mStorage:Lcom/microsoft/applications/events/EventPropertiesStorage;

    return-void

    .line 47
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "copy is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 39
    sget-object v0, Lcom/microsoft/applications/events/DiagnosticLevel;->DIAG_LEVEL_OPTIONAL:Lcom/microsoft/applications/events/DiagnosticLevel;

    invoke-direct {p0, p1, v0}, Lcom/microsoft/applications/events/EventProperties;-><init>(Ljava/lang/String;Lcom/microsoft/applications/events/DiagnosticLevel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/microsoft/applications/events/DiagnosticLevel;)V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lcom/microsoft/applications/events/EventPropertiesStorage;

    invoke-direct {v0}, Lcom/microsoft/applications/events/EventPropertiesStorage;-><init>()V

    iput-object v0, p0, Lcom/microsoft/applications/events/EventProperties;->mStorage:Lcom/microsoft/applications/events/EventPropertiesStorage;

    .line 25
    invoke-virtual {p0, p1}, Lcom/microsoft/applications/events/EventProperties;->setName(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 28
    invoke-virtual {p0, p2}, Lcom/microsoft/applications/events/EventProperties;->setLevel(Lcom/microsoft/applications/events/DiagnosticLevel;)V

    return-void

    .line 26
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "name is invalid"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/microsoft/applications/events/EventProperty;",
            ">;)V"
        }
    .end annotation

    .line 61
    invoke-direct {p0, p1}, Lcom/microsoft/applications/events/EventProperties;-><init>(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0, p2}, Lcom/microsoft/applications/events/EventProperties;->addProperties(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public addProperties(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/microsoft/applications/events/EventProperty;",
            ">;)V"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/microsoft/applications/events/EventProperties;->mStorage:Lcom/microsoft/applications/events/EventPropertiesStorage;

    invoke-virtual {v0, p1}, Lcom/microsoft/applications/events/EventPropertiesStorage;->addProperties(Ljava/util/Map;)V

    return-void
.end method

.method erase(Ljava/lang/String;)Z
    .locals 1

    .line 806
    sget-object v0, Lcom/microsoft/applications/events/DataCategory;->PartC:Lcom/microsoft/applications/events/DataCategory;

    invoke-virtual {p0, p1, v0}, Lcom/microsoft/applications/events/EventProperties;->erase(Ljava/lang/String;Lcom/microsoft/applications/events/DataCategory;)Z

    move-result p1

    return p1
.end method

.method erase(Ljava/lang/String;Lcom/microsoft/applications/events/DataCategory;)Z
    .locals 1

    if-eqz p1, :cond_3

    .line 817
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p2, :cond_2

    .line 822
    sget-object v0, Lcom/microsoft/applications/events/DataCategory;->PartC:Lcom/microsoft/applications/events/DataCategory;

    if-ne p2, v0, :cond_0

    iget-object p2, p0, Lcom/microsoft/applications/events/EventProperties;->mStorage:Lcom/microsoft/applications/events/EventPropertiesStorage;

    iget-object p2, p2, Lcom/microsoft/applications/events/EventPropertiesStorage;->properties:Ljava/util/Map;

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/microsoft/applications/events/EventProperties;->mStorage:Lcom/microsoft/applications/events/EventPropertiesStorage;

    iget-object p2, p2, Lcom/microsoft/applications/events/EventPropertiesStorage;->propertiesPartB:Ljava/util/Map;

    .line 823
    :goto_0
    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/microsoft/applications/events/EventProperty;

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1

    .line 820
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "category is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 818
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "key is null or empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getLatency()Lcom/microsoft/applications/events/EventLatency;
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/microsoft/applications/events/EventProperties;->mStorage:Lcom/microsoft/applications/events/EventPropertiesStorage;

    iget-object v0, v0, Lcom/microsoft/applications/events/EventPropertiesStorage;->eventLatency:Lcom/microsoft/applications/events/EventLatency;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/microsoft/applications/events/EventProperties;->mStorage:Lcom/microsoft/applications/events/EventPropertiesStorage;

    iget-object v0, v0, Lcom/microsoft/applications/events/EventPropertiesStorage;->eventName:Ljava/lang/String;

    return-object v0
.end method

.method public getPersistence()Lcom/microsoft/applications/events/EventPersistence;
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/microsoft/applications/events/EventProperties;->mStorage:Lcom/microsoft/applications/events/EventPropertiesStorage;

    iget-object v0, v0, Lcom/microsoft/applications/events/EventPropertiesStorage;->eventPersistence:Lcom/microsoft/applications/events/EventPersistence;

    return-object v0
.end method

.method public getPolicyBitFlags()J
    .locals 2

    .line 261
    iget-object v0, p0, Lcom/microsoft/applications/events/EventProperties;->mStorage:Lcom/microsoft/applications/events/EventPropertiesStorage;

    iget-wide v0, v0, Lcom/microsoft/applications/events/EventPropertiesStorage;->eventPolicyBitflags:J

    return-wide v0
.end method

.method public getPopSample()D
    .locals 2

    .line 242
    iget-object v0, p0, Lcom/microsoft/applications/events/EventProperties;->mStorage:Lcom/microsoft/applications/events/EventPropertiesStorage;

    iget-wide v0, v0, Lcom/microsoft/applications/events/EventPropertiesStorage;->eventPopSample:D

    return-wide v0
.end method

.method public getPriority()Lcom/microsoft/applications/events/EventPriority;
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/microsoft/applications/events/EventProperties;->mStorage:Lcom/microsoft/applications/events/EventPropertiesStorage;

    iget-object v0, v0, Lcom/microsoft/applications/events/EventPropertiesStorage;->eventLatency:Lcom/microsoft/applications/events/EventLatency;

    invoke-virtual {v0}, Lcom/microsoft/applications/events/EventLatency;->getValue()I

    move-result v0

    invoke-static {v0}, Lcom/microsoft/applications/events/EventPriority;->getEnum(I)Lcom/microsoft/applications/events/EventPriority;

    move-result-object v0

    return-object v0
.end method

.method public getProperties()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/microsoft/applications/events/EventProperty;",
            ">;"
        }
    .end annotation

    .line 783
    sget-object v0, Lcom/microsoft/applications/events/DataCategory;->PartC:Lcom/microsoft/applications/events/DataCategory;

    invoke-virtual {p0, v0}, Lcom/microsoft/applications/events/EventProperties;->getProperties(Lcom/microsoft/applications/events/DataCategory;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getProperties(Lcom/microsoft/applications/events/DataCategory;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/applications/events/DataCategory;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/microsoft/applications/events/EventProperty;",
            ">;"
        }
    .end annotation

    .line 793
    sget-object v0, Lcom/microsoft/applications/events/DataCategory;->PartC:Lcom/microsoft/applications/events/DataCategory;

    if-ne p1, v0, :cond_0

    .line 794
    iget-object p1, p0, Lcom/microsoft/applications/events/EventProperties;->mStorage:Lcom/microsoft/applications/events/EventPropertiesStorage;

    iget-object p1, p1, Lcom/microsoft/applications/events/EventPropertiesStorage;->properties:Ljava/util/Map;

    return-object p1

    .line 796
    :cond_0
    iget-object p1, p0, Lcom/microsoft/applications/events/EventProperties;->mStorage:Lcom/microsoft/applications/events/EventPropertiesStorage;

    iget-object p1, p1, Lcom/microsoft/applications/events/EventPropertiesStorage;->propertiesPartB:Ljava/util/Map;

    return-object p1
.end method

.method public getTimestamp()J
    .locals 2

    .line 154
    iget-object v0, p0, Lcom/microsoft/applications/events/EventProperties;->mStorage:Lcom/microsoft/applications/events/EventPropertiesStorage;

    iget-wide v0, v0, Lcom/microsoft/applications/events/EventPropertiesStorage;->timestampInMillis:J

    return-wide v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/microsoft/applications/events/EventProperties;->mStorage:Lcom/microsoft/applications/events/EventPropertiesStorage;

    iget-object v0, v0, Lcom/microsoft/applications/events/EventPropertiesStorage;->eventType:Ljava/lang/String;

    return-object v0
.end method

.method public setLatency(Lcom/microsoft/applications/events/EventLatency;)V
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/microsoft/applications/events/EventProperties;->mStorage:Lcom/microsoft/applications/events/EventPropertiesStorage;

    iput-object p1, v0, Lcom/microsoft/applications/events/EventPropertiesStorage;->eventLatency:Lcom/microsoft/applications/events/EventLatency;

    return-void
.end method

.method public setLevel(Lcom/microsoft/applications/events/DiagnosticLevel;)V
    .locals 1

    .line 271
    const-string v0, "EventInfo.Level"

    invoke-virtual {p1}, Lcom/microsoft/applications/events/DiagnosticLevel;->getValue()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/microsoft/applications/events/EventProperties;->setProperty(Ljava/lang/String;I)V

    return-void
.end method

.method public setName(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 92
    invoke-static {p1}, Lcom/microsoft/applications/events/Utils;->validateEventName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/microsoft/applications/events/EventProperties;->mStorage:Lcom/microsoft/applications/events/EventPropertiesStorage;

    iput-object p1, v0, Lcom/microsoft/applications/events/EventPropertiesStorage;->eventName:Ljava/lang/String;

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setPersistence(Lcom/microsoft/applications/events/EventPersistence;)V
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/microsoft/applications/events/EventProperties;->mStorage:Lcom/microsoft/applications/events/EventPropertiesStorage;

    iput-object p1, v0, Lcom/microsoft/applications/events/EventPropertiesStorage;->eventPersistence:Lcom/microsoft/applications/events/EventPersistence;

    return-void
.end method

.method public setPolicyBitFlags(J)V
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/microsoft/applications/events/EventProperties;->mStorage:Lcom/microsoft/applications/events/EventPropertiesStorage;

    iput-wide p1, v0, Lcom/microsoft/applications/events/EventPropertiesStorage;->eventPolicyBitflags:J

    return-void
.end method

.method public setPopSample(D)V
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/microsoft/applications/events/EventProperties;->mStorage:Lcom/microsoft/applications/events/EventPropertiesStorage;

    iput-wide p1, v0, Lcom/microsoft/applications/events/EventPropertiesStorage;->eventPopSample:D

    return-void
.end method

.method public setPriority(Lcom/microsoft/applications/events/EventPriority;)V
    .locals 2

    .line 164
    iget-object v0, p0, Lcom/microsoft/applications/events/EventProperties;->mStorage:Lcom/microsoft/applications/events/EventPropertiesStorage;

    invoke-virtual {p1}, Lcom/microsoft/applications/events/EventPriority;->getValue()I

    move-result v1

    invoke-static {v1}, Lcom/microsoft/applications/events/EventLatency;->getEnum(I)Lcom/microsoft/applications/events/EventLatency;

    move-result-object v1

    iput-object v1, v0, Lcom/microsoft/applications/events/EventPropertiesStorage;->eventLatency:Lcom/microsoft/applications/events/EventLatency;

    .line 165
    invoke-virtual {p1}, Lcom/microsoft/applications/events/EventPriority;->getValue()I

    move-result v0

    sget-object v1, Lcom/microsoft/applications/events/EventPriority;->High:Lcom/microsoft/applications/events/EventPriority;

    invoke-virtual {v1}, Lcom/microsoft/applications/events/EventPriority;->getValue()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 167
    iget-object p1, p0, Lcom/microsoft/applications/events/EventProperties;->mStorage:Lcom/microsoft/applications/events/EventPropertiesStorage;

    sget-object v0, Lcom/microsoft/applications/events/EventLatency;->RealTime:Lcom/microsoft/applications/events/EventLatency;

    iput-object v0, p1, Lcom/microsoft/applications/events/EventPropertiesStorage;->eventLatency:Lcom/microsoft/applications/events/EventLatency;

    .line 168
    iget-object p1, p0, Lcom/microsoft/applications/events/EventProperties;->mStorage:Lcom/microsoft/applications/events/EventPropertiesStorage;

    sget-object v0, Lcom/microsoft/applications/events/EventPersistence;->Critical:Lcom/microsoft/applications/events/EventPersistence;

    iput-object v0, p1, Lcom/microsoft/applications/events/EventPropertiesStorage;->eventPersistence:Lcom/microsoft/applications/events/EventPersistence;

    goto :goto_0

    .line 170
    :cond_0
    invoke-virtual {p1}, Lcom/microsoft/applications/events/EventPriority;->getValue()I

    move-result p1

    sget-object v0, Lcom/microsoft/applications/events/EventPriority;->Low:Lcom/microsoft/applications/events/EventPriority;

    invoke-virtual {v0}, Lcom/microsoft/applications/events/EventPriority;->getValue()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 172
    iget-object p1, p0, Lcom/microsoft/applications/events/EventProperties;->mStorage:Lcom/microsoft/applications/events/EventPropertiesStorage;

    sget-object v0, Lcom/microsoft/applications/events/EventLatency;->Normal:Lcom/microsoft/applications/events/EventLatency;

    iput-object v0, p1, Lcom/microsoft/applications/events/EventPropertiesStorage;->eventLatency:Lcom/microsoft/applications/events/EventLatency;

    .line 173
    iget-object p1, p0, Lcom/microsoft/applications/events/EventProperties;->mStorage:Lcom/microsoft/applications/events/EventPropertiesStorage;

    sget-object v0, Lcom/microsoft/applications/events/EventPersistence;->Normal:Lcom/microsoft/applications/events/EventPersistence;

    iput-object v0, p1, Lcom/microsoft/applications/events/EventPropertiesStorage;->eventPersistence:Lcom/microsoft/applications/events/EventPersistence;

    :cond_1
    :goto_0
    return-void
.end method

.method public setPrivacyMetadata(Lcom/microsoft/applications/events/PrivacyDiagnosticTag;Lcom/microsoft/applications/events/DiagnosticLevel;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 316
    invoke-static {p1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/microsoft/applications/events/EventProperties;->setPrivacyMetadata(Ljava/util/EnumSet;Lcom/microsoft/applications/events/DiagnosticLevel;)V

    return-void

    .line 314
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "tag is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setPrivacyMetadata(Ljava/util/EnumSet;Lcom/microsoft/applications/events/DiagnosticLevel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lcom/microsoft/applications/events/PrivacyDiagnosticTag;",
            ">;",
            "Lcom/microsoft/applications/events/DiagnosticLevel;",
            ")V"
        }
    .end annotation

    .line 326
    invoke-virtual {p0, p2}, Lcom/microsoft/applications/events/EventProperties;->setLevel(Lcom/microsoft/applications/events/DiagnosticLevel;)V

    .line 327
    invoke-virtual {p0, p1}, Lcom/microsoft/applications/events/EventProperties;->setPrivacyTags(Ljava/util/EnumSet;)V

    return-void
.end method

.method public setPrivacyTags(Lcom/microsoft/applications/events/PrivacyDiagnosticTag;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 283
    invoke-static {p1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/microsoft/applications/events/EventProperties;->setPrivacyTags(Ljava/util/EnumSet;)V

    return-void

    .line 281
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "tag is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setPrivacyTags(Ljava/util/EnumSet;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lcom/microsoft/applications/events/PrivacyDiagnosticTag;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 296
    invoke-virtual {p1}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-wide/16 v0, 0x0

    move-wide v2, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/microsoft/applications/events/PrivacyDiagnosticTag;

    .line 297
    invoke-virtual {v4}, Lcom/microsoft/applications/events/PrivacyDiagnosticTag;->getValue()J

    move-result-wide v4

    or-long/2addr v2, v4

    goto :goto_0

    :cond_0
    cmp-long p1, v2, v0

    if-eqz p1, :cond_1

    .line 303
    const-string p1, "EventInfo.PrivTags"

    invoke-virtual {p0, p1, v2, v3}, Lcom/microsoft/applications/events/EventProperties;->setProperty(Ljava/lang/String;J)V

    return-void

    .line 301
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "EnumSet of tags is empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 293
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "tags is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setProperties(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/microsoft/applications/events/EventProperty;",
            ">;)V"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/microsoft/applications/events/EventProperties;->mStorage:Lcom/microsoft/applications/events/EventPropertiesStorage;

    invoke-virtual {v0, p1}, Lcom/microsoft/applications/events/EventPropertiesStorage;->setProperties(Ljava/util/Map;)V

    return-void
.end method

.method public setProperty(Ljava/lang/String;D)V
    .locals 1

    .line 397
    sget-object v0, Lcom/microsoft/applications/events/PiiKind;->None:Lcom/microsoft/applications/events/PiiKind;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/microsoft/applications/events/EventProperties;->setProperty(Ljava/lang/String;DLcom/microsoft/applications/events/PiiKind;)V

    return-void
.end method

.method public setProperty(Ljava/lang/String;DLcom/microsoft/applications/events/PiiKind;)V
    .locals 6

    .line 410
    sget-object v5, Lcom/microsoft/applications/events/DataCategory;->PartC:Lcom/microsoft/applications/events/DataCategory;

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/microsoft/applications/events/EventProperties;->setProperty(Ljava/lang/String;DLcom/microsoft/applications/events/PiiKind;Lcom/microsoft/applications/events/DataCategory;)V

    return-void
.end method

.method setProperty(Ljava/lang/String;DLcom/microsoft/applications/events/PiiKind;Lcom/microsoft/applications/events/DataCategory;)V
    .locals 1

    .line 423
    new-instance v0, Lcom/microsoft/applications/events/EventProperty;

    invoke-direct {v0, p2, p3, p4, p5}, Lcom/microsoft/applications/events/EventProperty;-><init>(DLcom/microsoft/applications/events/PiiKind;Lcom/microsoft/applications/events/DataCategory;)V

    invoke-virtual {p0, p1, v0}, Lcom/microsoft/applications/events/EventProperties;->setProperty(Ljava/lang/String;Lcom/microsoft/applications/events/EventProperty;)V

    return-void
.end method

.method public setProperty(Ljava/lang/String;I)V
    .locals 1

    .line 436
    sget-object v0, Lcom/microsoft/applications/events/PiiKind;->None:Lcom/microsoft/applications/events/PiiKind;

    invoke-virtual {p0, p1, p2, v0}, Lcom/microsoft/applications/events/EventProperties;->setProperty(Ljava/lang/String;ILcom/microsoft/applications/events/PiiKind;)V

    return-void
.end method

.method public setProperty(Ljava/lang/String;ILcom/microsoft/applications/events/PiiKind;)V
    .locals 1

    .line 449
    sget-object v0, Lcom/microsoft/applications/events/DataCategory;->PartC:Lcom/microsoft/applications/events/DataCategory;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/microsoft/applications/events/EventProperties;->setProperty(Ljava/lang/String;ILcom/microsoft/applications/events/PiiKind;Lcom/microsoft/applications/events/DataCategory;)V

    return-void
.end method

.method setProperty(Ljava/lang/String;ILcom/microsoft/applications/events/PiiKind;Lcom/microsoft/applications/events/DataCategory;)V
    .locals 1

    .line 462
    new-instance v0, Lcom/microsoft/applications/events/EventProperty;

    invoke-direct {v0, p2, p3, p4}, Lcom/microsoft/applications/events/EventProperty;-><init>(ILcom/microsoft/applications/events/PiiKind;Lcom/microsoft/applications/events/DataCategory;)V

    invoke-virtual {p0, p1, v0}, Lcom/microsoft/applications/events/EventProperties;->setProperty(Ljava/lang/String;Lcom/microsoft/applications/events/EventProperty;)V

    return-void
.end method

.method public setProperty(Ljava/lang/String;J)V
    .locals 1

    .line 475
    sget-object v0, Lcom/microsoft/applications/events/PiiKind;->None:Lcom/microsoft/applications/events/PiiKind;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/microsoft/applications/events/EventProperties;->setProperty(Ljava/lang/String;JLcom/microsoft/applications/events/PiiKind;)V

    return-void
.end method

.method public setProperty(Ljava/lang/String;JLcom/microsoft/applications/events/PiiKind;)V
    .locals 6

    .line 488
    sget-object v5, Lcom/microsoft/applications/events/DataCategory;->PartC:Lcom/microsoft/applications/events/DataCategory;

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/microsoft/applications/events/EventProperties;->setProperty(Ljava/lang/String;JLcom/microsoft/applications/events/PiiKind;Lcom/microsoft/applications/events/DataCategory;)V

    return-void
.end method

.method setProperty(Ljava/lang/String;JLcom/microsoft/applications/events/PiiKind;Lcom/microsoft/applications/events/DataCategory;)V
    .locals 1

    .line 501
    new-instance v0, Lcom/microsoft/applications/events/EventProperty;

    invoke-direct {v0, p2, p3, p4, p5}, Lcom/microsoft/applications/events/EventProperty;-><init>(JLcom/microsoft/applications/events/PiiKind;Lcom/microsoft/applications/events/DataCategory;)V

    invoke-virtual {p0, p1, v0}, Lcom/microsoft/applications/events/EventProperties;->setProperty(Ljava/lang/String;Lcom/microsoft/applications/events/EventProperty;)V

    return-void
.end method

.method public setProperty(Ljava/lang/String;Lcom/microsoft/applications/events/EventProperty;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 338
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 340
    invoke-static {p1}, Lcom/microsoft/applications/events/Utils;->validatePropertyName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    .line 345
    iget-object v0, p0, Lcom/microsoft/applications/events/EventProperties;->mStorage:Lcom/microsoft/applications/events/EventPropertiesStorage;

    iget-object v0, v0, Lcom/microsoft/applications/events/EventPropertiesStorage;->properties:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 343
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "prop is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 341
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "name:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " is invalid."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 339
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "name is null or empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 358
    sget-object v0, Lcom/microsoft/applications/events/PiiKind;->None:Lcom/microsoft/applications/events/PiiKind;

    invoke-virtual {p0, p1, p2, v0}, Lcom/microsoft/applications/events/EventProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/applications/events/PiiKind;)V

    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/applications/events/PiiKind;)V
    .locals 1

    .line 371
    sget-object v0, Lcom/microsoft/applications/events/DataCategory;->PartC:Lcom/microsoft/applications/events/DataCategory;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/microsoft/applications/events/EventProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/applications/events/PiiKind;Lcom/microsoft/applications/events/DataCategory;)V

    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/applications/events/PiiKind;Lcom/microsoft/applications/events/DataCategory;)V
    .locals 1

    .line 384
    new-instance v0, Lcom/microsoft/applications/events/EventProperty;

    invoke-direct {v0, p2, p3, p4}, Lcom/microsoft/applications/events/EventProperty;-><init>(Ljava/lang/String;Lcom/microsoft/applications/events/PiiKind;Lcom/microsoft/applications/events/DataCategory;)V

    invoke-virtual {p0, p1, v0}, Lcom/microsoft/applications/events/EventProperties;->setProperty(Ljava/lang/String;Lcom/microsoft/applications/events/EventProperty;)V

    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/util/Date;)V
    .locals 1

    .line 553
    sget-object v0, Lcom/microsoft/applications/events/PiiKind;->None:Lcom/microsoft/applications/events/PiiKind;

    invoke-virtual {p0, p1, p2, v0}, Lcom/microsoft/applications/events/EventProperties;->setProperty(Ljava/lang/String;Ljava/util/Date;Lcom/microsoft/applications/events/PiiKind;)V

    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/util/Date;Lcom/microsoft/applications/events/PiiKind;)V
    .locals 1

    .line 566
    sget-object v0, Lcom/microsoft/applications/events/DataCategory;->PartC:Lcom/microsoft/applications/events/DataCategory;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/microsoft/applications/events/EventProperties;->setProperty(Ljava/lang/String;Ljava/util/Date;Lcom/microsoft/applications/events/PiiKind;Lcom/microsoft/applications/events/DataCategory;)V

    return-void
.end method

.method setProperty(Ljava/lang/String;Ljava/util/Date;Lcom/microsoft/applications/events/PiiKind;Lcom/microsoft/applications/events/DataCategory;)V
    .locals 1

    .line 579
    new-instance v0, Lcom/microsoft/applications/events/EventProperty;

    invoke-direct {v0, p2, p3, p4}, Lcom/microsoft/applications/events/EventProperty;-><init>(Ljava/util/Date;Lcom/microsoft/applications/events/PiiKind;Lcom/microsoft/applications/events/DataCategory;)V

    invoke-virtual {p0, p1, v0}, Lcom/microsoft/applications/events/EventProperties;->setProperty(Ljava/lang/String;Lcom/microsoft/applications/events/EventProperty;)V

    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/util/UUID;)V
    .locals 1

    .line 592
    sget-object v0, Lcom/microsoft/applications/events/PiiKind;->None:Lcom/microsoft/applications/events/PiiKind;

    invoke-virtual {p0, p1, p2, v0}, Lcom/microsoft/applications/events/EventProperties;->setProperty(Ljava/lang/String;Ljava/util/UUID;Lcom/microsoft/applications/events/PiiKind;)V

    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/util/UUID;Lcom/microsoft/applications/events/PiiKind;)V
    .locals 1

    .line 605
    sget-object v0, Lcom/microsoft/applications/events/DataCategory;->PartC:Lcom/microsoft/applications/events/DataCategory;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/microsoft/applications/events/EventProperties;->setProperty(Ljava/lang/String;Ljava/util/UUID;Lcom/microsoft/applications/events/PiiKind;Lcom/microsoft/applications/events/DataCategory;)V

    return-void
.end method

.method setProperty(Ljava/lang/String;Ljava/util/UUID;Lcom/microsoft/applications/events/PiiKind;Lcom/microsoft/applications/events/DataCategory;)V
    .locals 1

    .line 618
    new-instance v0, Lcom/microsoft/applications/events/EventProperty;

    invoke-direct {v0, p2, p3, p4}, Lcom/microsoft/applications/events/EventProperty;-><init>(Ljava/util/UUID;Lcom/microsoft/applications/events/PiiKind;Lcom/microsoft/applications/events/DataCategory;)V

    invoke-virtual {p0, p1, v0}, Lcom/microsoft/applications/events/EventProperties;->setProperty(Ljava/lang/String;Lcom/microsoft/applications/events/EventProperty;)V

    return-void
.end method

.method public setProperty(Ljava/lang/String;Z)V
    .locals 1

    .line 514
    sget-object v0, Lcom/microsoft/applications/events/PiiKind;->None:Lcom/microsoft/applications/events/PiiKind;

    invoke-virtual {p0, p1, p2, v0}, Lcom/microsoft/applications/events/EventProperties;->setProperty(Ljava/lang/String;ZLcom/microsoft/applications/events/PiiKind;)V

    return-void
.end method

.method public setProperty(Ljava/lang/String;ZLcom/microsoft/applications/events/PiiKind;)V
    .locals 1

    .line 527
    sget-object v0, Lcom/microsoft/applications/events/DataCategory;->PartC:Lcom/microsoft/applications/events/DataCategory;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/microsoft/applications/events/EventProperties;->setProperty(Ljava/lang/String;ZLcom/microsoft/applications/events/PiiKind;Lcom/microsoft/applications/events/DataCategory;)V

    return-void
.end method

.method setProperty(Ljava/lang/String;ZLcom/microsoft/applications/events/PiiKind;Lcom/microsoft/applications/events/DataCategory;)V
    .locals 1

    .line 540
    new-instance v0, Lcom/microsoft/applications/events/EventProperty;

    invoke-direct {v0, p2, p3, p4}, Lcom/microsoft/applications/events/EventProperty;-><init>(ZLcom/microsoft/applications/events/PiiKind;Lcom/microsoft/applications/events/DataCategory;)V

    invoke-virtual {p0, p1, v0}, Lcom/microsoft/applications/events/EventProperties;->setProperty(Ljava/lang/String;Lcom/microsoft/applications/events/EventProperty;)V

    return-void
.end method

.method public setProperty(Ljava/lang/String;[D)V
    .locals 1

    .line 709
    sget-object v0, Lcom/microsoft/applications/events/PiiKind;->None:Lcom/microsoft/applications/events/PiiKind;

    invoke-virtual {p0, p1, p2, v0}, Lcom/microsoft/applications/events/EventProperties;->setProperty(Ljava/lang/String;[DLcom/microsoft/applications/events/PiiKind;)V

    return-void
.end method

.method public setProperty(Ljava/lang/String;[DLcom/microsoft/applications/events/PiiKind;)V
    .locals 1

    .line 722
    sget-object v0, Lcom/microsoft/applications/events/DataCategory;->PartC:Lcom/microsoft/applications/events/DataCategory;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/microsoft/applications/events/EventProperties;->setProperty(Ljava/lang/String;[DLcom/microsoft/applications/events/PiiKind;Lcom/microsoft/applications/events/DataCategory;)V

    return-void
.end method

.method setProperty(Ljava/lang/String;[DLcom/microsoft/applications/events/PiiKind;Lcom/microsoft/applications/events/DataCategory;)V
    .locals 1

    .line 735
    new-instance v0, Lcom/microsoft/applications/events/EventProperty;

    invoke-direct {v0, p2, p3, p4}, Lcom/microsoft/applications/events/EventProperty;-><init>([DLcom/microsoft/applications/events/PiiKind;Lcom/microsoft/applications/events/DataCategory;)V

    invoke-virtual {p0, p1, v0}, Lcom/microsoft/applications/events/EventProperties;->setProperty(Ljava/lang/String;Lcom/microsoft/applications/events/EventProperty;)V

    return-void
.end method

.method public setProperty(Ljava/lang/String;[J)V
    .locals 1

    .line 748
    sget-object v0, Lcom/microsoft/applications/events/PiiKind;->None:Lcom/microsoft/applications/events/PiiKind;

    invoke-virtual {p0, p1, p2, v0}, Lcom/microsoft/applications/events/EventProperties;->setProperty(Ljava/lang/String;[JLcom/microsoft/applications/events/PiiKind;)V

    return-void
.end method

.method public setProperty(Ljava/lang/String;[JLcom/microsoft/applications/events/PiiKind;)V
    .locals 1

    .line 761
    sget-object v0, Lcom/microsoft/applications/events/DataCategory;->PartC:Lcom/microsoft/applications/events/DataCategory;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/microsoft/applications/events/EventProperties;->setProperty(Ljava/lang/String;[JLcom/microsoft/applications/events/PiiKind;Lcom/microsoft/applications/events/DataCategory;)V

    return-void
.end method

.method setProperty(Ljava/lang/String;[JLcom/microsoft/applications/events/PiiKind;Lcom/microsoft/applications/events/DataCategory;)V
    .locals 1

    .line 774
    new-instance v0, Lcom/microsoft/applications/events/EventProperty;

    invoke-direct {v0, p2, p3, p4}, Lcom/microsoft/applications/events/EventProperty;-><init>([JLcom/microsoft/applications/events/PiiKind;Lcom/microsoft/applications/events/DataCategory;)V

    invoke-virtual {p0, p1, v0}, Lcom/microsoft/applications/events/EventProperties;->setProperty(Ljava/lang/String;Lcom/microsoft/applications/events/EventProperty;)V

    return-void
.end method

.method public setProperty(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    .line 631
    sget-object v0, Lcom/microsoft/applications/events/PiiKind;->None:Lcom/microsoft/applications/events/PiiKind;

    invoke-virtual {p0, p1, p2, v0}, Lcom/microsoft/applications/events/EventProperties;->setProperty(Ljava/lang/String;[Ljava/lang/String;Lcom/microsoft/applications/events/PiiKind;)V

    return-void
.end method

.method public setProperty(Ljava/lang/String;[Ljava/lang/String;Lcom/microsoft/applications/events/PiiKind;)V
    .locals 1

    .line 644
    sget-object v0, Lcom/microsoft/applications/events/DataCategory;->PartC:Lcom/microsoft/applications/events/DataCategory;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/microsoft/applications/events/EventProperties;->setProperty(Ljava/lang/String;[Ljava/lang/String;Lcom/microsoft/applications/events/PiiKind;Lcom/microsoft/applications/events/DataCategory;)V

    return-void
.end method

.method setProperty(Ljava/lang/String;[Ljava/lang/String;Lcom/microsoft/applications/events/PiiKind;Lcom/microsoft/applications/events/DataCategory;)V
    .locals 1

    .line 657
    new-instance v0, Lcom/microsoft/applications/events/EventProperty;

    invoke-direct {v0, p2, p3, p4}, Lcom/microsoft/applications/events/EventProperty;-><init>([Ljava/lang/String;Lcom/microsoft/applications/events/PiiKind;Lcom/microsoft/applications/events/DataCategory;)V

    invoke-virtual {p0, p1, v0}, Lcom/microsoft/applications/events/EventProperties;->setProperty(Ljava/lang/String;Lcom/microsoft/applications/events/EventProperty;)V

    return-void
.end method

.method public setProperty(Ljava/lang/String;[Ljava/util/UUID;)V
    .locals 1

    .line 670
    sget-object v0, Lcom/microsoft/applications/events/PiiKind;->None:Lcom/microsoft/applications/events/PiiKind;

    invoke-virtual {p0, p1, p2, v0}, Lcom/microsoft/applications/events/EventProperties;->setProperty(Ljava/lang/String;[Ljava/util/UUID;Lcom/microsoft/applications/events/PiiKind;)V

    return-void
.end method

.method public setProperty(Ljava/lang/String;[Ljava/util/UUID;Lcom/microsoft/applications/events/PiiKind;)V
    .locals 1

    .line 683
    sget-object v0, Lcom/microsoft/applications/events/DataCategory;->PartC:Lcom/microsoft/applications/events/DataCategory;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/microsoft/applications/events/EventProperties;->setProperty(Ljava/lang/String;[Ljava/util/UUID;Lcom/microsoft/applications/events/PiiKind;Lcom/microsoft/applications/events/DataCategory;)V

    return-void
.end method

.method setProperty(Ljava/lang/String;[Ljava/util/UUID;Lcom/microsoft/applications/events/PiiKind;Lcom/microsoft/applications/events/DataCategory;)V
    .locals 1

    .line 696
    new-instance v0, Lcom/microsoft/applications/events/EventProperty;

    invoke-direct {v0, p2, p3, p4}, Lcom/microsoft/applications/events/EventProperty;-><init>([Ljava/util/UUID;Lcom/microsoft/applications/events/PiiKind;Lcom/microsoft/applications/events/DataCategory;)V

    invoke-virtual {p0, p1, v0}, Lcom/microsoft/applications/events/EventProperties;->setProperty(Ljava/lang/String;Lcom/microsoft/applications/events/EventProperty;)V

    return-void
.end method

.method public setTimestamp(J)V
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/microsoft/applications/events/EventProperties;->mStorage:Lcom/microsoft/applications/events/EventPropertiesStorage;

    iput-wide p1, v0, Lcom/microsoft/applications/events/EventPropertiesStorage;->timestampInMillis:J

    return-void
.end method

.method public setType(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 117
    invoke-static {p1}, Lcom/microsoft/applications/events/Utils;->validateEventName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/microsoft/applications/events/EventProperties;->mStorage:Lcom/microsoft/applications/events/EventPropertiesStorage;

    iput-object p1, v0, Lcom/microsoft/applications/events/EventPropertiesStorage;->eventType:Ljava/lang/String;

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
