.class public final Lcom/braze/push/BrazeNotificationUtils;
.super Ljava/lang/Object;
.source "BrazeNotificationUtils.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/braze/push/BrazeNotificationUtils$BrazeNotificationBroadcastType;,
        Lcom/braze/push/BrazeNotificationUtils$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBrazeNotificationUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BrazeNotificationUtils.kt\ncom/braze/push/BrazeNotificationUtils\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1098:1\n1#2:1099\n1#2:1110\n1601#3,9:1100\n1849#3:1109\n1850#3:1111\n1610#3:1112\n1849#3,2:1113\n*S KotlinDebug\n*F\n+ 1 BrazeNotificationUtils.kt\ncom/braze/push/BrazeNotificationUtils\n*L\n408#1:1110\n408#1:1100,9\n408#1:1109\n408#1:1111\n408#1:1112\n409#1:1113,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0084\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001TB\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0007J\u0010\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u0016H\u0007J\u0010\u0010\u0017\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u0016H\u0007J\u0010\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u0016H\u0007J\"\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u001b\u001a\u00020\u00042\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u0002J\u001c\u0010\u001e\u001a\u0004\u0018\u00010\u001f2\u0006\u0010 \u001a\u00020!2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u0007J\u0018\u0010\"\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010#\u001a\u00020$H\u0007J\u0010\u0010%\u001a\u00020\u000f2\u0006\u0010\u0015\u001a\u00020\u0016H\u0007J\u0018\u0010&\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010#\u001a\u00020$H\u0007J\u0018\u0010\'\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010#\u001a\u00020$H\u0007J\u0018\u0010(\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010#\u001a\u00020$H\u0007J\u0010\u0010)\u001a\u00020*2\u0006\u0010#\u001a\u00020$H\u0007J\u0010\u0010+\u001a\u00020*2\u0006\u0010\u001c\u001a\u00020\u001dH\u0007J\u0010\u0010,\u001a\u00020*2\u0006\u0010-\u001a\u00020\u0013H\u0007J\u001c\u0010.\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0008\u0010/\u001a\u0004\u0018\u00010\u0004H\u0007J\u0010\u00100\u001a\u00020\u000f2\u0006\u0010\u0015\u001a\u00020\u0016H\u0007J\u0010\u00101\u001a\u00020*2\u0006\u0010\u0015\u001a\u00020\u0016H\u0007J\u0010\u00102\u001a\u00020*2\u0006\u0010\u0015\u001a\u00020\u0016H\u0007J\u0018\u00103\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010#\u001a\u00020$H\u0007J\u0018\u00104\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010#\u001a\u00020$H\u0007J\"\u00105\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u00106\u001a\u00020$2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u0002J.\u00105\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u00107\u001a\u0002082\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0002J \u00109\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u0015\u001a\u00020\u0016H\u0007J\u0018\u0010:\u001a\u00020\u000f2\u0006\u0010;\u001a\u00020<2\u0006\u0010\u0015\u001a\u00020\u0016H\u0007J\u0018\u0010=\u001a\u00020\u000f2\u0006\u0010;\u001a\u00020<2\u0006\u0010\u0015\u001a\u00020\u0016H\u0007J\u0018\u0010>\u001a\u00020\u000f2\u0006\u0010;\u001a\u00020<2\u0006\u0010\u0015\u001a\u00020\u0016H\u0007J\"\u0010?\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010;\u001a\u00020<2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u0007J\"\u0010@\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010;\u001a\u00020<2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u0007J\u0018\u0010A\u001a\u00020*2\u0006\u0010;\u001a\u00020<2\u0006\u0010\u0015\u001a\u00020\u0016H\u0007J\u0018\u0010B\u001a\u00020\u000f2\u0006\u0010;\u001a\u00020<2\u0006\u0010\u0015\u001a\u00020\u0016H\u0007J.\u0010C\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u000c\u0010D\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u000b2\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010E\u001a\u00020\u0013H\u0007J\u0018\u0010F\u001a\u00020\u000f2\u0006\u0010;\u001a\u00020<2\u0006\u0010\u0015\u001a\u00020\u0016H\u0007J\u0018\u0010G\u001a\u00020\u000f2\u0006\u0010;\u001a\u00020<2\u0006\u0010\u0015\u001a\u00020\u0016H\u0007J\u0018\u0010H\u001a\u00020\u000f2\u0006\u0010;\u001a\u00020<2\u0006\u0010\u0015\u001a\u00020\u0016H\u0007J\u0018\u0010I\u001a\u00020\u00132\u0006\u0010J\u001a\u00020K2\u0006\u0010;\u001a\u00020<H\u0007J\u0018\u0010L\u001a\u00020\u000f2\u0006\u0010;\u001a\u00020<2\u0006\u0010\u0015\u001a\u00020\u0016H\u0007J\u0018\u0010M\u001a\u00020\u000f2\u0006\u0010;\u001a\u00020<2\u0006\u0010\u0015\u001a\u00020\u0016H\u0007J\u0018\u0010N\u001a\u00020\u000f2\u0006\u0010;\u001a\u00020<2\u0006\u0010\u0015\u001a\u00020\u0016H\u0007J\u0018\u0010O\u001a\u00020\u000f2\u0006\u0010;\u001a\u00020<2\u0006\u0010\u0015\u001a\u00020\u0016H\u0007J\u0018\u0010P\u001a\u00020\u000f2\u0006\u0010;\u001a\u00020<2\u0006\u0010\u0015\u001a\u00020\u0016H\u0007J\"\u0010Q\u001a\u00020*2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010R\u001a\u00020K2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u0007J\u0010\u0010Q\u001a\u00020*2\u0006\u0010\u0015\u001a\u00020\u0016H\u0007J\u000c\u0010S\u001a\u00020**\u00020$H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0006\u001a\u00020\u00078G\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\tR\u0015\u0010\n\u001a\u0006\u0012\u0002\u0008\u00030\u000b8G\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006U"
    }
    d2 = {
        "Lcom/braze/push/BrazeNotificationUtils;",
        "",
        "()V",
        "SOURCE_KEY",
        "",
        "TAG",
        "activeNotificationFactory",
        "Lcom/braze/IBrazeNotificationFactory;",
        "getActiveNotificationFactory",
        "()Lcom/braze/IBrazeNotificationFactory;",
        "notificationReceiverClass",
        "Ljava/lang/Class;",
        "getNotificationReceiverClass",
        "()Ljava/lang/Class;",
        "cancelNotification",
        "",
        "context",
        "Landroid/content/Context;",
        "notificationId",
        "",
        "getNotificationId",
        "payload",
        "Lcom/braze/models/push/BrazeNotificationPayload;",
        "getNotificationPriority",
        "getOrCreateNotificationChannelId",
        "getPushActionPendingIntent",
        "Landroid/app/PendingIntent;",
        "action",
        "notificationExtras",
        "Landroid/os/Bundle;",
        "getValidNotificationChannel",
        "Landroid/app/NotificationChannel;",
        "notificationManager",
        "Landroid/app/NotificationManager;",
        "handleCancelNotificationAction",
        "intent",
        "Landroid/content/Intent;",
        "handleContentCardsSerializedCardIfPresent",
        "handleNotificationDeleted",
        "handleNotificationOpened",
        "handlePushStoryPageClicked",
        "isNotificationMessage",
        "",
        "isUninstallTrackingPush",
        "isValidNotificationVisibility",
        "visibility",
        "logBaiduNotificationClick",
        "customContentString",
        "prefetchBitmapsIfNewlyReceivedStoryPush",
        "refreshFeatureFlagsIfAppropriate",
        "requestGeofenceRefreshIfAppropriate",
        "routeUserWithNotificationOpenedIntent",
        "sendNotificationOpenedBroadcast",
        "sendPushActionIntent",
        "pushIntent",
        "broadcastType",
        "Lcom/braze/push/BrazeNotificationUtils$BrazeNotificationBroadcastType;",
        "sendPushMessageReceivedBroadcast",
        "setAccentColorIfPresentAndSupported",
        "notificationBuilder",
        "Landroidx/core/app/NotificationCompat$Builder;",
        "setCategoryIfPresentAndSupported",
        "setContentIfPresent",
        "setContentIntentIfPresent",
        "setDeleteIntent",
        "setLargeIconIfPresentAndSupported",
        "setNotificationBadgeNumberIfPresent",
        "setNotificationDurationAlarm",
        "thisClass",
        "durationInMillis",
        "setPriorityIfPresentAndSupported",
        "setPublicVersionIfPresentAndSupported",
        "setSetShowWhen",
        "setSmallIcon",
        "appConfigurationProvider",
        "Lcom/braze/configuration/BrazeConfigurationProvider;",
        "setSoundIfPresentAndSupported",
        "setSummaryTextIfPresentAndSupported",
        "setTickerIfPresent",
        "setTitleIfPresent",
        "setVisibilityIfPresentAndSupported",
        "wakeScreenIfAppropriate",
        "configurationProvider",
        "isBrazePushMessage",
        "BrazeNotificationBroadcastType",
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
.field public static final INSTANCE:Lcom/braze/push/BrazeNotificationUtils;

.field private static final SOURCE_KEY:Ljava/lang/String; = "source"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/braze/push/BrazeNotificationUtils;

    invoke-direct {v0}, Lcom/braze/push/BrazeNotificationUtils;-><init>()V

    sput-object v0, Lcom/braze/push/BrazeNotificationUtils;->INSTANCE:Lcom/braze/push/BrazeNotificationUtils;

    .line 63
    const-class v0, Lcom/braze/push/BrazeNotificationUtils;

    invoke-static {v0}, Lcom/braze/support/BrazeLogger;->getBrazeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/braze/push/BrazeNotificationUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final cancelNotification(Landroid/content/Context;I)V
    .locals 8
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 806
    :try_start_0
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v2, Lcom/braze/push/BrazeNotificationUtils;->INSTANCE:Lcom/braze/push/BrazeNotificationUtils;

    new-instance v0, Lcom/braze/push/BrazeNotificationUtils$cancelNotification$1;

    invoke-direct {v0, p1}, Lcom/braze/push/BrazeNotificationUtils$cancelNotification$1;-><init>(I)V

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function0;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 807
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.braze.action.CANCEL_NOTIFICATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/braze/push/BrazeNotificationUtils;->getNotificationReceiverClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Intent(Constants.BRAZE_C\u2026otificationReceiverClass)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 808
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 809
    const-string v1, "nid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 810
    invoke-static {p0, v0}, Lcom/braze/support/IntentUtils;->addComponentAndSendBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 812
    sget-object p1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v0, Lcom/braze/push/BrazeNotificationUtils;->INSTANCE:Lcom/braze/push/BrazeNotificationUtils;

    sget-object v1, Lcom/braze/support/BrazeLogger$Priority;->E:Lcom/braze/support/BrazeLogger$Priority;

    check-cast p0, Ljava/lang/Throwable;

    sget-object v2, Lcom/braze/push/BrazeNotificationUtils$cancelNotification$2;->INSTANCE:Lcom/braze/push/BrazeNotificationUtils$cancelNotification$2;

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-virtual {p1, v0, v1, p0, v2}, Lcom/braze/support/BrazeLogger;->brazelog(Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V

    :goto_0
    return-void
.end method

.method public static final getActiveNotificationFactory()Lcom/braze/IBrazeNotificationFactory;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 72
    sget-object v0, Lcom/braze/Braze;->Companion:Lcom/braze/Braze$Companion;

    invoke-virtual {v0}, Lcom/braze/Braze$Companion;->getCustomBrazeNotificationFactory()Lcom/braze/IBrazeNotificationFactory;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/braze/push/BrazeNotificationFactory;->Companion:Lcom/braze/push/BrazeNotificationFactory$Companion;

    invoke-virtual {v0}, Lcom/braze/push/BrazeNotificationFactory$Companion;->getInstance()Lcom/braze/push/BrazeNotificationFactory;

    move-result-object v0

    check-cast v0, Lcom/braze/IBrazeNotificationFactory;

    :cond_0
    return-object v0
.end method

.method public static final getNotificationId(Lcom/braze/models/push/BrazeNotificationPayload;)I
    .locals 8
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "payload"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 284
    invoke-virtual {p0}, Lcom/braze/models/push/BrazeNotificationPayload;->getCustomNotificationId()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 286
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v2, Lcom/braze/push/BrazeNotificationUtils;->INSTANCE:Lcom/braze/push/BrazeNotificationUtils;

    new-instance p0, Lcom/braze/push/BrazeNotificationUtils$getNotificationId$1;

    invoke-direct {p0, v0}, Lcom/braze/push/BrazeNotificationUtils$getNotificationId$1;-><init>(Ljava/lang/Integer;)V

    move-object v5, p0

    check-cast v5, Lkotlin/jvm/functions/Function0;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 287
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_1

    .line 291
    :cond_0
    invoke-virtual {p0}, Lcom/braze/models/push/BrazeNotificationPayload;->getTitleText()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 292
    :cond_1
    invoke-virtual {p0}, Lcom/braze/models/push/BrazeNotificationPayload;->getContentText()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2
    if-nez v1, :cond_3

    const/4 p0, 0x0

    goto :goto_0

    .line 293
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result p0

    .line 294
    :goto_0
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v1, Lcom/braze/push/BrazeNotificationUtils;->INSTANCE:Lcom/braze/push/BrazeNotificationUtils;

    new-instance v2, Lcom/braze/push/BrazeNotificationUtils$getNotificationId$4;

    invoke-direct {v2, p0}, Lcom/braze/push/BrazeNotificationUtils$getNotificationId$4;-><init>(I)V

    move-object v4, v2

    check-cast v4, Lkotlin/jvm/functions/Function0;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v6}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    :goto_1
    return p0
.end method

.method public static final getNotificationPriority(Lcom/braze/models/push/BrazeNotificationPayload;)I
    .locals 9
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "payload"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 310
    invoke-virtual {p0}, Lcom/braze/models/push/BrazeNotificationPayload;->getNotificationPriorityInt()Ljava/lang/Integer;

    move-result-object v0

    .line 311
    invoke-virtual {p0}, Lcom/braze/models/push/BrazeNotificationPayload;->getNotificationPriorityInt()Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_1

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    const/4 v1, -0x2

    if-gt v1, p0, :cond_0

    const/4 v1, 0x3

    if-ge p0, v1, :cond_0

    return p0

    .line 316
    :cond_0
    sget-object v2, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v3, Lcom/braze/push/BrazeNotificationUtils;->INSTANCE:Lcom/braze/push/BrazeNotificationUtils;

    sget-object v4, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    new-instance p0, Lcom/braze/push/BrazeNotificationUtils$getNotificationPriority$1$1;

    invoke-direct {p0, v0}, Lcom/braze/push/BrazeNotificationUtils$getNotificationPriority$1$1;-><init>(Ljava/lang/Integer;)V

    move-object v6, p0

    check-cast v6, Lkotlin/jvm/functions/Function0;

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static final getNotificationReceiverClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 80
    invoke-static {}, Lcom/braze/Constants;->isAmazonDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/braze/push/BrazeAmazonDeviceMessagingReceiver;

    goto :goto_0

    :cond_0
    const-class v0, Lcom/braze/push/BrazePushReceiver;

    :goto_0
    return-object v0
.end method

.method public static final getOrCreateNotificationChannelId(Lcom/braze/models/push/BrazeNotificationPayload;)Ljava/lang/String;
    .locals 19
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "payload"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 859
    invoke-virtual/range {p0 .. p0}, Lcom/braze/models/push/BrazeNotificationPayload;->getNotificationChannelId()Ljava/lang/String;

    move-result-object v0

    .line 865
    invoke-virtual/range {p0 .. p0}, Lcom/braze/models/push/BrazeNotificationPayload;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 866
    invoke-virtual/range {p0 .. p0}, Lcom/braze/models/push/BrazeNotificationPayload;->getConfigurationProvider()Lcom/braze/configuration/BrazeConfigurationProvider;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 867
    const-string v4, "notification"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    if-eqz v2, :cond_6

    check-cast v2, Landroid/app/NotificationManager;

    if-eqz v0, :cond_2

    .line 871
    invoke-virtual {v2, v0}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 872
    sget-object v5, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v6, Lcom/braze/push/BrazeNotificationUtils;->INSTANCE:Lcom/braze/push/BrazeNotificationUtils;

    new-instance v1, Lcom/braze/push/BrazeNotificationUtils$getOrCreateNotificationChannelId$1;

    invoke-direct {v1, v0}, Lcom/braze/push/BrazeNotificationUtils$getOrCreateNotificationChannelId$1;-><init>(Ljava/lang/String;)V

    move-object v9, v1

    check-cast v9, Lkotlin/jvm/functions/Function0;

    const/4 v10, 0x3

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v5 .. v11}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-object v0

    .line 875
    :cond_1
    sget-object v12, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v13, Lcom/braze/push/BrazeNotificationUtils;->INSTANCE:Lcom/braze/push/BrazeNotificationUtils;

    new-instance v4, Lcom/braze/push/BrazeNotificationUtils$getOrCreateNotificationChannelId$2;

    invoke-direct {v4, v0}, Lcom/braze/push/BrazeNotificationUtils$getOrCreateNotificationChannelId$2;-><init>(Ljava/lang/String;)V

    move-object/from16 v16, v4

    check-cast v16, Lkotlin/jvm/functions/Function0;

    const/16 v17, 0x3

    const/16 v18, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v12 .. v18}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 880
    :cond_2
    const-string v0, "com_appboy_default_notification_channel"

    invoke-virtual {v2, v0}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v4

    if-nez v4, :cond_5

    .line 882
    sget-object v5, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v6, Lcom/braze/push/BrazeNotificationUtils;->INSTANCE:Lcom/braze/push/BrazeNotificationUtils;

    sget-object v4, Lcom/braze/push/BrazeNotificationUtils$getOrCreateNotificationChannelId$3;->INSTANCE:Lcom/braze/push/BrazeNotificationUtils$getOrCreateNotificationChannelId$3;

    move-object v9, v4

    check-cast v9, Lkotlin/jvm/functions/Function0;

    const/4 v10, 0x3

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v5 .. v11}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 883
    new-instance v4, Landroid/app/NotificationChannel;

    if-eqz v1, :cond_3

    .line 885
    invoke-virtual {v1}, Lcom/braze/configuration/BrazeConfigurationProvider;->getDefaultNotificationChannelName()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_3
    move-object v5, v3

    :goto_1
    check-cast v5, Ljava/lang/CharSequence;

    const/4 v6, 0x3

    .line 883
    invoke-direct {v4, v0, v5, v6}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    if-eqz v1, :cond_4

    .line 888
    invoke-virtual {v1}, Lcom/braze/configuration/BrazeConfigurationProvider;->getDefaultNotificationChannelDescription()Ljava/lang/String;

    move-result-object v3

    :cond_4
    invoke-virtual {v4, v3}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    .line 889
    invoke-virtual {v2, v4}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :cond_5
    return-object v0

    .line 867
    :cond_6
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type android.app.NotificationManager"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final getPushActionPendingIntent(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/PendingIntent;
    .locals 1

    .line 1047
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-class p2, Lcom/braze/push/NotificationTrampolineActivity;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p2

    const-string v0, "Intent(action).setClass(\u2026lineActivity::class.java)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 1049
    invoke-virtual {p2, p3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_0
    const/high16 p3, 0x40000000

    .line 1051
    invoke-static {}, Lcom/braze/support/IntentUtils;->getImmutablePendingIntentFlags()I

    move-result v0

    or-int/2addr p3, v0

    .line 1052
    invoke-static {}, Lcom/braze/support/IntentUtils;->getRequestCode()I

    move-result v0

    invoke-static {p1, v0, p2, p3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    const-string p2, "getActivity(context, get\u2026 pushActionIntent, flags)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public static final getValidNotificationChannel(Landroid/app/NotificationManager;Landroid/os/Bundle;)Landroid/app/NotificationChannel;
    .locals 18
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "notificationManager"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 1013
    sget-object v3, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v4, Lcom/braze/push/BrazeNotificationUtils;->INSTANCE:Lcom/braze/push/BrazeNotificationUtils;

    sget-object v0, Lcom/braze/push/BrazeNotificationUtils$getValidNotificationChannel$1;->INSTANCE:Lcom/braze/push/BrazeNotificationUtils$getValidNotificationChannel$1;

    move-object v7, v0

    check-cast v7, Lkotlin/jvm/functions/Function0;

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v9}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-object v2

    .line 1016
    :cond_0
    const-string v3, "ab_nc"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1017
    move-object v3, v1

    check-cast v3, Ljava/lang/CharSequence;

    if-eqz v3, :cond_3

    invoke-static {v3}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 1018
    :cond_1
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1020
    sget-object v4, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v5, Lcom/braze/push/BrazeNotificationUtils;->INSTANCE:Lcom/braze/push/BrazeNotificationUtils;

    new-instance v0, Lcom/braze/push/BrazeNotificationUtils$getValidNotificationChannel$2;

    invoke-direct {v0, v1}, Lcom/braze/push/BrazeNotificationUtils$getValidNotificationChannel$2;-><init>(Ljava/lang/String;)V

    move-object v8, v0

    check-cast v8, Lkotlin/jvm/functions/Function0;

    const/4 v9, 0x3

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v4 .. v10}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-object v3

    .line 1023
    :cond_2
    sget-object v11, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v12, Lcom/braze/push/BrazeNotificationUtils;->INSTANCE:Lcom/braze/push/BrazeNotificationUtils;

    new-instance v3, Lcom/braze/push/BrazeNotificationUtils$getValidNotificationChannel$3;

    invoke-direct {v3, v1}, Lcom/braze/push/BrazeNotificationUtils$getValidNotificationChannel$3;-><init>(Ljava/lang/String;)V

    move-object v15, v3

    check-cast v15, Lkotlin/jvm/functions/Function0;

    const/16 v16, 0x3

    const/16 v17, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v11 .. v17}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 1026
    :cond_3
    :goto_0
    const-string v1, "com_appboy_default_notification_channel"

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v0

    if-eqz v0, :cond_4

    return-object v0

    .line 1030
    :cond_4
    sget-object v3, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v4, Lcom/braze/push/BrazeNotificationUtils;->INSTANCE:Lcom/braze/push/BrazeNotificationUtils;

    sget-object v0, Lcom/braze/push/BrazeNotificationUtils$getValidNotificationChannel$4;->INSTANCE:Lcom/braze/push/BrazeNotificationUtils$getValidNotificationChannel$4;

    move-object v7, v0

    check-cast v7, Lkotlin/jvm/functions/Function0;

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v9}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-object v2
.end method

.method public static final handleCancelNotificationAction(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "nid"

    const-string v1, "context"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "intent"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 784
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, -0x1

    .line 785
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 786
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v1, Lcom/braze/push/BrazeNotificationUtils;->INSTANCE:Lcom/braze/push/BrazeNotificationUtils;

    new-instance v2, Lcom/braze/push/BrazeNotificationUtils$handleCancelNotificationAction$1;

    invoke-direct {v2, p1}, Lcom/braze/push/BrazeNotificationUtils$handleCancelNotificationAction$1;-><init>(I)V

    move-object v4, v2

    check-cast v4, Lkotlin/jvm/functions/Function0;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v6}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 787
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    check-cast p0, Landroid/app/NotificationManager;

    .line 788
    const-string v0, "appboy_notification"

    invoke-virtual {p0, v0, p1}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    goto :goto_0

    .line 787
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type android.app.NotificationManager"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 791
    sget-object p1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v0, Lcom/braze/push/BrazeNotificationUtils;->INSTANCE:Lcom/braze/push/BrazeNotificationUtils;

    sget-object v1, Lcom/braze/support/BrazeLogger$Priority;->E:Lcom/braze/support/BrazeLogger$Priority;

    check-cast p0, Ljava/lang/Throwable;

    sget-object v2, Lcom/braze/push/BrazeNotificationUtils$handleCancelNotificationAction$2;->INSTANCE:Lcom/braze/push/BrazeNotificationUtils$handleCancelNotificationAction$2;

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-virtual {p1, v0, v1, p0, v2}, Lcom/braze/support/BrazeLogger;->brazelog(Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static final handleContentCardsSerializedCardIfPresent(Lcom/braze/models/push/BrazeNotificationPayload;)V
    .locals 9
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "payload"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 970
    invoke-virtual {p0}, Lcom/braze/models/push/BrazeNotificationPayload;->getContentCardSyncData()Ljava/lang/String;

    move-result-object v0

    .line 971
    invoke-virtual {p0}, Lcom/braze/models/push/BrazeNotificationPayload;->getContentCardSyncUserId()Ljava/lang/String;

    move-result-object v1

    .line 972
    invoke-virtual {p0}, Lcom/braze/models/push/BrazeNotificationPayload;->getContext()Landroid/content/Context;

    move-result-object p0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 974
    sget-object v2, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v3, Lcom/braze/push/BrazeNotificationUtils;->INSTANCE:Lcom/braze/push/BrazeNotificationUtils;

    new-instance v4, Lcom/braze/push/BrazeNotificationUtils$handleContentCardsSerializedCardIfPresent$1;

    invoke-direct {v4, v1, v0}, Lcom/braze/push/BrazeNotificationUtils$handleContentCardsSerializedCardIfPresent$1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v4

    check-cast v6, Lkotlin/jvm/functions/Function0;

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 975
    invoke-static {p0, v0, v1}, Lcom/braze/BrazeInternal;->addSerializedContentCardToStorage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static final handleNotificationDeleted(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v1, "context"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "intent"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    :try_start_0
    sget-object v3, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v10, Lcom/braze/push/BrazeNotificationUtils;->INSTANCE:Lcom/braze/push/BrazeNotificationUtils;

    sget-object v1, Lcom/braze/push/BrazeNotificationUtils$handleNotificationDeleted$1;->INSTANCE:Lcom/braze/push/BrazeNotificationUtils$handleNotificationDeleted$1;

    move-object v7, v1

    check-cast v7, Lkotlin/jvm/functions/Function0;

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, v10

    invoke-static/range {v3 .. v9}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 125
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 127
    new-instance v9, Lcom/braze/models/push/BrazeNotificationPayload;

    const/16 v6, 0xa

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v1, v9

    move-object v2, v8

    move-object v4, p0

    invoke-direct/range {v1 .. v7}, Lcom/braze/models/push/BrazeNotificationPayload;-><init>(Landroid/os/Bundle;Landroid/os/Bundle;Landroid/content/Context;Lcom/braze/configuration/BrazeConfigurationProvider;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 128
    sget-object v1, Lcom/braze/push/BrazeNotificationUtils$BrazeNotificationBroadcastType;->DELETED:Lcom/braze/push/BrazeNotificationUtils$BrazeNotificationBroadcastType;

    invoke-direct {v10, p0, v1, v8, v9}, Lcom/braze/push/BrazeNotificationUtils;->sendPushActionIntent(Landroid/content/Context;Lcom/braze/push/BrazeNotificationUtils$BrazeNotificationBroadcastType;Landroid/os/Bundle;Lcom/braze/models/push/BrazeNotificationPayload;)V

    goto :goto_0

    .line 130
    :cond_0
    sget-object v3, Lcom/braze/push/BrazeNotificationUtils$BrazeNotificationBroadcastType;->DELETED:Lcom/braze/push/BrazeNotificationUtils$BrazeNotificationBroadcastType;

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v1, v10

    move-object v2, p0

    move-object v4, v8

    invoke-static/range {v1 .. v7}, Lcom/braze/push/BrazeNotificationUtils;->sendPushActionIntent$default(Lcom/braze/push/BrazeNotificationUtils;Landroid/content/Context;Lcom/braze/push/BrazeNotificationUtils$BrazeNotificationBroadcastType;Landroid/os/Bundle;Lcom/braze/models/push/BrazeNotificationPayload;ILjava/lang/Object;)V

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 133
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v2, Lcom/braze/push/BrazeNotificationUtils;->INSTANCE:Lcom/braze/push/BrazeNotificationUtils;

    sget-object v3, Lcom/braze/support/BrazeLogger$Priority;->E:Lcom/braze/support/BrazeLogger$Priority;

    check-cast v0, Ljava/lang/Throwable;

    sget-object v4, Lcom/braze/push/BrazeNotificationUtils$handleNotificationDeleted$2;->INSTANCE:Lcom/braze/push/BrazeNotificationUtils$handleNotificationDeleted$2;

    check-cast v4, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/braze/support/BrazeLogger;->brazelog(Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V

    :goto_0
    return-void
.end method

.method public static final handleNotificationOpened(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    :try_start_0
    sget-object v0, Lcom/braze/Braze;->Companion:Lcom/braze/Braze$Companion;

    invoke-virtual {v0, p0}, Lcom/braze/Braze$Companion;->getInstance(Landroid/content/Context;)Lcom/braze/Braze;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/braze/Braze;->logPushNotificationOpened(Landroid/content/Intent;)V

    .line 100
    sget-object v2, Lcom/braze/push/BrazeNotificationUtils;->INSTANCE:Lcom/braze/push/BrazeNotificationUtils;

    invoke-static {p0, p1}, Lcom/braze/push/BrazeNotificationUtils;->sendNotificationOpenedBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    .line 101
    new-instance v0, Lcom/braze/configuration/BrazeConfigurationProvider;

    invoke-direct {v0, p0}, Lcom/braze/configuration/BrazeConfigurationProvider;-><init>(Landroid/content/Context;)V

    .line 102
    invoke-virtual {v0}, Lcom/braze/configuration/BrazeConfigurationProvider;->getDoesHandlePushDeepLinksAutomatically()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    invoke-static {p0, p1}, Lcom/braze/push/BrazeNotificationUtils;->routeUserWithNotificationOpenedIntent(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 105
    :cond_0
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v3, Lcom/braze/support/BrazeLogger$Priority;->I:Lcom/braze/support/BrazeLogger$Priority;

    sget-object p0, Lcom/braze/push/BrazeNotificationUtils$handleNotificationOpened$1;->INSTANCE:Lcom/braze/push/BrazeNotificationUtils$handleNotificationOpened$1;

    move-object v5, p0

    check-cast v5, Lkotlin/jvm/functions/Function0;

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 108
    sget-object p1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v0, Lcom/braze/push/BrazeNotificationUtils;->INSTANCE:Lcom/braze/push/BrazeNotificationUtils;

    sget-object v1, Lcom/braze/support/BrazeLogger$Priority;->E:Lcom/braze/support/BrazeLogger$Priority;

    check-cast p0, Ljava/lang/Throwable;

    sget-object v2, Lcom/braze/push/BrazeNotificationUtils$handleNotificationOpened$2;->INSTANCE:Lcom/braze/push/BrazeNotificationUtils$handleNotificationOpened$2;

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-virtual {p1, v0, v1, p0, v2}, Lcom/braze/support/BrazeLogger;->brazelog(Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V

    :goto_0
    return-void
.end method

.method public static final handlePushStoryPageClicked(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "braze_action_uri"

    const-string v1, "context"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "intent"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 926
    :try_start_0
    sget-object v1, Lcom/braze/Braze;->Companion:Lcom/braze/Braze$Companion;

    invoke-virtual {v1, p0}, Lcom/braze/Braze$Companion;->getInstance(Landroid/content/Context;)Lcom/braze/Braze;

    move-result-object v1

    .line 928
    const-string v2, "braze_campaign_id"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 929
    const/4 v3, 0x0

    sget-object v3, Lorg/spongycastle/asn1/cms/ecc/ERP/JpmwdoMtPrsbO;->JDuHRmLZRN:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 927
    invoke-virtual {v1, v2, v3}, Lcom/braze/Braze;->logPushStoryPageClicked(Ljava/lang/String;Ljava/lang/String;)V

    .line 932
    new-instance v1, Lcom/braze/configuration/BrazeConfigurationProvider;

    invoke-direct {v1, p0}, Lcom/braze/configuration/BrazeConfigurationProvider;-><init>(Landroid/content/Context;)V

    .line 934
    const-string v2, "nid"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 935
    invoke-virtual {v1}, Lcom/braze/configuration/BrazeConfigurationProvider;->getDoesPushStoryDismissOnClick()Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    .line 936
    invoke-static {p0, v2}, Lcom/braze/push/BrazeNotificationUtils;->cancelNotification(Landroid/content/Context;I)V

    .line 939
    :cond_0
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 940
    move-object v3, v2

    check-cast v3, Ljava/lang/CharSequence;

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "uri"

    if-eqz v3, :cond_3

    :try_start_1
    invoke-static {v3}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 942
    :cond_1
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 943
    const-string v0, "braze_action_use_webview"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 944
    move-object v3, v0

    check-cast v3, Ljava/lang/CharSequence;

    if-eqz v3, :cond_4

    invoke-static {v3}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    .line 945
    :cond_2
    const-string v3, "ab_use_webview"

    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 949
    :cond_3
    :goto_0
    invoke-virtual {p1, v4}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 951
    :cond_4
    :goto_1
    sget-object v3, Lcom/braze/push/BrazeNotificationUtils;->INSTANCE:Lcom/braze/push/BrazeNotificationUtils;

    invoke-static {p0, p1}, Lcom/braze/push/BrazeNotificationUtils;->sendNotificationOpenedBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    .line 953
    invoke-virtual {v1}, Lcom/braze/configuration/BrazeConfigurationProvider;->getDoesHandlePushDeepLinksAutomatically()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 954
    invoke-static {p0, p1}, Lcom/braze/push/BrazeNotificationUtils;->routeUserWithNotificationOpenedIntent(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_2

    .line 956
    :cond_5
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object p0, Lcom/braze/support/BrazeLogger$Priority;->I:Lcom/braze/support/BrazeLogger$Priority;

    new-instance p1, Lcom/braze/push/BrazeNotificationUtils$handlePushStoryPageClicked$1;

    invoke-direct {p1, v2}, Lcom/braze/push/BrazeNotificationUtils$handlePushStoryPageClicked$1;-><init>(Ljava/lang/String;)V

    move-object v4, p1

    check-cast v4, Lkotlin/jvm/functions/Function0;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 p1, 0x0

    move-object v1, v3

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v0 .. v6}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 959
    sget-object p1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v0, Lcom/braze/push/BrazeNotificationUtils;->INSTANCE:Lcom/braze/push/BrazeNotificationUtils;

    sget-object v1, Lcom/braze/support/BrazeLogger$Priority;->E:Lcom/braze/support/BrazeLogger$Priority;

    check-cast p0, Ljava/lang/Throwable;

    sget-object v2, Lcom/braze/push/BrazeNotificationUtils$handlePushStoryPageClicked$2;->INSTANCE:Lcom/braze/push/BrazeNotificationUtils$handlePushStoryPageClicked$2;

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-virtual {p1, v0, v1, p0, v2}, Lcom/braze/support/BrazeLogger;->brazelog(Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V

    :goto_2
    return-void
.end method

.method public static final isBrazePushMessage(Landroid/content/Intent;)Z
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 187
    :cond_0
    const-string v0, "_ab"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    const-string v1, "true"

    invoke-static {v1, p0, v0}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static final isNotificationMessage(Landroid/content/Intent;)Z
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "intent"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 203
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 204
    :cond_0
    const-string v1, "t"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "a"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static final isUninstallTrackingPush(Landroid/os/Bundle;)Z
    .locals 4
    .annotation runtime Lkotlin/Deprecated;
        message = "Please use BrazeNotificationPayload().isUninstallTracking instead"
    .end annotation
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    sget-object v0, Lokhttp3/internal/lUt/BlznlBMYw;->WeekWIAisZNp:Ljava/lang/String;

    const-string v1, "notificationExtras"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 829
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 833
    :cond_0
    const-string v1, "extra"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 835
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p0

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 838
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v1, Lcom/braze/push/BrazeNotificationUtils;->INSTANCE:Lcom/braze/push/BrazeNotificationUtils;

    sget-object v2, Lcom/braze/support/BrazeLogger$Priority;->E:Lcom/braze/support/BrazeLogger$Priority;

    check-cast p0, Ljava/lang/Throwable;

    sget-object v3, Lcom/braze/push/BrazeNotificationUtils$isUninstallTrackingPush$1;->INSTANCE:Lcom/braze/push/BrazeNotificationUtils$isUninstallTrackingPush$1;

    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v0, v1, v2, p0, v3}, Lcom/braze/support/BrazeLogger;->brazelog(Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static final isValidNotificationVisibility(I)Z
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-eq p0, v0, :cond_1

    if-eqz p0, :cond_1

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public static final logBaiduNotificationClick(Landroid/content/Context;Ljava/lang/String;)V
    .locals 14
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-nez p1, :cond_0

    .line 750
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v1, Lcom/braze/push/BrazeNotificationUtils;->INSTANCE:Lcom/braze/push/BrazeNotificationUtils;

    sget-object v2, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    sget-object p0, Lcom/braze/push/BrazeNotificationUtils$logBaiduNotificationClick$1;->INSTANCE:Lcom/braze/push/BrazeNotificationUtils$logBaiduNotificationClick$1;

    move-object v4, p0

    check-cast v4, Lkotlin/jvm/functions/Function0;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v6}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void

    :cond_0
    if-nez p0, :cond_1

    .line 754
    sget-object v7, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v8, Lcom/braze/push/BrazeNotificationUtils;->INSTANCE:Lcom/braze/push/BrazeNotificationUtils;

    sget-object v9, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    sget-object p0, Lcom/braze/push/BrazeNotificationUtils$logBaiduNotificationClick$2;->INSTANCE:Lcom/braze/push/BrazeNotificationUtils$logBaiduNotificationClick$2;

    move-object v11, p0

    check-cast v11, Lkotlin/jvm/functions/Function0;

    const/4 v12, 0x2

    const/4 v13, 0x0

    const/4 v10, 0x0

    invoke-static/range {v7 .. v13}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void

    .line 758
    :cond_1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 759
    const/4 v1, 0x0

    sget-object v1, Lorg/apache/http/impl/ioGi/maoGUKggpn;->KDg:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/braze/support/JsonUtils;->getOptionalString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 760
    const-string v2, "cid"

    invoke-static {v0, v2}, Lcom/braze/support/JsonUtils;->getOptionalString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_2

    .line 761
    const-string v2, "Appboy"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 762
    sget-object v1, Lcom/braze/Braze;->Companion:Lcom/braze/Braze$Companion;

    invoke-virtual {v1, p0}, Lcom/braze/Braze$Companion;->getInstance(Landroid/content/Context;)Lcom/braze/Braze;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/braze/Braze;->logPushNotificationOpened(Ljava/lang/String;)V

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 765
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v1, Lcom/braze/push/BrazeNotificationUtils;->INSTANCE:Lcom/braze/push/BrazeNotificationUtils;

    sget-object v2, Lcom/braze/support/BrazeLogger$Priority;->E:Lcom/braze/support/BrazeLogger$Priority;

    check-cast p0, Ljava/lang/Throwable;

    new-instance v3, Lcom/braze/push/BrazeNotificationUtils$logBaiduNotificationClick$3;

    invoke-direct {v3, p1}, Lcom/braze/push/BrazeNotificationUtils$logBaiduNotificationClick$3;-><init>(Ljava/lang/String;)V

    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v0, v1, v2, p0, v3}, Lcom/braze/support/BrazeLogger;->brazelog(Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static final prefetchBitmapsIfNewlyReceivedStoryPush(Lcom/braze/models/push/BrazeNotificationPayload;)V
    .locals 10
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "payload"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 404
    invoke-virtual {p0}, Lcom/braze/models/push/BrazeNotificationPayload;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 405
    :cond_0
    invoke-virtual {p0}, Lcom/braze/models/push/BrazeNotificationPayload;->isPushStory()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/braze/models/push/BrazeNotificationPayload;->isNewlyReceivedPushStory()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_2

    .line 407
    :cond_1
    invoke-virtual {p0}, Lcom/braze/models/push/BrazeNotificationPayload;->getPushStoryPages()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 1100
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .line 1109
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1108
    check-cast v3, Lcom/braze/models/push/BrazeNotificationPayload$PushStoryPage;

    .line 408
    invoke-virtual {v3}, Lcom/braze/models/push/BrazeNotificationPayload$PushStoryPage;->getBitmapUrl()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 1108
    :cond_2
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1112
    :cond_3
    check-cast v2, Ljava/util/List;

    .line 1100
    check-cast v2, Ljava/lang/Iterable;

    .line 1113
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 410
    sget-object v3, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v4, Lcom/braze/push/BrazeNotificationUtils;->INSTANCE:Lcom/braze/push/BrazeNotificationUtils;

    sget-object v5, Lcom/braze/support/BrazeLogger$Priority;->V:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v6, Lcom/braze/push/BrazeNotificationUtils$prefetchBitmapsIfNewlyReceivedStoryPush$2$1;

    invoke-direct {v6, v2}, Lcom/braze/push/BrazeNotificationUtils$prefetchBitmapsIfNewlyReceivedStoryPush$2$1;-><init>(Ljava/lang/String;)V

    move-object v7, v6

    check-cast v7, Lkotlin/jvm/functions/Function0;

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v9}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 411
    sget-object v3, Lcom/braze/Braze;->Companion:Lcom/braze/Braze$Companion;

    invoke-virtual {v3, v0}, Lcom/braze/Braze$Companion;->getInstance(Landroid/content/Context;)Lcom/braze/Braze;

    move-result-object v3

    invoke-virtual {v3}, Lcom/braze/Braze;->getImageLoader()Lcom/braze/images/IBrazeImageLoader;

    move-result-object v3

    .line 412
    invoke-virtual {p0}, Lcom/braze/models/push/BrazeNotificationPayload;->getBrazeExtras()Landroid/os/Bundle;

    move-result-object v4

    sget-object v5, Lcom/braze/enums/BrazeViewBounds;->NOTIFICATION_ONE_IMAGE_STORY:Lcom/braze/enums/BrazeViewBounds;

    invoke-interface {v3, v0, v4, v2, v5}, Lcom/braze/images/IBrazeImageLoader;->getPushBitmapFromUrl(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Lcom/braze/enums/BrazeViewBounds;)Landroid/graphics/Bitmap;

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    .line 414
    invoke-virtual {p0, v0}, Lcom/braze/models/push/BrazeNotificationPayload;->setNewlyReceivedPushStory(Z)V

    :cond_5
    :goto_2
    return-void
.end method

.method public static final refreshFeatureFlagsIfAppropriate(Lcom/braze/models/push/BrazeNotificationPayload;)Z
    .locals 8
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "payload"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 247
    invoke-virtual {p0}, Lcom/braze/models/push/BrazeNotificationPayload;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 248
    invoke-virtual {p0}, Lcom/braze/models/push/BrazeNotificationPayload;->getShouldRefreshFeatureFlags()Z

    move-result p0

    if-eqz p0, :cond_0

    if-eqz v0, :cond_0

    .line 249
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v2, Lcom/braze/push/BrazeNotificationUtils;->INSTANCE:Lcom/braze/push/BrazeNotificationUtils;

    sget-object p0, Lcom/braze/push/BrazeNotificationUtils$refreshFeatureFlagsIfAppropriate$1;->INSTANCE:Lcom/braze/push/BrazeNotificationUtils$refreshFeatureFlagsIfAppropriate$1;

    move-object v5, p0

    check-cast v5, Lkotlin/jvm/functions/Function0;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 250
    invoke-static {v0}, Lcom/braze/BrazeInternal;->refreshFeatureFlags(Landroid/content/Context;)V

    const/4 p0, 0x1

    goto :goto_0

    .line 253
    :cond_0
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v1, Lcom/braze/push/BrazeNotificationUtils;->INSTANCE:Lcom/braze/push/BrazeNotificationUtils;

    sget-object v2, Lcom/braze/support/BrazeLogger$Priority;->V:Lcom/braze/support/BrazeLogger$Priority;

    sget-object p0, Lcom/braze/push/BrazeNotificationUtils$refreshFeatureFlagsIfAppropriate$2;->INSTANCE:Lcom/braze/push/BrazeNotificationUtils$refreshFeatureFlagsIfAppropriate$2;

    move-object v4, p0

    check-cast v4, Lkotlin/jvm/functions/Function0;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v6}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final requestGeofenceRefreshIfAppropriate(Lcom/braze/models/push/BrazeNotificationPayload;)Z
    .locals 8
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "payload"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 228
    invoke-virtual {p0}, Lcom/braze/models/push/BrazeNotificationPayload;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 229
    invoke-virtual {p0}, Lcom/braze/models/push/BrazeNotificationPayload;->getShouldSyncGeofences()Z

    move-result p0

    if-eqz p0, :cond_0

    if-eqz v0, :cond_0

    .line 230
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v2, Lcom/braze/push/BrazeNotificationUtils;->INSTANCE:Lcom/braze/push/BrazeNotificationUtils;

    sget-object p0, Lcom/braze/push/BrazeNotificationUtils$requestGeofenceRefreshIfAppropriate$1;->INSTANCE:Lcom/braze/push/BrazeNotificationUtils$requestGeofenceRefreshIfAppropriate$1;

    move-object v5, p0

    check-cast v5, Lkotlin/jvm/functions/Function0;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    const/4 p0, 0x1

    .line 231
    invoke-static {v0, p0}, Lcom/braze/BrazeInternal;->requestGeofenceRefresh(Landroid/content/Context;Z)V

    goto :goto_0

    .line 234
    :cond_0
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v2, Lcom/braze/push/BrazeNotificationUtils;->INSTANCE:Lcom/braze/push/BrazeNotificationUtils;

    sget-object p0, Lcom/braze/push/BrazeNotificationUtils$requestGeofenceRefreshIfAppropriate$2;->INSTANCE:Lcom/braze/push/BrazeNotificationUtils$requestGeofenceRefreshIfAppropriate$2;

    move-object v5, p0

    check-cast v5, Lkotlin/jvm/functions/Function0;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final routeUserWithNotificationOpenedIntent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    const-string v0, "extra"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    .line 150
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 154
    :cond_0
    const-string v1, "cid"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 152
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    sget-object v4, Lcom/braze/push/BrazeNotificationUtils;->INSTANCE:Lcom/braze/push/BrazeNotificationUtils;

    const-string v1, "source"

    const-string v2, "Appboy"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const-string v1, "uri"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 162
    move-object v3, v2

    check-cast v3, Ljava/lang/CharSequence;

    if-eqz v3, :cond_2

    invoke-static {v3}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 163
    :cond_1
    const-string v10, "ab_use_webview"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x1

    const-string v5, "true"

    invoke-static {v5, p1, v3}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    .line 164
    sget-object v3, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    new-instance v5, Lcom/braze/push/BrazeNotificationUtils$routeUserWithNotificationOpenedIntent$1;

    invoke-direct {v5, v2, p1}, Lcom/braze/push/BrazeNotificationUtils$routeUserWithNotificationOpenedIntent$1;-><init>(Ljava/lang/String;Z)V

    move-object v7, v5

    check-cast v7, Lkotlin/jvm/functions/Function0;

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v9}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 167
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    invoke-virtual {v0, v10, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 169
    sget-object v1, Lcom/braze/ui/BrazeDeeplinkHandler;->Companion:Lcom/braze/ui/BrazeDeeplinkHandler$Companion;

    invoke-virtual {v1}, Lcom/braze/ui/BrazeDeeplinkHandler$Companion;->getInstance()Lcom/braze/IBrazeDeeplinkHandler;

    move-result-object v1

    sget-object v3, Lcom/braze/enums/Channel;->PUSH:Lcom/braze/enums/Channel;

    invoke-interface {v1, v2, v0, p1, v3}, Lcom/braze/IBrazeDeeplinkHandler;->createUriActionFromUrlString(Ljava/lang/String;Landroid/os/Bundle;ZLcom/braze/enums/Channel;)Lcom/braze/ui/actions/UriAction;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 170
    sget-object v0, Lcom/braze/ui/BrazeDeeplinkHandler;->Companion:Lcom/braze/ui/BrazeDeeplinkHandler$Companion;

    invoke-virtual {v0}, Lcom/braze/ui/BrazeDeeplinkHandler$Companion;->getInstance()Lcom/braze/IBrazeDeeplinkHandler;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/braze/IBrazeDeeplinkHandler;->gotoUri(Landroid/content/Context;Lcom/braze/ui/actions/UriAction;)V

    goto :goto_1

    .line 173
    :cond_2
    :goto_0
    invoke-static {p0, v0}, Lcom/braze/ui/support/UriUtils;->getMainActivityIntent(Landroid/content/Context;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p1

    .line 174
    sget-object v3, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    new-instance v0, Lcom/braze/push/BrazeNotificationUtils$routeUserWithNotificationOpenedIntent$3;

    invoke-direct {v0, p1}, Lcom/braze/push/BrazeNotificationUtils$routeUserWithNotificationOpenedIntent$3;-><init>(Landroid/content/Intent;)V

    move-object v7, v0

    check-cast v7, Lkotlin/jvm/functions/Function0;

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v9}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 175
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public static final sendNotificationOpenedBroadcast(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    move-object/from16 v7, p0

    const-string v0, "context"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intent"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 988
    sget-object v8, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v15, Lcom/braze/push/BrazeNotificationUtils;->INSTANCE:Lcom/braze/push/BrazeNotificationUtils;

    sget-object v0, Lcom/braze/push/BrazeNotificationUtils$sendNotificationOpenedBroadcast$1;->INSTANCE:Lcom/braze/push/BrazeNotificationUtils$sendNotificationOpenedBroadcast$1;

    move-object v12, v0

    check-cast v12, Lkotlin/jvm/functions/Function0;

    const/4 v13, 0x3

    const/4 v14, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v9, v15

    invoke-static/range {v8 .. v14}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 989
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 991
    new-instance v9, Lcom/braze/models/push/BrazeNotificationPayload;

    const/16 v5, 0xa

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, v9

    move-object v1, v8

    move-object/from16 v3, p0

    invoke-direct/range {v0 .. v6}, Lcom/braze/models/push/BrazeNotificationPayload;-><init>(Landroid/os/Bundle;Landroid/os/Bundle;Landroid/content/Context;Lcom/braze/configuration/BrazeConfigurationProvider;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 992
    sget-object v0, Lcom/braze/push/BrazeNotificationUtils$BrazeNotificationBroadcastType;->OPENED:Lcom/braze/push/BrazeNotificationUtils$BrazeNotificationBroadcastType;

    invoke-direct {v15, v7, v0, v8, v9}, Lcom/braze/push/BrazeNotificationUtils;->sendPushActionIntent(Landroid/content/Context;Lcom/braze/push/BrazeNotificationUtils$BrazeNotificationBroadcastType;Landroid/os/Bundle;Lcom/braze/models/push/BrazeNotificationPayload;)V

    goto :goto_0

    .line 994
    :cond_0
    sget-object v2, Lcom/braze/push/BrazeNotificationUtils$BrazeNotificationBroadcastType;->OPENED:Lcom/braze/push/BrazeNotificationUtils$BrazeNotificationBroadcastType;

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v0, v15

    move-object/from16 v1, p0

    move-object v3, v8

    invoke-static/range {v0 .. v6}, Lcom/braze/push/BrazeNotificationUtils;->sendPushActionIntent$default(Lcom/braze/push/BrazeNotificationUtils;Landroid/content/Context;Lcom/braze/push/BrazeNotificationUtils$BrazeNotificationBroadcastType;Landroid/os/Bundle;Lcom/braze/models/push/BrazeNotificationPayload;ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private final sendPushActionIntent(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 7

    .line 1091
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v2, Lcom/braze/support/BrazeLogger$Priority;->V:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v1, Lcom/braze/push/BrazeNotificationUtils$sendPushActionIntent$2;

    invoke-direct {v1, p2}, Lcom/braze/push/BrazeNotificationUtils$sendPushActionIntent$2;-><init>(Landroid/content/Intent;)V

    move-object v4, v1

    check-cast v4, Lkotlin/jvm/functions/Function0;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v6}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    if-eqz p3, :cond_0

    .line 1093
    invoke-virtual {p2, p3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1095
    :cond_0
    invoke-static {p1, p2}, Lcom/braze/support/IntentUtils;->addComponentAndSendBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private final sendPushActionIntent(Landroid/content/Context;Lcom/braze/push/BrazeNotificationUtils$BrazeNotificationBroadcastType;Landroid/os/Bundle;Lcom/braze/models/push/BrazeNotificationPayload;)V
    .locals 8

    .line 1070
    sget-object v0, Lcom/braze/push/BrazeNotificationUtils$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Lcom/braze/push/BrazeNotificationUtils$BrazeNotificationBroadcastType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const-string v2, "{\n                Intent\u2026ackageName)\n            }"

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1078
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.braze.push.intent.NOTIFICATION_DELETED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1077
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 1075
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.braze.push.intent.NOTIFICATION_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1074
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 1072
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.braze.push.intent.NOTIFICATION_OPENED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1071
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1081
    :goto_0
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v3, Lcom/braze/support/BrazeLogger$Priority;->V:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v2, Lcom/braze/push/BrazeNotificationUtils$sendPushActionIntent$1;

    invoke-direct {v2, p2}, Lcom/braze/push/BrazeNotificationUtils$sendPushActionIntent$1;-><init>(Lcom/braze/push/BrazeNotificationUtils$BrazeNotificationBroadcastType;)V

    move-object v5, v2

    check-cast v5, Lkotlin/jvm/functions/Function0;

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 1082
    invoke-direct {p0, p1, v0, p3}, Lcom/braze/push/BrazeNotificationUtils;->sendPushActionIntent(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V

    if-eqz p4, :cond_3

    .line 1086
    sget-object p3, Lcom/braze/BrazeInternal;->INSTANCE:Lcom/braze/BrazeInternal;

    invoke-virtual {p2}, Lcom/braze/push/BrazeNotificationUtils$BrazeNotificationBroadcastType;->getBrazePushEventType()Lcom/braze/enums/BrazePushEventType;

    move-result-object p2

    invoke-virtual {p3, p1, p2, p4}, Lcom/braze/BrazeInternal;->publishBrazePushAction(Landroid/content/Context;Lcom/braze/enums/BrazePushEventType;Lcom/braze/models/push/BrazeNotificationPayload;)V

    :cond_3
    return-void
.end method

.method static synthetic sendPushActionIntent$default(Lcom/braze/push/BrazeNotificationUtils;Landroid/content/Context;Lcom/braze/push/BrazeNotificationUtils$BrazeNotificationBroadcastType;Landroid/os/Bundle;Lcom/braze/models/push/BrazeNotificationPayload;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    .line 1062
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/braze/push/BrazeNotificationUtils;->sendPushActionIntent(Landroid/content/Context;Lcom/braze/push/BrazeNotificationUtils$BrazeNotificationBroadcastType;Landroid/os/Bundle;Lcom/braze/models/push/BrazeNotificationPayload;)V

    return-void
.end method

.method public static final sendPushMessageReceivedBroadcast(Landroid/content/Context;Landroid/os/Bundle;Lcom/braze/models/push/BrazeNotificationPayload;)V
    .locals 8
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notificationExtras"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payload"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 217
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v0, Lcom/braze/push/BrazeNotificationUtils;->INSTANCE:Lcom/braze/push/BrazeNotificationUtils;

    sget-object v2, Lcom/braze/push/BrazeNotificationUtils$sendPushMessageReceivedBroadcast$1;->INSTANCE:Lcom/braze/push/BrazeNotificationUtils$sendPushMessageReceivedBroadcast$1;

    move-object v5, v2

    check-cast v5, Lkotlin/jvm/functions/Function0;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, v0

    invoke-static/range {v1 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 218
    sget-object v1, Lcom/braze/push/BrazeNotificationUtils$BrazeNotificationBroadcastType;->RECEIVED:Lcom/braze/push/BrazeNotificationUtils$BrazeNotificationBroadcastType;

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/braze/push/BrazeNotificationUtils;->sendPushActionIntent(Landroid/content/Context;Lcom/braze/push/BrazeNotificationUtils$BrazeNotificationBroadcastType;Landroid/os/Bundle;Lcom/braze/models/push/BrazeNotificationPayload;)V

    return-void
.end method

.method public static final setAccentColorIfPresentAndSupported(Landroidx/core/app/NotificationCompat$Builder;Lcom/braze/models/push/BrazeNotificationPayload;)V
    .locals 8
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "notificationBuilder"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payload"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 619
    invoke-virtual {p1}, Lcom/braze/models/push/BrazeNotificationPayload;->getAccentColor()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 621
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v2, Lcom/braze/push/BrazeNotificationUtils;->INSTANCE:Lcom/braze/push/BrazeNotificationUtils;

    sget-object p1, Lcom/braze/push/BrazeNotificationUtils$setAccentColorIfPresentAndSupported$1;->INSTANCE:Lcom/braze/push/BrazeNotificationUtils$setAccentColorIfPresentAndSupported$1;

    move-object v5, p1

    check-cast v5, Lkotlin/jvm/functions/Function0;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 622
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setColor(I)Landroidx/core/app/NotificationCompat$Builder;

    goto :goto_0

    .line 624
    :cond_0
    invoke-virtual {p1}, Lcom/braze/models/push/BrazeNotificationPayload;->getConfigurationProvider()Lcom/braze/configuration/BrazeConfigurationProvider;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 625
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v1, Lcom/braze/push/BrazeNotificationUtils;->INSTANCE:Lcom/braze/push/BrazeNotificationUtils;

    sget-object v2, Lcom/braze/push/BrazeNotificationUtils$setAccentColorIfPresentAndSupported$2$1;->INSTANCE:Lcom/braze/push/BrazeNotificationUtils$setAccentColorIfPresentAndSupported$2$1;

    move-object v4, v2

    check-cast v4, Lkotlin/jvm/functions/Function0;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v6}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 626
    invoke-virtual {p1}, Lcom/braze/configuration/BrazeConfigurationProvider;->getDefaultNotificationAccentColor()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setColor(I)Landroidx/core/app/NotificationCompat$Builder;

    :cond_1
    :goto_0
    return-void
.end method

.method public static final setCategoryIfPresentAndSupported(Landroidx/core/app/NotificationCompat$Builder;Lcom/braze/models/push/BrazeNotificationPayload;)V
    .locals 14
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "notificationBuilder"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payload"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 650
    invoke-virtual {p1}, Lcom/braze/models/push/BrazeNotificationPayload;->getNotificationCategory()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 652
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v1, Lcom/braze/push/BrazeNotificationUtils;->INSTANCE:Lcom/braze/push/BrazeNotificationUtils;

    sget-object v2, Lcom/braze/push/BrazeNotificationUtils$setCategoryIfPresentAndSupported$2;->INSTANCE:Lcom/braze/push/BrazeNotificationUtils$setCategoryIfPresentAndSupported$2;

    move-object v4, v2

    check-cast v4, Lkotlin/jvm/functions/Function0;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v6}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 653
    invoke-virtual {p0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setCategory(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    goto :goto_0

    .line 655
    :cond_0
    sget-object v7, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v8, Lcom/braze/push/BrazeNotificationUtils;->INSTANCE:Lcom/braze/push/BrazeNotificationUtils;

    sget-object p0, Lcom/braze/push/BrazeNotificationUtils$setCategoryIfPresentAndSupported$3;->INSTANCE:Lcom/braze/push/BrazeNotificationUtils$setCategoryIfPresentAndSupported$3;

    move-object v11, p0

    check-cast v11, Lkotlin/jvm/functions/Function0;

    const/4 v12, 0x3

    const/4 v13, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v7 .. v13}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static final setContentIfPresent(Landroidx/core/app/NotificationCompat$Builder;Lcom/braze/models/push/BrazeNotificationPayload;)V
    .locals 8
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "notificationBuilder"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payload"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 436
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v2, Lcom/braze/push/BrazeNotificationUtils;->INSTANCE:Lcom/braze/push/BrazeNotificationUtils;

    sget-object v0, Lcom/braze/push/BrazeNotificationUtils$setContentIfPresent$1;->INSTANCE:Lcom/braze/push/BrazeNotificationUtils$setContentIfPresent$1;

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function0;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 437
    invoke-virtual {p1}, Lcom/braze/models/push/BrazeNotificationPayload;->getContentText()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 438
    :cond_0
    invoke-virtual {p1}, Lcom/braze/models/push/BrazeNotificationPayload;->getConfigurationProvider()Lcom/braze/configuration/BrazeConfigurationProvider;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 439
    :cond_1
    invoke-static {v0, p1}, Lcom/braze/push/support/HtmlUtils;->getHtmlSpannedTextIfEnabled(Ljava/lang/String;Lcom/braze/configuration/BrazeConfigurationProvider;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    return-void
.end method

.method public static final setContentIntentIfPresent(Landroid/content/Context;Landroidx/core/app/NotificationCompat$Builder;Landroid/os/Bundle;)V
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notificationBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 462
    :try_start_0
    sget-object v0, Lcom/braze/push/BrazeNotificationUtils;->INSTANCE:Lcom/braze/push/BrazeNotificationUtils;

    const-string v1, "com.braze.action.BRAZE_PUSH_CLICKED"

    invoke-direct {v0, p0, v1, p2}, Lcom/braze/push/BrazeNotificationUtils;->getPushActionPendingIntent(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object p0

    .line 463
    invoke-virtual {p1, p0}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 465
    sget-object p1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object p2, Lcom/braze/push/BrazeNotificationUtils;->INSTANCE:Lcom/braze/push/BrazeNotificationUtils;

    sget-object v0, Lcom/braze/support/BrazeLogger$Priority;->E:Lcom/braze/support/BrazeLogger$Priority;

    check-cast p0, Ljava/lang/Throwable;

    sget-object v1, Lcom/braze/push/BrazeNotificationUtils$setContentIntentIfPresent$1;->INSTANCE:Lcom/braze/push/BrazeNotificationUtils$setContentIntentIfPresent$1;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-virtual {p1, p2, v0, p0, v1}, Lcom/braze/support/BrazeLogger;->brazelog(Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V

    :goto_0
    return-void
.end method

.method public static final setDeleteIntent(Landroid/content/Context;Landroidx/core/app/NotificationCompat$Builder;Landroid/os/Bundle;)V
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notificationBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 472
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.braze.action.BRAZE_PUSH_DELETED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/braze/push/BrazeNotificationUtils;->getNotificationReceiverClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Intent(Constants.BRAZE_P\u2026otificationReceiverClass)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 474
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 476
    :cond_0
    invoke-static {}, Lcom/braze/support/IntentUtils;->getImmutablePendingIntentFlags()I

    move-result p2

    const/high16 v1, 0x40000000

    or-int/2addr p2, v1

    .line 477
    invoke-static {}, Lcom/braze/support/IntentUtils;->getRequestCode()I

    move-result v1

    invoke-static {p0, v1, v0, p2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    .line 478
    invoke-virtual {p1, p0}, Landroidx/core/app/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 480
    sget-object p1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object p2, Lcom/braze/push/BrazeNotificationUtils;->INSTANCE:Lcom/braze/push/BrazeNotificationUtils;

    sget-object v0, Lcom/braze/support/BrazeLogger$Priority;->E:Lcom/braze/support/BrazeLogger$Priority;

    check-cast p0, Ljava/lang/Throwable;

    sget-object v1, Lcom/braze/push/BrazeNotificationUtils$setDeleteIntent$1;->INSTANCE:Lcom/braze/push/BrazeNotificationUtils$setDeleteIntent$1;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-virtual {p1, p2, v0, p0, v1}, Lcom/braze/support/BrazeLogger;->brazelog(Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V

    :goto_0
    return-void
.end method

.method public static final setLargeIconIfPresentAndSupported(Landroidx/core/app/NotificationCompat$Builder;Lcom/braze/models/push/BrazeNotificationPayload;)Z
    .locals 12
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "notificationBuilder"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payload"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 527
    invoke-virtual {p1}, Lcom/braze/models/push/BrazeNotificationPayload;->isPushStory()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 528
    sget-object v2, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v3, Lcom/braze/push/BrazeNotificationUtils;->INSTANCE:Lcom/braze/push/BrazeNotificationUtils;

    sget-object p0, Lcom/braze/push/BrazeNotificationUtils$setLargeIconIfPresentAndSupported$1;->INSTANCE:Lcom/braze/push/BrazeNotificationUtils$setLargeIconIfPresentAndSupported$1;

    move-object v6, p0

    check-cast v6, Lkotlin/jvm/functions/Function0;

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return v1

    .line 531
    :cond_0
    invoke-virtual {p1}, Lcom/braze/models/push/BrazeNotificationPayload;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 532
    :cond_1
    invoke-virtual {p1}, Lcom/braze/models/push/BrazeNotificationPayload;->getConfigurationProvider()Lcom/braze/configuration/BrazeConfigurationProvider;

    move-result-object v2

    if-nez v2, :cond_2

    return v1

    .line 535
    :cond_2
    :try_start_0
    sget-object v3, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v11, Lcom/braze/push/BrazeNotificationUtils;->INSTANCE:Lcom/braze/push/BrazeNotificationUtils;

    sget-object v4, Lcom/braze/push/BrazeNotificationUtils$setLargeIconIfPresentAndSupported$2;->INSTANCE:Lcom/braze/push/BrazeNotificationUtils$setLargeIconIfPresentAndSupported$2;

    move-object v7, v4

    check-cast v7, Lkotlin/jvm/functions/Function0;

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, v11

    invoke-static/range {v3 .. v9}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 536
    invoke-virtual {p1}, Lcom/braze/models/push/BrazeNotificationPayload;->getLargeIcon()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x1

    if-eqz p1, :cond_3

    .line 537
    sget-object v2, Lcom/braze/Braze;->Companion:Lcom/braze/Braze$Companion;

    invoke-virtual {v2, v0}, Lcom/braze/Braze$Companion;->getInstance(Landroid/content/Context;)Lcom/braze/Braze;

    move-result-object v2

    .line 538
    invoke-virtual {v2}, Lcom/braze/Braze;->getImageLoader()Lcom/braze/images/IBrazeImageLoader;

    move-result-object v2

    .line 543
    sget-object v4, Lcom/braze/enums/BrazeViewBounds;->NOTIFICATION_LARGE_ICON:Lcom/braze/enums/BrazeViewBounds;

    const/4 v5, 0x0

    .line 539
    invoke-interface {v2, v0, v5, p1, v4}, Lcom/braze/images/IBrazeImageLoader;->getPushBitmapFromUrl(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Lcom/braze/enums/BrazeViewBounds;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 545
    invoke-virtual {p0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;

    return v3

    .line 549
    :cond_3
    sget-object v4, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object p1, Lcom/braze/push/BrazeNotificationUtils$setLargeIconIfPresentAndSupported$4;->INSTANCE:Lcom/braze/push/BrazeNotificationUtils$setLargeIconIfPresentAndSupported$4;

    move-object v8, p1

    check-cast v8, Lkotlin/jvm/functions/Function0;

    const/4 v9, 0x3

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v5, v11

    invoke-static/range {v4 .. v10}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 550
    invoke-virtual {v2}, Lcom/braze/configuration/BrazeConfigurationProvider;->getLargeNotificationIconResourceId()I

    move-result p1

    if-eqz p1, :cond_4

    .line 552
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 553
    invoke-virtual {p0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;

    return v3

    .line 556
    :cond_4
    sget-object v4, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object p0, Lcom/braze/push/BrazeNotificationUtils$setLargeIconIfPresentAndSupported$5;->INSTANCE:Lcom/braze/push/BrazeNotificationUtils$setLargeIconIfPresentAndSupported$5;

    move-object v8, p0

    check-cast v8, Lkotlin/jvm/functions/Function0;

    const/4 v9, 0x3

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v5, v11

    invoke-static/range {v4 .. v10}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 559
    sget-object p1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v0, Lcom/braze/push/BrazeNotificationUtils;->INSTANCE:Lcom/braze/push/BrazeNotificationUtils;

    sget-object v2, Lcom/braze/support/BrazeLogger$Priority;->E:Lcom/braze/support/BrazeLogger$Priority;

    check-cast p0, Ljava/lang/Throwable;

    sget-object v3, Lcom/braze/push/BrazeNotificationUtils$setLargeIconIfPresentAndSupported$6;->INSTANCE:Lcom/braze/push/BrazeNotificationUtils$setLargeIconIfPresentAndSupported$6;

    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-virtual {p1, v0, v2, p0, v3}, Lcom/braze/support/BrazeLogger;->brazelog(Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V

    .line 561
    :goto_0
    sget-object v4, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v5, Lcom/braze/push/BrazeNotificationUtils;->INSTANCE:Lcom/braze/push/BrazeNotificationUtils;

    sget-object p0, Lcom/braze/push/BrazeNotificationUtils$setLargeIconIfPresentAndSupported$7;->INSTANCE:Lcom/braze/push/BrazeNotificationUtils$setLargeIconIfPresentAndSupported$7;

    move-object v8, p0

    check-cast v8, Lkotlin/jvm/functions/Function0;

    const/4 v9, 0x3

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v4 .. v10}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return v1
.end method

.method public static final setNotificationBadgeNumberIfPresent(Landroidx/core/app/NotificationCompat$Builder;Lcom/braze/models/push/BrazeNotificationPayload;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "notificationBuilder"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payload"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 910
    invoke-virtual {p1}, Lcom/braze/models/push/BrazeNotificationPayload;->getNotificationBadgeNumber()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 912
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setNumber(I)Landroidx/core/app/NotificationCompat$Builder;

    :cond_0
    return-void
.end method

.method public static final setNotificationDurationAlarm(Landroid/content/Context;Ljava/lang/Class;II)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "*>;II)V"
        }
    .end annotation
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 264
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 265
    const/4 p1, 0x0

    sget-object p1, Lorg/spongycastle/asn1/cms/ecc/ERP/JpmwdoMtPrsbO;->aQr:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 266
    const/4 p1, 0x0

    sget-object p1, Lokhttp3/internal/lUt/BlznlBMYw;->LMIeX:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 p1, 0x8000000

    .line 267
    invoke-static {}, Lcom/braze/support/IntentUtils;->getImmutablePendingIntentFlags()I

    move-result p2

    or-int/2addr p1, p2

    const/4 p2, 0x0

    .line 268
    invoke-static {p0, p2, v0, p1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 269
    const-string p2, "alarm"

    invoke-virtual {p0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    check-cast p0, Landroid/app/AlarmManager;

    const/16 p2, 0x3e8

    if-lt p3, p2, :cond_0

    .line 271
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v1, Lcom/braze/push/BrazeNotificationUtils;->INSTANCE:Lcom/braze/push/BrazeNotificationUtils;

    new-instance p2, Lcom/braze/push/BrazeNotificationUtils$setNotificationDurationAlarm$1;

    invoke-direct {p2, p3}, Lcom/braze/push/BrazeNotificationUtils$setNotificationDurationAlarm$1;-><init>(I)V

    move-object v4, p2

    check-cast v4, Lkotlin/jvm/functions/Function0;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v6}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 272
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    int-to-long p2, p3

    add-long/2addr v0, p2

    const/4 p2, 0x3

    invoke-virtual {p0, p2, v0, v1, p1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    :cond_0
    return-void

    .line 269
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const/4 p1, 0x0

    sget-object p1, Lorg/spongycastle/pqc/crypto/gmss/util/mbQq/agaLzgk;->jfytQi:Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final setPriorityIfPresentAndSupported(Landroidx/core/app/NotificationCompat$Builder;Lcom/braze/models/push/BrazeNotificationPayload;)V
    .locals 8
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "notificationBuilder"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payload"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 603
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v2, Lcom/braze/push/BrazeNotificationUtils;->INSTANCE:Lcom/braze/push/BrazeNotificationUtils;

    sget-object v0, Lcom/braze/push/BrazeNotificationUtils$setPriorityIfPresentAndSupported$1;->INSTANCE:Lcom/braze/push/BrazeNotificationUtils$setPriorityIfPresentAndSupported$1;

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function0;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 604
    invoke-static {p1}, Lcom/braze/push/BrazeNotificationUtils;->getNotificationPriority(Lcom/braze/models/push/BrazeNotificationPayload;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    return-void
.end method

.method public static final setPublicVersionIfPresentAndSupported(Landroidx/core/app/NotificationCompat$Builder;Lcom/braze/models/push/BrazeNotificationPayload;)V
    .locals 17
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    move-object/from16 v0, p0

    const/4 v1, 0x0

    sget-object v1, Lorg/spongycastle/math/field/TKPd/fRDYVDRbWIVvS;->fHirym:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "payload"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 699
    invoke-virtual/range {p1 .. p1}, Lcom/braze/models/push/BrazeNotificationPayload;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 700
    invoke-virtual/range {p1 .. p1}, Lcom/braze/models/push/BrazeNotificationPayload;->getConfigurationProvider()Lcom/braze/configuration/BrazeConfigurationProvider;

    move-result-object v9

    if-eqz v1, :cond_2

    .line 706
    invoke-virtual/range {p1 .. p1}, Lcom/braze/models/push/BrazeNotificationPayload;->getPublicNotificationExtras()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    if-nez v9, :cond_0

    goto :goto_0

    .line 711
    :cond_0
    sget-object v11, Lcom/braze/push/BrazeNotificationUtils;->INSTANCE:Lcom/braze/push/BrazeNotificationUtils;

    invoke-static/range {p1 .. p1}, Lcom/braze/push/BrazeNotificationUtils;->getOrCreateNotificationChannelId(Lcom/braze/models/push/BrazeNotificationPayload;)Ljava/lang/String;

    move-result-object v10

    .line 712
    invoke-virtual/range {p1 .. p1}, Lcom/braze/models/push/BrazeNotificationPayload;->getPublicNotificationExtras()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/braze/support/JsonUtils;->parseJsonObjectIntoBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 713
    invoke-virtual {v3}, Landroid/os/Bundle;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    .line 715
    :cond_1
    new-instance v15, Lcom/braze/models/push/BrazeNotificationPayload;

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v4, 0x0

    move-object v2, v15

    move-object v5, v1

    move-object v6, v9

    invoke-direct/range {v2 .. v8}, Lcom/braze/models/push/BrazeNotificationPayload;-><init>(Landroid/os/Bundle;Landroid/os/Bundle;Landroid/content/Context;Lcom/braze/configuration/BrazeConfigurationProvider;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 720
    new-instance v2, Landroidx/core/app/NotificationCompat$Builder;

    invoke-direct {v2, v1, v10}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 722
    sget-object v10, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    new-instance v1, Lcom/braze/push/BrazeNotificationUtils$setPublicVersionIfPresentAndSupported$2;

    invoke-direct {v1, v15}, Lcom/braze/push/BrazeNotificationUtils$setPublicVersionIfPresentAndSupported$2;-><init>(Lcom/braze/models/push/BrazeNotificationPayload;)V

    move-object v14, v1

    check-cast v14, Lkotlin/jvm/functions/Function0;

    const/4 v1, 0x3

    const/16 v16, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v3, v15

    move v15, v1

    invoke-static/range {v10 .. v16}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 723
    invoke-static {v2, v3}, Lcom/braze/push/BrazeNotificationUtils;->setContentIfPresent(Landroidx/core/app/NotificationCompat$Builder;Lcom/braze/models/push/BrazeNotificationPayload;)V

    .line 724
    invoke-static {v2, v3}, Lcom/braze/push/BrazeNotificationUtils;->setTitleIfPresent(Landroidx/core/app/NotificationCompat$Builder;Lcom/braze/models/push/BrazeNotificationPayload;)V

    .line 725
    invoke-static {v2, v3}, Lcom/braze/push/BrazeNotificationUtils;->setSummaryTextIfPresentAndSupported(Landroidx/core/app/NotificationCompat$Builder;Lcom/braze/models/push/BrazeNotificationPayload;)V

    .line 726
    invoke-static {v9, v2}, Lcom/braze/push/BrazeNotificationUtils;->setSmallIcon(Lcom/braze/configuration/BrazeConfigurationProvider;Landroidx/core/app/NotificationCompat$Builder;)I

    .line 727
    invoke-static {v2, v3}, Lcom/braze/push/BrazeNotificationUtils;->setAccentColorIfPresentAndSupported(Landroidx/core/app/NotificationCompat$Builder;Lcom/braze/models/push/BrazeNotificationPayload;)V

    .line 728
    invoke-virtual {v2}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setPublicVersion(Landroid/app/Notification;)Landroidx/core/app/NotificationCompat$Builder;

    :cond_2
    :goto_0
    return-void
.end method

.method public static final setSetShowWhen(Landroidx/core/app/NotificationCompat$Builder;Lcom/braze/models/push/BrazeNotificationPayload;)V
    .locals 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "notificationBuilder"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payload"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 512
    invoke-virtual {p1}, Lcom/braze/models/push/BrazeNotificationPayload;->isPushStory()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 513
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v1, Lcom/braze/push/BrazeNotificationUtils;->INSTANCE:Lcom/braze/push/BrazeNotificationUtils;

    sget-object p1, Lcom/braze/push/BrazeNotificationUtils$setSetShowWhen$1;->INSTANCE:Lcom/braze/push/BrazeNotificationUtils$setSetShowWhen$1;

    move-object v4, p1

    check-cast v4, Lkotlin/jvm/functions/Function0;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v6}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    const/4 p1, 0x0

    .line 514
    invoke-virtual {p0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setShowWhen(Z)Landroidx/core/app/NotificationCompat$Builder;

    :cond_0
    return-void
.end method

.method public static final setSmallIcon(Lcom/braze/configuration/BrazeConfigurationProvider;Landroidx/core/app/NotificationCompat$Builder;)I
    .locals 8
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "appConfigurationProvider"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notificationBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 492
    invoke-virtual {p0}, Lcom/braze/configuration/BrazeConfigurationProvider;->getSmallNotificationIconResourceId()I

    move-result v0

    if-nez v0, :cond_0

    .line 494
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v2, Lcom/braze/push/BrazeNotificationUtils;->INSTANCE:Lcom/braze/push/BrazeNotificationUtils;

    sget-object v0, Lcom/braze/push/BrazeNotificationUtils$setSmallIcon$1;->INSTANCE:Lcom/braze/push/BrazeNotificationUtils$setSmallIcon$1;

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function0;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 498
    invoke-virtual {p0}, Lcom/braze/configuration/BrazeConfigurationProvider;->getApplicationIconResourceId()I

    move-result v0

    goto :goto_0

    .line 500
    :cond_0
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v2, Lcom/braze/push/BrazeNotificationUtils;->INSTANCE:Lcom/braze/push/BrazeNotificationUtils;

    sget-object p0, Lcom/braze/push/BrazeNotificationUtils$setSmallIcon$2;->INSTANCE:Lcom/braze/push/BrazeNotificationUtils$setSmallIcon$2;

    move-object v5, p0

    check-cast v5, Lkotlin/jvm/functions/Function0;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 502
    :goto_0
    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    return v0
.end method

.method public static final setSoundIfPresentAndSupported(Landroidx/core/app/NotificationCompat$Builder;Lcom/braze/models/push/BrazeNotificationPayload;)V
    .locals 8
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "notificationBuilder"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payload"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 572
    invoke-virtual {p1}, Lcom/braze/models/push/BrazeNotificationPayload;->getNotificationSound()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 573
    :cond_0
    const-string v0, "d"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 574
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v2, Lcom/braze/push/BrazeNotificationUtils;->INSTANCE:Lcom/braze/push/BrazeNotificationUtils;

    sget-object p1, Lcom/braze/push/BrazeNotificationUtils$setSoundIfPresentAndSupported$1;->INSTANCE:Lcom/braze/push/BrazeNotificationUtils$setSoundIfPresentAndSupported$1;

    move-object v5, p1

    check-cast v5, Lkotlin/jvm/functions/Function0;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    const/4 p1, 0x1

    .line 575
    invoke-virtual {p0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setDefaults(I)Landroidx/core/app/NotificationCompat$Builder;

    goto :goto_0

    .line 577
    :cond_1
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v1, Lcom/braze/push/BrazeNotificationUtils;->INSTANCE:Lcom/braze/push/BrazeNotificationUtils;

    sget-object v2, Lcom/braze/push/BrazeNotificationUtils$setSoundIfPresentAndSupported$2;->INSTANCE:Lcom/braze/push/BrazeNotificationUtils$setSoundIfPresentAndSupported$2;

    move-object v4, v2

    check-cast v4, Lkotlin/jvm/functions/Function0;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v6}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 578
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroidx/core/app/NotificationCompat$Builder;

    :goto_0
    return-void
.end method

.method public static final setSummaryTextIfPresentAndSupported(Landroidx/core/app/NotificationCompat$Builder;Lcom/braze/models/push/BrazeNotificationPayload;)V
    .locals 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "notificationBuilder"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payload"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 587
    invoke-virtual {p1}, Lcom/braze/models/push/BrazeNotificationPayload;->getSummaryText()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 589
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v1, Lcom/braze/push/BrazeNotificationUtils;->INSTANCE:Lcom/braze/push/BrazeNotificationUtils;

    sget-object v2, Lcom/braze/push/BrazeNotificationUtils$setSummaryTextIfPresentAndSupported$1;->INSTANCE:Lcom/braze/push/BrazeNotificationUtils$setSummaryTextIfPresentAndSupported$1;

    move-object v4, v2

    check-cast v4, Lkotlin/jvm/functions/Function0;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v6}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 590
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setSubText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    goto :goto_0

    .line 592
    :cond_0
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v1, Lcom/braze/push/BrazeNotificationUtils;->INSTANCE:Lcom/braze/push/BrazeNotificationUtils;

    sget-object p0, Lcom/braze/push/BrazeNotificationUtils$setSummaryTextIfPresentAndSupported$2;->INSTANCE:Lcom/braze/push/BrazeNotificationUtils$setSummaryTextIfPresentAndSupported$2;

    move-object v4, p0

    check-cast v4, Lkotlin/jvm/functions/Function0;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v6}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static final setTickerIfPresent(Landroidx/core/app/NotificationCompat$Builder;Lcom/braze/models/push/BrazeNotificationPayload;)V
    .locals 8
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "notificationBuilder"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payload"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 450
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v2, Lcom/braze/push/BrazeNotificationUtils;->INSTANCE:Lcom/braze/push/BrazeNotificationUtils;

    sget-object v0, Lcom/braze/push/BrazeNotificationUtils$setTickerIfPresent$1;->INSTANCE:Lcom/braze/push/BrazeNotificationUtils$setTickerIfPresent$1;

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function0;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 451
    invoke-virtual {p1}, Lcom/braze/models/push/BrazeNotificationPayload;->getTitleText()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 452
    :cond_0
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    return-void
.end method

.method public static final setTitleIfPresent(Landroidx/core/app/NotificationCompat$Builder;Lcom/braze/models/push/BrazeNotificationPayload;)V
    .locals 8
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "notificationBuilder"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payload"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 422
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v2, Lcom/braze/push/BrazeNotificationUtils;->INSTANCE:Lcom/braze/push/BrazeNotificationUtils;

    sget-object v0, Lcom/braze/push/BrazeNotificationUtils$setTitleIfPresent$1;->INSTANCE:Lcom/braze/push/BrazeNotificationUtils$setTitleIfPresent$1;

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function0;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 423
    invoke-virtual {p1}, Lcom/braze/models/push/BrazeNotificationPayload;->getTitleText()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 424
    :cond_0
    invoke-virtual {p1}, Lcom/braze/models/push/BrazeNotificationPayload;->getConfigurationProvider()Lcom/braze/configuration/BrazeConfigurationProvider;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 425
    :cond_1
    invoke-static {v0, p1}, Lcom/braze/push/support/HtmlUtils;->getHtmlSpannedTextIfEnabled(Ljava/lang/String;Lcom/braze/configuration/BrazeConfigurationProvider;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    return-void
.end method

.method public static final setVisibilityIfPresentAndSupported(Landroidx/core/app/NotificationCompat$Builder;Lcom/braze/models/push/BrazeNotificationPayload;)V
    .locals 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "notificationBuilder"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payload"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 681
    invoke-virtual {p1}, Lcom/braze/models/push/BrazeNotificationPayload;->getNotificationVisibility()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 683
    sget-object v1, Lcom/braze/push/BrazeNotificationUtils;->INSTANCE:Lcom/braze/push/BrazeNotificationUtils;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/braze/push/BrazeNotificationUtils;->isValidNotificationVisibility(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 684
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v2, Lcom/braze/push/BrazeNotificationUtils$setVisibilityIfPresentAndSupported$2;->INSTANCE:Lcom/braze/push/BrazeNotificationUtils$setVisibilityIfPresentAndSupported$2;

    move-object v4, v2

    check-cast v4, Lkotlin/jvm/functions/Function0;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v6}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 685
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setVisibility(I)Landroidx/core/app/NotificationCompat$Builder;

    goto :goto_0

    .line 687
    :cond_0
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v2, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    new-instance p0, Lcom/braze/push/BrazeNotificationUtils$setVisibilityIfPresentAndSupported$3;

    invoke-direct {p0, p1}, Lcom/braze/push/BrazeNotificationUtils$setVisibilityIfPresentAndSupported$3;-><init>(Ljava/lang/Integer;)V

    move-object v4, p0

    check-cast v4, Lkotlin/jvm/functions/Function0;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v6}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static final wakeScreenIfAppropriate(Landroid/content/Context;Lcom/braze/configuration/BrazeConfigurationProvider;Landroid/os/Bundle;)Z
    .locals 8
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configurationProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 326
    new-instance v0, Lcom/braze/models/push/BrazeNotificationPayload;

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v3, 0x0

    move-object v1, v0

    move-object v2, p2

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v1 .. v7}, Lcom/braze/models/push/BrazeNotificationPayload;-><init>(Landroid/os/Bundle;Landroid/os/Bundle;Landroid/content/Context;Lcom/braze/configuration/BrazeConfigurationProvider;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 325
    invoke-static {v0}, Lcom/braze/push/BrazeNotificationUtils;->wakeScreenIfAppropriate(Lcom/braze/models/push/BrazeNotificationPayload;)Z

    move-result p0

    return p0
.end method

.method public static final wakeScreenIfAppropriate(Lcom/braze/models/push/BrazeNotificationPayload;)Z
    .locals 11
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "payload"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 344
    invoke-virtual {p0}, Lcom/braze/models/push/BrazeNotificationPayload;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 345
    :cond_0
    invoke-virtual {p0}, Lcom/braze/models/push/BrazeNotificationPayload;->getConfigurationProvider()Lcom/braze/configuration/BrazeConfigurationProvider;

    move-result-object v2

    if-nez v2, :cond_1

    return v1

    .line 346
    :cond_1
    invoke-virtual {p0}, Lcom/braze/models/push/BrazeNotificationPayload;->getNotificationExtras()Landroid/os/Bundle;

    move-result-object p0

    .line 349
    const/4 v3, 0x0

    sget-object v3, Lorg/apache/http/impl/auth/ZJ/Ygkg;->jyUKIisxfzJoZ:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/braze/support/PermissionUtils;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 350
    invoke-virtual {v2}, Lcom/braze/configuration/BrazeConfigurationProvider;->isPushWakeScreenForNotificationEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    goto/16 :goto_0

    .line 356
    :cond_2
    :try_start_0
    const-string v2, "uimode"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    check-cast v2, Landroid/app/UiModeManager;

    .line 357
    invoke-virtual {v2}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_4

    .line 358
    sget-object v4, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v5, Lcom/braze/push/BrazeNotificationUtils;->INSTANCE:Lcom/braze/push/BrazeNotificationUtils;

    sget-object v2, Lcom/braze/push/BrazeNotificationUtils$wakeScreenIfAppropriate$1;->INSTANCE:Lcom/braze/push/BrazeNotificationUtils$wakeScreenIfAppropriate$1;

    move-object v8, v2

    check-cast v8, Lkotlin/jvm/functions/Function0;

    const/4 v9, 0x3

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v4 .. v10}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return v1

    .line 356
    :cond_3
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "null cannot be cast to non-null type android.app.UiModeManager"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v2

    .line 362
    sget-object v3, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v4, Lcom/braze/push/BrazeNotificationUtils;->INSTANCE:Lcom/braze/push/BrazeNotificationUtils;

    sget-object v5, Lcom/braze/support/BrazeLogger$Priority;->E:Lcom/braze/support/BrazeLogger$Priority;

    check-cast v2, Ljava/lang/Throwable;

    sget-object v6, Lcom/braze/push/BrazeNotificationUtils$wakeScreenIfAppropriate$2;->INSTANCE:Lcom/braze/push/BrazeNotificationUtils$wakeScreenIfAppropriate$2;

    check-cast v6, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v3, v4, v5, v2, v6}, Lcom/braze/support/BrazeLogger;->brazelog(Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V

    .line 368
    :cond_4
    const-string v2, "notification"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_8

    check-cast v2, Landroid/app/NotificationManager;

    .line 369
    sget-object v4, Lcom/braze/push/BrazeNotificationUtils;->INSTANCE:Lcom/braze/push/BrazeNotificationUtils;

    invoke-static {v2, p0}, Lcom/braze/push/BrazeNotificationUtils;->getValidNotificationChannel(Landroid/app/NotificationManager;Landroid/os/Bundle;)Landroid/app/NotificationChannel;

    move-result-object p0

    if-nez p0, :cond_5

    .line 371
    sget-object v3, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object p0, Lcom/braze/push/BrazeNotificationUtils$wakeScreenIfAppropriate$3;->INSTANCE:Lcom/braze/push/BrazeNotificationUtils$wakeScreenIfAppropriate$3;

    move-object v7, p0

    check-cast v7, Lkotlin/jvm/functions/Function0;

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v9}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return v1

    .line 374
    :cond_5
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v2

    const/4 v10, 0x1

    if-ne v2, v10, :cond_6

    .line 375
    sget-object v3, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    new-instance v0, Lcom/braze/push/BrazeNotificationUtils$wakeScreenIfAppropriate$4;

    invoke-direct {v0, p0}, Lcom/braze/push/BrazeNotificationUtils$wakeScreenIfAppropriate$4;-><init>(Landroid/app/NotificationChannel;)V

    move-object v7, v0

    check-cast v7, Lkotlin/jvm/functions/Function0;

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v9}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return v1

    .line 385
    :cond_6
    sget-object v3, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object p0, Lcom/braze/push/BrazeNotificationUtils$wakeScreenIfAppropriate$5;->INSTANCE:Lcom/braze/push/BrazeNotificationUtils$wakeScreenIfAppropriate$5;

    move-object v7, p0

    check-cast v7, Lkotlin/jvm/functions/Function0;

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v9}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 386
    const-string p0, "power"

    invoke-virtual {v0, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_7

    check-cast p0, Landroid/os/PowerManager;

    const v0, 0x1000001a

    .line 390
    sget-object v1, Lcom/braze/push/BrazeNotificationUtils;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p0

    .line 393
    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 394
    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    return v10

    .line 386
    :cond_7
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type android.os.PowerManager"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 368
    :cond_8
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type android.app.NotificationManager"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    :goto_0
    return v1
.end method
