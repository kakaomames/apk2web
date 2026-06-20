.class Lnet/gree/unitywebview/CWebViewPlugin$4$2;
.super Landroid/webkit/WebViewClient;
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

.field final synthetic val$webView:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lnet/gree/unitywebview/CWebViewPlugin$4;Landroid/webkit/WebView;)V
    .locals 0

    .line 452
    iput-object p1, p0, Lnet/gree/unitywebview/CWebViewPlugin$4$2;->this$1:Lnet/gree/unitywebview/CWebViewPlugin$4;

    iput-object p2, p0, Lnet/gree/unitywebview/CWebViewPlugin$4$2;->val$webView:Landroid/webkit/WebView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 484
    iget-object p1, p0, Lnet/gree/unitywebview/CWebViewPlugin$4$2;->this$1:Lnet/gree/unitywebview/CWebViewPlugin$4;

    iget-object p1, p1, Lnet/gree/unitywebview/CWebViewPlugin$4;->this$0:Lnet/gree/unitywebview/CWebViewPlugin;

    iget-object p2, p0, Lnet/gree/unitywebview/CWebViewPlugin$4$2;->val$webView:Landroid/webkit/WebView;

    invoke-virtual {p2}, Landroid/webkit/WebView;->canGoBack()Z

    move-result p2

    invoke-static {p1, p2}, Lnet/gree/unitywebview/CWebViewPlugin;->access$1502(Lnet/gree/unitywebview/CWebViewPlugin;Z)Z

    .line 485
    iget-object p1, p0, Lnet/gree/unitywebview/CWebViewPlugin$4$2;->this$1:Lnet/gree/unitywebview/CWebViewPlugin$4;

    iget-object p1, p1, Lnet/gree/unitywebview/CWebViewPlugin$4;->this$0:Lnet/gree/unitywebview/CWebViewPlugin;

    iget-object p2, p0, Lnet/gree/unitywebview/CWebViewPlugin$4$2;->val$webView:Landroid/webkit/WebView;

    invoke-virtual {p2}, Landroid/webkit/WebView;->canGoForward()Z

    move-result p2

    invoke-static {p1, p2}, Lnet/gree/unitywebview/CWebViewPlugin;->access$1602(Lnet/gree/unitywebview/CWebViewPlugin;Z)Z

    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .line 477
    iget-object p1, p0, Lnet/gree/unitywebview/CWebViewPlugin$4$2;->this$1:Lnet/gree/unitywebview/CWebViewPlugin$4;

    iget-object p1, p1, Lnet/gree/unitywebview/CWebViewPlugin$4;->this$0:Lnet/gree/unitywebview/CWebViewPlugin;

    iget-object v0, p0, Lnet/gree/unitywebview/CWebViewPlugin$4$2;->val$webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    invoke-static {p1, v0}, Lnet/gree/unitywebview/CWebViewPlugin;->access$1502(Lnet/gree/unitywebview/CWebViewPlugin;Z)Z

    .line 478
    iget-object p1, p0, Lnet/gree/unitywebview/CWebViewPlugin$4$2;->this$1:Lnet/gree/unitywebview/CWebViewPlugin$4;

    iget-object p1, p1, Lnet/gree/unitywebview/CWebViewPlugin$4;->this$0:Lnet/gree/unitywebview/CWebViewPlugin;

    iget-object v0, p0, Lnet/gree/unitywebview/CWebViewPlugin$4$2;->val$webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v0

    invoke-static {p1, v0}, Lnet/gree/unitywebview/CWebViewPlugin;->access$1602(Lnet/gree/unitywebview/CWebViewPlugin;Z)Z

    .line 479
    iget-object p1, p0, Lnet/gree/unitywebview/CWebViewPlugin$4$2;->this$1:Lnet/gree/unitywebview/CWebViewPlugin$4;

    iget-object p1, p1, Lnet/gree/unitywebview/CWebViewPlugin$4;->this$0:Lnet/gree/unitywebview/CWebViewPlugin;

    invoke-static {p1}, Lnet/gree/unitywebview/CWebViewPlugin;->access$1400(Lnet/gree/unitywebview/CWebViewPlugin;)Lnet/gree/unitywebview/CWebViewPluginInterface;

    move-result-object p1

    const-string v0, "CallOnLoaded"

    invoke-virtual {p1, v0, p2}, Lnet/gree/unitywebview/CWebViewPluginInterface;->call(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 470
    iget-object p1, p0, Lnet/gree/unitywebview/CWebViewPlugin$4$2;->this$1:Lnet/gree/unitywebview/CWebViewPlugin$4;

    iget-object p1, p1, Lnet/gree/unitywebview/CWebViewPlugin$4;->this$0:Lnet/gree/unitywebview/CWebViewPlugin;

    iget-object p3, p0, Lnet/gree/unitywebview/CWebViewPlugin$4$2;->val$webView:Landroid/webkit/WebView;

    invoke-virtual {p3}, Landroid/webkit/WebView;->canGoBack()Z

    move-result p3

    invoke-static {p1, p3}, Lnet/gree/unitywebview/CWebViewPlugin;->access$1502(Lnet/gree/unitywebview/CWebViewPlugin;Z)Z

    .line 471
    iget-object p1, p0, Lnet/gree/unitywebview/CWebViewPlugin$4$2;->this$1:Lnet/gree/unitywebview/CWebViewPlugin$4;

    iget-object p1, p1, Lnet/gree/unitywebview/CWebViewPlugin$4;->this$0:Lnet/gree/unitywebview/CWebViewPlugin;

    iget-object p3, p0, Lnet/gree/unitywebview/CWebViewPlugin$4$2;->val$webView:Landroid/webkit/WebView;

    invoke-virtual {p3}, Landroid/webkit/WebView;->canGoForward()Z

    move-result p3

    invoke-static {p1, p3}, Lnet/gree/unitywebview/CWebViewPlugin;->access$1602(Lnet/gree/unitywebview/CWebViewPlugin;Z)Z

    .line 472
    iget-object p1, p0, Lnet/gree/unitywebview/CWebViewPlugin$4$2;->this$1:Lnet/gree/unitywebview/CWebViewPlugin$4;

    iget-object p1, p1, Lnet/gree/unitywebview/CWebViewPlugin$4;->this$0:Lnet/gree/unitywebview/CWebViewPlugin;

    invoke-static {p1}, Lnet/gree/unitywebview/CWebViewPlugin;->access$1400(Lnet/gree/unitywebview/CWebViewPlugin;)Lnet/gree/unitywebview/CWebViewPluginInterface;

    move-result-object p1

    const-string p3, "CallOnStarted"

    invoke-virtual {p1, p3, p2}, Lnet/gree/unitywebview/CWebViewPluginInterface;->call(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 455
    iget-object p1, p0, Lnet/gree/unitywebview/CWebViewPlugin$4$2;->val$webView:Landroid/webkit/WebView;

    const-string v0, "about:blank"

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 456
    iget-object p1, p0, Lnet/gree/unitywebview/CWebViewPlugin$4$2;->this$1:Lnet/gree/unitywebview/CWebViewPlugin$4;

    iget-object p1, p1, Lnet/gree/unitywebview/CWebViewPlugin$4;->this$0:Lnet/gree/unitywebview/CWebViewPlugin;

    iget-object v0, p0, Lnet/gree/unitywebview/CWebViewPlugin$4$2;->val$webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    invoke-static {p1, v0}, Lnet/gree/unitywebview/CWebViewPlugin;->access$1502(Lnet/gree/unitywebview/CWebViewPlugin;Z)Z

    .line 457
    iget-object p1, p0, Lnet/gree/unitywebview/CWebViewPlugin$4$2;->this$1:Lnet/gree/unitywebview/CWebViewPlugin$4;

    iget-object p1, p1, Lnet/gree/unitywebview/CWebViewPlugin$4;->this$0:Lnet/gree/unitywebview/CWebViewPlugin;

    iget-object v0, p0, Lnet/gree/unitywebview/CWebViewPlugin$4$2;->val$webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v0

    invoke-static {p1, v0}, Lnet/gree/unitywebview/CWebViewPlugin;->access$1602(Lnet/gree/unitywebview/CWebViewPlugin;Z)Z

    .line 458
    iget-object p1, p0, Lnet/gree/unitywebview/CWebViewPlugin$4$2;->this$1:Lnet/gree/unitywebview/CWebViewPlugin$4;

    iget-object p1, p1, Lnet/gree/unitywebview/CWebViewPlugin$4;->this$0:Lnet/gree/unitywebview/CWebViewPlugin;

    invoke-static {p1}, Lnet/gree/unitywebview/CWebViewPlugin;->access$1400(Lnet/gree/unitywebview/CWebViewPlugin;)Lnet/gree/unitywebview/CWebViewPluginInterface;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "\t"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "CallOnError"

    invoke-virtual {p1, p3, p2}, Lnet/gree/unitywebview/CWebViewPluginInterface;->call(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 490
    iget-object p1, p0, Lnet/gree/unitywebview/CWebViewPlugin$4$2;->this$1:Lnet/gree/unitywebview/CWebViewPlugin$4;

    iget-object p1, p1, Lnet/gree/unitywebview/CWebViewPlugin$4;->this$0:Lnet/gree/unitywebview/CWebViewPlugin;

    invoke-static {p1}, Lnet/gree/unitywebview/CWebViewPlugin;->access$1700(Lnet/gree/unitywebview/CWebViewPlugin;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lnet/gree/unitywebview/CWebViewPlugin$4$2;->this$1:Lnet/gree/unitywebview/CWebViewPlugin$4;

    iget-object p1, p1, Lnet/gree/unitywebview/CWebViewPlugin$4;->this$0:Lnet/gree/unitywebview/CWebViewPlugin;

    invoke-static {p1}, Lnet/gree/unitywebview/CWebViewPlugin;->access$1800(Lnet/gree/unitywebview/CWebViewPlugin;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 491
    iget-object p1, p0, Lnet/gree/unitywebview/CWebViewPlugin$4$2;->this$1:Lnet/gree/unitywebview/CWebViewPlugin$4;

    iget-object p1, p1, Lnet/gree/unitywebview/CWebViewPlugin$4;->this$0:Lnet/gree/unitywebview/CWebViewPlugin;

    invoke-static {p1}, Lnet/gree/unitywebview/CWebViewPlugin;->access$1700(Lnet/gree/unitywebview/CWebViewPlugin;)Ljava/lang/String;

    move-result-object p1

    iget-object p3, p0, Lnet/gree/unitywebview/CWebViewPlugin$4$2;->this$1:Lnet/gree/unitywebview/CWebViewPlugin$4;

    iget-object p3, p3, Lnet/gree/unitywebview/CWebViewPlugin$4;->this$0:Lnet/gree/unitywebview/CWebViewPlugin;

    invoke-static {p3}, Lnet/gree/unitywebview/CWebViewPlugin;->access$1800(Lnet/gree/unitywebview/CWebViewPlugin;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Landroid/webkit/HttpAuthHandler;->proceed(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 493
    :cond_0
    invoke-virtual {p2}, Landroid/webkit/HttpAuthHandler;->cancel()V

    :goto_0
    return-void
.end method

.method public onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .locals 0

    .line 463
    iget-object p1, p0, Lnet/gree/unitywebview/CWebViewPlugin$4$2;->this$1:Lnet/gree/unitywebview/CWebViewPlugin$4;

    iget-object p1, p1, Lnet/gree/unitywebview/CWebViewPlugin$4;->this$0:Lnet/gree/unitywebview/CWebViewPlugin;

    iget-object p2, p0, Lnet/gree/unitywebview/CWebViewPlugin$4$2;->val$webView:Landroid/webkit/WebView;

    invoke-virtual {p2}, Landroid/webkit/WebView;->canGoBack()Z

    move-result p2

    invoke-static {p1, p2}, Lnet/gree/unitywebview/CWebViewPlugin;->access$1502(Lnet/gree/unitywebview/CWebViewPlugin;Z)Z

    .line 464
    iget-object p1, p0, Lnet/gree/unitywebview/CWebViewPlugin$4$2;->this$1:Lnet/gree/unitywebview/CWebViewPlugin$4;

    iget-object p1, p1, Lnet/gree/unitywebview/CWebViewPlugin$4;->this$0:Lnet/gree/unitywebview/CWebViewPlugin;

    iget-object p2, p0, Lnet/gree/unitywebview/CWebViewPlugin$4$2;->val$webView:Landroid/webkit/WebView;

    invoke-virtual {p2}, Landroid/webkit/WebView;->canGoForward()Z

    move-result p2

    invoke-static {p1, p2}, Lnet/gree/unitywebview/CWebViewPlugin;->access$1602(Lnet/gree/unitywebview/CWebViewPlugin;Z)Z

    .line 465
    iget-object p1, p0, Lnet/gree/unitywebview/CWebViewPlugin$4$2;->this$1:Lnet/gree/unitywebview/CWebViewPlugin$4;

    iget-object p1, p1, Lnet/gree/unitywebview/CWebViewPlugin$4;->this$0:Lnet/gree/unitywebview/CWebViewPlugin;

    invoke-static {p1}, Lnet/gree/unitywebview/CWebViewPlugin;->access$1400(Lnet/gree/unitywebview/CWebViewPlugin;)Lnet/gree/unitywebview/CWebViewPluginInterface;

    move-result-object p1

    invoke-virtual {p3}, Landroid/webkit/WebResourceResponse;->getStatusCode()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "CallOnHttpError"

    invoke-virtual {p1, p3, p2}, Lnet/gree/unitywebview/CWebViewPluginInterface;->call(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 8

    .line 499
    iget-object v0, p0, Lnet/gree/unitywebview/CWebViewPlugin$4$2;->this$1:Lnet/gree/unitywebview/CWebViewPlugin$4;

    iget-object v0, v0, Lnet/gree/unitywebview/CWebViewPlugin$4;->this$0:Lnet/gree/unitywebview/CWebViewPlugin;

    invoke-static {v0}, Lnet/gree/unitywebview/CWebViewPlugin;->access$700(Lnet/gree/unitywebview/CWebViewPlugin;)Ljava/util/Hashtable;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lnet/gree/unitywebview/CWebViewPlugin$4$2;->this$1:Lnet/gree/unitywebview/CWebViewPlugin$4;

    iget-object v0, v0, Lnet/gree/unitywebview/CWebViewPlugin$4;->this$0:Lnet/gree/unitywebview/CWebViewPlugin;

    invoke-static {v0}, Lnet/gree/unitywebview/CWebViewPlugin;->access$700(Lnet/gree/unitywebview/CWebViewPlugin;)Ljava/util/Hashtable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 504
    :cond_0
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const/4 v1, 0x0

    .line 505
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const-string v2, "User-Agent"

    .line 508
    iget-object v3, p0, Lnet/gree/unitywebview/CWebViewPlugin$4$2;->this$1:Lnet/gree/unitywebview/CWebViewPlugin$4;

    iget-object v3, v3, Lnet/gree/unitywebview/CWebViewPlugin$4;->this$0:Lnet/gree/unitywebview/CWebViewPlugin;

    invoke-static {v3}, Lnet/gree/unitywebview/CWebViewPlugin;->access$1900(Lnet/gree/unitywebview/CWebViewPlugin;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    iget-object v2, p0, Lnet/gree/unitywebview/CWebViewPlugin$4$2;->this$1:Lnet/gree/unitywebview/CWebViewPlugin$4;

    iget-object v2, v2, Lnet/gree/unitywebview/CWebViewPlugin$4;->this$0:Lnet/gree/unitywebview/CWebViewPlugin;

    invoke-static {v2}, Lnet/gree/unitywebview/CWebViewPlugin;->access$1700(Lnet/gree/unitywebview/CWebViewPlugin;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lnet/gree/unitywebview/CWebViewPlugin$4$2;->this$1:Lnet/gree/unitywebview/CWebViewPlugin$4;

    iget-object v2, v2, Lnet/gree/unitywebview/CWebViewPlugin$4;->this$0:Lnet/gree/unitywebview/CWebViewPlugin;

    invoke-static {v2}, Lnet/gree/unitywebview/CWebViewPlugin;->access$1800(Lnet/gree/unitywebview/CWebViewPlugin;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 511
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lnet/gree/unitywebview/CWebViewPlugin$4$2;->this$1:Lnet/gree/unitywebview/CWebViewPlugin$4;

    iget-object v4, v4, Lnet/gree/unitywebview/CWebViewPlugin$4;->this$0:Lnet/gree/unitywebview/CWebViewPlugin;

    invoke-static {v4}, Lnet/gree/unitywebview/CWebViewPlugin;->access$1700(Lnet/gree/unitywebview/CWebViewPlugin;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lnet/gree/unitywebview/CWebViewPlugin$4$2;->this$1:Lnet/gree/unitywebview/CWebViewPlugin$4;

    iget-object v4, v4, Lnet/gree/unitywebview/CWebViewPlugin$4;->this$0:Lnet/gree/unitywebview/CWebViewPlugin;

    invoke-static {v4}, Lnet/gree/unitywebview/CWebViewPlugin;->access$1800(Lnet/gree/unitywebview/CWebViewPlugin;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "Authorization"

    .line 512
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Basic "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x14

    const/16 v5, 0x13

    if-eq v2, v5, :cond_2

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-eq v2, v4, :cond_2

    .line 517
    iget-object v2, p0, Lnet/gree/unitywebview/CWebViewPlugin$4$2;->this$1:Lnet/gree/unitywebview/CWebViewPlugin$4;

    iget-object v2, v2, Lnet/gree/unitywebview/CWebViewPlugin$4;->this$0:Lnet/gree/unitywebview/CWebViewPlugin;

    invoke-virtual {v2, p2}, Lnet/gree/unitywebview/CWebViewPlugin;->GetCookies(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 518
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "Cookie"

    .line 519
    invoke-virtual {v0, v6, v2}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    :cond_2
    iget-object v2, p0, Lnet/gree/unitywebview/CWebViewPlugin$4$2;->this$1:Lnet/gree/unitywebview/CWebViewPlugin$4;

    iget-object v2, v2, Lnet/gree/unitywebview/CWebViewPlugin$4;->this$0:Lnet/gree/unitywebview/CWebViewPlugin;

    invoke-static {v2}, Lnet/gree/unitywebview/CWebViewPlugin;->access$700(Lnet/gree/unitywebview/CWebViewPlugin;)Ljava/util/Hashtable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 524
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v0, v7, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 527
    :cond_3
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 529
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const/16 v6, 0x12c

    if-lt v2, v6, :cond_4

    const/16 v6, 0x190

    if-ge v2, v6, :cond_4

    const/4 p1, 0x0

    return-object p1

    .line 536
    :cond_4
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v2

    const-string v6, "Set-Cookie"

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_7

    .line 538
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-eq v6, v5, :cond_6

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v5, v4, :cond_5

    goto :goto_1

    .line 546
    :cond_5
    iget-object v4, p0, Lnet/gree/unitywebview/CWebViewPlugin$4$2;->this$1:Lnet/gree/unitywebview/CWebViewPlugin$4;

    iget-object v4, v4, Lnet/gree/unitywebview/CWebViewPlugin$4;->this$0:Lnet/gree/unitywebview/CWebViewPlugin;

    invoke-virtual {v4, p2, v2}, Lnet/gree/unitywebview/CWebViewPlugin;->SetCookies(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_2

    .line 540
    :cond_6
    :goto_1
    sget-object v4, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v5, Lnet/gree/unitywebview/CWebViewPlugin$4$2$1;

    invoke-direct {v5, p0, p2, v2}, Lnet/gree/unitywebview/CWebViewPlugin$4$2$1;-><init>(Lnet/gree/unitywebview/CWebViewPlugin$4$2;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v4, v5}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 550
    :cond_7
    :goto_2
    new-instance v2, Landroid/webkit/WebResourceResponse;

    .line 551
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    aget-object v1, v3, v1

    .line 552
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v3

    .line 553
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v2, v1, v3, v0}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 557
    :catch_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1

    .line 500
    :cond_8
    :goto_3
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 7

    .line 563
    iget-object v0, p0, Lnet/gree/unitywebview/CWebViewPlugin$4$2;->this$1:Lnet/gree/unitywebview/CWebViewPlugin$4;

    iget-object v0, v0, Lnet/gree/unitywebview/CWebViewPlugin$4;->this$0:Lnet/gree/unitywebview/CWebViewPlugin;

    iget-object v1, p0, Lnet/gree/unitywebview/CWebViewPlugin$4$2;->val$webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v1

    invoke-static {v0, v1}, Lnet/gree/unitywebview/CWebViewPlugin;->access$1502(Lnet/gree/unitywebview/CWebViewPlugin;Z)Z

    .line 564
    iget-object v0, p0, Lnet/gree/unitywebview/CWebViewPlugin$4$2;->this$1:Lnet/gree/unitywebview/CWebViewPlugin$4;

    iget-object v0, v0, Lnet/gree/unitywebview/CWebViewPlugin$4;->this$0:Lnet/gree/unitywebview/CWebViewPlugin;

    iget-object v1, p0, Lnet/gree/unitywebview/CWebViewPlugin$4$2;->val$webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v1

    invoke-static {v0, v1}, Lnet/gree/unitywebview/CWebViewPlugin;->access$1602(Lnet/gree/unitywebview/CWebViewPlugin;Z)Z

    .line 566
    iget-object v0, p0, Lnet/gree/unitywebview/CWebViewPlugin$4$2;->this$1:Lnet/gree/unitywebview/CWebViewPlugin$4;

    iget-object v0, v0, Lnet/gree/unitywebview/CWebViewPlugin$4;->this$0:Lnet/gree/unitywebview/CWebViewPlugin;

    invoke-static {v0}, Lnet/gree/unitywebview/CWebViewPlugin;->access$2000(Lnet/gree/unitywebview/CWebViewPlugin;)Ljava/util/regex/Pattern;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/gree/unitywebview/CWebViewPlugin$4$2;->this$1:Lnet/gree/unitywebview/CWebViewPlugin$4;

    iget-object v0, v0, Lnet/gree/unitywebview/CWebViewPlugin$4;->this$0:Lnet/gree/unitywebview/CWebViewPlugin;

    invoke-static {v0}, Lnet/gree/unitywebview/CWebViewPlugin;->access$2000(Lnet/gree/unitywebview/CWebViewPlugin;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 568
    :cond_0
    iget-object v0, p0, Lnet/gree/unitywebview/CWebViewPlugin$4$2;->this$1:Lnet/gree/unitywebview/CWebViewPlugin$4;

    iget-object v0, v0, Lnet/gree/unitywebview/CWebViewPlugin$4;->this$0:Lnet/gree/unitywebview/CWebViewPlugin;

    invoke-static {v0}, Lnet/gree/unitywebview/CWebViewPlugin;->access$2100(Lnet/gree/unitywebview/CWebViewPlugin;)Ljava/util/regex/Pattern;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/gree/unitywebview/CWebViewPlugin$4$2;->this$1:Lnet/gree/unitywebview/CWebViewPlugin$4;

    iget-object v0, v0, Lnet/gree/unitywebview/CWebViewPlugin$4;->this$0:Lnet/gree/unitywebview/CWebViewPlugin;

    invoke-static {v0}, Lnet/gree/unitywebview/CWebViewPlugin;->access$2100(Lnet/gree/unitywebview/CWebViewPlugin;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_2

    return v2

    :cond_2
    const-string v0, "unity:"

    .line 574
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p1, 0x6

    .line 575
    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 576
    iget-object p2, p0, Lnet/gree/unitywebview/CWebViewPlugin$4$2;->this$1:Lnet/gree/unitywebview/CWebViewPlugin$4;

    iget-object p2, p2, Lnet/gree/unitywebview/CWebViewPlugin$4;->this$0:Lnet/gree/unitywebview/CWebViewPlugin;

    invoke-static {p2}, Lnet/gree/unitywebview/CWebViewPlugin;->access$1400(Lnet/gree/unitywebview/CWebViewPlugin;)Lnet/gree/unitywebview/CWebViewPluginInterface;

    move-result-object p2

    const-string v0, "CallFromJS"

    invoke-virtual {p2, v0, p1}, Lnet/gree/unitywebview/CWebViewPluginInterface;->call(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 578
    :cond_3
    iget-object v0, p0, Lnet/gree/unitywebview/CWebViewPlugin$4$2;->this$1:Lnet/gree/unitywebview/CWebViewPlugin$4;

    iget-object v0, v0, Lnet/gree/unitywebview/CWebViewPlugin$4;->this$0:Lnet/gree/unitywebview/CWebViewPlugin;

    invoke-static {v0}, Lnet/gree/unitywebview/CWebViewPlugin;->access$2200(Lnet/gree/unitywebview/CWebViewPlugin;)Ljava/util/regex/Pattern;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lnet/gree/unitywebview/CWebViewPlugin$4$2;->this$1:Lnet/gree/unitywebview/CWebViewPlugin$4;

    iget-object v0, v0, Lnet/gree/unitywebview/CWebViewPlugin$4;->this$0:Lnet/gree/unitywebview/CWebViewPlugin;

    invoke-static {v0}, Lnet/gree/unitywebview/CWebViewPlugin;->access$2200(Lnet/gree/unitywebview/CWebViewPlugin;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 579
    iget-object p1, p0, Lnet/gree/unitywebview/CWebViewPlugin$4$2;->this$1:Lnet/gree/unitywebview/CWebViewPlugin$4;

    iget-object p1, p1, Lnet/gree/unitywebview/CWebViewPlugin$4;->this$0:Lnet/gree/unitywebview/CWebViewPlugin;

    invoke-static {p1}, Lnet/gree/unitywebview/CWebViewPlugin;->access$1400(Lnet/gree/unitywebview/CWebViewPlugin;)Lnet/gree/unitywebview/CWebViewPluginInterface;

    move-result-object p1

    const-string v0, "CallOnHooked"

    invoke-virtual {p1, v0, p2}, Lnet/gree/unitywebview/CWebViewPluginInterface;->call(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 581
    :cond_4
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v3, ".pdf"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v4, "CallOnStarted"

    const-string v5, "android.intent.action.VIEW"

    const-string v6, "https://maps.app.goo.gl"

    if-nez v0, :cond_7

    .line 582
    invoke-virtual {p2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "http://"

    .line 583
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "https://"

    .line 584
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_5
    const-string v0, "openExternalBrowser=1"

    .line 586
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 589
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v5, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 590
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 597
    :catch_0
    :cond_6
    iget-object p1, p0, Lnet/gree/unitywebview/CWebViewPlugin$4$2;->this$1:Lnet/gree/unitywebview/CWebViewPlugin$4;

    iget-object p1, p1, Lnet/gree/unitywebview/CWebViewPlugin$4;->this$0:Lnet/gree/unitywebview/CWebViewPlugin;

    invoke-static {p1}, Lnet/gree/unitywebview/CWebViewPlugin;->access$1400(Lnet/gree/unitywebview/CWebViewPlugin;)Lnet/gree/unitywebview/CWebViewPluginInterface;

    move-result-object p1

    invoke-virtual {p1, v4, p2}, Lnet/gree/unitywebview/CWebViewPluginInterface;->call(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 600
    :cond_7
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 601
    invoke-virtual {p2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "file://"

    .line 602
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "javascript:"

    .line 603
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 604
    :cond_8
    iget-object p1, p0, Lnet/gree/unitywebview/CWebViewPlugin$4$2;->this$1:Lnet/gree/unitywebview/CWebViewPlugin$4;

    iget-object p1, p1, Lnet/gree/unitywebview/CWebViewPlugin$4;->this$0:Lnet/gree/unitywebview/CWebViewPlugin;

    invoke-static {p1}, Lnet/gree/unitywebview/CWebViewPlugin;->access$1400(Lnet/gree/unitywebview/CWebViewPlugin;)Lnet/gree/unitywebview/CWebViewPluginInterface;

    move-result-object p1

    invoke-virtual {p1, v4, p2}, Lnet/gree/unitywebview/CWebViewPluginInterface;->call(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 608
    :cond_9
    new-instance v0, Landroid/content/Intent;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-direct {v0, v5, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 609
    iget-object p2, p0, Lnet/gree/unitywebview/CWebViewPlugin$4$2;->this$1:Lnet/gree/unitywebview/CWebViewPlugin$4;

    iget-object p2, p2, Lnet/gree/unitywebview/CWebViewPlugin$4;->val$a:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    .line 610
    invoke-virtual {p2, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p2

    .line 611
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_a

    .line 612
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_a
    return v2
.end method
