.class public final Lbo/app/k0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/braze/models/IPutIntoJson;
.implements Lbo/app/f2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbo/app/k0$a;,
        Lbo/app/k0$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/braze/models/IPutIntoJson<",
        "Lorg/json/JSONObject;",
        ">;",
        "Lbo/app/f2;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000e\u0018\u00002\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u00012\u00020\u0003:\u0002\r\u001eBs\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0011\u0012\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0011\u0012\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0011\u0012\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0011\u0012\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0011\u0012\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0011\u0012\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0011\u0012\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u0008\u0010\u0004\u001a\u00020\u0002H\u0016J\u0006\u0010\u0006\u001a\u00020\u0005R\u0014\u0010\t\u001a\u00020\u00058VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008R\"\u0010\n\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u000c\u0010\u0008\"\u0004\u0008\r\u0010\u000e\u00a8\u0006\u001f"
    }
    d2 = {
        "Lbo/app/k0;",
        "Lcom/braze/models/IPutIntoJson;",
        "Lorg/json/JSONObject;",
        "Lbo/app/f2;",
        "w",
        "",
        "v",
        "e",
        "()Z",
        "isEmpty",
        "didRemoteNotificationEnabledTransitionToTrue",
        "Z",
        "x",
        "a",
        "(Z)V",
        "Lcom/braze/configuration/BrazeConfigurationProvider;",
        "configurationProvider",
        "",
        "androidVersion",
        "carrier",
        "model",
        "localeAndLanguage",
        "timeZone",
        "resolution",
        "isNotificationsEnabled",
        "isBackgroundRestricted",
        "googleAdvertisingId",
        "isAdTrackingEnabled",
        "<init>",
        "(Lcom/braze/configuration/BrazeConfigurationProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;)V",
        "b",
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
.field public static final n:Lbo/app/k0$b;


# instance fields
.field private final b:Lcom/braze/configuration/BrazeConfigurationProvider;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:Ljava/lang/Boolean;

.field private final j:Ljava/lang/Boolean;

.field private final k:Ljava/lang/String;

.field private final l:Ljava/lang/Boolean;

.field private m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lbo/app/k0$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbo/app/k0$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lbo/app/k0;->n:Lbo/app/k0$b;

    return-void
.end method

.method public constructor <init>(Lcom/braze/configuration/BrazeConfigurationProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1

    const-string v0, "configurationProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lbo/app/k0;->b:Lcom/braze/configuration/BrazeConfigurationProvider;

    .line 4
    iput-object p2, p0, Lbo/app/k0;->c:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lbo/app/k0;->d:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Lbo/app/k0;->e:Ljava/lang/String;

    .line 10
    iput-object p5, p0, Lbo/app/k0;->f:Ljava/lang/String;

    .line 11
    iput-object p6, p0, Lbo/app/k0;->g:Ljava/lang/String;

    .line 12
    iput-object p7, p0, Lbo/app/k0;->h:Ljava/lang/String;

    .line 13
    iput-object p8, p0, Lbo/app/k0;->i:Ljava/lang/Boolean;

    .line 14
    iput-object p9, p0, Lbo/app/k0;->j:Ljava/lang/Boolean;

    .line 15
    iput-object p10, p0, Lbo/app/k0;->k:Ljava/lang/String;

    .line 16
    iput-object p11, p0, Lbo/app/k0;->l:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lbo/app/k0;->m:Z

    return-void
.end method

.method public e()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lbo/app/k0;->w()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic forJsonPut()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lbo/app/k0;->w()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public final v()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lbo/app/k0;->w()Lorg/json/JSONObject;

    move-result-object v0

    sget-object v1, Lcom/braze/enums/DeviceKey;->NOTIFICATIONS_ENABLED:Lcom/braze/enums/DeviceKey;

    invoke-virtual {v1}, Lcom/braze/enums/DeviceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public w()Lorg/json/JSONObject;
    .locals 5

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 3
    :try_start_0
    sget-object v1, Lbo/app/k0;->n:Lbo/app/k0$b;

    iget-object v2, p0, Lbo/app/k0;->b:Lcom/braze/configuration/BrazeConfigurationProvider;

    sget-object v3, Lcom/braze/enums/DeviceKey;->ANDROID_VERSION:Lcom/braze/enums/DeviceKey;

    iget-object v4, p0, Lbo/app/k0;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, v3, v4}, Lbo/app/k0$b;->a(Lcom/braze/configuration/BrazeConfigurationProvider;Lorg/json/JSONObject;Lcom/braze/enums/DeviceKey;Ljava/lang/Object;)V

    .line 4
    iget-object v2, p0, Lbo/app/k0;->b:Lcom/braze/configuration/BrazeConfigurationProvider;

    sget-object v3, Lcom/braze/enums/DeviceKey;->CARRIER:Lcom/braze/enums/DeviceKey;

    iget-object v4, p0, Lbo/app/k0;->d:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, v3, v4}, Lbo/app/k0$b;->a(Lcom/braze/configuration/BrazeConfigurationProvider;Lorg/json/JSONObject;Lcom/braze/enums/DeviceKey;Ljava/lang/Object;)V

    .line 5
    iget-object v2, p0, Lbo/app/k0;->b:Lcom/braze/configuration/BrazeConfigurationProvider;

    sget-object v3, Lcom/braze/enums/DeviceKey;->MODEL:Lcom/braze/enums/DeviceKey;

    iget-object v4, p0, Lbo/app/k0;->e:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, v3, v4}, Lbo/app/k0$b;->a(Lcom/braze/configuration/BrazeConfigurationProvider;Lorg/json/JSONObject;Lcom/braze/enums/DeviceKey;Ljava/lang/Object;)V

    .line 6
    iget-object v2, p0, Lbo/app/k0;->b:Lcom/braze/configuration/BrazeConfigurationProvider;

    sget-object v3, Lcom/braze/enums/DeviceKey;->RESOLUTION:Lcom/braze/enums/DeviceKey;

    iget-object v4, p0, Lbo/app/k0;->h:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, v3, v4}, Lbo/app/k0$b;->a(Lcom/braze/configuration/BrazeConfigurationProvider;Lorg/json/JSONObject;Lcom/braze/enums/DeviceKey;Ljava/lang/Object;)V

    .line 7
    iget-object v2, p0, Lbo/app/k0;->b:Lcom/braze/configuration/BrazeConfigurationProvider;

    sget-object v3, Lcom/braze/enums/DeviceKey;->LOCALE:Lcom/braze/enums/DeviceKey;

    iget-object v4, p0, Lbo/app/k0;->f:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, v3, v4}, Lbo/app/k0$b;->a(Lcom/braze/configuration/BrazeConfigurationProvider;Lorg/json/JSONObject;Lcom/braze/enums/DeviceKey;Ljava/lang/Object;)V

    .line 8
    iget-object v2, p0, Lbo/app/k0;->b:Lcom/braze/configuration/BrazeConfigurationProvider;

    sget-object v3, Lcom/braze/enums/DeviceKey;->NOTIFICATIONS_ENABLED:Lcom/braze/enums/DeviceKey;

    iget-object v4, p0, Lbo/app/k0;->i:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v0, v3, v4}, Lbo/app/k0$b;->a(Lcom/braze/configuration/BrazeConfigurationProvider;Lorg/json/JSONObject;Lcom/braze/enums/DeviceKey;Ljava/lang/Object;)V

    .line 9
    iget-object v2, p0, Lbo/app/k0;->b:Lcom/braze/configuration/BrazeConfigurationProvider;

    sget-object v3, Lcom/braze/enums/DeviceKey;->IS_BACKGROUND_RESTRICTED:Lcom/braze/enums/DeviceKey;

    iget-object v4, p0, Lbo/app/k0;->j:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v0, v3, v4}, Lbo/app/k0$b;->a(Lcom/braze/configuration/BrazeConfigurationProvider;Lorg/json/JSONObject;Lcom/braze/enums/DeviceKey;Ljava/lang/Object;)V

    .line 10
    iget-object v2, p0, Lbo/app/k0;->k:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-static {v2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 11
    :cond_0
    iget-object v2, p0, Lbo/app/k0;->b:Lcom/braze/configuration/BrazeConfigurationProvider;

    sget-object v3, Lcom/braze/enums/DeviceKey;->GOOGLE_ADVERTISING_ID:Lcom/braze/enums/DeviceKey;

    iget-object v4, p0, Lbo/app/k0;->k:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, v3, v4}, Lbo/app/k0$b;->a(Lcom/braze/configuration/BrazeConfigurationProvider;Lorg/json/JSONObject;Lcom/braze/enums/DeviceKey;Ljava/lang/Object;)V

    .line 13
    :cond_1
    :goto_0
    iget-object v2, p0, Lbo/app/k0;->l:Ljava/lang/Boolean;

    if-eqz v2, :cond_2

    .line 14
    iget-object v3, p0, Lbo/app/k0;->b:Lcom/braze/configuration/BrazeConfigurationProvider;

    sget-object v4, Lcom/braze/enums/DeviceKey;->AD_TRACKING_ENABLED:Lcom/braze/enums/DeviceKey;

    invoke-virtual {v1, v3, v0, v4, v2}, Lbo/app/k0$b;->a(Lcom/braze/configuration/BrazeConfigurationProvider;Lorg/json/JSONObject;Lcom/braze/enums/DeviceKey;Ljava/lang/Object;)V

    .line 16
    :cond_2
    iget-object v2, p0, Lbo/app/k0;->g:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-static {v2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    .line 17
    :cond_3
    iget-object v2, p0, Lbo/app/k0;->b:Lcom/braze/configuration/BrazeConfigurationProvider;

    sget-object v3, Lcom/braze/enums/DeviceKey;->TIMEZONE:Lcom/braze/enums/DeviceKey;

    iget-object v4, p0, Lbo/app/k0;->g:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, v3, v4}, Lbo/app/k0$b;->a(Lcom/braze/configuration/BrazeConfigurationProvider;Lorg/json/JSONObject;Lcom/braze/enums/DeviceKey;Ljava/lang/Object;)V

    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 20
    sget-object v2, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v3, Lcom/braze/support/BrazeLogger$Priority;->E:Lcom/braze/support/BrazeLogger$Priority;

    sget-object v4, Lbo/app/k0$c;->b:Lbo/app/k0$c;

    invoke-virtual {v2, p0, v3, v1, v4}, Lcom/braze/support/BrazeLogger;->brazelog(Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V

    :cond_4
    :goto_1
    return-object v0
.end method

.method public final x()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lbo/app/k0;->m:Z

    return v0
.end method
