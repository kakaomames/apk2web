.class Lorg/simpleframework/xml/core/MapFactory;
.super Lorg/simpleframework/xml/core/Factory;
.source "MapFactory.java"


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/strategy/Type;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/core/Factory;-><init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/strategy/Type;)V

    return-void
.end method

.method private isMap(Ljava/lang/Class;)Z
    .locals 1

    .line 153
    const-class v0, Ljava/util/Map;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public getConversion(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 134
    const-class v0, Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    const-class p1, Ljava/util/HashMap;

    return-object p1

    .line 137
    :cond_0
    const-class v0, Ljava/util/TreeMap;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 138
    const-class p1, Ljava/util/TreeMap;

    return-object p1

    .line 140
    :cond_1
    new-instance v0, Lorg/simpleframework/xml/core/InstantiationException;

    iget-object v1, p0, Lorg/simpleframework/xml/core/MapFactory;->type:Lorg/simpleframework/xml/strategy/Type;

    filled-new-array {p1, v1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "Cannot instantiate %s for %s"

    invoke-direct {v0, v1, p1}, Lorg/simpleframework/xml/core/InstantiationException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method public getInstance()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 62
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/MapFactory;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 65
    invoke-static {v0}, Lorg/simpleframework/xml/core/MapFactory;->isInstantiable(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 66
    invoke-virtual {p0, v0}, Lorg/simpleframework/xml/core/MapFactory;->getConversion(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 68
    :goto_0
    invoke-direct {p0, v1}, Lorg/simpleframework/xml/core/MapFactory;->isMap(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 71
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 69
    :cond_1
    new-instance v1, Lorg/simpleframework/xml/core/InstantiationException;

    iget-object v2, p0, Lorg/simpleframework/xml/core/MapFactory;->type:Lorg/simpleframework/xml/strategy/Type;

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "Invalid map %s for %s"

    invoke-direct {v1, v2, v0}, Lorg/simpleframework/xml/core/InstantiationException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1
.end method

.method public getInstance(Lorg/simpleframework/xml/strategy/Value;)Lorg/simpleframework/xml/core/Instance;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 111
    invoke-interface {p1}, Lorg/simpleframework/xml/strategy/Value;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 113
    invoke-static {v0}, Lorg/simpleframework/xml/core/MapFactory;->isInstantiable(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 114
    invoke-virtual {p0, v0}, Lorg/simpleframework/xml/core/MapFactory;->getConversion(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 116
    :cond_0
    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/MapFactory;->isMap(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 119
    new-instance v1, Lorg/simpleframework/xml/core/ConversionInstance;

    iget-object v2, p0, Lorg/simpleframework/xml/core/MapFactory;->context:Lorg/simpleframework/xml/core/Context;

    invoke-direct {v1, v2, p1, v0}, Lorg/simpleframework/xml/core/ConversionInstance;-><init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/strategy/Value;Ljava/lang/Class;)V

    return-object v1

    .line 117
    :cond_1
    new-instance p1, Lorg/simpleframework/xml/core/InstantiationException;

    iget-object v1, p0, Lorg/simpleframework/xml/core/MapFactory;->type:Lorg/simpleframework/xml/strategy/Type;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Invalid map %s for %s"

    invoke-direct {p1, v1, v0}, Lorg/simpleframework/xml/core/InstantiationException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1
.end method

.method public getInstance(Lorg/simpleframework/xml/stream/InputNode;)Lorg/simpleframework/xml/core/Instance;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 85
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/core/MapFactory;->getOverride(Lorg/simpleframework/xml/stream/InputNode;)Lorg/simpleframework/xml/strategy/Value;

    move-result-object p1

    .line 86
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/MapFactory;->getType()Ljava/lang/Class;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 89
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/core/MapFactory;->getInstance(Lorg/simpleframework/xml/strategy/Value;)Lorg/simpleframework/xml/core/Instance;

    move-result-object p1

    return-object p1

    .line 91
    :cond_0
    invoke-static {v0}, Lorg/simpleframework/xml/core/MapFactory;->isInstantiable(Ljava/lang/Class;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 92
    invoke-virtual {p0, v0}, Lorg/simpleframework/xml/core/MapFactory;->getConversion(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 94
    :cond_1
    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/MapFactory;->isMap(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 97
    iget-object p1, p0, Lorg/simpleframework/xml/core/MapFactory;->context:Lorg/simpleframework/xml/core/Context;

    invoke-interface {p1, v0}, Lorg/simpleframework/xml/core/Context;->getInstance(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Instance;

    move-result-object p1

    return-object p1

    .line 95
    :cond_2
    new-instance p1, Lorg/simpleframework/xml/core/InstantiationException;

    iget-object v1, p0, Lorg/simpleframework/xml/core/MapFactory;->type:Lorg/simpleframework/xml/strategy/Type;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Invalid map %s for %s"

    invoke-direct {p1, v1, v0}, Lorg/simpleframework/xml/core/InstantiationException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1
.end method
