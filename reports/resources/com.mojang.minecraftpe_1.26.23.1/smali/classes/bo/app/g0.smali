.class public final Lbo/app/g0;
.super Lbo/app/w5;
.source "SourceFile"


# static fields
.field private static final e:Ljava/lang/String;


# instance fields
.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lbo/app/g0;

    invoke-static {v0}, Lcom/braze/support/BrazeLogger;->getBrazeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbo/app/g0;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lbo/app/w5;-><init>(Lorg/json/JSONObject;)V

    .line 2
    const-string v0, "data"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "event_name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lbo/app/g0;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lbo/app/s2;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Lbo/app/f0;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Lbo/app/f0;

    .line 3
    invoke-virtual {v0}, Lbo/app/f0;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/braze/support/StringUtils;->isNullOrBlank(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lbo/app/f0;->f()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lbo/app/g0;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-super {p0, p1}, Lbo/app/w5;->a(Lbo/app/s2;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public e()Lorg/json/JSONObject;
    .locals 5

    const-string v0, "data"

    .line 1
    invoke-super {p0}, Lbo/app/w5;->e()Lorg/json/JSONObject;

    move-result-object v1

    .line 3
    :try_start_0
    const-string v2, "type"

    const-string v3, "custom_event_property"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 5
    const/4 v3, 0x0

    sget-object v3, Lcom/google/firebase/components/ry/rJEhvHEtgO;->wFomWqSISWuX:Ljava/lang/String;

    iget-object v4, p0, Lbo/app/g0;->d:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 8
    sget-object v2, Lbo/app/g0;->e:Ljava/lang/String;

    const-string v3, "Caught exception creating CustomEventWithPropertiesTriggerCondition Json."

    invoke-static {v2, v3, v0}, Lcom/braze/support/BrazeLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object v1
.end method

.method public bridge synthetic forJsonPut()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lbo/app/g0;->e()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method
