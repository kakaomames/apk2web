.class Lnet/gree/unitywebview/CWebViewPlugin$4$1;
.super Landroid/webkit/WebChromeClient;
.source "CWebViewPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/gree/unitywebview/CWebViewPlugin$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/gree/unitywebview/CWebViewPlugin$4;


# direct methods
.method constructor <init>(Lnet/gree/unitywebview/CWebViewPlugin$4;)V
    .locals 0

    .line 329
    iput-object p1, p0, Lnet/gree/unitywebview/CWebViewPlugin$4$1;->this$1:Lnet/gree/unitywebview/CWebViewPlugin$4;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 407
    invoke-interface {p2, p1, v0, v1}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    return-void
.end method

.method public onHideCustomView()V
    .locals 2

    .line 370
    invoke-super {p0}, Landroid/webkit/WebChromeClient;->onHideCustomView()V

    .line 371
    invoke-static {}, Lnet/gree/unitywebview/CWebViewPlugin;->access$900()Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 372
    invoke-static {}, Lnet/gree/unitywebview/CWebViewPlugin;->access$900()Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lnet/gree/unitywebview/CWebViewPlugin$4$1;->this$1:Lnet/gree/unitywebview/CWebViewPlugin$4;

    iget-object v1, v1, Lnet/gree/unitywebview/CWebViewPlugin$4;->this$0:Lnet/gree/unitywebview/CWebViewPlugin;

    invoke-static {v1}, Lnet/gree/unitywebview/CWebViewPlugin;->access$1000(Lnet/gree/unitywebview/CWebViewPlugin;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 373
    invoke-static {}, Lnet/gree/unitywebview/CWebViewPlugin;->access$900()Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 374
    iget-object v0, p0, Lnet/gree/unitywebview/CWebViewPlugin$4$1;->this$1:Lnet/gree/unitywebview/CWebViewPlugin$4;

    iget-object v0, v0, Lnet/gree/unitywebview/CWebViewPlugin$4;->this$0:Lnet/gree/unitywebview/CWebViewPlugin;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lnet/gree/unitywebview/CWebViewPlugin;->access$1002(Lnet/gree/unitywebview/CWebViewPlugin;Landroid/view/View;)Landroid/view/View;

    :cond_0
    return-void
.end method

.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 1

    .line 380
    iget-object v0, p0, Lnet/gree/unitywebview/CWebViewPlugin$4$1;->this$1:Lnet/gree/unitywebview/CWebViewPlugin$4;

    iget-object v0, v0, Lnet/gree/unitywebview/CWebViewPlugin$4;->this$0:Lnet/gree/unitywebview/CWebViewPlugin;

    invoke-static {v0}, Lnet/gree/unitywebview/CWebViewPlugin;->access$400(Lnet/gree/unitywebview/CWebViewPlugin;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 381
    invoke-virtual {p4}, Landroid/webkit/JsResult;->cancel()V

    const/4 p1, 0x1

    return p1

    .line 384
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result p1

    return p1
.end method

.method public onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 1

    .line 389
    iget-object v0, p0, Lnet/gree/unitywebview/CWebViewPlugin$4$1;->this$1:Lnet/gree/unitywebview/CWebViewPlugin$4;

    iget-object v0, v0, Lnet/gree/unitywebview/CWebViewPlugin$4;->this$0:Lnet/gree/unitywebview/CWebViewPlugin;

    invoke-static {v0}, Lnet/gree/unitywebview/CWebViewPlugin;->access$400(Lnet/gree/unitywebview/CWebViewPlugin;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 390
    invoke-virtual {p4}, Landroid/webkit/JsResult;->cancel()V

    const/4 p1, 0x1

    return p1

    .line 393
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result p1

    return p1
.end method

.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .locals 1

    .line 398
    iget-object v0, p0, Lnet/gree/unitywebview/CWebViewPlugin$4$1;->this$1:Lnet/gree/unitywebview/CWebViewPlugin$4;

    iget-object v0, v0, Lnet/gree/unitywebview/CWebViewPlugin$4;->this$0:Lnet/gree/unitywebview/CWebViewPlugin;

    invoke-static {v0}, Lnet/gree/unitywebview/CWebViewPlugin;->access$400(Lnet/gree/unitywebview/CWebViewPlugin;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 399
    invoke-virtual {p5}, Landroid/webkit/JsPromptResult;->cancel()V

    const/4 p1, 0x1

    return p1

    .line 402
    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/webkit/WebChromeClient;->onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z

    move-result p1

    return p1
.end method

.method public onPermissionRequest(Landroid/webkit/PermissionRequest;)V
    .locals 5

    .line 334
    invoke-virtual {p1}, Landroid/webkit/PermissionRequest;->getResources()[Ljava/lang/String;

    move-result-object v0

    .line 335
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    const-string v4, "android.webkit.resource.VIDEO_CAPTURE"

    .line 336
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lnet/gree/unitywebview/CWebViewPlugin$4$1;->this$1:Lnet/gree/unitywebview/CWebViewPlugin$4;

    iget-object v4, v4, Lnet/gree/unitywebview/CWebViewPlugin$4;->this$0:Lnet/gree/unitywebview/CWebViewPlugin;

    invoke-static {v4}, Lnet/gree/unitywebview/CWebViewPlugin;->access$500(Lnet/gree/unitywebview/CWebViewPlugin;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    const-string v4, "android.webkit.resource.AUDIO_CAPTURE"

    .line 337
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lnet/gree/unitywebview/CWebViewPlugin$4$1;->this$1:Lnet/gree/unitywebview/CWebViewPlugin$4;

    iget-object v3, v3, Lnet/gree/unitywebview/CWebViewPlugin$4;->this$0:Lnet/gree/unitywebview/CWebViewPlugin;

    invoke-static {v3}, Lnet/gree/unitywebview/CWebViewPlugin;->access$600(Lnet/gree/unitywebview/CWebViewPlugin;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 338
    :cond_1
    invoke-virtual {p1, v0}, Landroid/webkit/PermissionRequest;->grant([Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 0

    .line 355
    iget-object p1, p0, Lnet/gree/unitywebview/CWebViewPlugin$4$1;->this$1:Lnet/gree/unitywebview/CWebViewPlugin$4;

    iget-object p1, p1, Lnet/gree/unitywebview/CWebViewPlugin$4;->this$0:Lnet/gree/unitywebview/CWebViewPlugin;

    invoke-static {p1, p2}, Lnet/gree/unitywebview/CWebViewPlugin;->access$802(Lnet/gree/unitywebview/CWebViewPlugin;I)I

    return-void
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 0

    .line 360
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    .line 361
    invoke-static {}, Lnet/gree/unitywebview/CWebViewPlugin;->access$900()Landroid/widget/FrameLayout;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 362
    iget-object p2, p0, Lnet/gree/unitywebview/CWebViewPlugin$4$1;->this$1:Lnet/gree/unitywebview/CWebViewPlugin$4;

    iget-object p2, p2, Lnet/gree/unitywebview/CWebViewPlugin$4;->this$0:Lnet/gree/unitywebview/CWebViewPlugin;

    invoke-static {p2, p1}, Lnet/gree/unitywebview/CWebViewPlugin;->access$1002(Lnet/gree/unitywebview/CWebViewPlugin;Landroid/view/View;)Landroid/view/View;

    .line 363
    invoke-static {}, Lnet/gree/unitywebview/CWebViewPlugin;->access$900()Landroid/widget/FrameLayout;

    move-result-object p1

    const/high16 p2, -0x1000000

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 364
    invoke-static {}, Lnet/gree/unitywebview/CWebViewPlugin;->access$900()Landroid/widget/FrameLayout;

    move-result-object p1

    iget-object p2, p0, Lnet/gree/unitywebview/CWebViewPlugin$4$1;->this$1:Lnet/gree/unitywebview/CWebViewPlugin$4;

    iget-object p2, p2, Lnet/gree/unitywebview/CWebViewPlugin$4;->this$0:Lnet/gree/unitywebview/CWebViewPlugin;

    invoke-static {p2}, Lnet/gree/unitywebview/CWebViewPlugin;->access$1000(Lnet/gree/unitywebview/CWebViewPlugin;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/webkit/WebChromeClient$FileChooserParams;",
            ")Z"
        }
    .end annotation

    .line 437
    iget-object p1, p0, Lnet/gree/unitywebview/CWebViewPlugin$4$1;->this$1:Lnet/gree/unitywebview/CWebViewPlugin$4;

    iget-object p1, p1, Lnet/gree/unitywebview/CWebViewPlugin$4;->this$0:Lnet/gree/unitywebview/CWebViewPlugin;

    invoke-static {p1}, Lnet/gree/unitywebview/CWebViewPlugin;->access$1200(Lnet/gree/unitywebview/CWebViewPlugin;)Landroid/webkit/ValueCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 438
    iget-object p1, p0, Lnet/gree/unitywebview/CWebViewPlugin$4$1;->this$1:Lnet/gree/unitywebview/CWebViewPlugin$4;

    iget-object p1, p1, Lnet/gree/unitywebview/CWebViewPlugin$4;->this$0:Lnet/gree/unitywebview/CWebViewPlugin;

    invoke-static {p1}, Lnet/gree/unitywebview/CWebViewPlugin;->access$1200(Lnet/gree/unitywebview/CWebViewPlugin;)Landroid/webkit/ValueCallback;

    move-result-object p1

    const/4 p3, 0x0

    invoke-interface {p1, p3}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 440
    :cond_0
    iget-object p1, p0, Lnet/gree/unitywebview/CWebViewPlugin$4$1;->this$1:Lnet/gree/unitywebview/CWebViewPlugin$4;

    iget-object p1, p1, Lnet/gree/unitywebview/CWebViewPlugin$4;->this$0:Lnet/gree/unitywebview/CWebViewPlugin;

    invoke-static {p1, p2}, Lnet/gree/unitywebview/CWebViewPlugin;->access$1202(Lnet/gree/unitywebview/CWebViewPlugin;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;

    .line 442
    iget-object p1, p0, Lnet/gree/unitywebview/CWebViewPlugin$4$1;->this$1:Lnet/gree/unitywebview/CWebViewPlugin$4;

    iget-object p1, p1, Lnet/gree/unitywebview/CWebViewPlugin$4;->this$0:Lnet/gree/unitywebview/CWebViewPlugin;

    iget-object p2, p0, Lnet/gree/unitywebview/CWebViewPlugin$4$1;->this$1:Lnet/gree/unitywebview/CWebViewPlugin$4;

    iget-object p2, p2, Lnet/gree/unitywebview/CWebViewPlugin$4;->val$a:Landroid/app/Activity;

    invoke-virtual {p1, p2}, Lnet/gree/unitywebview/CWebViewPlugin;->verifyStoragePermissions(Landroid/app/Activity;)Z

    move-result p1

    const/4 p2, 0x1

    if-nez p1, :cond_1

    return p2

    .line 444
    :cond_1
    iget-object p1, p0, Lnet/gree/unitywebview/CWebViewPlugin$4$1;->this$1:Lnet/gree/unitywebview/CWebViewPlugin$4;

    iget-object p1, p1, Lnet/gree/unitywebview/CWebViewPlugin$4;->this$0:Lnet/gree/unitywebview/CWebViewPlugin;

    iget-object p3, p0, Lnet/gree/unitywebview/CWebViewPlugin$4$1;->this$1:Lnet/gree/unitywebview/CWebViewPlugin$4;

    iget-object p3, p3, Lnet/gree/unitywebview/CWebViewPlugin$4;->this$0:Lnet/gree/unitywebview/CWebViewPlugin;

    invoke-static {p3}, Lnet/gree/unitywebview/CWebViewPlugin;->access$1200(Lnet/gree/unitywebview/CWebViewPlugin;)Landroid/webkit/ValueCallback;

    move-result-object p3

    invoke-static {p1, p3}, Lnet/gree/unitywebview/CWebViewPlugin;->access$1300(Lnet/gree/unitywebview/CWebViewPlugin;Landroid/webkit/ValueCallback;)V

    return p2
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, ""

    .line 417
    invoke-virtual {p0, p1, p2, v0}, Lnet/gree/unitywebview/CWebViewPlugin$4$1;->openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 422
    iget-object p2, p0, Lnet/gree/unitywebview/CWebViewPlugin$4$1;->this$1:Lnet/gree/unitywebview/CWebViewPlugin$4;

    iget-object p2, p2, Lnet/gree/unitywebview/CWebViewPlugin$4;->this$0:Lnet/gree/unitywebview/CWebViewPlugin;

    invoke-static {p2}, Lnet/gree/unitywebview/CWebViewPlugin;->access$1100(Lnet/gree/unitywebview/CWebViewPlugin;)Landroid/webkit/ValueCallback;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 423
    iget-object p2, p0, Lnet/gree/unitywebview/CWebViewPlugin$4$1;->this$1:Lnet/gree/unitywebview/CWebViewPlugin$4;

    iget-object p2, p2, Lnet/gree/unitywebview/CWebViewPlugin$4;->this$0:Lnet/gree/unitywebview/CWebViewPlugin;

    invoke-static {p2}, Lnet/gree/unitywebview/CWebViewPlugin;->access$1100(Lnet/gree/unitywebview/CWebViewPlugin;)Landroid/webkit/ValueCallback;

    move-result-object p2

    const/4 p3, 0x0

    invoke-interface {p2, p3}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 425
    :cond_0
    iget-object p2, p0, Lnet/gree/unitywebview/CWebViewPlugin$4$1;->this$1:Lnet/gree/unitywebview/CWebViewPlugin$4;

    iget-object p2, p2, Lnet/gree/unitywebview/CWebViewPlugin$4;->this$0:Lnet/gree/unitywebview/CWebViewPlugin;

    invoke-static {p2, p1}, Lnet/gree/unitywebview/CWebViewPlugin;->access$1102(Lnet/gree/unitywebview/CWebViewPlugin;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;

    .line 426
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.GET_CONTENT"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "android.intent.category.OPENABLE"

    .line 427
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "*/*"

    .line 428
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 429
    iget-object p2, p0, Lnet/gree/unitywebview/CWebViewPlugin$4$1;->this$1:Lnet/gree/unitywebview/CWebViewPlugin$4;

    iget-object p2, p2, Lnet/gree/unitywebview/CWebViewPlugin$4;->this$0:Lnet/gree/unitywebview/CWebViewPlugin;

    const/4 p3, 0x1

    invoke-virtual {p2, p1, p3}, Lnet/gree/unitywebview/CWebViewPlugin;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
