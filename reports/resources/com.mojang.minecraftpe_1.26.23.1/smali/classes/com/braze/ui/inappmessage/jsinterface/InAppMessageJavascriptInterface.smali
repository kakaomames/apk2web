.class public final Lcom/braze/ui/inappmessage/jsinterface/InAppMessageJavascriptInterface;
.super Ljava/lang/Object;
.source "InAppMessageJavascriptInterface.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nInAppMessageJavascriptInterface.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InAppMessageJavascriptInterface.kt\ncom/braze/ui/inappmessage/jsinterface/InAppMessageJavascriptInterface\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,90:1\n1#2:91\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\n\n\u0002\u0010\u0006\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u001a\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0007J\u0012\u0010\u0010\u001a\u00020\u000c2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u000eH\u0007J\u0008\u0010\u0012\u001a\u00020\u000cH\u0007J\u001c\u0010\u0013\u001a\u00020\u000c2\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u000e2\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u000eH\u0007J6\u0010\u0016\u001a\u00020\u000c2\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u0018\u001a\u00020\u00192\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u001b\u001a\u00020\u001c2\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u000eH\u0007J\u0014\u0010\u001d\u001a\u0004\u0018\u00010\u001e2\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u000eH\u0007J\u0008\u0010\u001f\u001a\u00020\u000cH\u0007J\u0008\u0010 \u001a\u00020\u000cH\u0007R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0013\u0010\u0007\u001a\u00020\u00088G\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006!"
    }
    d2 = {
        "Lcom/braze/ui/inappmessage/jsinterface/InAppMessageJavascriptInterface;",
        "",
        "context",
        "Landroid/content/Context;",
        "inAppMessage",
        "Lcom/braze/models/inappmessage/IInAppMessageHtml;",
        "(Landroid/content/Context;Lcom/braze/models/inappmessage/IInAppMessageHtml;)V",
        "user",
        "Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface;",
        "getUser",
        "()Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface;",
        "changeUser",
        "",
        "userId",
        "",
        "sdkAuthSignature",
        "logButtonClick",
        "buttonId",
        "logClick",
        "logCustomEventWithJSON",
        "eventName",
        "propertiesJSON",
        "logPurchaseWithJSON",
        "productId",
        "price",
        "",
        "currencyCode",
        "quantity",
        "",
        "parseProperties",
        "Lcom/braze/models/outgoing/BrazeProperties;",
        "requestImmediateDataFlush",
        "requestPushPermission",
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


# instance fields
.field private final context:Landroid/content/Context;

.field private final inAppMessage:Lcom/braze/models/inappmessage/IInAppMessageHtml;

.field private final user:Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/braze/models/inappmessage/IInAppMessageHtml;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inAppMessage"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/braze/ui/inappmessage/jsinterface/InAppMessageJavascriptInterface;->context:Landroid/content/Context;

    .line 21
    iput-object p2, p0, Lcom/braze/ui/inappmessage/jsinterface/InAppMessageJavascriptInterface;->inAppMessage:Lcom/braze/models/inappmessage/IInAppMessageHtml;

    .line 24
    new-instance p2, Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface;

    invoke-direct {p2, p1}, Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/braze/ui/inappmessage/jsinterface/InAppMessageJavascriptInterface;->user:Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface;

    return-void
.end method


# virtual methods
.method public final changeUser(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "userId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    sget-object v0, Lcom/braze/Braze;->Companion:Lcom/braze/Braze$Companion;

    iget-object v1, p0, Lcom/braze/ui/inappmessage/jsinterface/InAppMessageJavascriptInterface;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/braze/Braze$Companion;->getInstance(Landroid/content/Context;)Lcom/braze/Braze;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/braze/Braze;->changeUser(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final getUser()Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/braze/ui/inappmessage/jsinterface/InAppMessageJavascriptInterface;->user:Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface;

    return-object v0
.end method

.method public final logButtonClick(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    if-eqz p1, :cond_0

    .line 62
    iget-object v0, p0, Lcom/braze/ui/inappmessage/jsinterface/InAppMessageJavascriptInterface;->inAppMessage:Lcom/braze/models/inappmessage/IInAppMessageHtml;

    invoke-interface {v0, p1}, Lcom/braze/models/inappmessage/IInAppMessageHtml;->logButtonClick(Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method public final logClick()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/braze/ui/inappmessage/jsinterface/InAppMessageJavascriptInterface;->inAppMessage:Lcom/braze/models/inappmessage/IInAppMessageHtml;

    invoke-interface {v0}, Lcom/braze/models/inappmessage/IInAppMessageHtml;->logClick()Z

    return-void
.end method

.method public final logCustomEventWithJSON(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 38
    invoke-virtual {p0, p2}, Lcom/braze/ui/inappmessage/jsinterface/InAppMessageJavascriptInterface;->parseProperties(Ljava/lang/String;)Lcom/braze/models/outgoing/BrazeProperties;

    move-result-object p2

    .line 39
    sget-object v0, Lcom/braze/Braze;->Companion:Lcom/braze/Braze$Companion;

    iget-object v1, p0, Lcom/braze/ui/inappmessage/jsinterface/InAppMessageJavascriptInterface;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/braze/Braze$Companion;->getInstance(Landroid/content/Context;)Lcom/braze/Braze;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/braze/Braze;->logCustomEvent(Ljava/lang/String;Lcom/braze/models/outgoing/BrazeProperties;)V

    return-void
.end method

.method public final logPurchaseWithJSON(Ljava/lang/String;DLjava/lang/String;ILjava/lang/String;)V
    .locals 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 50
    invoke-virtual {p0, p6}, Lcom/braze/ui/inappmessage/jsinterface/InAppMessageJavascriptInterface;->parseProperties(Ljava/lang/String;)Lcom/braze/models/outgoing/BrazeProperties;

    move-result-object v5

    .line 51
    sget-object p6, Lcom/braze/Braze;->Companion:Lcom/braze/Braze$Companion;

    iget-object v0, p0, Lcom/braze/ui/inappmessage/jsinterface/InAppMessageJavascriptInterface;->context:Landroid/content/Context;

    invoke-virtual {p6, v0}, Lcom/braze/Braze$Companion;->getInstance(Landroid/content/Context;)Lcom/braze/Braze;

    move-result-object v0

    .line 54
    new-instance v3, Ljava/math/BigDecimal;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v3, p2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    move-object v1, p1

    move-object v2, p4

    move v4, p5

    .line 51
    invoke-virtual/range {v0 .. v5}, Lcom/braze/Braze;->logPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/math/BigDecimal;ILcom/braze/models/outgoing/BrazeProperties;)V

    return-void
.end method

.method public final parseProperties(Ljava/lang/String;)Lcom/braze/models/outgoing/BrazeProperties;
    .locals 4

    if-eqz p1, :cond_0

    .line 79
    :try_start_0
    const-string v0, "undefined"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    const-string v0, "null"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Lcom/braze/models/outgoing/BrazeProperties;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/braze/models/outgoing/BrazeProperties;-><init>(Lorg/json/JSONObject;)V

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 85
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v2, Lcom/braze/support/BrazeLogger$Priority;->E:Lcom/braze/support/BrazeLogger$Priority;

    check-cast v0, Ljava/lang/Throwable;

    new-instance v3, Lcom/braze/ui/inappmessage/jsinterface/InAppMessageJavascriptInterface$parseProperties$1;

    invoke-direct {v3, p1}, Lcom/braze/ui/inappmessage/jsinterface/InAppMessageJavascriptInterface$parseProperties$1;-><init>(Ljava/lang/String;)V

    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v1, p0, v2, v0, v3}, Lcom/braze/support/BrazeLogger;->brazelog(Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final requestImmediateDataFlush()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 33
    sget-object v0, Lcom/braze/Braze;->Companion:Lcom/braze/Braze$Companion;

    iget-object v1, p0, Lcom/braze/ui/inappmessage/jsinterface/InAppMessageJavascriptInterface;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/braze/Braze$Companion;->getInstance(Landroid/content/Context;)Lcom/braze/Braze;

    move-result-object v0

    invoke-virtual {v0}, Lcom/braze/Braze;->requestImmediateDataFlush()V

    return-void
.end method

.method public final requestPushPermission()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 72
    sget-object v0, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;->Companion:Lcom/braze/ui/inappmessage/BrazeInAppMessageManager$Companion;

    invoke-virtual {v0}, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager$Companion;->getInstance()Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;->setShouldNextUnregisterBeSkipped(Z)V

    .line 73
    sget-object v0, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;->Companion:Lcom/braze/ui/inappmessage/BrazeInAppMessageManager$Companion;

    invoke-virtual {v0}, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager$Companion;->getInstance()Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/braze/support/PermissionUtils;->requestPushPermissionPrompt(Landroid/app/Activity;)V

    return-void
.end method
