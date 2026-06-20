.class public Lcom/braze/ui/inappmessage/factories/DefaultInAppMessageHtmlFullViewFactory;
.super Ljava/lang/Object;
.source "DefaultInAppMessageHtmlFullViewFactory.kt"

# interfaces
.implements Lcom/braze/ui/inappmessage/IInAppMessageViewFactory;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0016\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u001a\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0017R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/braze/ui/inappmessage/factories/DefaultInAppMessageHtmlFullViewFactory;",
        "Lcom/braze/ui/inappmessage/IInAppMessageViewFactory;",
        "inAppMessageWebViewClientListener",
        "Lcom/braze/ui/inappmessage/listeners/IInAppMessageWebViewClientListener;",
        "(Lcom/braze/ui/inappmessage/listeners/IInAppMessageWebViewClientListener;)V",
        "createInAppMessageView",
        "Lcom/braze/ui/inappmessage/views/InAppMessageHtmlFullView;",
        "activity",
        "Landroid/app/Activity;",
        "inAppMessage",
        "Lcom/braze/models/inappmessage/IInAppMessage;",
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
.field private final inAppMessageWebViewClientListener:Lcom/braze/ui/inappmessage/listeners/IInAppMessageWebViewClientListener;


# direct methods
.method public constructor <init>(Lcom/braze/ui/inappmessage/listeners/IInAppMessageWebViewClientListener;)V
    .locals 1

    const-string v0, "inAppMessageWebViewClientListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/braze/ui/inappmessage/factories/DefaultInAppMessageHtmlFullViewFactory;->inAppMessageWebViewClientListener:Lcom/braze/ui/inappmessage/listeners/IInAppMessageWebViewClientListener;

    return-void
.end method


# virtual methods
.method public bridge synthetic createInAppMessageView(Landroid/app/Activity;Lcom/braze/models/inappmessage/IInAppMessage;)Landroid/view/View;
    .locals 0

    .line 19
    invoke-virtual {p0, p1, p2}, Lcom/braze/ui/inappmessage/factories/DefaultInAppMessageHtmlFullViewFactory;->createInAppMessageView(Landroid/app/Activity;Lcom/braze/models/inappmessage/IInAppMessage;)Lcom/braze/ui/inappmessage/views/InAppMessageHtmlFullView;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    return-object p1
.end method

.method public createInAppMessageView(Landroid/app/Activity;Lcom/braze/models/inappmessage/IInAppMessage;)Lcom/braze/ui/inappmessage/views/InAppMessageHtmlFullView;
    .locals 10

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inAppMessage"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 27
    sget v1, Lcom/braze/ui/R$layout;->com_braze_inappmessage_html_full:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 26
    check-cast v0, Lcom/braze/ui/inappmessage/views/InAppMessageHtmlFullView;

    .line 28
    new-instance v1, Lcom/braze/configuration/BrazeConfigurationProvider;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "activity.applicationContext"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v3}, Lcom/braze/configuration/BrazeConfigurationProvider;-><init>(Landroid/content/Context;)V

    .line 29
    invoke-virtual {v1}, Lcom/braze/configuration/BrazeConfigurationProvider;->isTouchModeRequiredForHtmlInAppMessages()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Landroid/view/View;

    invoke-static {v1}, Lcom/braze/ui/support/ViewUtils;->isDeviceNotInTouchMode(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 30
    sget-object v3, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v5, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    sget-object p1, Lcom/braze/ui/inappmessage/factories/DefaultInAppMessageHtmlFullViewFactory$createInAppMessageView$1;->INSTANCE:Lcom/braze/ui/inappmessage/factories/DefaultInAppMessageHtmlFullViewFactory$createInAppMessageView$1;

    move-object v7, p1

    check-cast v7, Lkotlin/jvm/functions/Function0;

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v6, 0x0

    move-object v4, p0

    invoke-static/range {v3 .. v9}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-object v2

    .line 37
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 38
    move-object v1, p2

    check-cast v1, Lcom/braze/models/inappmessage/InAppMessageHtmlFull;

    .line 39
    new-instance v2, Lcom/braze/ui/inappmessage/jsinterface/InAppMessageJavascriptInterface;

    const-string v3, "context"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v1

    check-cast v3, Lcom/braze/models/inappmessage/IInAppMessageHtml;

    invoke-direct {v2, p1, v3}, Lcom/braze/ui/inappmessage/jsinterface/InAppMessageJavascriptInterface;-><init>(Landroid/content/Context;Lcom/braze/models/inappmessage/IInAppMessageHtml;)V

    .line 41
    invoke-interface {p2}, Lcom/braze/models/inappmessage/IInAppMessage;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 42
    invoke-virtual {v1}, Lcom/braze/models/inappmessage/InAppMessageHtmlFull;->getLocalAssetsDirectoryUrl()Ljava/lang/String;

    move-result-object v1

    .line 40
    invoke-virtual {v0, v3, v1}, Lcom/braze/ui/inappmessage/views/InAppMessageHtmlFullView;->setWebViewContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    new-instance v1, Lcom/braze/ui/inappmessage/utils/InAppMessageWebViewClient;

    .line 48
    iget-object v3, p0, Lcom/braze/ui/inappmessage/factories/DefaultInAppMessageHtmlFullViewFactory;->inAppMessageWebViewClientListener:Lcom/braze/ui/inappmessage/listeners/IInAppMessageWebViewClientListener;

    .line 45
    invoke-direct {v1, p1, p2, v3}, Lcom/braze/ui/inappmessage/utils/InAppMessageWebViewClient;-><init>(Landroid/content/Context;Lcom/braze/models/inappmessage/IInAppMessage;Lcom/braze/ui/inappmessage/listeners/IInAppMessageWebViewClientListener;)V

    .line 44
    invoke-virtual {v0, v1}, Lcom/braze/ui/inappmessage/views/InAppMessageHtmlFullView;->setInAppMessageWebViewClient(Lcom/braze/ui/inappmessage/utils/InAppMessageWebViewClient;)V

    .line 51
    invoke-virtual {v0}, Lcom/braze/ui/inappmessage/views/InAppMessageHtmlFullView;->getMessageWebView()Landroid/webkit/WebView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 53
    const-string p2, "brazeInternalBridge"

    .line 51
    invoke-virtual {p1, v2, p2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    return-object v0

    .line 26
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type com.braze.ui.inappmessage.views.InAppMessageHtmlFullView"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
