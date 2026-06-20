.class public final Lcom/braze/push/BrazeNotificationStyleFactory$Companion;
.super Ljava/lang/Object;
.source "BrazeNotificationStyleFactory.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/braze/push/BrazeNotificationStyleFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000x\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J \u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0002J\"\u0010\u0010\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0013\u001a\u00020\u0004H\u0002J\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u000c\u001a\u00020\rJ\u000e\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u000c\u001a\u00020\rJ\u0018\u0010\u0018\u001a\u0004\u0018\u00010\u00192\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u000c\u001a\u00020\rJ\u001a\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u001a\u001a\u00020\u001bH\u0007J\u0016\u0010\u001e\u001a\u00020\u001d2\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u000c\u001a\u00020\rJ\u0018\u0010\u001f\u001a\u0004\u0018\u00010 2\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u000c\u001a\u00020\rJ\u0010\u0010!\u001a\u00020\"2\u0006\u0010\n\u001a\u00020\u000bH\u0002J \u0010#\u001a\u00020\"2\u0006\u0010$\u001a\u00020%2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0002J\u0018\u0010&\u001a\u00020\'2\u0006\u0010(\u001a\u00020\u00152\u0006\u0010\u000c\u001a\u00020\rH\u0007J\u0018\u0010)\u001a\u00020\'2\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u000c\u001a\u00020\rH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006*"
    }
    d2 = {
        "Lcom/braze/push/BrazeNotificationStyleFactory$Companion;",
        "",
        "()V",
        "BIG_PICTURE_STYLE_IMAGE_HEIGHT",
        "",
        "STORY_SET_GRAVITY",
        "",
        "STORY_SET_VISIBILITY",
        "createStoryPageClickedPendingIntent",
        "Landroid/app/PendingIntent;",
        "context",
        "Landroid/content/Context;",
        "payload",
        "Lcom/braze/models/push/BrazeNotificationPayload;",
        "pushStoryPage",
        "Lcom/braze/models/push/BrazeNotificationPayload$PushStoryPage;",
        "createStoryTraversedPendingIntent",
        "notificationExtras",
        "Landroid/os/Bundle;",
        "pageIndex",
        "getBigPictureNotificationStyle",
        "Landroidx/core/app/NotificationCompat$BigPictureStyle;",
        "getBigTextNotificationStyle",
        "Landroidx/core/app/NotificationCompat$BigTextStyle;",
        "getConversationalPushStyle",
        "Landroidx/core/app/NotificationCompat$MessagingStyle;",
        "notificationBuilder",
        "Landroidx/core/app/NotificationCompat$Builder;",
        "getInlineImageStyle",
        "Landroidx/core/app/NotificationCompat$Style;",
        "getNotificationStyle",
        "getStoryStyle",
        "Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;",
        "isRemoteViewNotificationAvailableSpaceConstrained",
        "",
        "populatePushStoryPage",
        "view",
        "Landroid/widget/RemoteViews;",
        "setBigPictureSummaryAndTitle",
        "",
        "bigPictureNotificationStyle",
        "setStyleIfSupported",
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

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/braze/push/BrazeNotificationStyleFactory$Companion;-><init>()V

    return-void
.end method

.method private final createStoryPageClickedPendingIntent(Landroid/content/Context;Lcom/braze/models/push/BrazeNotificationPayload;Lcom/braze/models/push/BrazeNotificationPayload$PushStoryPage;)Landroid/app/PendingIntent;
    .locals 4

    .line 421
    new-instance v0, Landroid/content/Intent;

    const/4 v1, 0x0

    sget-object v1, Lorg/apache/james/mime4j/field/contenttype/parser/BXg/MYsPwSQBpKSLSv;->Opnnav:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 422
    const-class v1, Lcom/braze/push/NotificationTrampolineActivity;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Intent(Constants.BRAZE_S\u2026lineActivity::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 424
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v1

    sget-object v2, Lcom/braze/ui/BrazeDeeplinkHandler;->Companion:Lcom/braze/ui/BrazeDeeplinkHandler$Companion;

    invoke-virtual {v2}, Lcom/braze/ui/BrazeDeeplinkHandler$Companion;->getInstance()Lcom/braze/IBrazeDeeplinkHandler;

    move-result-object v2

    sget-object v3, Lcom/braze/IBrazeDeeplinkHandler$IntentFlagPurpose;->NOTIFICATION_PUSH_STORY_PAGE_CLICK:Lcom/braze/IBrazeDeeplinkHandler$IntentFlagPurpose;

    invoke-interface {v2, v3}, Lcom/braze/IBrazeDeeplinkHandler;->getIntentFlags(Lcom/braze/IBrazeDeeplinkHandler$IntentFlagPurpose;)I

    move-result v2

    or-int/2addr v1, v2

    .line 423
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 425
    invoke-virtual {p2}, Lcom/braze/models/push/BrazeNotificationPayload;->getNotificationExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 426
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 428
    const-string v1, "braze_action_uri"

    invoke-virtual {p3}, Lcom/braze/models/push/BrazeNotificationPayload$PushStoryPage;->getDeeplink()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 430
    const-string v1, "braze_action_use_webview"

    .line 431
    invoke-virtual {p3}, Lcom/braze/models/push/BrazeNotificationPayload$PushStoryPage;->getUseWebview()Ljava/lang/String;

    move-result-object v2

    .line 429
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 433
    const-string v1, "braze_story_page_id"

    invoke-virtual {p3}, Lcom/braze/models/push/BrazeNotificationPayload$PushStoryPage;->getStoryPageId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 434
    const-string v1, "braze_campaign_id"

    invoke-virtual {p3}, Lcom/braze/models/push/BrazeNotificationPayload$PushStoryPage;->getCampaignId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 435
    invoke-static {p2}, Lcom/braze/push/BrazeNotificationUtils;->getNotificationId(Lcom/braze/models/push/BrazeNotificationPayload;)I

    move-result p2

    .line 436
    const-string p3, "nid"

    invoke-virtual {v0, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 439
    invoke-static {}, Lcom/braze/support/IntentUtils;->getRequestCode()I

    move-result p2

    .line 441
    invoke-static {}, Lcom/braze/support/IntentUtils;->getImmutablePendingIntentFlags()I

    move-result p3

    .line 437
    invoke-static {p1, p2, v0, p3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    const-string p2, "getActivity(\n           \u2026tentFlags()\n            )"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final createStoryTraversedPendingIntent(Landroid/content/Context;Landroid/os/Bundle;I)Landroid/app/PendingIntent;
    .locals 2

    .line 450
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.braze.action.STORY_TRAVERSE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 451
    invoke-static {}, Lcom/braze/push/BrazeNotificationUtils;->getNotificationReceiverClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Intent(Constants.BRAZE_S\u2026otificationReceiverClass)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 453
    const-string v1, "braze_story_index"

    invoke-virtual {p2, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 454
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_0
    const/high16 p2, 0x40000000

    .line 456
    invoke-static {}, Lcom/braze/support/IntentUtils;->getImmutablePendingIntentFlags()I

    move-result p3

    or-int/2addr p2, p3

    .line 459
    invoke-static {}, Lcom/braze/support/IntentUtils;->getRequestCode()I

    move-result p3

    .line 457
    invoke-static {p1, p3, v0, p2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    const-string p2, "getBroadcast(\n          \u2026      flags\n            )"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final isRemoteViewNotificationAvailableSpaceConstrained(Landroid/content/Context;)Z
    .locals 2

    .line 605
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    .line 606
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-lt p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private final populatePushStoryPage(Landroid/widget/RemoteViews;Lcom/braze/models/push/BrazeNotificationPayload;Lcom/braze/models/push/BrazeNotificationPayload$PushStoryPage;)Z
    .locals 10

    .line 479
    invoke-virtual {p2}, Lcom/braze/models/push/BrazeNotificationPayload;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 481
    sget-object v2, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object p1, Lcom/braze/push/BrazeNotificationStyleFactory$Companion$populatePushStoryPage$1;->INSTANCE:Lcom/braze/push/BrazeNotificationStyleFactory$Companion$populatePushStoryPage$1;

    move-object v6, p1

    check-cast v6, Lkotlin/jvm/functions/Function0;

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p0

    invoke-static/range {v2 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return v1

    .line 484
    :cond_0
    invoke-virtual {p2}, Lcom/braze/models/push/BrazeNotificationPayload;->getConfigurationProvider()Lcom/braze/configuration/BrazeConfigurationProvider;

    move-result-object v2

    if-nez v2, :cond_1

    .line 486
    sget-object v3, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object p1, Lcom/braze/push/BrazeNotificationStyleFactory$Companion$populatePushStoryPage$2;->INSTANCE:Lcom/braze/push/BrazeNotificationStyleFactory$Companion$populatePushStoryPage$2;

    move-object v7, p1

    check-cast v7, Lkotlin/jvm/functions/Function0;

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, p0

    invoke-static/range {v3 .. v9}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return v1

    .line 489
    :cond_1
    invoke-virtual {p3}, Lcom/braze/models/push/BrazeNotificationPayload$PushStoryPage;->getBitmapUrl()Ljava/lang/String;

    move-result-object v3

    .line 490
    move-object v4, v3

    check-cast v4, Ljava/lang/CharSequence;

    if-eqz v4, :cond_8

    invoke-static {v4}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto/16 :goto_4

    .line 494
    :cond_2
    invoke-virtual {p2}, Lcom/braze/models/push/BrazeNotificationPayload;->getNotificationExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 497
    sget-object v5, Lcom/braze/Braze;->Companion:Lcom/braze/Braze$Companion;

    invoke-virtual {v5, v0}, Lcom/braze/Braze$Companion;->getInstance(Landroid/content/Context;)Lcom/braze/Braze;

    move-result-object v5

    invoke-virtual {v5}, Lcom/braze/Braze;->getImageLoader()Lcom/braze/images/IBrazeImageLoader;

    move-result-object v5

    .line 502
    sget-object v6, Lcom/braze/enums/BrazeViewBounds;->NOTIFICATION_ONE_IMAGE_STORY:Lcom/braze/enums/BrazeViewBounds;

    .line 498
    invoke-interface {v5, v0, v4, v3, v6}, Lcom/braze/images/IBrazeImageLoader;->getPushBitmapFromUrl(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Lcom/braze/enums/BrazeViewBounds;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-nez v3, :cond_3

    return v1

    .line 505
    :cond_3
    sget v1, Lcom/braze/ui/R$id;->com_braze_story_image_view:I

    invoke-virtual {p1, v1, v3}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 508
    invoke-virtual {p3}, Lcom/braze/models/push/BrazeNotificationPayload$PushStoryPage;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 511
    move-object v3, v1

    check-cast v3, Ljava/lang/CharSequence;

    const-string v4, "setGravity"

    const/16 v5, 0x8

    const-string v6, "setVisibility"

    if-eqz v3, :cond_5

    invoke-static {v3}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_0

    .line 512
    :cond_4
    invoke-static {v1, v2}, Lcom/braze/push/support/HtmlUtils;->getHtmlSpannedTextIfEnabled(Ljava/lang/String;Lcom/braze/configuration/BrazeConfigurationProvider;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 513
    sget v3, Lcom/braze/ui/R$id;->com_braze_story_text_view:I

    invoke-virtual {p1, v3, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 514
    invoke-virtual {p3}, Lcom/braze/models/push/BrazeNotificationPayload$PushStoryPage;->getTitleGravity()I

    move-result v1

    .line 516
    sget v3, Lcom/braze/ui/R$id;->com_braze_story_text_view_container:I

    .line 515
    invoke-virtual {p1, v3, v4, v1}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto :goto_1

    .line 522
    :cond_5
    :goto_0
    sget v1, Lcom/braze/ui/R$id;->com_braze_story_text_view_container:I

    .line 521
    invoke-virtual {p1, v1, v6, v5}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 529
    :goto_1
    invoke-virtual {p3}, Lcom/braze/models/push/BrazeNotificationPayload$PushStoryPage;->getSubtitle()Ljava/lang/String;

    move-result-object v1

    .line 532
    move-object v3, v1

    check-cast v3, Ljava/lang/CharSequence;

    if-eqz v3, :cond_7

    invoke-static {v3}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_2

    .line 534
    :cond_6
    invoke-static {v1, v2}, Lcom/braze/push/support/HtmlUtils;->getHtmlSpannedTextIfEnabled(Ljava/lang/String;Lcom/braze/configuration/BrazeConfigurationProvider;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 535
    sget v2, Lcom/braze/ui/R$id;->com_braze_story_text_view_small:I

    invoke-virtual {p1, v2, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 536
    invoke-virtual {p3}, Lcom/braze/models/push/BrazeNotificationPayload$PushStoryPage;->getSubtitleGravity()I

    move-result v1

    .line 538
    sget v2, Lcom/braze/ui/R$id;->com_braze_story_text_view_small_container:I

    .line 537
    invoke-virtual {p1, v2, v4, v1}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto :goto_3

    .line 544
    :cond_7
    :goto_2
    sget v1, Lcom/braze/ui/R$id;->com_braze_story_text_view_small_container:I

    .line 543
    invoke-virtual {p1, v1, v6, v5}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 552
    :goto_3
    invoke-direct {p0, v0, p2, p3}, Lcom/braze/push/BrazeNotificationStyleFactory$Companion;->createStoryPageClickedPendingIntent(Landroid/content/Context;Lcom/braze/models/push/BrazeNotificationPayload;Lcom/braze/models/push/BrazeNotificationPayload$PushStoryPage;)Landroid/app/PendingIntent;

    move-result-object p2

    .line 554
    sget p3, Lcom/braze/ui/R$id;->com_braze_story_relative_layout:I

    .line 553
    invoke-virtual {p1, p3, p2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const/4 p1, 0x1

    return p1

    .line 491
    :cond_8
    :goto_4
    sget-object v2, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object p1, Lcom/braze/push/BrazeNotificationStyleFactory$Companion$populatePushStoryPage$3;->INSTANCE:Lcom/braze/push/BrazeNotificationStyleFactory$Companion$populatePushStoryPage$3;

    move-object v6, p1

    check-cast v6, Lkotlin/jvm/functions/Function0;

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p0

    invoke-static/range {v2 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return v1
.end method


# virtual methods
.method public final getBigPictureNotificationStyle(Lcom/braze/models/push/BrazeNotificationPayload;)Landroidx/core/app/NotificationCompat$BigPictureStyle;
    .locals 11

    const-string v0, "payload"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 323
    invoke-virtual {p1}, Lcom/braze/models/push/BrazeNotificationPayload;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 324
    :cond_0
    invoke-virtual {p1}, Lcom/braze/models/push/BrazeNotificationPayload;->getBigImageUrl()Ljava/lang/String;

    move-result-object v2

    .line 325
    move-object v3, v2

    check-cast v3, Ljava/lang/CharSequence;

    if-eqz v3, :cond_6

    invoke-static {v3}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_1

    .line 328
    :cond_1
    invoke-virtual {p1}, Lcom/braze/models/push/BrazeNotificationPayload;->getNotificationExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 329
    sget-object v4, Lcom/braze/Braze;->Companion:Lcom/braze/Braze$Companion;

    invoke-virtual {v4, v0}, Lcom/braze/Braze$Companion;->getInstance(Landroid/content/Context;)Lcom/braze/Braze;

    move-result-object v4

    invoke-virtual {v4}, Lcom/braze/Braze;->getImageLoader()Lcom/braze/images/IBrazeImageLoader;

    move-result-object v4

    .line 334
    sget-object v5, Lcom/braze/enums/BrazeViewBounds;->NOTIFICATION_EXPANDED_IMAGE:Lcom/braze/enums/BrazeViewBounds;

    .line 330
    invoke-interface {v4, v0, v3, v2, v5}, Lcom/braze/images/IBrazeImageLoader;->getPushBitmapFromUrl(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Lcom/braze/enums/BrazeViewBounds;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-nez v3, :cond_2

    .line 337
    sget-object v4, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    new-instance p1, Lcom/braze/push/BrazeNotificationStyleFactory$Companion$getBigPictureNotificationStyle$1;

    invoke-direct {p1, v2}, Lcom/braze/push/BrazeNotificationStyleFactory$Companion$getBigPictureNotificationStyle$1;-><init>(Ljava/lang/String;)V

    move-object v8, p1

    check-cast v8, Lkotlin/jvm/functions/Function0;

    const/4 v9, 0x3

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v5, p0

    invoke-static/range {v4 .. v10}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-object v1

    .line 347
    :cond_2
    :try_start_0
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-le v2, v4, :cond_4

    .line 349
    invoke-static {v0}, Lcom/braze/support/BrazeImageUtils;->getDensityDpi(Landroid/content/Context;)I

    move-result v2

    const/16 v4, 0xc0

    .line 348
    invoke-static {v2, v4}, Lcom/braze/support/BrazeImageUtils;->getPixelsFromDensityAndDp(II)I

    move-result v2

    mul-int/lit8 v4, v2, 0x2

    .line 354
    invoke-static {v0}, Lcom/braze/support/BrazeImageUtils;->getDisplayWidthPixels(Landroid/content/Context;)I

    move-result v0

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-le v4, v0, :cond_3

    move v4, v0

    :cond_3
    const/4 v0, 0x1

    .line 359
    :try_start_1
    invoke-static {v3, v4, v2, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 366
    :try_start_2
    sget-object v2, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v4, Lcom/braze/support/BrazeLogger$Priority;->E:Lcom/braze/support/BrazeLogger$Priority;

    check-cast v0, Ljava/lang/Throwable;

    sget-object v5, Lcom/braze/push/BrazeNotificationStyleFactory$Companion$getBigPictureNotificationStyle$2;->INSTANCE:Lcom/braze/push/BrazeNotificationStyleFactory$Companion$getBigPictureNotificationStyle$2;

    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v2, p0, v4, v0, v5}, Lcom/braze/support/BrazeLogger;->brazelog(Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V

    :cond_4
    :goto_0
    if-nez v3, :cond_5

    .line 370
    sget-object v4, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v6, Lcom/braze/support/BrazeLogger$Priority;->I:Lcom/braze/support/BrazeLogger$Priority;

    sget-object p1, Lcom/braze/push/BrazeNotificationStyleFactory$Companion$getBigPictureNotificationStyle$3;->INSTANCE:Lcom/braze/push/BrazeNotificationStyleFactory$Companion$getBigPictureNotificationStyle$3;

    move-object v8, p1

    check-cast v8, Lkotlin/jvm/functions/Function0;

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v7, 0x0

    move-object v5, p0

    invoke-static/range {v4 .. v10}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-object v1

    .line 375
    :cond_5
    new-instance v0, Landroidx/core/app/NotificationCompat$BigPictureStyle;

    invoke-direct {v0}, Landroidx/core/app/NotificationCompat$BigPictureStyle;-><init>()V

    .line 376
    invoke-virtual {v0, v3}, Landroidx/core/app/NotificationCompat$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$BigPictureStyle;

    .line 377
    invoke-virtual {p0, v0, p1}, Lcom/braze/push/BrazeNotificationStyleFactory$Companion;->setBigPictureSummaryAndTitle(Landroidx/core/app/NotificationCompat$BigPictureStyle;Lcom/braze/models/push/BrazeNotificationPayload;)V

    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object v1, v0

    goto :goto_1

    :catch_1
    move-exception p1

    .line 380
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v2, Lcom/braze/support/BrazeLogger$Priority;->E:Lcom/braze/support/BrazeLogger$Priority;

    check-cast p1, Ljava/lang/Throwable;

    sget-object v3, Lcom/braze/push/BrazeNotificationStyleFactory$Companion$getBigPictureNotificationStyle$4;->INSTANCE:Lcom/braze/push/BrazeNotificationStyleFactory$Companion$getBigPictureNotificationStyle$4;

    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v0, p0, v2, p1, v3}, Lcom/braze/support/BrazeLogger;->brazelog(Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V

    .line 381
    move-object p1, v1

    check-cast p1, Landroidx/core/app/NotificationCompat$BigPictureStyle;

    :cond_6
    :goto_1
    return-object v1
.end method

.method public final getBigTextNotificationStyle(Lcom/braze/models/push/BrazeNotificationPayload;)Landroidx/core/app/NotificationCompat$BigTextStyle;
    .locals 3

    const-string v0, "payload"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    new-instance v0, Landroidx/core/app/NotificationCompat$BigTextStyle;

    invoke-direct {v0}, Landroidx/core/app/NotificationCompat$BigTextStyle;-><init>()V

    .line 122
    invoke-virtual {p1}, Lcom/braze/models/push/BrazeNotificationPayload;->getConfigurationProvider()Lcom/braze/configuration/BrazeConfigurationProvider;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    .line 124
    :cond_0
    invoke-virtual {p1}, Lcom/braze/models/push/BrazeNotificationPayload;->getContentText()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {v2, v1}, Lcom/braze/push/support/HtmlUtils;->getHtmlSpannedTextIfEnabled(Ljava/lang/String;Lcom/braze/configuration/BrazeConfigurationProvider;)Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 125
    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigTextStyle;

    .line 128
    :cond_1
    invoke-virtual {p1}, Lcom/braze/models/push/BrazeNotificationPayload;->getBigSummaryText()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 130
    invoke-static {v2, v1}, Lcom/braze/push/support/HtmlUtils;->getHtmlSpannedTextIfEnabled(Ljava/lang/String;Lcom/braze/configuration/BrazeConfigurationProvider;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 129
    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$BigTextStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigTextStyle;

    .line 136
    :cond_2
    invoke-virtual {p1}, Lcom/braze/models/push/BrazeNotificationPayload;->getBigTitleText()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 138
    invoke-static {p1, v1}, Lcom/braze/push/support/HtmlUtils;->getHtmlSpannedTextIfEnabled(Ljava/lang/String;Lcom/braze/configuration/BrazeConfigurationProvider;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 137
    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigTextStyle;

    :cond_3
    return-object v0
.end method

.method public final getConversationalPushStyle(Landroidx/core/app/NotificationCompat$Builder;Lcom/braze/models/push/BrazeNotificationPayload;)Landroidx/core/app/NotificationCompat$MessagingStyle;
    .locals 13

    const-string v0, "notificationBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payload"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 390
    :try_start_0
    invoke-virtual {p2}, Lcom/braze/models/push/BrazeNotificationPayload;->getConversationPersonMap()Ljava/util/Map;

    move-result-object v1

    .line 391
    invoke-virtual {p2}, Lcom/braze/models/push/BrazeNotificationPayload;->getConversationReplyPersonId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/braze/models/push/BrazeNotificationPayload$ConversationPerson;

    if-nez v2, :cond_0

    .line 393
    sget-object v3, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object p1, Lcom/braze/push/BrazeNotificationStyleFactory$Companion$getConversationalPushStyle$1;->INSTANCE:Lcom/braze/push/BrazeNotificationStyleFactory$Companion$getConversationalPushStyle$1;

    move-object v7, p1

    check-cast v7, Lkotlin/jvm/functions/Function0;

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, p0

    invoke-static/range {v3 .. v9}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-object v0

    .line 396
    :cond_0
    new-instance v3, Landroidx/core/app/NotificationCompat$MessagingStyle;

    invoke-virtual {v2}, Lcom/braze/models/push/BrazeNotificationPayload$ConversationPerson;->getPerson()Landroidx/core/app/Person;

    move-result-object v2

    invoke-direct {v3, v2}, Landroidx/core/app/NotificationCompat$MessagingStyle;-><init>(Landroidx/core/app/Person;)V

    .line 397
    invoke-virtual {p2}, Lcom/braze/models/push/BrazeNotificationPayload;->getConversationMessages()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/braze/models/push/BrazeNotificationPayload$ConversationMessage;

    .line 398
    invoke-virtual {v4}, Lcom/braze/models/push/BrazeNotificationPayload$ConversationMessage;->getPersonId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/braze/models/push/BrazeNotificationPayload$ConversationPerson;

    if-nez v5, :cond_1

    .line 400
    sget-object v6, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    new-instance p1, Lcom/braze/push/BrazeNotificationStyleFactory$Companion$getConversationalPushStyle$2;

    invoke-direct {p1, v4}, Lcom/braze/push/BrazeNotificationStyleFactory$Companion$getConversationalPushStyle$2;-><init>(Lcom/braze/models/push/BrazeNotificationPayload$ConversationMessage;)V

    move-object v10, p1

    check-cast v10, Lkotlin/jvm/functions/Function0;

    const/4 v11, 0x3

    const/4 v12, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v7, p0

    invoke-static/range {v6 .. v12}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-object v0

    .line 405
    :cond_1
    invoke-virtual {v4}, Lcom/braze/models/push/BrazeNotificationPayload$ConversationMessage;->getMessage()Ljava/lang/String;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v4}, Lcom/braze/models/push/BrazeNotificationPayload$ConversationMessage;->getTimestamp()J

    move-result-wide v7

    invoke-virtual {v5}, Lcom/braze/models/push/BrazeNotificationPayload$ConversationPerson;->getPerson()Landroidx/core/app/Person;

    move-result-object v4

    invoke-virtual {v3, v6, v7, v8, v4}, Landroidx/core/app/NotificationCompat$MessagingStyle;->addMessage(Ljava/lang/CharSequence;JLandroidx/core/app/Person;)Landroidx/core/app/NotificationCompat$MessagingStyle;

    goto :goto_0

    .line 407
    :cond_2
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v3, v2}, Landroidx/core/app/NotificationCompat$MessagingStyle;->setGroupConversation(Z)Landroidx/core/app/NotificationCompat$MessagingStyle;

    .line 408
    invoke-virtual {p2}, Lcom/braze/models/push/BrazeNotificationPayload;->getConversationShortcutId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setShortcutId(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    goto :goto_2

    :catch_0
    move-exception p1

    .line 411
    sget-object p2, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v1, Lcom/braze/support/BrazeLogger$Priority;->E:Lcom/braze/support/BrazeLogger$Priority;

    check-cast p1, Ljava/lang/Throwable;

    sget-object v2, Lcom/braze/push/BrazeNotificationStyleFactory$Companion$getConversationalPushStyle$3;->INSTANCE:Lcom/braze/push/BrazeNotificationStyleFactory$Companion$getConversationalPushStyle$3;

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-virtual {p2, p0, v1, p1, v2}, Lcom/braze/support/BrazeLogger;->brazelog(Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V

    .line 412
    move-object p1, v0

    check-cast p1, Landroidx/core/app/NotificationCompat$MessagingStyle;

    :goto_2
    return-object v0
.end method

.method public final getInlineImageStyle(Lcom/braze/models/push/BrazeNotificationPayload;Landroidx/core/app/NotificationCompat$Builder;)Landroidx/core/app/NotificationCompat$Style;
    .locals 11

    const-string v0, "payload"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notificationBuilder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 213
    invoke-virtual {p1}, Lcom/braze/models/push/BrazeNotificationPayload;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 215
    sget-object v2, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object p1, Lcom/braze/push/BrazeNotificationStyleFactory$Companion$getInlineImageStyle$1;->INSTANCE:Lcom/braze/push/BrazeNotificationStyleFactory$Companion$getInlineImageStyle$1;

    move-object v6, p1

    check-cast v6, Lkotlin/jvm/functions/Function0;

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p0

    invoke-static/range {v2 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-object v1

    .line 218
    :cond_0
    invoke-virtual {p1}, Lcom/braze/models/push/BrazeNotificationPayload;->getBigImageUrl()Ljava/lang/String;

    move-result-object v2

    .line 219
    move-object v3, v2

    check-cast v3, Ljava/lang/CharSequence;

    if-eqz v3, :cond_9

    invoke-static {v3}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_3

    .line 223
    :cond_1
    invoke-virtual {p1}, Lcom/braze/models/push/BrazeNotificationPayload;->getNotificationExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 226
    sget-object v4, Lcom/braze/Braze;->Companion:Lcom/braze/Braze$Companion;

    invoke-virtual {v4, v0}, Lcom/braze/Braze$Companion;->getInstance(Landroid/content/Context;)Lcom/braze/Braze;

    move-result-object v4

    invoke-virtual {v4}, Lcom/braze/Braze;->getImageLoader()Lcom/braze/images/IBrazeImageLoader;

    move-result-object v4

    .line 231
    sget-object v5, Lcom/braze/enums/BrazeViewBounds;->NOTIFICATION_INLINE_PUSH_IMAGE:Lcom/braze/enums/BrazeViewBounds;

    .line 227
    invoke-interface {v4, v0, v3, v2, v5}, Lcom/braze/images/IBrazeImageLoader;->getPushBitmapFromUrl(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Lcom/braze/enums/BrazeViewBounds;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_2

    .line 234
    sget-object v4, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object p1, Lcom/braze/push/BrazeNotificationStyleFactory$Companion$getInlineImageStyle$3;->INSTANCE:Lcom/braze/push/BrazeNotificationStyleFactory$Companion$getInlineImageStyle$3;

    move-object v8, p1

    check-cast v8, Lkotlin/jvm/functions/Function0;

    const/4 v9, 0x3

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v5, p0

    invoke-static/range {v4 .. v10}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-object v1

    .line 238
    :cond_2
    invoke-direct {p0, v0}, Lcom/braze/push/BrazeNotificationStyleFactory$Companion;->isRemoteViewNotificationAvailableSpaceConstrained(Landroid/content/Context;)Z

    move-result v4

    .line 239
    new-instance v5, Landroid/widget/RemoteViews;

    .line 240
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    if-eqz v4, :cond_3

    .line 241
    sget v7, Lcom/braze/ui/R$layout;->com_braze_push_inline_image_constrained:I

    goto :goto_0

    :cond_3
    sget v7, Lcom/braze/ui/R$layout;->com_braze_notification_inline_image:I

    .line 239
    :goto_0
    invoke-direct {v5, v6, v7}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 243
    new-instance v6, Lcom/braze/configuration/BrazeConfigurationProvider;

    invoke-direct {v6, v0}, Lcom/braze/configuration/BrazeConfigurationProvider;-><init>(Landroid/content/Context;)V

    .line 248
    invoke-virtual {v6}, Lcom/braze/configuration/BrazeConfigurationProvider;->getSmallNotificationIconResourceId()I

    move-result v7

    .line 246
    invoke-static {v0, v7}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v7

    const-string v8, "createWithResource(\n    \u2026nResourceId\n            )"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 251
    invoke-virtual {p1}, Lcom/braze/models/push/BrazeNotificationPayload;->getAccentColor()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_4

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 252
    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Icon;->setTint(I)Landroid/graphics/drawable/Icon;

    .line 254
    :cond_4
    sget p1, Lcom/braze/ui/R$id;->com_braze_inline_image_push_app_icon:I

    invoke-virtual {v5, p1, v7}, Landroid/widget/RemoteViews;->setImageViewIcon(ILandroid/graphics/drawable/Icon;)V

    .line 257
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 259
    :try_start_0
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x21

    if-lt v7, v8, :cond_5

    .line 260
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v7, 0x0

    invoke-static {v7, v8}, Landroid/content/pm/PackageManager$ApplicationInfoFlags;->of(J)Landroid/content/pm/PackageManager$ApplicationInfoFlags;

    move-result-object v7

    invoke-virtual {p1, v0, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$ApplicationInfoFlags;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    goto :goto_1

    .line 262
    :cond_5
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x0

    invoke-virtual {p1, v0, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 258
    :goto_1
    const-string v7, "{\n                if (Bu\u2026          }\n            }"

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 268
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 270
    invoke-static {p1, v6}, Lcom/braze/push/support/HtmlUtils;->getHtmlSpannedTextIfEnabled(Ljava/lang/String;Lcom/braze/configuration/BrazeConfigurationProvider;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 272
    sget v0, Lcom/braze/ui/R$id;->com_braze_inline_image_push_app_name_text:I

    .line 271
    invoke-virtual {v5, v0, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 278
    sget p1, Lcom/braze/ui/R$id;->com_braze_inline_image_push_time_text:I

    .line 279
    sget-object v0, Lcom/braze/enums/BrazeDateFormat;->CLOCK_12_HOUR:Lcom/braze/enums/BrazeDateFormat;

    invoke-static {v0}, Lcom/braze/support/DateTimeUtils;->formatDateNow(Lcom/braze/enums/BrazeDateFormat;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 277
    invoke-virtual {v5, p1, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 283
    const-string p1, "t"

    invoke-virtual {v3, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 285
    sget v0, Lcom/braze/ui/R$id;->com_braze_inline_image_push_title_text:I

    .line 286
    invoke-static {p1, v6}, Lcom/braze/push/support/HtmlUtils;->getHtmlSpannedTextIfEnabled(Ljava/lang/String;Lcom/braze/configuration/BrazeConfigurationProvider;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 284
    invoke-virtual {v5, v0, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 291
    :cond_6
    const-string p1, "a"

    invoke-virtual {v3, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 293
    sget v0, Lcom/braze/ui/R$id;->com_braze_inline_image_push_content_text:I

    .line 294
    invoke-static {p1, v6}, Lcom/braze/push/support/HtmlUtils;->getHtmlSpannedTextIfEnabled(Ljava/lang/String;Lcom/braze/configuration/BrazeConfigurationProvider;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 292
    invoke-virtual {v5, v0, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 297
    :cond_7
    invoke-virtual {p2, v5}, Landroidx/core/app/NotificationCompat$Builder;->setCustomContentView(Landroid/widget/RemoteViews;)Landroidx/core/app/NotificationCompat$Builder;

    if-eqz v4, :cond_8

    .line 301
    invoke-virtual {p2, v2}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;

    .line 302
    new-instance p1, Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;

    invoke-direct {p1}, Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;-><init>()V

    check-cast p1, Landroidx/core/app/NotificationCompat$Style;

    goto :goto_2

    .line 305
    :cond_8
    sget p1, Lcom/braze/ui/R$id;->com_braze_inline_image_push_side_image:I

    .line 304
    invoke-virtual {v5, p1, v2}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 310
    new-instance p1, Lcom/braze/push/BrazeNotificationStyleFactory$NoOpSentinelStyle;

    invoke-direct {p1}, Lcom/braze/push/BrazeNotificationStyleFactory$NoOpSentinelStyle;-><init>()V

    check-cast p1, Landroidx/core/app/NotificationCompat$Style;

    :goto_2
    return-object p1

    :catch_0
    move-exception p1

    .line 265
    sget-object p2, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v0, Lcom/braze/support/BrazeLogger$Priority;->E:Lcom/braze/support/BrazeLogger$Priority;

    check-cast p1, Ljava/lang/Throwable;

    sget-object v2, Lcom/braze/push/BrazeNotificationStyleFactory$Companion$getInlineImageStyle$applicationInfo$1;->INSTANCE:Lcom/braze/push/BrazeNotificationStyleFactory$Companion$getInlineImageStyle$applicationInfo$1;

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-virtual {p2, p0, v0, p1, v2}, Lcom/braze/support/BrazeLogger;->brazelog(Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V

    return-object v1

    .line 220
    :cond_9
    :goto_3
    sget-object v3, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object p1, Lcom/braze/push/BrazeNotificationStyleFactory$Companion$getInlineImageStyle$2;->INSTANCE:Lcom/braze/push/BrazeNotificationStyleFactory$Companion$getInlineImageStyle$2;

    move-object v7, p1

    check-cast v7, Lkotlin/jvm/functions/Function0;

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, p0

    invoke-static/range {v3 .. v9}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-object v1
.end method

.method public final getNotificationStyle(Landroidx/core/app/NotificationCompat$Builder;Lcom/braze/models/push/BrazeNotificationPayload;)Landroidx/core/app/NotificationCompat$Style;
    .locals 8

    const-string v0, "notificationBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payload"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Lcom/braze/models/push/BrazeNotificationPayload;->isPushStory()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/braze/models/push/BrazeNotificationPayload;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 89
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v0, Lcom/braze/push/BrazeNotificationStyleFactory$Companion$getNotificationStyle$1;->INSTANCE:Lcom/braze/push/BrazeNotificationStyleFactory$Companion$getNotificationStyle$1;

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function0;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 90
    invoke-virtual {p0, p1, p2}, Lcom/braze/push/BrazeNotificationStyleFactory$Companion;->getStoryStyle(Landroidx/core/app/NotificationCompat$Builder;Lcom/braze/models/push/BrazeNotificationPayload;)Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;

    move-result-object p1

    check-cast p1, Landroidx/core/app/NotificationCompat$Style;

    goto :goto_0

    .line 91
    :cond_0
    invoke-virtual {p2}, Lcom/braze/models/push/BrazeNotificationPayload;->isConversationalPush()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v0, Lcom/braze/push/BrazeNotificationStyleFactory$Companion$getNotificationStyle$2;->INSTANCE:Lcom/braze/push/BrazeNotificationStyleFactory$Companion$getNotificationStyle$2;

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function0;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 93
    invoke-virtual {p0, p1, p2}, Lcom/braze/push/BrazeNotificationStyleFactory$Companion;->getConversationalPushStyle(Landroidx/core/app/NotificationCompat$Builder;Lcom/braze/models/push/BrazeNotificationPayload;)Landroidx/core/app/NotificationCompat$MessagingStyle;

    move-result-object p1

    check-cast p1, Landroidx/core/app/NotificationCompat$Style;

    goto :goto_0

    .line 94
    :cond_1
    invoke-virtual {p2}, Lcom/braze/models/push/BrazeNotificationPayload;->getBigImageUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 96
    invoke-virtual {p2}, Lcom/braze/models/push/BrazeNotificationPayload;->isInlineImagePush()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 97
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v0, Lcom/braze/push/BrazeNotificationStyleFactory$Companion$getNotificationStyle$3;->INSTANCE:Lcom/braze/push/BrazeNotificationStyleFactory$Companion$getNotificationStyle$3;

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function0;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 98
    invoke-virtual {p0, p2, p1}, Lcom/braze/push/BrazeNotificationStyleFactory$Companion;->getInlineImageStyle(Lcom/braze/models/push/BrazeNotificationPayload;Landroidx/core/app/NotificationCompat$Builder;)Landroidx/core/app/NotificationCompat$Style;

    move-result-object p1

    goto :goto_0

    .line 100
    :cond_2
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object p1, Lcom/braze/push/BrazeNotificationStyleFactory$Companion$getNotificationStyle$4;->INSTANCE:Lcom/braze/push/BrazeNotificationStyleFactory$Companion$getNotificationStyle$4;

    move-object v4, p1

    check-cast v4, Lkotlin/jvm/functions/Function0;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v6}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 101
    invoke-virtual {p0, p2}, Lcom/braze/push/BrazeNotificationStyleFactory$Companion;->getBigPictureNotificationStyle(Lcom/braze/models/push/BrazeNotificationPayload;)Landroidx/core/app/NotificationCompat$BigPictureStyle;

    move-result-object p1

    check-cast p1, Landroidx/core/app/NotificationCompat$Style;

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_4

    .line 107
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object p1, Lcom/braze/push/BrazeNotificationStyleFactory$Companion$getNotificationStyle$5;->INSTANCE:Lcom/braze/push/BrazeNotificationStyleFactory$Companion$getNotificationStyle$5;

    move-object v4, p1

    check-cast v4, Lkotlin/jvm/functions/Function0;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v6}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 108
    invoke-virtual {p0, p2}, Lcom/braze/push/BrazeNotificationStyleFactory$Companion;->getBigTextNotificationStyle(Lcom/braze/models/push/BrazeNotificationPayload;)Landroidx/core/app/NotificationCompat$BigTextStyle;

    move-result-object p1

    check-cast p1, Landroidx/core/app/NotificationCompat$Style;

    :cond_4
    return-object p1
.end method

.method public final getStoryStyle(Landroidx/core/app/NotificationCompat$Builder;Lcom/braze/models/push/BrazeNotificationPayload;)Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;
    .locals 13

    const-string v0, "notificationBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payload"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    invoke-virtual {p2}, Lcom/braze/models/push/BrazeNotificationPayload;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 159
    sget-object v2, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object p1, Lcom/braze/push/BrazeNotificationStyleFactory$Companion$getStoryStyle$1;->INSTANCE:Lcom/braze/push/BrazeNotificationStyleFactory$Companion$getStoryStyle$1;

    move-object v6, p1

    check-cast v6, Lkotlin/jvm/functions/Function0;

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p0

    invoke-static/range {v2 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-object v1

    .line 162
    :cond_0
    invoke-virtual {p2}, Lcom/braze/models/push/BrazeNotificationPayload;->getPushStoryPages()Ljava/util/List;

    move-result-object v2

    .line 163
    invoke-virtual {p2}, Lcom/braze/models/push/BrazeNotificationPayload;->getPushStoryPageIndex()I

    move-result v3

    .line 164
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/braze/models/push/BrazeNotificationPayload$PushStoryPage;

    .line 166
    new-instance v5, Landroid/widget/RemoteViews;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    sget v7, Lcom/braze/ui/R$layout;->com_braze_push_story_one_image:I

    invoke-direct {v5, v6, v7}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 167
    invoke-direct {p0, v5, p2, v4}, Lcom/braze/push/BrazeNotificationStyleFactory$Companion;->populatePushStoryPage(Landroid/widget/RemoteViews;Lcom/braze/models/push/BrazeNotificationPayload;Lcom/braze/models/push/BrazeNotificationPayload$PushStoryPage;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 168
    sget-object v6, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v8, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    sget-object p1, Lcom/braze/push/BrazeNotificationStyleFactory$Companion$getStoryStyle$2;->INSTANCE:Lcom/braze/push/BrazeNotificationStyleFactory$Companion$getStoryStyle$2;

    move-object v10, p1

    check-cast v10, Lkotlin/jvm/functions/Function0;

    const/4 v11, 0x2

    const/4 v12, 0x0

    const/4 v9, 0x0

    move-object v7, p0

    invoke-static/range {v6 .. v12}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-object v1

    .line 171
    :cond_1
    invoke-virtual {p2}, Lcom/braze/models/push/BrazeNotificationPayload;->getNotificationExtras()Landroid/os/Bundle;

    move-result-object p2

    .line 172
    new-instance v1, Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;

    invoke-direct {v1}, Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;-><init>()V

    .line 173
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v4, v3, -0x1

    add-int/2addr v4, v2

    .line 177
    rem-int/2addr v4, v2

    .line 174
    invoke-direct {p0, v0, p2, v4}, Lcom/braze/push/BrazeNotificationStyleFactory$Companion;->createStoryTraversedPendingIntent(Landroid/content/Context;Landroid/os/Bundle;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 180
    sget v6, Lcom/braze/ui/R$id;->com_braze_story_button_previous:I

    .line 179
    invoke-virtual {v5, v6, v4}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const/4 v4, 0x1

    add-int/2addr v3, v4

    .line 186
    rem-int/2addr v3, v2

    .line 183
    invoke-direct {p0, v0, p2, v3}, Lcom/braze/push/BrazeNotificationStyleFactory$Companion;->createStoryTraversedPendingIntent(Landroid/content/Context;Landroid/os/Bundle;I)Landroid/app/PendingIntent;

    move-result-object p2

    .line 189
    sget v0, Lcom/braze/ui/R$id;->com_braze_story_button_next:I

    .line 188
    invoke-virtual {v5, v0, p2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 192
    invoke-virtual {p1, v5}, Landroidx/core/app/NotificationCompat$Builder;->setCustomBigContentView(Landroid/widget/RemoteViews;)Landroidx/core/app/NotificationCompat$Builder;

    .line 195
    invoke-virtual {p1, v4}, Landroidx/core/app/NotificationCompat$Builder;->setOnlyAlertOnce(Z)Landroidx/core/app/NotificationCompat$Builder;

    return-object v1
.end method

.method public final setBigPictureSummaryAndTitle(Landroidx/core/app/NotificationCompat$BigPictureStyle;Lcom/braze/models/push/BrazeNotificationPayload;)V
    .locals 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "bigPictureNotificationStyle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payload"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 566
    invoke-virtual {p2}, Lcom/braze/models/push/BrazeNotificationPayload;->getConfigurationProvider()Lcom/braze/configuration/BrazeConfigurationProvider;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 567
    :cond_0
    invoke-virtual {p2}, Lcom/braze/models/push/BrazeNotificationPayload;->getBigSummaryText()Ljava/lang/String;

    move-result-object v1

    .line 568
    invoke-virtual {p2}, Lcom/braze/models/push/BrazeNotificationPayload;->getBigTitleText()Ljava/lang/String;

    move-result-object v2

    .line 569
    invoke-virtual {p2}, Lcom/braze/models/push/BrazeNotificationPayload;->getSummaryText()Ljava/lang/String;

    move-result-object v3

    if-eqz v1, :cond_1

    .line 573
    invoke-static {v1, v0}, Lcom/braze/push/support/HtmlUtils;->getHtmlSpannedTextIfEnabled(Ljava/lang/String;Lcom/braze/configuration/BrazeConfigurationProvider;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 572
    invoke-virtual {p1, v4}, Landroidx/core/app/NotificationCompat$BigPictureStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigPictureStyle;

    :cond_1
    if-eqz v2, :cond_2

    .line 580
    invoke-static {v2, v0}, Lcom/braze/push/support/HtmlUtils;->getHtmlSpannedTextIfEnabled(Ljava/lang/String;Lcom/braze/configuration/BrazeConfigurationProvider;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 579
    invoke-virtual {p1, v2}, Landroidx/core/app/NotificationCompat$BigPictureStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigPictureStyle;

    :cond_2
    if-nez v3, :cond_3

    if-nez v1, :cond_3

    .line 589
    invoke-virtual {p2}, Lcom/braze/models/push/BrazeNotificationPayload;->getContentText()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 591
    invoke-static {p2, v0}, Lcom/braze/push/support/HtmlUtils;->getHtmlSpannedTextIfEnabled(Ljava/lang/String;Lcom/braze/configuration/BrazeConfigurationProvider;)Ljava/lang/CharSequence;

    move-result-object p2

    .line 590
    invoke-virtual {p1, p2}, Landroidx/core/app/NotificationCompat$BigPictureStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigPictureStyle;

    :cond_3
    return-void
.end method

.method public final setStyleIfSupported(Landroidx/core/app/NotificationCompat$Builder;Lcom/braze/models/push/BrazeNotificationPayload;)V
    .locals 8
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "notificationBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payload"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0, p1, p2}, Lcom/braze/push/BrazeNotificationStyleFactory$Companion;->getNotificationStyle(Landroidx/core/app/NotificationCompat$Builder;Lcom/braze/models/push/BrazeNotificationPayload;)Landroidx/core/app/NotificationCompat$Style;

    move-result-object p2

    .line 73
    instance-of v0, p2, Lcom/braze/push/BrazeNotificationStyleFactory$NoOpSentinelStyle;

    if-nez v0, :cond_0

    .line 74
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v0, Lcom/braze/push/BrazeNotificationStyleFactory$Companion$setStyleIfSupported$1;->INSTANCE:Lcom/braze/push/BrazeNotificationStyleFactory$Companion$setStyleIfSupported$1;

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function0;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 75
    invoke-virtual {p1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    :cond_0
    return-void
.end method
