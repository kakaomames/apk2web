.class public final Lcom/braze/ui/actions/brazeactions/BrazeActionParser;
.super Ljava/lang/Object;
.source "BrazeActionParser.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001\u001fB\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J \u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000eJ\u0015\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0000\u00a2\u0006\u0002\u0008\u0013J\u001d\u0010\u0014\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0011\u001a\u00020\u0012H\u0000\u00a2\u0006\u0002\u0008\u0015J\u0015\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0004H\u0000\u00a2\u0006\u0002\u0008\u0019J\u001f\u0010\u001a\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0017\u0018\u00010\u001b*\u00020\u000cH\u0000\u00a2\u0006\u0002\u0008\u001cJ\u000c\u0010\u001d\u001a\u00020\u001e*\u0004\u0018\u00010\u000cR\u000e\u0010\u0003\u001a\u00020\u0004X\u0080T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0080T\u00a2\u0006\u0002\n\u0000\u00a8\u0006 "
    }
    d2 = {
        "Lcom/braze/ui/actions/brazeactions/BrazeActionParser;",
        "",
        "()V",
        "BRAZE_ACTIONS_SCHEME",
        "",
        "BRAZE_ACTIONS_V1",
        "TYPE",
        "execute",
        "",
        "context",
        "Landroid/content/Context;",
        "uri",
        "Landroid/net/Uri;",
        "channel",
        "Lcom/braze/enums/Channel;",
        "getActionType",
        "Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType;",
        "data",
        "Lcom/braze/ui/actions/brazeactions/steps/StepData;",
        "getActionType$android_sdk_ui_release",
        "parse",
        "parse$android_sdk_ui_release",
        "parseEncodedActionToJson",
        "Lorg/json/JSONObject;",
        "action",
        "parseEncodedActionToJson$android_sdk_ui_release",
        "getBrazeActionVersionAndJson",
        "Lkotlin/Pair;",
        "getBrazeActionVersionAndJson$android_sdk_ui_release",
        "isBrazeActionUri",
        "",
        "ActionType",
        "android-sdk-ui_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final BRAZE_ACTIONS_SCHEME:Ljava/lang/String; = "brazeActions"

.field private static final BRAZE_ACTIONS_V1:Ljava/lang/String; = "v1"

.field public static final INSTANCE:Lcom/braze/ui/actions/brazeactions/BrazeActionParser;

.field public static final TYPE:Ljava/lang/String; = "type"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/braze/ui/actions/brazeactions/BrazeActionParser;

    invoke-direct {v0}, Lcom/braze/ui/actions/brazeactions/BrazeActionParser;-><init>()V

    sput-object v0, Lcom/braze/ui/actions/brazeactions/BrazeActionParser;->INSTANCE:Lcom/braze/ui/actions/brazeactions/BrazeActionParser;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic execute$default(Lcom/braze/ui/actions/brazeactions/BrazeActionParser;Landroid/content/Context;Landroid/net/Uri;Lcom/braze/enums/Channel;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 61
    sget-object p3, Lcom/braze/enums/Channel;->UNKNOWN:Lcom/braze/enums/Channel;

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/braze/ui/actions/brazeactions/BrazeActionParser;->execute(Landroid/content/Context;Landroid/net/Uri;Lcom/braze/enums/Channel;)V

    return-void
.end method


# virtual methods
.method public final execute(Landroid/content/Context;Landroid/net/Uri;Lcom/braze/enums/Channel;)V
    .locals 10

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uri"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "channel"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v3, Lcom/braze/support/BrazeLogger$Priority;->V:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v0, Lcom/braze/ui/actions/brazeactions/BrazeActionParser$execute$1;

    invoke-direct {v0, p3, p2}, Lcom/braze/ui/actions/brazeactions/BrazeActionParser$execute$1;-><init>(Lcom/braze/enums/Channel;Landroid/net/Uri;)V

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function0;

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 64
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/braze/ui/actions/brazeactions/BrazeActionParser;->getBrazeActionVersionAndJson$android_sdk_ui_release(Landroid/net/Uri;)Lkotlin/Pair;

    move-result-object v0

    if-nez v0, :cond_0

    .line 66
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v3, Lcom/braze/support/BrazeLogger$Priority;->I:Lcom/braze/support/BrazeLogger$Priority;

    sget-object p1, Lcom/braze/ui/actions/brazeactions/BrazeActionParser$execute$2;->INSTANCE:Lcom/braze/ui/actions/brazeactions/BrazeActionParser$execute$2;

    move-object v5, p1

    check-cast v5, Lkotlin/jvm/functions/Function0;

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void

    .line 73
    :cond_0
    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 74
    const-string v2, "v1"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 75
    sget-object v3, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    new-instance p1, Lcom/braze/ui/actions/brazeactions/BrazeActionParser$execute$3;

    invoke-direct {p1, v1}, Lcom/braze/ui/actions/brazeactions/BrazeActionParser$execute$3;-><init>(Ljava/lang/String;)V

    move-object v7, p1

    check-cast v7, Lkotlin/jvm/functions/Function0;

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, p0

    invoke-static/range {v3 .. v9}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void

    .line 82
    :cond_1
    new-instance v1, Lcom/braze/ui/actions/brazeactions/steps/StepData;

    invoke-direct {v1, v0, p3}, Lcom/braze/ui/actions/brazeactions/steps/StepData;-><init>(Lorg/json/JSONObject;Lcom/braze/enums/Channel;)V

    invoke-virtual {p0, p1, v1}, Lcom/braze/ui/actions/brazeactions/BrazeActionParser;->parse$android_sdk_ui_release(Landroid/content/Context;Lcom/braze/ui/actions/brazeactions/steps/StepData;)V

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 84
    sget-object p3, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v0, Lcom/braze/support/BrazeLogger$Priority;->E:Lcom/braze/support/BrazeLogger$Priority;

    check-cast p1, Ljava/lang/Throwable;

    new-instance v1, Lcom/braze/ui/actions/brazeactions/BrazeActionParser$execute$4;

    invoke-direct {v1, p2}, Lcom/braze/ui/actions/brazeactions/BrazeActionParser$execute$4;-><init>(Landroid/net/Uri;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-virtual {p3, p0, v0, p1, v1}, Lcom/braze/support/BrazeLogger;->brazelog(Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V

    .line 86
    :goto_0
    sget-object v2, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v4, Lcom/braze/support/BrazeLogger$Priority;->V:Lcom/braze/support/BrazeLogger$Priority;

    new-instance p1, Lcom/braze/ui/actions/brazeactions/BrazeActionParser$execute$5;

    invoke-direct {p1, p2}, Lcom/braze/ui/actions/brazeactions/BrazeActionParser$execute$5;-><init>(Landroid/net/Uri;)V

    move-object v6, p1

    check-cast v6, Lkotlin/jvm/functions/Function0;

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v5, 0x0

    move-object v3, p0

    invoke-static/range {v2 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method public final synthetic getActionType$android_sdk_ui_release(Lcom/braze/ui/actions/brazeactions/steps/StepData;)Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType;
    .locals 9

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    sget-object v0, Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType;->Companion:Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType$Companion;

    invoke-virtual {p1}, Lcom/braze/ui/actions/brazeactions/steps/StepData;->getSrcJson()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "type"

    invoke-static {v1, v2}, Lcom/braze/support/JsonUtils;->getOptionalString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType$Companion;->fromValue(Ljava/lang/String;)Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType;

    move-result-object v0

    .line 179
    invoke-virtual {v0}, Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType;->getImpl()Lcom/braze/ui/actions/brazeactions/steps/IBrazeActionStep;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/braze/ui/actions/brazeactions/steps/IBrazeActionStep;->isValid(Lcom/braze/ui/actions/brazeactions/steps/StepData;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 181
    sget-object v2, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    new-instance v1, Lcom/braze/ui/actions/brazeactions/BrazeActionParser$getActionType$1;

    invoke-direct {v1, v0, p1}, Lcom/braze/ui/actions/brazeactions/BrazeActionParser$getActionType$1;-><init>(Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType;Lcom/braze/ui/actions/brazeactions/steps/StepData;)V

    move-object v6, v1

    check-cast v6, Lkotlin/jvm/functions/Function0;

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p0

    invoke-static/range {v2 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 185
    sget-object p1, Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType;->INVALID:Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType;

    return-object p1

    :cond_0
    return-object v0
.end method

.method public final synthetic getBrazeActionVersionAndJson$android_sdk_ui_release(Landroid/net/Uri;)Lkotlin/Pair;
    .locals 10

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 153
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    if-nez v1, :cond_0

    goto :goto_1

    .line 161
    :cond_0
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/braze/ui/actions/brazeactions/BrazeActionParser;->parseEncodedActionToJson$android_sdk_ui_release(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 163
    sget-object v4, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v5, Lcom/braze/support/BrazeLogger$Priority;->E:Lcom/braze/support/BrazeLogger$Priority;

    check-cast v3, Ljava/lang/Throwable;

    new-instance v6, Lcom/braze/ui/actions/brazeactions/BrazeActionParser$getBrazeActionVersionAndJson$json$1;

    invoke-direct {v6, v1}, Lcom/braze/ui/actions/brazeactions/BrazeActionParser$getBrazeActionVersionAndJson$json$1;-><init>(Ljava/lang/String;)V

    check-cast v6, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v4, p1, v5, v3, v6}, Lcom/braze/support/BrazeLogger;->brazelog(Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V

    .line 164
    move-object p1, v2

    check-cast p1, Lorg/json/JSONObject;

    move-object p1, v2

    :goto_0
    if-nez p1, :cond_1

    return-object v2

    .line 167
    :cond_1
    new-instance v1, Lkotlin/Pair;

    invoke-direct {v1, v0, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    .line 156
    :cond_2
    :goto_1
    sget-object v3, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    new-instance v0, Lcom/braze/ui/actions/brazeactions/BrazeActionParser$getBrazeActionVersionAndJson$1;

    invoke-direct {v0, p1}, Lcom/braze/ui/actions/brazeactions/BrazeActionParser$getBrazeActionVersionAndJson$1;-><init>(Landroid/net/Uri;)V

    move-object v7, v0

    check-cast v7, Lkotlin/jvm/functions/Function0;

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, p1

    invoke-static/range {v3 .. v9}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-object v2
.end method

.method public final isBrazeActionUri(Landroid/net/Uri;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 56
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string v0, "brazeActions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final synthetic parse$android_sdk_ui_release(Landroid/content/Context;Lcom/braze/ui/actions/brazeactions/steps/StepData;)V
    .locals 9

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/braze/ui/actions/brazeactions/BrazeActionParser;->getActionType$android_sdk_ui_release(Lcom/braze/ui/actions/brazeactions/steps/StepData;)Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType;

    move-result-object v0

    .line 99
    sget-object v1, Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType;->INVALID:Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType;

    if-ne v0, v1, :cond_0

    return-void

    .line 102
    :cond_0
    sget-object v2, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v4, Lcom/braze/support/BrazeLogger$Priority;->V:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v1, Lcom/braze/ui/actions/brazeactions/BrazeActionParser$parse$1;

    invoke-direct {v1, v0, p2}, Lcom/braze/ui/actions/brazeactions/BrazeActionParser$parse$1;-><init>(Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType;Lcom/braze/ui/actions/brazeactions/steps/StepData;)V

    move-object v6, v1

    check-cast v6, Lkotlin/jvm/functions/Function0;

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v5, 0x0

    move-object v3, p0

    invoke-static/range {v2 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 105
    invoke-virtual {v0}, Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType;->getImpl()Lcom/braze/ui/actions/brazeactions/steps/IBrazeActionStep;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/braze/ui/actions/brazeactions/steps/IBrazeActionStep;->run(Landroid/content/Context;Lcom/braze/ui/actions/brazeactions/steps/StepData;)V

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 107
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v1, Lcom/braze/support/BrazeLogger$Priority;->E:Lcom/braze/support/BrazeLogger$Priority;

    check-cast p1, Ljava/lang/Throwable;

    new-instance v2, Lcom/braze/ui/actions/brazeactions/BrazeActionParser$parse$2;

    invoke-direct {v2, p2}, Lcom/braze/ui/actions/brazeactions/BrazeActionParser$parse$2;-><init>(Lcom/braze/ui/actions/brazeactions/steps/StepData;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v0, p0, v1, p1, v2}, Lcom/braze/support/BrazeLogger;->brazelog(Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V

    :goto_0
    return-void
.end method

.method public final synthetic parseEncodedActionToJson$android_sdk_ui_release(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 8

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x8

    .line 119
    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    const-string v1, "decode(action, Base64.URL_SAFE)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    array-length v1, p1

    const/4 v2, 0x2

    div-int/2addr v1, v2

    new-array v3, v1, [I

    .line 123
    array-length v4, p1

    add-int/lit8 v4, v4, -0x1

    const/4 v5, 0x0

    invoke-static {v5, v4, v2}, Lkotlin/internal/ProgressionUtilKt;->getProgressionLastElement(III)I

    move-result v2

    if-ltz v2, :cond_0

    move v4, v5

    .line 125
    :goto_0
    aget-byte v6, p1, v4

    and-int/lit16 v6, v6, 0xff

    add-int/lit8 v7, v4, 0x1

    .line 128
    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/2addr v7, v0

    or-int/2addr v6, v7

    .line 130
    div-int/lit8 v7, v4, 0x2

    aput v6, v3, v7

    if-eq v4, v2, :cond_0

    add-int/lit8 v4, v4, 0x2

    goto :goto_0

    .line 135
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    if-ge v5, v1, :cond_2

    .line 136
    aget v0, v3, v5

    if-ltz v0, :cond_1

    const v2, 0xffff

    if-gt v0, v2, :cond_1

    int-to-char v0, v0

    .line 137
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid Char code: "

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 139
    :cond_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
