.class public final Lcom/braze/push/BrazePushReceiver$Companion;
.super Ljava/lang/Object;
.source "BrazePushReceiver.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/braze/push/BrazePushReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J(\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0016H\u0007J \u0010\u0018\u001a\u00020\u00192\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u001a\u001a\u00020\u001bH\u0007J\u0018\u0010\u001c\u001a\u00020\u00192\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u001a\u001a\u00020\u001bH\u0007J\u0018\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u001a\u001a\u00020\u001bH\u0002J\u0018\u0010\u001f\u001a\u00020\u00192\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u001a\u001a\u00020\u001bH\u0007J\"\u0010 \u001a\u00020\u001e2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u001a\u001a\u00020\u001b2\u0008\u0008\u0002\u0010!\u001a\u00020\u0019H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\""
    }
    d2 = {
        "Lcom/braze/push/BrazePushReceiver$Companion;",
        "",
        "()V",
        "ADM_ERROR_DESCRIPTION_KEY",
        "",
        "ADM_ERROR_KEY",
        "ADM_RECEIVE_INTENT_ACTION",
        "ADM_REGISTRATION_ID_KEY",
        "ADM_REGISTRATION_INTENT_ACTION",
        "ADM_UNREGISTERED_KEY",
        "DELETED_MESSAGES_KEY",
        "FIREBASE_MESSAGING_SERVICE_ROUTING_ACTION",
        "HMS_PUSH_SERVICE_ROUTING_ACTION",
        "MESSAGE_TYPE_KEY",
        "NUMBER_OF_MESSAGES_DELETED_KEY",
        "createPayload",
        "Lcom/braze/models/push/BrazeNotificationPayload;",
        "context",
        "Landroid/content/Context;",
        "appConfigurationProvider",
        "Lcom/braze/configuration/BrazeConfigurationProvider;",
        "notificationExtras",
        "Landroid/os/Bundle;",
        "brazeExtras",
        "handleAdmRegistrationEventIfEnabled",
        "",
        "intent",
        "Landroid/content/Intent;",
        "handleAdmRegistrationIntent",
        "handlePush",
        "",
        "handlePushNotificationPayload",
        "handleReceivedIntent",
        "runOnThread",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/braze/push/BrazePushReceiver$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$handlePush(Lcom/braze/push/BrazePushReceiver$Companion;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/braze/push/BrazePushReceiver$Companion;->handlePush(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private final handlePush(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 74
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 127
    :try_start_0
    invoke-static {v1, v0, p2, p1}, Lcom/braze/push/BrazePushReceiver$Companion;->handlePush$performWork(Ljava/lang/String;Landroid/content/Context;Landroid/content/Intent;Landroid/content/Context;)V

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 129
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v2, Lcom/braze/support/BrazeLogger$Priority;->E:Lcom/braze/support/BrazeLogger$Priority;

    check-cast p1, Ljava/lang/Throwable;

    new-instance v3, Lcom/braze/push/BrazePushReceiver$Companion$handlePush$1;

    invoke-direct {v3, v1, p2}, Lcom/braze/push/BrazePushReceiver$Companion$handlePush$1;-><init>(Ljava/lang/String;Landroid/content/Intent;)V

    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v0, p0, v2, p1, v3}, Lcom/braze/support/BrazeLogger;->brazelog(Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V

    :goto_0
    return-void
.end method

.method private static final handlePush$performWork(Ljava/lang/String;Landroid/content/Context;Landroid/content/Intent;Landroid/content/Context;)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 77
    sget-object v4, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v5, Lcom/braze/push/BrazePushReceiver;->Companion:Lcom/braze/push/BrazePushReceiver$Companion;

    sget-object v6, Lcom/braze/support/BrazeLogger$Priority;->I:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v7, Lcom/braze/push/BrazePushReceiver$Companion$handlePush$performWork$1;

    invoke-direct {v7, v2}, Lcom/braze/push/BrazePushReceiver$Companion$handlePush$performWork$1;-><init>(Landroid/content/Intent;)V

    move-object v8, v7

    check-cast v8, Lkotlin/jvm/functions/Function0;

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v7, 0x0

    invoke-static/range {v4 .. v10}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 78
    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    if-eqz v4, :cond_8

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_2

    .line 82
    :cond_0
    const-string v4, "applicationContext"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Lcom/braze/BrazeInternal;->applyPendingRuntimeConfiguration(Landroid/content/Context;)V

    .line 86
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0    # 0x67bd38ad
    const-string v3, "hms_push_service_routing_action"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_0

    :sswitch_1    # 0x3f326356
    const-string v3, "com.amazon.device.messaging.intent.RECEIVE"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_0

    :sswitch_2    # 0x21113c1
    const-string v1, "com.braze.action.BRAZE_STORY_CLICKED"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    .line 110
    :cond_1
    invoke-static {v3, v2}, Lcom/braze/push/BrazeNotificationUtils;->handlePushStoryPageClicked(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 86
    :sswitch_3    # -0x215fd9d0
    const-string v3, "com.braze.action.BRAZE_PUSH_DELETED"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 103
    :cond_2
    invoke-static/range {p1 .. p2}, Lcom/braze/push/BrazeNotificationUtils;->handleNotificationDeleted(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 86
    :sswitch_4    # -0x2a6daa0b
    const-string v3, "com.braze.action.STORY_TRAVERSE"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :sswitch_5    # -0x2c4aaffa
    const-string v3, "com.amazon.device.messaging.intent.REGISTRATION"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    .line 94
    :cond_3
    sget-object v0, Lcom/braze/push/BrazePushReceiver;->Companion:Lcom/braze/push/BrazePushReceiver$Companion;

    .line 95
    new-instance v3, Lcom/braze/configuration/BrazeConfigurationProvider;

    invoke-direct {v3, v1}, Lcom/braze/configuration/BrazeConfigurationProvider;-><init>(Landroid/content/Context;)V

    .line 94
    invoke-virtual {v0, v3, v1, v2}, Lcom/braze/push/BrazePushReceiver$Companion;->handleAdmRegistrationEventIfEnabled(Lcom/braze/configuration/BrazeConfigurationProvider;Landroid/content/Context;Landroid/content/Intent;)Z

    goto :goto_1

    .line 86
    :sswitch_6    # -0x4a7f79c2
    const-string v1, "com.braze.action.BRAZE_PUSH_CLICKED"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    .line 118
    :cond_4
    invoke-static {v3, v2}, Lcom/braze/push/BrazeNotificationUtils;->handleNotificationOpened(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    .line 86
    :sswitch_7    # -0x5e78f694
    const-string v3, "firebase_messaging_service_routing_action"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    .line 90
    :cond_5
    sget-object v0, Lcom/braze/push/BrazePushReceiver;->Companion:Lcom/braze/push/BrazePushReceiver$Companion;

    invoke-virtual {v0, v1, v2}, Lcom/braze/push/BrazePushReceiver$Companion;->handlePushNotificationPayload(Landroid/content/Context;Landroid/content/Intent;)Z

    goto :goto_1

    .line 86
    :sswitch_8    # -0x6b3db1a6
    const-string v1, "com.braze.action.BRAZE_ACTION_CLICKED"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    .line 114
    :cond_6
    invoke-static {v3, v2}, Lcom/braze/push/BrazeNotificationActionUtils;->handleNotificationActionClicked(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    .line 86
    :sswitch_9    # -0x7ffb7229
    const-string v3, "com.braze.action.CANCEL_NOTIFICATION"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    .line 99
    :cond_7
    invoke-static/range {p1 .. p2}, Lcom/braze/push/BrazeNotificationUtils;->handleCancelNotificationAction(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    .line 122
    :goto_0
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v2, Lcom/braze/push/BrazePushReceiver;->Companion:Lcom/braze/push/BrazePushReceiver$Companion;

    sget-object v3, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    sget-object v0, Lcom/braze/push/BrazePushReceiver$Companion$handlePush$performWork$3;->INSTANCE:Lcom/braze/push/BrazePushReceiver$Companion$handlePush$performWork$3;

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function0;

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    :goto_1
    return-void

    .line 79
    :cond_8
    :goto_2
    sget-object v8, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v9, Lcom/braze/push/BrazePushReceiver;->Companion:Lcom/braze/push/BrazePushReceiver$Companion;

    sget-object v10, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v0, Lcom/braze/push/BrazePushReceiver$Companion$handlePush$performWork$2;

    invoke-direct {v0, v2}, Lcom/braze/push/BrazePushReceiver$Companion$handlePush$performWork$2;-><init>(Landroid/content/Intent;)V

    move-object v12, v0

    check-cast v12, Lkotlin/jvm/functions/Function0;

    const/4 v13, 0x2

    const/4 v14, 0x0

    const/4 v11, 0x0

    invoke-static/range {v8 .. v14}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7ffb7229 -> :sswitch_9
        -0x6b3db1a6 -> :sswitch_8
        -0x5e78f694 -> :sswitch_7
        -0x4a7f79c2 -> :sswitch_6
        -0x2c4aaffa -> :sswitch_5
        -0x2a6daa0b -> :sswitch_4
        -0x215fd9d0 -> :sswitch_3
        0x21113c1 -> :sswitch_2
        0x3f326356 -> :sswitch_1
        0x67bd38ad -> :sswitch_0

    .end sparse-switch
.end method

.method public static synthetic handleReceivedIntent$default(Lcom/braze/push/BrazePushReceiver$Companion;Landroid/content/Context;Landroid/content/Intent;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x1

    .line 138
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/braze/push/BrazePushReceiver$Companion;->handleReceivedIntent(Landroid/content/Context;Landroid/content/Intent;Z)V

    return-void
.end method


# virtual methods
.method public final createPayload(Landroid/content/Context;Lcom/braze/configuration/BrazeConfigurationProvider;Landroid/os/Bundle;Landroid/os/Bundle;)Lcom/braze/models/push/BrazeNotificationPayload;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appConfigurationProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notificationExtras"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "brazeExtras"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 334
    invoke-static {}, Lcom/braze/Constants;->isAmazonDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 335
    new-instance p4, Lcom/braze/models/push/BrazeNotificationPayload;

    .line 337
    sget-object v0, Lcom/braze/models/push/BrazeNotificationPayload;->Companion:Lcom/braze/models/push/BrazeNotificationPayload$Companion;

    invoke-virtual {v0, p3}, Lcom/braze/models/push/BrazeNotificationPayload$Companion;->getAttachedBrazeExtras(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 335
    invoke-direct {p4, p3, v0, p1, p2}, Lcom/braze/models/push/BrazeNotificationPayload;-><init>(Landroid/os/Bundle;Landroid/os/Bundle;Landroid/content/Context;Lcom/braze/configuration/BrazeConfigurationProvider;)V

    goto :goto_0

    .line 343
    :cond_0
    new-instance v0, Lcom/braze/models/push/BrazeNotificationPayload;

    invoke-direct {v0, p3, p4, p1, p2}, Lcom/braze/models/push/BrazeNotificationPayload;-><init>(Landroid/os/Bundle;Landroid/os/Bundle;Landroid/content/Context;Lcom/braze/configuration/BrazeConfigurationProvider;)V

    move-object p4, v0

    :goto_0
    return-object p4
.end method

.method public final handleAdmRegistrationEventIfEnabled(Lcom/braze/configuration/BrazeConfigurationProvider;Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 8
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "appConfigurationProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intent"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v3, Lcom/braze/support/BrazeLogger$Priority;->I:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v0, Lcom/braze/push/BrazePushReceiver$Companion$handleAdmRegistrationEventIfEnabled$1;

    invoke-direct {v0, p3}, Lcom/braze/push/BrazePushReceiver$Companion$handleAdmRegistrationEventIfEnabled$1;-><init>(Landroid/content/Intent;)V

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function0;

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 160
    invoke-static {}, Lcom/braze/Constants;->isAmazonDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/braze/configuration/BrazeConfigurationProvider;->isAdmMessagingRegistrationEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 161
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object p1, Lcom/braze/push/BrazePushReceiver$Companion$handleAdmRegistrationEventIfEnabled$2;->INSTANCE:Lcom/braze/push/BrazePushReceiver$Companion$handleAdmRegistrationEventIfEnabled$2;

    move-object v4, p1

    check-cast v4, Lkotlin/jvm/functions/Function0;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v6}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 162
    invoke-virtual {p0, p2, p3}, Lcom/braze/push/BrazePushReceiver$Companion;->handleAdmRegistrationIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    const/4 p1, 0x1

    return p1

    .line 165
    :cond_0
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v2, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    sget-object p1, Lcom/braze/push/BrazePushReceiver$Companion$handleAdmRegistrationEventIfEnabled$3;->INSTANCE:Lcom/braze/push/BrazePushReceiver$Companion$handleAdmRegistrationEventIfEnabled$3;

    move-object v4, p1

    check-cast v4, Lkotlin/jvm/functions/Function0;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v6}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    const/4 p1, 0x0

    return p1
.end method

.method public final handleAdmRegistrationIntent(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 19
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const-string v2, "context"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "intent"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 181
    const-string v2, "error"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 182
    const-string v3, "error_description"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 183
    const-string v4, "registration_id"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 184
    const-string v5, "unregistered"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v2, :cond_0

    .line 187
    sget-object v5, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v7, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v0, Lcom/braze/push/BrazePushReceiver$Companion$handleAdmRegistrationIntent$1;

    invoke-direct {v0, v2, v3}, Lcom/braze/push/BrazePushReceiver$Companion$handleAdmRegistrationIntent$1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v9, v0

    check-cast v9, Lkotlin/jvm/functions/Function0;

    const/4 v10, 0x2

    const/4 v11, 0x0

    const/4 v8, 0x0

    move-object/from16 v6, p0

    invoke-static/range {v5 .. v11}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    if-eqz v4, :cond_1

    .line 190
    sget-object v12, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v14, Lcom/braze/support/BrazeLogger$Priority;->I:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v1, Lcom/braze/push/BrazePushReceiver$Companion$handleAdmRegistrationIntent$2;

    invoke-direct {v1, v4}, Lcom/braze/push/BrazePushReceiver$Companion$handleAdmRegistrationIntent$2;-><init>(Ljava/lang/String;)V

    move-object/from16 v16, v1

    check-cast v16, Lkotlin/jvm/functions/Function0;

    const/16 v17, 0x2

    const/16 v18, 0x0

    const/4 v15, 0x0

    move-object/from16 v13, p0

    invoke-static/range {v12 .. v18}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 191
    sget-object v1, Lcom/braze/Braze;->Companion:Lcom/braze/Braze$Companion;

    invoke-virtual {v1, v0}, Lcom/braze/Braze$Companion;->getInstance(Landroid/content/Context;)Lcom/braze/Braze;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/braze/Braze;->setRegisteredPushToken(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    .line 194
    sget-object v5, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v7, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v0, Lcom/braze/push/BrazePushReceiver$Companion$handleAdmRegistrationIntent$3;

    invoke-direct {v0, v1}, Lcom/braze/push/BrazePushReceiver$Companion$handleAdmRegistrationIntent$3;-><init>(Ljava/lang/String;)V

    move-object v9, v0

    check-cast v9, Lkotlin/jvm/functions/Function0;

    const/4 v10, 0x2

    const/4 v11, 0x0

    const/4 v8, 0x0

    move-object/from16 v6, p0

    invoke-static/range {v5 .. v11}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    :goto_0
    const/4 v0, 0x1

    return v0

    .line 197
    :cond_2
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v3, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    sget-object v0, Lcom/braze/push/BrazePushReceiver$Companion$handleAdmRegistrationIntent$4;->INSTANCE:Lcom/braze/push/BrazePushReceiver$Companion$handleAdmRegistrationIntent$4;

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function0;

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object/from16 v2, p0

    invoke-static/range {v1 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    const/4 v0, 0x0

    return v0
.end method

.method public final handlePushNotificationPayload(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 16
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const-string v2, "context"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "intent"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 212
    invoke-static/range {p2 .. p2}, Lcom/braze/push/BrazeNotificationUtils;->isBrazePushMessage(Landroid/content/Intent;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 213
    sget-object v4, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v0, Lcom/braze/push/BrazePushReceiver$Companion$handlePushNotificationPayload$1;->INSTANCE:Lcom/braze/push/BrazePushReceiver$Companion$handlePushNotificationPayload$1;

    move-object v8, v0

    check-cast v8, Lkotlin/jvm/functions/Function0;

    const/4 v9, 0x3

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v5, p0

    invoke-static/range {v4 .. v10}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return v3

    .line 216
    :cond_0
    const-string v2, "message_type"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "deleted_messages"

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 217
    const-string v0, "total_deleted"

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 218
    sget-object v4, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v6, Lcom/braze/support/BrazeLogger$Priority;->I:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v1, Lcom/braze/push/BrazePushReceiver$Companion$handlePushNotificationPayload$2;

    invoke-direct {v1, v0}, Lcom/braze/push/BrazePushReceiver$Companion$handlePushNotificationPayload$2;-><init>(I)V

    move-object v8, v1

    check-cast v8, Lkotlin/jvm/functions/Function0;

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v7, 0x0

    move-object/from16 v5, p0

    invoke-static/range {v4 .. v10}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return v3

    .line 224
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_2

    return v3

    .line 226
    :cond_2
    sget-object v4, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v6, Lcom/braze/support/BrazeLogger$Priority;->I:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v5, Lcom/braze/push/BrazePushReceiver$Companion$handlePushNotificationPayload$3;

    invoke-direct {v5, v2}, Lcom/braze/push/BrazePushReceiver$Companion$handlePushNotificationPayload$3;-><init>(Landroid/os/Bundle;)V

    move-object v8, v5

    check-cast v8, Lkotlin/jvm/functions/Function0;

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v7, 0x0

    move-object/from16 v5, p0

    invoke-static/range {v4 .. v10}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 229
    sget-object v4, Lcom/braze/models/push/BrazeNotificationPayload;->Companion:Lcom/braze/models/push/BrazeNotificationPayload$Companion;

    invoke-virtual {v4, v2}, Lcom/braze/models/push/BrazeNotificationPayload$Companion;->getAttachedBrazeExtras(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    .line 230
    const-string v5, "extra"

    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 231
    const-string v5, "braze_push_received_timestamp"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 234
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 232
    invoke-virtual {v2, v5, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 238
    :cond_3
    new-instance v5, Lcom/braze/configuration/BrazeConfigurationProvider;

    invoke-direct {v5, v0}, Lcom/braze/configuration/BrazeConfigurationProvider;-><init>(Landroid/content/Context;)V

    move-object/from16 v13, p0

    .line 239
    invoke-virtual {v13, v0, v5, v2, v4}, Lcom/braze/push/BrazePushReceiver$Companion;->createPayload(Landroid/content/Context;Lcom/braze/configuration/BrazeConfigurationProvider;Landroid/os/Bundle;Landroid/os/Bundle;)Lcom/braze/models/push/BrazeNotificationPayload;

    move-result-object v4

    .line 241
    invoke-virtual {v4}, Lcom/braze/models/push/BrazeNotificationPayload;->isUninstallTrackingPush()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 244
    sget-object v6, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v8, Lcom/braze/support/BrazeLogger$Priority;->I:Lcom/braze/support/BrazeLogger$Priority;

    sget-object v0, Lcom/braze/push/BrazePushReceiver$Companion$handlePushNotificationPayload$4;->INSTANCE:Lcom/braze/push/BrazePushReceiver$Companion$handlePushNotificationPayload$4;

    move-object v10, v0

    check-cast v10, Lkotlin/jvm/functions/Function0;

    const/4 v11, 0x2

    const/4 v12, 0x0

    const/4 v9, 0x0

    move-object/from16 v7, p0

    invoke-static/range {v6 .. v12}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return v3

    .line 252
    :cond_4
    invoke-static {v4}, Lcom/braze/push/BrazeNotificationUtils;->handleContentCardsSerializedCardIfPresent(Lcom/braze/models/push/BrazeNotificationPayload;)V

    .line 254
    invoke-virtual {v4}, Lcom/braze/models/push/BrazeNotificationPayload;->getShouldFetchTestTriggers()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 255
    invoke-virtual {v5}, Lcom/braze/configuration/BrazeConfigurationProvider;->isInAppMessageTestPushEagerDisplayEnabled()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 256
    sget-object v6, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;->Companion:Lcom/braze/ui/inappmessage/BrazeInAppMessageManager$Companion;

    invoke-virtual {v6}, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager$Companion;->getInstance()Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;->getActivity()Landroid/app/Activity;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 260
    sget-object v6, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v2, Lcom/braze/push/BrazePushReceiver$Companion$handlePushNotificationPayload$5;->INSTANCE:Lcom/braze/push/BrazePushReceiver$Companion$handlePushNotificationPayload$5;

    move-object v10, v2

    check-cast v10, Lkotlin/jvm/functions/Function0;

    const/4 v11, 0x3

    const/4 v12, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v7, p0

    invoke-static/range {v6 .. v12}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 264
    invoke-static/range {p1 .. p2}, Lcom/braze/BrazeInternal;->handleInAppMessageTestPush(Landroid/content/Context;Landroid/content/Intent;)V

    return v3

    .line 268
    :cond_5
    invoke-static/range {p2 .. p2}, Lcom/braze/push/BrazeNotificationUtils;->isNotificationMessage(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 269
    sget-object v6, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v1, Lcom/braze/push/BrazePushReceiver$Companion$handlePushNotificationPayload$6;->INSTANCE:Lcom/braze/push/BrazePushReceiver$Companion$handlePushNotificationPayload$6;

    move-object v10, v1

    check-cast v10, Lkotlin/jvm/functions/Function0;

    const/4 v11, 0x3

    const/4 v12, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v7, p0

    invoke-static/range {v6 .. v12}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 271
    invoke-static {v4}, Lcom/braze/push/BrazeNotificationUtils;->getNotificationId(Lcom/braze/models/push/BrazeNotificationPayload;)I

    move-result v1

    .line 272
    const-string v6, "nid"

    invoke-virtual {v2, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 273
    invoke-virtual {v4}, Lcom/braze/models/push/BrazeNotificationPayload;->isPushStory()Z

    move-result v6

    const/4 v14, 0x1

    if-eqz v6, :cond_7

    .line 274
    invoke-static {}, Lcom/braze/Constants;->isAmazonDevice()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 275
    sget-object v6, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v0, Lcom/braze/push/BrazePushReceiver$Companion$handlePushNotificationPayload$7;->INSTANCE:Lcom/braze/push/BrazePushReceiver$Companion$handlePushNotificationPayload$7;

    move-object v10, v0

    check-cast v10, Lkotlin/jvm/functions/Function0;

    const/4 v11, 0x3

    const/4 v12, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v7, p0

    invoke-static/range {v6 .. v12}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return v3

    .line 279
    :cond_6
    const-string v15, "braze_story_newly_received"

    invoke-virtual {v2, v15}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 280
    sget-object v6, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v7, Lcom/braze/push/BrazePushReceiver$Companion$handlePushNotificationPayload$8;->INSTANCE:Lcom/braze/push/BrazePushReceiver$Companion$handlePushNotificationPayload$8;

    move-object v10, v7

    check-cast v10, Lkotlin/jvm/functions/Function0;

    const/4 v11, 0x3

    const/4 v12, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v7, p0

    invoke-static/range {v6 .. v12}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 281
    invoke-virtual {v2, v15, v14}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 288
    :cond_7
    sget-object v6, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v8, Lcom/braze/support/BrazeLogger$Priority;->V:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v7, Lcom/braze/push/BrazePushReceiver$Companion$handlePushNotificationPayload$9;

    invoke-direct {v7, v4}, Lcom/braze/push/BrazePushReceiver$Companion$handlePushNotificationPayload$9;-><init>(Lcom/braze/models/push/BrazeNotificationPayload;)V

    move-object v10, v7

    check-cast v10, Lkotlin/jvm/functions/Function0;

    const/4 v11, 0x2

    const/4 v12, 0x0

    const/4 v9, 0x0

    move-object/from16 v7, p0

    invoke-static/range {v6 .. v12}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 289
    invoke-static {}, Lcom/braze/push/BrazeNotificationUtils;->getActiveNotificationFactory()Lcom/braze/IBrazeNotificationFactory;

    move-result-object v6

    invoke-interface {v6, v4}, Lcom/braze/IBrazeNotificationFactory;->createNotification(Lcom/braze/models/push/BrazeNotificationPayload;)Landroid/app/Notification;

    move-result-object v15

    if-nez v15, :cond_8

    .line 291
    sget-object v6, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v0, Lcom/braze/push/BrazePushReceiver$Companion$handlePushNotificationPayload$10;->INSTANCE:Lcom/braze/push/BrazePushReceiver$Companion$handlePushNotificationPayload$10;

    move-object v10, v0

    check-cast v10, Lkotlin/jvm/functions/Function0;

    const/4 v11, 0x3

    const/4 v12, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v7, p0

    invoke-static/range {v6 .. v12}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return v3

    .line 294
    :cond_8
    invoke-static/range {p1 .. p1}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object v3

    const-string v6, "from(context)"

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 295
    sget-object v6, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    new-instance v7, Lcom/braze/push/BrazePushReceiver$Companion$handlePushNotificationPayload$11;

    invoke-direct {v7, v3}, Lcom/braze/push/BrazePushReceiver$Companion$handlePushNotificationPayload$11;-><init>(Landroidx/core/app/NotificationManagerCompat;)V

    move-object v10, v7

    check-cast v10, Lkotlin/jvm/functions/Function0;

    const/4 v11, 0x3

    const/4 v12, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v7, p0

    invoke-static/range {v6 .. v12}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 299
    const-string v6, "appboy_notification"

    .line 298
    invoke-virtual {v3, v6, v1, v15}, Landroidx/core/app/NotificationManagerCompat;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 303
    invoke-static {v0, v2, v4}, Lcom/braze/push/BrazeNotificationUtils;->sendPushMessageReceivedBroadcast(Landroid/content/Context;Landroid/os/Bundle;Lcom/braze/models/push/BrazeNotificationPayload;)V

    .line 304
    invoke-static {v0, v5, v2}, Lcom/braze/push/BrazeNotificationUtils;->wakeScreenIfAppropriate(Landroid/content/Context;Lcom/braze/configuration/BrazeConfigurationProvider;Landroid/os/Bundle;)Z

    .line 307
    invoke-virtual {v4}, Lcom/braze/models/push/BrazeNotificationPayload;->getPushDuration()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_9

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 309
    const-class v3, Lcom/braze/push/BrazePushReceiver;

    .line 308
    invoke-static {v0, v3, v1, v2}, Lcom/braze/push/BrazeNotificationUtils;->setNotificationDurationAlarm(Landroid/content/Context;Ljava/lang/Class;II)V

    :cond_9
    return v14

    .line 317
    :cond_a
    sget-object v6, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v1, Lcom/braze/push/BrazePushReceiver$Companion$handlePushNotificationPayload$13;->INSTANCE:Lcom/braze/push/BrazePushReceiver$Companion$handlePushNotificationPayload$13;

    move-object v10, v1

    check-cast v10, Lkotlin/jvm/functions/Function0;

    const/4 v11, 0x3

    const/4 v12, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v7, p0

    invoke-static/range {v6 .. v12}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 318
    invoke-static {v0, v2, v4}, Lcom/braze/push/BrazeNotificationUtils;->sendPushMessageReceivedBroadcast(Landroid/content/Context;Landroid/os/Bundle;Lcom/braze/models/push/BrazeNotificationPayload;)V

    .line 319
    invoke-static {v4}, Lcom/braze/push/BrazeNotificationUtils;->requestGeofenceRefreshIfAppropriate(Lcom/braze/models/push/BrazeNotificationPayload;)Z

    .line 320
    invoke-static {v4}, Lcom/braze/push/BrazeNotificationUtils;->refreshFeatureFlagsIfAppropriate(Lcom/braze/models/push/BrazeNotificationPayload;)Z

    return v3
.end method

.method public final handleReceivedIntent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Lcom/braze/push/BrazePushReceiver$Companion;->handleReceivedIntent$default(Lcom/braze/push/BrazePushReceiver$Companion;Landroid/content/Context;Landroid/content/Intent;ZILjava/lang/Object;)V

    return-void
.end method

.method public final handleReceivedIntent(Landroid/content/Context;Landroid/content/Intent;Z)V
    .locals 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 141
    sget-object p3, Lcom/braze/coroutine/BrazeCoroutineScope;->INSTANCE:Lcom/braze/coroutine/BrazeCoroutineScope;

    move-object v0, p3

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    new-instance p3, Lcom/braze/push/BrazePushReceiver$Companion$handleReceivedIntent$1;

    const/4 v1, 0x0

    invoke-direct {p3, p1, p2, v1}, Lcom/braze/push/BrazePushReceiver$Companion$handleReceivedIntent$1;-><init>(Landroid/content/Context;Landroid/content/Intent;Lkotlin/coroutines/Continuation;)V

    move-object v3, p3

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    goto :goto_0

    .line 146
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/braze/push/BrazePushReceiver$Companion;->handlePush(Landroid/content/Context;Landroid/content/Intent;)V

    :goto_0
    return-void
.end method
