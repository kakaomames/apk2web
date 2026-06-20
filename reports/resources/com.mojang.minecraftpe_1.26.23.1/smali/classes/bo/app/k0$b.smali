.class public final Lbo/app/k0$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbo/app/k0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbo/app/k0$b$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0007J*\u0010\u0007\u001a\u00020\u000c2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\t2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0001H\u0007\u00a8\u0006\u000f"
    }
    d2 = {
        "Lbo/app/k0$b;",
        "",
        "Lcom/braze/configuration/BrazeConfigurationProvider;",
        "configurationProvider",
        "Lorg/json/JSONObject;",
        "jsonObject",
        "Lbo/app/k0;",
        "a",
        "deviceExport",
        "Lcom/braze/enums/DeviceKey;",
        "exportKey",
        "value",
        "",
        "<init>",
        "()V",
        "android-sdk-base_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lbo/app/k0$b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/braze/configuration/BrazeConfigurationProvider;Lorg/json/JSONObject;)Lbo/app/k0;
    .locals 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "configurationProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "jsonObject"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lbo/app/k0$a;

    invoke-direct {v0, p1}, Lbo/app/k0$a;-><init>(Lcom/braze/configuration/BrazeConfigurationProvider;)V

    .line 3
    invoke-static {}, Lcom/braze/enums/DeviceKey;->values()[Lcom/braze/enums/DeviceKey;

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p1, v3

    .line 4
    invoke-virtual {v4}, Lcom/braze/enums/DeviceKey;->getKey()Ljava/lang/String;

    move-result-object v5

    .line 5
    sget-object v6, Lbo/app/k0$b$a;->a:[I

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v4, v6, v4

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_1

    .line 19
    :pswitch_0    # 0xa
    invoke-virtual {p2, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 20
    invoke-virtual {p2, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v4}, Lbo/app/k0$a;->a(Ljava/lang/Boolean;)Lbo/app/k0$a;

    goto :goto_1

    .line 21
    :pswitch_1    # 0x9
    invoke-static {p2, v5}, Lcom/braze/support/JsonUtils;->getOptionalString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lbo/app/k0$a;->c(Ljava/lang/String;)Lbo/app/k0$a;

    goto :goto_1

    .line 22
    :pswitch_2    # 0x8
    invoke-virtual {p2, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 23
    invoke-virtual {p2, v5, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v4}, Lbo/app/k0$a;->b(Ljava/lang/Boolean;)Lbo/app/k0$a;

    goto :goto_1

    .line 24
    :pswitch_3    # 0x7
    invoke-virtual {p2, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    .line 25
    invoke-virtual {p2, v5, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v4}, Lbo/app/k0$a;->c(Ljava/lang/Boolean;)Lbo/app/k0$a;

    goto :goto_1

    .line 26
    :pswitch_4    # 0x6
    invoke-static {p2, v5}, Lcom/braze/support/JsonUtils;->getOptionalString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lbo/app/k0$a;->e(Ljava/lang/String;)Lbo/app/k0$a;

    goto :goto_1

    .line 27
    :pswitch_5    # 0x5
    invoke-static {p2, v5}, Lcom/braze/support/JsonUtils;->getOptionalString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lbo/app/k0$a;->d(Ljava/lang/String;)Lbo/app/k0$a;

    goto :goto_1

    .line 28
    :pswitch_6    # 0x4
    invoke-static {p2, v5}, Lcom/braze/support/JsonUtils;->getOptionalString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lbo/app/k0$a;->f(Ljava/lang/String;)Lbo/app/k0$a;

    goto :goto_1

    .line 29
    :pswitch_7    # 0x3
    invoke-static {p2, v5}, Lcom/braze/support/JsonUtils;->getOptionalString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lbo/app/k0$a;->a(Ljava/lang/String;)Lbo/app/k0$a;

    goto :goto_1

    .line 30
    :pswitch_8    # 0x2
    invoke-static {p2, v5}, Lcom/braze/support/JsonUtils;->getOptionalString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lbo/app/k0$a;->b(Ljava/lang/String;)Lbo/app/k0$a;

    goto :goto_1

    .line 31
    :pswitch_9    # 0x1
    invoke-static {p2, v5}, Lcom/braze/support/JsonUtils;->getOptionalString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lbo/app/k0$a;->g(Ljava/lang/String;)Lbo/app/k0$a;

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 49
    :cond_1
    invoke-virtual {v0}, Lbo/app/k0$a;->a()Lbo/app/k0;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9    # 0x1
        :pswitch_8    # 0x2
        :pswitch_7    # 0x3
        :pswitch_6    # 0x4
        :pswitch_5    # 0x5
        :pswitch_4    # 0x6
        :pswitch_3    # 0x7
        :pswitch_2    # 0x8
        :pswitch_1    # 0x9
        :pswitch_0    # 0xa
    .end packed-switch
.end method

.method public final a(Lcom/braze/configuration/BrazeConfigurationProvider;Lorg/json/JSONObject;Lcom/braze/enums/DeviceKey;Ljava/lang/Object;)V
    .locals 7

    const-string v0, "configurationProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceExport"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "exportKey"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-virtual {p1}, Lcom/braze/configuration/BrazeConfigurationProvider;->isDeviceObjectAllowlistEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    invoke-virtual {p1}, Lcom/braze/configuration/BrazeConfigurationProvider;->getDeviceObjectAllowlist()Ljava/util/EnumSet;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 55
    :cond_0
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v2, Lcom/braze/support/BrazeLogger$Priority;->V:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v4, Lbo/app/k0$b$b;

    invoke-direct {v4, p3}, Lbo/app/k0$b$b;-><init>(Lcom/braze/enums/DeviceKey;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v6}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    goto :goto_1

    .line 56
    :cond_1
    :goto_0
    invoke-virtual {p3}, Lcom/braze/enums/DeviceKey;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1, p4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_1
    return-void
.end method
