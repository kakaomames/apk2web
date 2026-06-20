.class public Lbo/app/c5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/braze/models/IPutIntoJson;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbo/app/c5$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/braze/models/IPutIntoJson<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0006\n\u0002\u0008\u000b\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u000b\u0008\u0016\u0018\u00002\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001:\u0001\u0018B3\u0008\u0016\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010$\u001a\u00020\u000e\u0012\n\u0008\u0002\u0010%\u001a\u0004\u0018\u00010\u000e\u0012\u0008\u0008\u0002\u0010&\u001a\u00020\u001a\u00a2\u0006\u0004\u0008\'\u0010(B\u0011\u0008\u0016\u0012\u0006\u0010)\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\'\u0010*J\u0008\u0010\u0003\u001a\u00020\u0002H\u0016J\u000f\u0010\u0005\u001a\u00020\u0004H\u0000\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0008\u0010\u0008\u001a\u00020\u0007H\u0016R\u0017\u0010\n\u001a\u00020\t8\u0006\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u000c\u0010\rR\u0017\u0010\u000f\u001a\u00020\u000e8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012R.\u0010\u0014\u001a\u0004\u0018\u00010\u000e2\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u000e8\u0016@TX\u0096\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0014\u0010\u0015\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R*\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u0013\u001a\u00020\u001a8\u0006@DX\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001b\u0010\u001c\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u0018\u0010\u001fR\u0011\u0010#\u001a\u00020 8F\u00a2\u0006\u0006\u001a\u0004\u0008!\u0010\"\u00a8\u0006+"
    }
    d2 = {
        "Lbo/app/c5;",
        "Lcom/braze/models/IPutIntoJson;",
        "Lorg/json/JSONObject;",
        "e",
        "Lbo/app/m3;",
        "z",
        "()Lbo/app/m3;",
        "",
        "toString",
        "Lbo/app/e5;",
        "sessionId",
        "Lbo/app/e5;",
        "n",
        "()Lbo/app/e5;",
        "",
        "startTime",
        "D",
        "x",
        "()D",
        "<set-?>",
        "endTime",
        "Ljava/lang/Double;",
        "w",
        "()Ljava/lang/Double;",
        "a",
        "(Ljava/lang/Double;)V",
        "",
        "isSealed",
        "Z",
        "y",
        "()Z",
        "(Z)V",
        "",
        "v",
        "()J",
        "duration",
        "startTimeSeconds",
        "endTimeSeconds",
        "sealed",
        "<init>",
        "(Lbo/app/e5;DLjava/lang/Double;Z)V",
        "sessionData",
        "(Lorg/json/JSONObject;)V",
        "android-sdk-base_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# static fields
.field public static final f:Lbo/app/c5$a;


# instance fields
.field private final b:Lbo/app/e5;

.field private final c:D

.field private volatile d:Ljava/lang/Double;

.field private volatile e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lbo/app/c5$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbo/app/c5$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lbo/app/c5;->f:Lbo/app/c5$a;

    return-void
.end method

.method public constructor <init>(Lbo/app/e5;DLjava/lang/Double;Z)V
    .locals 1

    const-string v0, "sessionId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lbo/app/c5;->b:Lbo/app/e5;

    .line 3
    iput-wide p2, p0, Lbo/app/c5;->c:D

    .line 4
    invoke-virtual {p0, p4}, Lbo/app/c5;->a(Ljava/lang/Double;)V

    .line 5
    iput-boolean p5, p0, Lbo/app/c5;->e:Z

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 3

    const-string v0, "sessionData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    sget-object v0, Lbo/app/e5;->d:Lbo/app/e5$a;

    const-string v1, "session_id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "sessionData.getString(SESSION_ID_KEY)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lbo/app/e5$a;->a(Ljava/lang/String;)Lbo/app/e5;

    move-result-object v0

    iput-object v0, p0, Lbo/app/c5;->b:Lbo/app/e5;

    .line 8
    const-string v0, "start_time"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lbo/app/c5;->c:D

    .line 9
    const-string v0, "is_sealed"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lbo/app/c5;->e:Z

    .line 10
    const/4 v0, 0x0

    sget-object v0, Lcom/microsoft/xbox/telemetry/utc/nz/ILDSXGB;->FJMFtTTurtky:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/braze/support/JsonUtils;->getDoubleOrNull(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p0, p1}, Lbo/app/c5;->a(Ljava/lang/Double;)V

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/Double;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lbo/app/c5;->d:Ljava/lang/Double;

    return-void
.end method

.method protected final a(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lbo/app/c5;->e:Z

    return-void
.end method

.method public e()Lorg/json/JSONObject;
    .locals 5

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 3
    :try_start_0
    const-string v1, "session_id"

    iget-object v2, p0, Lbo/app/c5;->b:Lbo/app/e5;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4
    const-string v1, "start_time"

    iget-wide v2, p0, Lbo/app/c5;->c:D

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 5
    const-string v1, "is_sealed"

    iget-boolean v2, p0, Lbo/app/c5;->e:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 6
    invoke-virtual {p0}, Lbo/app/c5;->w()Ljava/lang/Double;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 7
    const-string v1, "end_time"

    invoke-virtual {p0}, Lbo/app/c5;->w()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 10
    sget-object v2, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v3, Lcom/braze/support/BrazeLogger$Priority;->E:Lcom/braze/support/BrazeLogger$Priority;

    sget-object v4, Lbo/app/c5$c;->b:Lbo/app/c5$c;

    invoke-virtual {v2, p0, v3, v1, v4}, Lcom/braze/support/BrazeLogger;->brazelog(Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V

    :cond_0
    :goto_0
    return-object v0
.end method

.method public bridge synthetic forJsonPut()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lbo/app/c5;->e()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public final n()Lbo/app/e5;
    .locals 1

    .line 1
    iget-object v0, p0, Lbo/app/c5;->b:Lbo/app/e5;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\nSession(sessionId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lbo/app/c5;->b:Lbo/app/e5;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", startTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lbo/app/c5;->c:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", endTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lbo/app/c5;->w()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isSealed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lbo/app/c5;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lbo/app/c5;->v()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final v()J
    .locals 12

    .line 1
    invoke-virtual {p0}, Lbo/app/c5;->w()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 2
    iget-wide v2, p0, Lbo/app/c5;->c:D

    sub-double v2, v0, v2

    double-to-long v2, v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gez v4, :cond_0

    .line 5
    sget-object v5, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v7, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v9, Lbo/app/c5$b;

    invoke-direct {v9, v0, v1, p0}, Lbo/app/c5$b;-><init>(DLbo/app/c5;)V

    const/4 v10, 0x2

    const/4 v11, 0x0

    const/4 v8, 0x0

    move-object v6, p0

    invoke-static/range {v5 .. v11}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    :cond_0
    return-wide v2

    :cond_1
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public w()Ljava/lang/Double;
    .locals 1

    .line 1
    iget-object v0, p0, Lbo/app/c5;->d:Ljava/lang/Double;

    return-object v0
.end method

.method public final x()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lbo/app/c5;->c:D

    return-wide v0
.end method

.method public final y()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lbo/app/c5;->e:Z

    return v0
.end method

.method public final z()Lbo/app/m3;
    .locals 7

    .line 1
    new-instance v6, Lbo/app/m3;

    iget-object v1, p0, Lbo/app/c5;->b:Lbo/app/e5;

    iget-wide v2, p0, Lbo/app/c5;->c:D

    invoke-virtual {p0}, Lbo/app/c5;->w()Ljava/lang/Double;

    move-result-object v4

    iget-boolean v5, p0, Lbo/app/c5;->e:Z

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lbo/app/m3;-><init>(Lbo/app/e5;DLjava/lang/Double;Z)V

    return-object v6
.end method
