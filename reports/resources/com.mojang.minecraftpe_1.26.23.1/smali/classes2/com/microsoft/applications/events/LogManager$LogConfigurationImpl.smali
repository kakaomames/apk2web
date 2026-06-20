.class public Lcom/microsoft/applications/events/LogManager$LogConfigurationImpl;
.super Lcom/microsoft/applications/events/ILogConfiguration;
.source "LogManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/applications/events/LogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LogConfigurationImpl"
.end annotation


# instance fields
.field configMap:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Lcom/microsoft/applications/events/ILogConfiguration;-><init>()V

    .line 29
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/microsoft/applications/events/LogManager$LogConfigurationImpl;->configMap:Ljava/util/TreeMap;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .line 38
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 42
    :cond_0
    check-cast p1, Lcom/microsoft/applications/events/LogManager$LogConfigurationImpl;

    .line 43
    iget-object v0, p0, Lcom/microsoft/applications/events/LogManager$LogConfigurationImpl;->configMap:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    iget-object v2, p1, Lcom/microsoft/applications/events/LogManager$LogConfigurationImpl;->configMap:Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/TreeMap;->size()I

    move-result v2

    if-eq v0, v2, :cond_1

    return v1

    .line 47
    :cond_1
    iget-object v0, p0, Lcom/microsoft/applications/events/LogManager$LogConfigurationImpl;->configMap:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->navigableKeySet()Ljava/util/NavigableSet;

    move-result-object v0

    .line 48
    invoke-interface {v0}, Ljava/util/NavigableSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 49
    iget-object v3, p1, Lcom/microsoft/applications/events/LogManager$LogConfigurationImpl;->configMap:Ljava/util/TreeMap;

    invoke-virtual {v3, v2}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    return v1

    .line 52
    :cond_3
    iget-object v3, p1, Lcom/microsoft/applications/events/LogManager$LogConfigurationImpl;->configMap:Ljava/util/TreeMap;

    invoke-virtual {v3, v2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lcom/microsoft/applications/events/LogManager$LogConfigurationImpl;->configMap:Ljava/util/TreeMap;

    invoke-virtual {v4, v2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eq v3, v2, :cond_2

    return v1

    :cond_4
    const/4 p1, 0x1

    return p1
.end method

.method public getBoolean(Lcom/microsoft/applications/events/LogConfigurationKey;)Ljava/lang/Boolean;
    .locals 1

    .line 239
    invoke-virtual {p0, p1}, Lcom/microsoft/applications/events/LogManager$LogConfigurationImpl;->getObject(Lcom/microsoft/applications/events/LogConfigurationKey;)Ljava/lang/Object;

    move-result-object p1

    .line 240
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getConfigMap()Ljava/util/TreeMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/microsoft/applications/events/LogManager$LogConfigurationImpl;->configMap:Ljava/util/TreeMap;

    return-object v0
.end method

.method public getKeyArray()[Ljava/lang/String;
    .locals 4

    .line 347
    iget-object v0, p0, Lcom/microsoft/applications/events/LogManager$LogConfigurationImpl;->configMap:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->navigableKeySet()Ljava/util/NavigableSet;

    move-result-object v0

    .line 348
    invoke-interface {v0}, Ljava/util/NavigableSet;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 350
    invoke-interface {v0}, Ljava/util/NavigableSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 351
    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getLogConfiguration(Lcom/microsoft/applications/events/LogConfigurationKey;)Lcom/microsoft/applications/events/ILogConfiguration;
    .locals 1

    .line 254
    invoke-virtual {p0, p1}, Lcom/microsoft/applications/events/LogManager$LogConfigurationImpl;->getObject(Lcom/microsoft/applications/events/LogConfigurationKey;)Ljava/lang/Object;

    move-result-object p1

    .line 255
    const-class v0, Lcom/microsoft/applications/events/ILogConfiguration;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    const-class v0, Lcom/microsoft/applications/events/ILogConfiguration;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/microsoft/applications/events/ILogConfiguration;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getLong(Lcom/microsoft/applications/events/LogConfigurationKey;)Ljava/lang/Long;
    .locals 1

    .line 209
    invoke-virtual {p0, p1}, Lcom/microsoft/applications/events/LogManager$LogConfigurationImpl;->getObject(Lcom/microsoft/applications/events/LogConfigurationKey;)Ljava/lang/Object;

    move-result-object p1

    .line 210
    const-class v0, Ljava/lang/Long;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    const-class v0, Ljava/lang/Long;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getObject(Lcom/microsoft/applications/events/LogConfigurationKey;)Ljava/lang/Object;
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/microsoft/applications/events/LogManager$LogConfigurationImpl;->configMap:Ljava/util/TreeMap;

    invoke-virtual {p1}, Lcom/microsoft/applications/events/LogConfigurationKey;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/microsoft/applications/events/LogManager$LogConfigurationImpl;->configMap:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getString(Lcom/microsoft/applications/events/LogConfigurationKey;)Ljava/lang/String;
    .locals 1

    .line 224
    invoke-virtual {p0, p1}, Lcom/microsoft/applications/events/LogManager$LogConfigurationImpl;->getObject(Lcom/microsoft/applications/events/LogConfigurationKey;)Ljava/lang/Object;

    move-result-object p1

    .line 225
    const-class v0, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    const-class v0, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public hashCode()I
    .locals 4

    .line 159
    iget-object v0, p0, Lcom/microsoft/applications/events/LogManager$LogConfigurationImpl;->configMap:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->navigableKeySet()Ljava/util/NavigableSet;

    move-result-object v0

    .line 160
    invoke-interface {v0}, Ljava/util/NavigableSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 161
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v1, v3

    .line 162
    iget-object v3, p0, Lcom/microsoft/applications/events/LogManager$LogConfigurationImpl;->configMap:Ljava/util/TreeMap;

    invoke-virtual {v3, v2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 164
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v1, v2

    goto :goto_0

    :cond_1
    return v1
.end method

.method public native roundTrip()Lcom/microsoft/applications/events/ILogConfiguration;
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 334
    iget-object v0, p0, Lcom/microsoft/applications/events/LogManager$LogConfigurationImpl;->configMap:Ljava/util/TreeMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public set(Lcom/microsoft/applications/events/LogConfigurationKey;Lcom/microsoft/applications/events/ILogConfiguration;)Z
    .locals 2

    .line 318
    invoke-virtual {p1}, Lcom/microsoft/applications/events/LogConfigurationKey;->getValueType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/microsoft/applications/events/ILogConfiguration;

    if-ne v0, v1, :cond_0

    .line 319
    iget-object v0, p0, Lcom/microsoft/applications/events/LogManager$LogConfigurationImpl;->configMap:Ljava/util/TreeMap;

    invoke-virtual {p1}, Lcom/microsoft/applications/events/LogConfigurationKey;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public set(Lcom/microsoft/applications/events/LogConfigurationKey;Ljava/lang/Boolean;)Z
    .locals 2

    .line 270
    invoke-virtual {p1}, Lcom/microsoft/applications/events/LogConfigurationKey;->getValueType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Boolean;

    if-ne v0, v1, :cond_0

    .line 271
    iget-object v0, p0, Lcom/microsoft/applications/events/LogManager$LogConfigurationImpl;->configMap:Ljava/util/TreeMap;

    invoke-virtual {p1}, Lcom/microsoft/applications/events/LogConfigurationKey;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public set(Lcom/microsoft/applications/events/LogConfigurationKey;Ljava/lang/Long;)Z
    .locals 2

    .line 286
    invoke-virtual {p1}, Lcom/microsoft/applications/events/LogConfigurationKey;->getValueType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Long;

    if-ne v0, v1, :cond_0

    .line 287
    iget-object v0, p0, Lcom/microsoft/applications/events/LogManager$LogConfigurationImpl;->configMap:Ljava/util/TreeMap;

    invoke-virtual {p1}, Lcom/microsoft/applications/events/LogConfigurationKey;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public set(Lcom/microsoft/applications/events/LogConfigurationKey;Ljava/lang/String;)Z
    .locals 2

    .line 302
    invoke-virtual {p1}, Lcom/microsoft/applications/events/LogConfigurationKey;->getValueType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/String;

    if-ne v0, v1, :cond_0

    .line 303
    iget-object v0, p0, Lcom/microsoft/applications/events/LogManager$LogConfigurationImpl;->configMap:Ljava/util/TreeMap;

    invoke-virtual {p1}, Lcom/microsoft/applications/events/LogConfigurationKey;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/microsoft/applications/events/LogManager$LogConfigurationImpl;->configMap:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public valueContainsAll(Lcom/microsoft/applications/events/LogManager$LogConfigurationImpl;Ljava/lang/StringBuffer;)Z
    .locals 12

    .line 68
    iget-object v0, p1, Lcom/microsoft/applications/events/LogManager$LogConfigurationImpl;->configMap:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->navigableKeySet()Ljava/util/NavigableSet;

    move-result-object v0

    .line 69
    invoke-interface {v0}, Ljava/util/NavigableSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 70
    iget-object v2, p1, Lcom/microsoft/applications/events/LogManager$LogConfigurationImpl;->configMap:Ljava/util/TreeMap;

    invoke-virtual {v2, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 74
    :cond_1
    iget-object v3, p0, Lcom/microsoft/applications/events/LogManager$LogConfigurationImpl;->configMap:Ljava/util/TreeMap;

    invoke-virtual {v3, v1}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_2

    .line 75
    const-string p1, "Key %s missing from superset"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return v4

    .line 78
    :cond_2
    iget-object v3, p0, Lcom/microsoft/applications/events/LogManager$LogConfigurationImpl;->configMap:Ljava/util/TreeMap;

    invoke-virtual {v3, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_3

    .line 80
    const-string p1, "Value for key %s is null in superset"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return v4

    :cond_3
    if-ne v3, v2, :cond_4

    goto :goto_0

    .line 86
    :cond_4
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 90
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v1, p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    .line 88
    const-string v0, "Value for key %s is class %s in superset, %s in subset"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 87
    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return v4

    .line 93
    :cond_5
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-class v6, Lcom/microsoft/applications/events/LogManager$LogConfigurationImpl;

    invoke-virtual {v6, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    const-string v7, "Sub-map %s: %s"

    if-eqz v5, :cond_7

    .line 94
    check-cast v3, Lcom/microsoft/applications/events/LogManager$LogConfigurationImpl;

    .line 95
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 96
    check-cast v2, Lcom/microsoft/applications/events/LogManager$LogConfigurationImpl;

    invoke-virtual {v3, v2, v5}, Lcom/microsoft/applications/events/LogManager$LogConfigurationImpl;->valueContainsAll(Lcom/microsoft/applications/events/LogManager$LogConfigurationImpl;Ljava/lang/StringBuffer;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto/16 :goto_0

    .line 99
    :cond_6
    filled-new-array {v1, v5}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v7, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return v4

    .line 102
    :cond_7
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->isArray()Z

    move-result v5

    if-eqz v5, :cond_10

    .line 103
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->isArray()Z

    move-result v5

    if-nez v5, :cond_8

    .line 104
    const-string p1, "Super array %s: %s, sub %s"

    filled-new-array {v1, v3, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return v4

    .line 107
    :cond_8
    check-cast v3, [Ljava/lang/Object;

    .line 108
    check-cast v2, [Ljava/lang/Object;

    .line 109
    array-length v5, v3

    array-length v8, v2

    if-eq v5, v8, :cond_9

    .line 110
    array-length p1, v3

    .line 111
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    array-length v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v1, p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "Super array length %s: %d, sub %d"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 110
    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return v4

    :cond_9
    move v5, v4

    .line 114
    :goto_1
    array-length v8, v3

    if-ge v5, v8, :cond_0

    .line 115
    aget-object v8, v3, v5

    .line 116
    aget-object v9, v2, v5

    if-nez v9, :cond_a

    goto/16 :goto_2

    :cond_a
    if-nez v8, :cond_b

    .line 121
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {v1, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "Super %s[%d] is null"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return v4

    .line 124
    :cond_b
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v10

    if-nez v10, :cond_c

    .line 128
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, p1, v0, v2}, [Ljava/lang/Object;

    move-result-object p1

    .line 126
    const-string v0, "Value for key %s[%d] is class %s in superset, %s in subset"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 125
    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return v4

    .line 131
    :cond_c
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 132
    check-cast v8, Lcom/microsoft/applications/events/LogManager$LogConfigurationImpl;

    .line 133
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    .line 134
    check-cast v9, Lcom/microsoft/applications/events/LogManager$LogConfigurationImpl;

    invoke-virtual {v8, v9, v10}, Lcom/microsoft/applications/events/LogManager$LogConfigurationImpl;->valueContainsAll(Lcom/microsoft/applications/events/LogManager$LogConfigurationImpl;Ljava/lang/StringBuffer;)Z

    move-result v8

    if-eqz v8, :cond_d

    goto :goto_2

    .line 137
    :cond_d
    filled-new-array {v1, v10}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v7, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return v4

    .line 140
    :cond_e
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_f

    .line 141
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {v1, p1, v8, v9}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "not equal %s[%d]: %s != %s"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return v4

    :cond_f
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 147
    :cond_10
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 148
    const-string p1, "key %s, superset value %s, subset %s"

    filled-new-array {v1, v3, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 149
    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return v4

    :cond_11
    const/4 p1, 0x1

    return p1
.end method
