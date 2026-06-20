.class public final Lcom/braze/models/outgoing/BrazeLocation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/braze/models/IBrazeLocation;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0006\n\u0002\u0008\u0016\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u000f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004B\u000f\u0008\u0016\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007B/\u0008\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\t\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\t\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0002\u0010\rJ\t\u0010\u0019\u001a\u00020\tH\u00c2\u0003J\t\u0010\u001a\u001a\u00020\tH\u00c2\u0003J\u0010\u0010\u001b\u001a\u0004\u0018\u00010\tH\u00c2\u0003\u00a2\u0006\u0002\u0010\u0011J\u0010\u0010\u001c\u001a\u0004\u0018\u00010\tH\u00c2\u0003\u00a2\u0006\u0002\u0010\u0011J:\u0010\u001d\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\t2\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\tH\u00c6\u0001\u00a2\u0006\u0002\u0010\u001eJ\u0013\u0010\u001f\u001a\u00020 2\u0008\u0010!\u001a\u0004\u0018\u00010\"H\u00d6\u0003J\u0008\u0010#\u001a\u00020\u0006H\u0016J\t\u0010$\u001a\u00020%H\u00d6\u0001J\t\u0010&\u001a\u00020\'H\u00d6\u0001R\u0012\u0010\u000c\u001a\u0004\u0018\u00010\tX\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u000eR\u0012\u0010\u000b\u001a\u0004\u0018\u00010\tX\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u000eR\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000f\u001a\u0004\u0018\u00010\t8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u0011R\u0016\u0010\u0012\u001a\u0004\u0018\u00010\t8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0011R\u0014\u0010\u0014\u001a\u00020\t8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u0016R\u0014\u0010\u0017\u001a\u00020\t8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0018\u0010\u0016\u00a8\u0006("
    }
    d2 = {
        "Lcom/braze/models/outgoing/BrazeLocation;",
        "Lcom/braze/models/IBrazeLocation;",
        "location",
        "Landroid/location/Location;",
        "(Landroid/location/Location;)V",
        "jsonObject",
        "Lorg/json/JSONObject;",
        "(Lorg/json/JSONObject;)V",
        "_latitude",
        "",
        "_longitude",
        "_altitude",
        "_accuracy",
        "(DDLjava/lang/Double;Ljava/lang/Double;)V",
        "Ljava/lang/Double;",
        "accuracy",
        "getAccuracy",
        "()Ljava/lang/Double;",
        "altitude",
        "getAltitude",
        "latitude",
        "getLatitude",
        "()D",
        "longitude",
        "getLongitude",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "(DDLjava/lang/Double;Ljava/lang/Double;)Lcom/braze/models/outgoing/BrazeLocation;",
        "equals",
        "",
        "other",
        "",
        "forJsonPut",
        "hashCode",
        "",
        "toString",
        "",
        "android-sdk-base_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final _accuracy:Ljava/lang/Double;

.field private final _altitude:Ljava/lang/Double;

.field private final _latitude:D

.field private final _longitude:D


# direct methods
.method public constructor <init>(DD)V
    .locals 9

    const/16 v7, 0xc

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v8}, Lcom/braze/models/outgoing/BrazeLocation;-><init>(DDLjava/lang/Double;Ljava/lang/Double;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(DDLjava/lang/Double;)V
    .locals 9

    const/16 v7, 0x8

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v8}, Lcom/braze/models/outgoing/BrazeLocation;-><init>(DDLjava/lang/Double;Ljava/lang/Double;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(DDLjava/lang/Double;Ljava/lang/Double;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-wide p1, p0, Lcom/braze/models/outgoing/BrazeLocation;->_latitude:D

    .line 4
    iput-wide p3, p0, Lcom/braze/models/outgoing/BrazeLocation;->_longitude:D

    .line 5
    iput-object p5, p0, Lcom/braze/models/outgoing/BrazeLocation;->_altitude:Ljava/lang/Double;

    .line 6
    iput-object p6, p0, Lcom/braze/models/outgoing/BrazeLocation;->_accuracy:Ljava/lang/Double;

    .line 23
    invoke-virtual {p0}, Lcom/braze/models/outgoing/BrazeLocation;->getLatitude()D

    move-result-wide p1

    invoke-virtual {p0}, Lcom/braze/models/outgoing/BrazeLocation;->getLongitude()D

    move-result-wide p3

    invoke-static {p1, p2, p3, p4}, Lcom/braze/support/ValidationUtils;->isValidLocation(DD)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unable to create BrazeLocation. Latitude and longitude values are bounded by \u00b190 and \u00b1180 respectively"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(DDLjava/lang/Double;Ljava/lang/Double;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 9

    and-int/lit8 v0, p7, 0x4

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v7, v1

    goto :goto_0

    :cond_0
    move-object v7, p5

    :goto_0
    and-int/lit8 v0, p7, 0x8

    if-eqz v0, :cond_1

    move-object v8, v1

    goto :goto_1

    :cond_1
    move-object v8, p6

    :goto_1
    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    .line 24
    invoke-direct/range {v2 .. v8}, Lcom/braze/models/outgoing/BrazeLocation;-><init>(DDLjava/lang/Double;Ljava/lang/Double;)V

    return-void
.end method

.method public constructor <init>(Landroid/location/Location;)V
    .locals 8

    const-string v0, "location"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result p1

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    move-object v1, p0

    .line 26
    invoke-direct/range {v1 .. v7}, Lcom/braze/models/outgoing/BrazeLocation;-><init>(DDLjava/lang/Double;Ljava/lang/Double;)V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 8

    const-string v0, "jsonObject"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    const-string v0, "latitude"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 28
    const-string v0, "longitude"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 29
    const-string v0, "altitude"

    invoke-static {p1, v0}, Lcom/braze/support/JsonUtils;->getDoubleOrNull(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v6

    .line 30
    const-string v0, "ll_accuracy"

    invoke-static {p1, v0}, Lcom/braze/support/JsonUtils;->getDoubleOrNull(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v7

    move-object v1, p0

    .line 31
    invoke-direct/range {v1 .. v7}, Lcom/braze/models/outgoing/BrazeLocation;-><init>(DDLjava/lang/Double;Ljava/lang/Double;)V

    return-void
.end method

.method private final component1()D
    .locals 2

    iget-wide v0, p0, Lcom/braze/models/outgoing/BrazeLocation;->_latitude:D

    return-wide v0
.end method

.method private final component2()D
    .locals 2

    iget-wide v0, p0, Lcom/braze/models/outgoing/BrazeLocation;->_longitude:D

    return-wide v0
.end method

.method private final component3()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lcom/braze/models/outgoing/BrazeLocation;->_altitude:Ljava/lang/Double;

    return-object v0
.end method

.method private final component4()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lcom/braze/models/outgoing/BrazeLocation;->_accuracy:Ljava/lang/Double;

    return-object v0
.end method

.method public static synthetic copy$default(Lcom/braze/models/outgoing/BrazeLocation;DDLjava/lang/Double;Ljava/lang/Double;ILjava/lang/Object;)Lcom/braze/models/outgoing/BrazeLocation;
    .locals 7

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    iget-wide p1, p0, Lcom/braze/models/outgoing/BrazeLocation;->_latitude:D

    :cond_0
    move-wide v1, p1

    and-int/lit8 p1, p7, 0x2

    if-eqz p1, :cond_1

    iget-wide p3, p0, Lcom/braze/models/outgoing/BrazeLocation;->_longitude:D

    :cond_1
    move-wide v3, p3

    and-int/lit8 p1, p7, 0x4

    if-eqz p1, :cond_2

    iget-object p5, p0, Lcom/braze/models/outgoing/BrazeLocation;->_altitude:Ljava/lang/Double;

    :cond_2
    move-object v5, p5

    and-int/lit8 p1, p7, 0x8

    if-eqz p1, :cond_3

    iget-object p6, p0, Lcom/braze/models/outgoing/BrazeLocation;->_accuracy:Ljava/lang/Double;

    :cond_3
    move-object v6, p6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/braze/models/outgoing/BrazeLocation;->copy(DDLjava/lang/Double;Ljava/lang/Double;)Lcom/braze/models/outgoing/BrazeLocation;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(DDLjava/lang/Double;Ljava/lang/Double;)Lcom/braze/models/outgoing/BrazeLocation;
    .locals 8

    new-instance v7, Lcom/braze/models/outgoing/BrazeLocation;

    move-object v0, v7

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/braze/models/outgoing/BrazeLocation;-><init>(DDLjava/lang/Double;Ljava/lang/Double;)V

    return-object v7
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/braze/models/outgoing/BrazeLocation;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/braze/models/outgoing/BrazeLocation;

    iget-wide v3, p0, Lcom/braze/models/outgoing/BrazeLocation;->_latitude:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iget-wide v3, p1, Lcom/braze/models/outgoing/BrazeLocation;->_latitude:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/braze/models/outgoing/BrazeLocation;->_longitude:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iget-wide v3, p1, Lcom/braze/models/outgoing/BrazeLocation;->_longitude:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/braze/models/outgoing/BrazeLocation;->_altitude:Ljava/lang/Double;

    iget-object v3, p1, Lcom/braze/models/outgoing/BrazeLocation;->_altitude:Ljava/lang/Double;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/braze/models/outgoing/BrazeLocation;->_accuracy:Ljava/lang/Double;

    iget-object p1, p1, Lcom/braze/models/outgoing/BrazeLocation;->_accuracy:Ljava/lang/Double;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public bridge synthetic forJsonPut()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/braze/models/outgoing/BrazeLocation;->forJsonPut()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public forJsonPut()Lorg/json/JSONObject;
    .locals 5

    .line 2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    :try_start_0
    const-string v1, "latitude"

    invoke-virtual {p0}, Lcom/braze/models/outgoing/BrazeLocation;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 5
    const-string v1, "longitude"

    invoke-virtual {p0}, Lcom/braze/models/outgoing/BrazeLocation;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 6
    invoke-virtual {p0}, Lcom/braze/models/outgoing/BrazeLocation;->getAltitude()Ljava/lang/Double;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 7
    const-string v1, "altitude"

    invoke-virtual {p0}, Lcom/braze/models/outgoing/BrazeLocation;->getAltitude()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/braze/models/outgoing/BrazeLocation;->getAccuracy()Ljava/lang/Double;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 10
    const-string v1, "ll_accuracy"

    invoke-virtual {p0}, Lcom/braze/models/outgoing/BrazeLocation;->getAccuracy()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 13
    sget-object v2, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v3, Lcom/braze/support/BrazeLogger$Priority;->E:Lcom/braze/support/BrazeLogger$Priority;

    sget-object v4, Lcom/braze/models/outgoing/BrazeLocation$a;->b:Lcom/braze/models/outgoing/BrazeLocation$a;

    invoke-virtual {v2, p0, v3, v1, v4}, Lcom/braze/support/BrazeLogger;->brazelog(Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V

    :cond_1
    :goto_0
    return-object v0
.end method

.method public getAccuracy()Ljava/lang/Double;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/braze/models/outgoing/BrazeLocation;->_accuracy:Ljava/lang/Double;

    return-object v0
.end method

.method public getAltitude()Ljava/lang/Double;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/braze/models/outgoing/BrazeLocation;->_altitude:Ljava/lang/Double;

    return-object v0
.end method

.method public getLatitude()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/braze/models/outgoing/BrazeLocation;->_latitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/braze/models/outgoing/BrazeLocation;->_longitude:D

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    iget-wide v0, p0, Lcom/braze/models/outgoing/BrazeLocation;->_latitude:D

    invoke-static {v0, v1}, Ljava/lang/Double;->hashCode(D)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/braze/models/outgoing/BrazeLocation;->_longitude:D

    invoke-static {v1, v2}, Ljava/lang/Double;->hashCode(D)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/braze/models/outgoing/BrazeLocation;->_altitude:Ljava/lang/Double;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/braze/models/outgoing/BrazeLocation;->_accuracy:Ljava/lang/Double;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BrazeLocation(_latitude="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/braze/models/outgoing/BrazeLocation;->_latitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", _longitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/braze/models/outgoing/BrazeLocation;->_longitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", _altitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/braze/models/outgoing/BrazeLocation;->_altitude:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", _accuracy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/braze/models/outgoing/BrazeLocation;->_accuracy:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
