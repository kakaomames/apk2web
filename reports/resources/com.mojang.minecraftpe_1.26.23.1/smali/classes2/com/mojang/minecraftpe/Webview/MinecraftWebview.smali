.class public Lcom/mojang/minecraftpe/Webview/MinecraftWebview;
.super Ljava/lang/Object;
.source "MinecraftWebview.java"


# instance fields
.field private mActivity:Lcom/mojang/minecraftpe/MainActivity;

.field private mId:I

.field private mWebView:Landroid/webkit/WebView;

.field private mWebViewPopup:Lcom/mojang/minecraftpe/PopupView;


# direct methods
.method public static synthetic $r8$lambda$1jXW5JFCMqu9ZUvCpaJw0tB-jBA(Lcom/mojang/minecraftpe/Webview/MinecraftWebview;)V
    .locals 0

    invoke-direct {p0}, Lcom/mojang/minecraftpe/Webview/MinecraftWebview;->lambda$_hideSystemBars$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$4ADxcmvIbydztbD75luUQ9WBMCg(Lcom/mojang/minecraftpe/Webview/MinecraftWebview;)V
    .locals 0

    invoke-direct {p0}, Lcom/mojang/minecraftpe/Webview/MinecraftWebview;->lambda$_hideSystemBars$0()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmWebView(Lcom/mojang/minecraftpe/Webview/MinecraftWebview;)Landroid/webkit/WebView;
    .locals 0

    iget-object p0, p0, Lcom/mojang/minecraftpe/Webview/MinecraftWebview;->mWebView:Landroid/webkit/WebView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWebViewPopup(Lcom/mojang/minecraftpe/Webview/MinecraftWebview;)Lcom/mojang/minecraftpe/PopupView;
    .locals 0

    iget-object p0, p0, Lcom/mojang/minecraftpe/Webview/MinecraftWebview;->mWebViewPopup:Lcom/mojang/minecraftpe/PopupView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$m_createWebView(Lcom/mojang/minecraftpe/Webview/MinecraftWebview;)V
    .locals 0

    invoke-direct {p0}, Lcom/mojang/minecraftpe/Webview/MinecraftWebview;->_createWebView()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput p1, p0, Lcom/mojang/minecraftpe/Webview/MinecraftWebview;->mId:I

    .line 36
    sget-object p1, Lcom/mojang/minecraftpe/MainActivity;->mInstance:Lcom/mojang/minecraftpe/MainActivity;

    iput-object p1, p0, Lcom/mojang/minecraftpe/Webview/MinecraftWebview;->mActivity:Lcom/mojang/minecraftpe/MainActivity;

    .line 37
    new-instance v0, Lcom/mojang/minecraftpe/Webview/MinecraftWebview$1;

    invoke-direct {v0, p0}, Lcom/mojang/minecraftpe/Webview/MinecraftWebview$1;-><init>(Lcom/mojang/minecraftpe/Webview/MinecraftWebview;)V

    invoke-virtual {p1, v0}, Lcom/mojang/minecraftpe/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private _createWebView()V
    .locals 4

    .line 199
    sget-object v0, Lcom/mojang/minecraftpe/MainActivity;->mInstance:Lcom/mojang/minecraftpe/MainActivity;

    invoke-virtual {v0}, Lcom/mojang/minecraftpe/MainActivity;->isPublishBuild()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 200
    invoke-static {v1}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    .line 203
    :cond_0
    new-instance v0, Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/mojang/minecraftpe/Webview/MinecraftWebview;->mActivity:Lcom/mojang/minecraftpe/MainActivity;

    invoke-direct {v0, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mojang/minecraftpe/Webview/MinecraftWebview;->mWebView:Landroid/webkit/WebView;

    .line 204
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 205
    iget-object v0, p0, Lcom/mojang/minecraftpe/Webview/MinecraftWebview;->mWebView:Landroid/webkit/WebView;

    new-instance v2, Lcom/mojang/minecraftpe/Webview/MinecraftWebViewClient;

    invoke-direct {v2, p0}, Lcom/mojang/minecraftpe/Webview/MinecraftWebViewClient;-><init>(Lcom/mojang/minecraftpe/Webview/MinecraftWebview;)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 206
    iget-object v0, p0, Lcom/mojang/minecraftpe/Webview/MinecraftWebview;->mWebView:Landroid/webkit/WebView;

    new-instance v2, Lcom/mojang/minecraftpe/Webview/MinecraftChromeClient;

    invoke-direct {v2, p0}, Lcom/mojang/minecraftpe/Webview/MinecraftChromeClient;-><init>(Lcom/mojang/minecraftpe/Webview/MinecraftWebview;)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 207
    iget-object v0, p0, Lcom/mojang/minecraftpe/Webview/MinecraftWebview;->mWebView:Landroid/webkit/WebView;

    new-instance v2, Lcom/mojang/minecraftpe/Webview/WebviewHostInterface;

    invoke-direct {v2, p0}, Lcom/mojang/minecraftpe/Webview/WebviewHostInterface;-><init>(Lcom/mojang/minecraftpe/Webview/MinecraftWebview;)V

    const-string v3, "codeBuilderHostInterface"

    invoke-virtual {v0, v2, v3}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Lcom/mojang/minecraftpe/Webview/MinecraftWebview;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 210
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 211
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 213
    new-instance v0, Lcom/mojang/minecraftpe/PopupView;

    iget-object v1, p0, Lcom/mojang/minecraftpe/Webview/MinecraftWebview;->mActivity:Lcom/mojang/minecraftpe/MainActivity;

    invoke-direct {v0, v1}, Lcom/mojang/minecraftpe/PopupView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mojang/minecraftpe/Webview/MinecraftWebview;->mWebViewPopup:Lcom/mojang/minecraftpe/PopupView;

    .line 214
    iget-object v0, p0, Lcom/mojang/minecraftpe/Webview/MinecraftWebview;->mActivity:Lcom/mojang/minecraftpe/MainActivity;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Lcom/mojang/minecraftpe/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 215
    iget-object v1, p0, Lcom/mojang/minecraftpe/Webview/MinecraftWebview;->mWebViewPopup:Lcom/mojang/minecraftpe/PopupView;

    iget-object v2, p0, Lcom/mojang/minecraftpe/Webview/MinecraftWebview;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v2}, Lcom/mojang/minecraftpe/PopupView;->setContentView(Landroid/view/View;)V

    .line 216
    iget-object v1, p0, Lcom/mojang/minecraftpe/Webview/MinecraftWebview;->mWebViewPopup:Lcom/mojang/minecraftpe/PopupView;

    invoke-virtual {v1, v0}, Lcom/mojang/minecraftpe/PopupView;->setParentView(Landroid/view/View;)V

    return-void
.end method

.method private _hideSystemBars(Landroid/view/View;)Ljava/lang/Boolean;
    .locals 4

    const/4 v0, 0x0

    .line 146
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    if-nez p1, :cond_0

    return-object v0

    .line 149
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    const/4 v3, 0x1

    if-lt v1, v2, :cond_2

    .line 150
    invoke-virtual {p1}, Landroid/view/View;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x2

    .line 153
    invoke-interface {p1, v0}, Landroid/view/WindowInsetsController;->setSystemBarsBehavior(I)V

    .line 154
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/view/WindowInsetsController;->hide(I)V

    .line 155
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v0

    :cond_2
    const/16 v0, 0x1706

    .line 159
    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 167
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method private _hideSystemBars()V
    .locals 2

    .line 174
    iget-object v0, p0, Lcom/mojang/minecraftpe/Webview/MinecraftWebview;->mActivity:Lcom/mojang/minecraftpe/MainActivity;

    if-nez v0, :cond_0

    return-void

    .line 178
    :cond_0
    new-instance v1, Lcom/mojang/minecraftpe/Webview/MinecraftWebview$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/mojang/minecraftpe/Webview/MinecraftWebview$$ExternalSyntheticLambda1;-><init>(Lcom/mojang/minecraftpe/Webview/MinecraftWebview;)V

    invoke-virtual {v0, v1}, Lcom/mojang/minecraftpe/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private _readResource(I)Ljava/lang/String;
    .locals 5

    .line 127
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 128
    iget-object v1, p0, Lcom/mojang/minecraftpe/Webview/MinecraftWebview;->mActivity:Lcom/mojang/minecraftpe/MainActivity;

    invoke-virtual {v1}, Lcom/mojang/minecraftpe/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    const/16 v2, 0x100

    .line 130
    :try_start_0
    new-array v2, v2, [B

    .line 132
    :goto_0
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_0

    const/4 v4, 0x0

    .line 133
    invoke-virtual {v0, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 135
    :cond_0
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 141
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception v0

    .line 138
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to read resource "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " with error "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private synthetic lambda$_hideSystemBars$0()V
    .locals 2

    const-wide/16 v0, 0x32

    .line 186
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 189
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 191
    :goto_0
    invoke-direct {p0}, Lcom/mojang/minecraftpe/Webview/MinecraftWebview;->_hideSystemBars()V

    return-void
.end method

.method private synthetic lambda$_hideSystemBars$1()V
    .locals 2

    .line 179
    iget-object v0, p0, Lcom/mojang/minecraftpe/Webview/MinecraftWebview;->mWebView:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    return-void

    .line 183
    :cond_0
    invoke-direct {p0, v0}, Lcom/mojang/minecraftpe/Webview/MinecraftWebview;->_hideSystemBars(Landroid/view/View;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 184
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mojang/minecraftpe/Webview/MinecraftWebview$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/mojang/minecraftpe/Webview/MinecraftWebview$$ExternalSyntheticLambda0;-><init>(Lcom/mojang/minecraftpe/Webview/MinecraftWebview;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 193
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_1
    return-void
.end method

.method private native nativeOnWebError(IILjava/lang/String;)V
.end method

.method private native nativeSendToHost(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method


# virtual methods
.method public _injectApi()V
    .locals 5

    .line 112
    iget-object v0, p0, Lcom/mojang/minecraftpe/Webview/MinecraftWebview;->mActivity:Lcom/mojang/minecraftpe/MainActivity;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 113
    invoke-virtual {v0}, Lcom/mojang/minecraftpe/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v2, p0, Lcom/mojang/minecraftpe/Webview/MinecraftWebview;->mActivity:Lcom/mojang/minecraftpe/MainActivity;

    invoke-virtual {v2}, Lcom/mojang/minecraftpe/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "code_builder_hosted_editor"

    const-string v4, "raw"

    invoke-virtual {v0, v3, v4, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/mojang/minecraftpe/Webview/MinecraftWebview;->_readResource(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 115
    iget-object v1, p0, Lcom/mojang/minecraftpe/Webview/MinecraftWebview;->mWebView:Landroid/webkit/WebView;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_0

    .line 118
    :cond_0
    const-string v0, "Unable to inject api"

    invoke-virtual {p0, v1, v0}, Lcom/mojang/minecraftpe/Webview/MinecraftWebview;->onWebError(ILjava/lang/String;)V

    goto :goto_0

    .line 122
    :cond_1
    const-string v0, "_injectApi called after teardown"

    invoke-virtual {p0, v1, v0}, Lcom/mojang/minecraftpe/Webview/MinecraftWebview;->onWebError(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onWebError(ILjava/lang/String;)V
    .locals 1

    .line 31
    iget v0, p0, Lcom/mojang/minecraftpe/Webview/MinecraftWebview;->mId:I

    invoke-direct {p0, v0, p1, p2}, Lcom/mojang/minecraftpe/Webview/MinecraftWebview;->nativeOnWebError(IILjava/lang/String;)V

    return-void
.end method

.method public sendToHost(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 27
    iget v0, p0, Lcom/mojang/minecraftpe/Webview/MinecraftWebview;->mId:I

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/mojang/minecraftpe/Webview/MinecraftWebview;->nativeSendToHost(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public sendToWebView(Ljava/lang/String;)V
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/mojang/minecraftpe/Webview/MinecraftWebview;->mActivity:Lcom/mojang/minecraftpe/MainActivity;

    new-instance v1, Lcom/mojang/minecraftpe/Webview/MinecraftWebview$5;

    invoke-direct {v1, p0, p1}, Lcom/mojang/minecraftpe/Webview/MinecraftWebview$5;-><init>(Lcom/mojang/minecraftpe/Webview/MinecraftWebview;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/mojang/minecraftpe/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setMuted(Z)V
    .locals 0

    return-void
.end method

.method public setPropagatedAlpha(F)V
    .locals 4

    float-to-double v0, p1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 69
    :goto_0
    invoke-virtual {p0, p1}, Lcom/mojang/minecraftpe/Webview/MinecraftWebview;->setShowView(Z)V

    return-void
.end method

.method public setRect(FFFF)V
    .locals 6

    float-to-int v2, p1

    float-to-int v3, p2

    float-to-int v4, p3

    float-to-int v5, p4

    .line 58
    iget-object p1, p0, Lcom/mojang/minecraftpe/Webview/MinecraftWebview;->mActivity:Lcom/mojang/minecraftpe/MainActivity;

    new-instance p2, Lcom/mojang/minecraftpe/Webview/MinecraftWebview$2;

    move-object v0, p2

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/mojang/minecraftpe/Webview/MinecraftWebview$2;-><init>(Lcom/mojang/minecraftpe/Webview/MinecraftWebview;IIII)V

    invoke-virtual {p1, p2}, Lcom/mojang/minecraftpe/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setShowView(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 88
    invoke-direct {p0}, Lcom/mojang/minecraftpe/Webview/MinecraftWebview;->_hideSystemBars()V

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/mojang/minecraftpe/Webview/MinecraftWebview;->mActivity:Lcom/mojang/minecraftpe/MainActivity;

    new-instance v1, Lcom/mojang/minecraftpe/Webview/MinecraftWebview$4;

    invoke-direct {v1, p0, p1}, Lcom/mojang/minecraftpe/Webview/MinecraftWebview$4;-><init>(Lcom/mojang/minecraftpe/Webview/MinecraftWebview;Z)V

    invoke-virtual {v0, v1}, Lcom/mojang/minecraftpe/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/mojang/minecraftpe/Webview/MinecraftWebview;->mActivity:Lcom/mojang/minecraftpe/MainActivity;

    new-instance v1, Lcom/mojang/minecraftpe/Webview/MinecraftWebview$3;

    invoke-direct {v1, p0, p1}, Lcom/mojang/minecraftpe/Webview/MinecraftWebview$3;-><init>(Lcom/mojang/minecraftpe/Webview/MinecraftWebview;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/mojang/minecraftpe/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public teardown()V
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/mojang/minecraftpe/Webview/MinecraftWebview;->mWebViewPopup:Lcom/mojang/minecraftpe/PopupView;

    invoke-virtual {v0}, Lcom/mojang/minecraftpe/PopupView;->dismiss()V

    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lcom/mojang/minecraftpe/Webview/MinecraftWebview;->mWebViewPopup:Lcom/mojang/minecraftpe/PopupView;

    .line 48
    iput-object v0, p0, Lcom/mojang/minecraftpe/Webview/MinecraftWebview;->mWebView:Landroid/webkit/WebView;

    .line 49
    iput-object v0, p0, Lcom/mojang/minecraftpe/Webview/MinecraftWebview;->mActivity:Lcom/mojang/minecraftpe/MainActivity;

    const/4 v0, -0x1

    .line 50
    iput v0, p0, Lcom/mojang/minecraftpe/Webview/MinecraftWebview;->mId:I

    return-void
.end method
