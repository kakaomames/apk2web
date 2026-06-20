.class public Lcom/microsoft/xal/browser/WebKitWebViewController$1;
.super Landroid/webkit/WebChromeClient;
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


# direct methods
.method public constructor <init>(Lcom/microsoft/xal/browser/WebKitWebViewController;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/microsoft/xal/browser/WebKitWebViewController$1;->this$0:Lcom/microsoft/xal/browser/WebKitWebViewController;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 0

    .line 134
    iget-object p1, p0, Lcom/microsoft/xal/browser/WebKitWebViewController$1;->this$0:Lcom/microsoft/xal/browser/WebKitWebViewController;

    mul-int/lit8 p2, p2, 0x64

    invoke-virtual {p1, p2}, Lcom/microsoft/xal/browser/WebKitWebViewController;->setProgress(I)V

    return-void
.end method
