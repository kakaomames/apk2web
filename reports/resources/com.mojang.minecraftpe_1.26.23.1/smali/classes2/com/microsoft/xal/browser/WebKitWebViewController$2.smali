.class public Lcom/microsoft/xal/browser/WebKitWebViewController$2;
.super Landroid/webkit/WebViewClient;
.source "WebKitWebViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/xal/browser/WebKitWebViewController;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/xal/browser/WebKitWebViewController;

.field public final synthetic val$endUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/microsoft/xal/browser/WebKitWebViewController;Ljava/lang/String;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/microsoft/xal/browser/WebKitWebViewController$2;->this$0:Lcom/microsoft/xal/browser/WebKitWebViewController;

    iput-object p2, p0, Lcom/microsoft/xal/browser/WebKitWebViewController$2;->val$endUrl:Ljava/lang/String;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .line 145
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    const/16 p2, 0x82

    .line 150
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->requestFocus(I)Z

    const/16 p2, 0x8

    .line 151
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->sendAccessibilityEvent(I)V

    .line 156
    const-string p2, "if (typeof window.__xal__performAccessibilityFocus === \"function\") { window.__xal__performAccessibilityFocus(); }"

    const/4 v0, 0x0

    .line 157
    invoke-virtual {p1, p2, v0}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    .line 166
    iget-object p1, p0, Lcom/microsoft/xal/browser/WebKitWebViewController$2;->val$endUrl:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 168
    iget-object p1, p0, Lcom/microsoft/xal/browser/WebKitWebViewController$2;->this$0:Lcom/microsoft/xal/browser/WebKitWebViewController;

    invoke-static {p1}, Lcom/microsoft/xal/browser/WebKitWebViewController;->access$000(Lcom/microsoft/xal/browser/WebKitWebViewController;)Lcom/microsoft/xal/logging/XalLogger;

    move-result-object p1

    const-string v0, "WebKitWebViewController found end URL. Ending UI flow."

    invoke-virtual {p1, v0}, Lcom/microsoft/xal/logging/XalLogger;->Important(Ljava/lang/String;)V

    .line 170
    iget-object p1, p0, Lcom/microsoft/xal/browser/WebKitWebViewController$2;->this$0:Lcom/microsoft/xal/browser/WebKitWebViewController;

    invoke-static {p1}, Lcom/microsoft/xal/browser/WebKitWebViewController;->access$000(Lcom/microsoft/xal/browser/WebKitWebViewController;)Lcom/microsoft/xal/logging/XalLogger;

    move-result-object p1

    invoke-virtual {p1}, Lcom/microsoft/xal/logging/XalLogger;->Flush()V

    .line 171
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 172
    const-string v0, "RESPONSE"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 173
    iget-object p2, p0, Lcom/microsoft/xal/browser/WebKitWebViewController$2;->this$0:Lcom/microsoft/xal/browser/WebKitWebViewController;

    const/4 v0, -0x1

    invoke-virtual {p2, v0, p1}, Lcom/microsoft/xal/browser/WebKitWebViewController;->setResult(ILandroid/content/Intent;)V

    .line 174
    iget-object p1, p0, Lcom/microsoft/xal/browser/WebKitWebViewController$2;->this$0:Lcom/microsoft/xal/browser/WebKitWebViewController;

    invoke-virtual {p1}, Lcom/microsoft/xal/browser/WebKitWebViewController;->finish()V

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0
.end method
