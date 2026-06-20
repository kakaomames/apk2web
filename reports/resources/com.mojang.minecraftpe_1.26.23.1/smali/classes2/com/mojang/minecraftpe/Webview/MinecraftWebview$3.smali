.class Lcom/mojang/minecraftpe/Webview/MinecraftWebview$3;
.super Ljava/lang/Object;
.source "MinecraftWebview.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mojang/minecraftpe/Webview/MinecraftWebview;->setUrl(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mojang/minecraftpe/Webview/MinecraftWebview;

.field final synthetic val$urlCapture:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mojang/minecraftpe/Webview/MinecraftWebview;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 78
    iput-object p1, p0, Lcom/mojang/minecraftpe/Webview/MinecraftWebview$3;->this$0:Lcom/mojang/minecraftpe/Webview/MinecraftWebview;

    iput-object p2, p0, Lcom/mojang/minecraftpe/Webview/MinecraftWebview$3;->val$urlCapture:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/mojang/minecraftpe/Webview/MinecraftWebview$3;->this$0:Lcom/mojang/minecraftpe/Webview/MinecraftWebview;

    invoke-static {v0}, Lcom/mojang/minecraftpe/Webview/MinecraftWebview;->-$$Nest$fgetmWebView(Lcom/mojang/minecraftpe/Webview/MinecraftWebview;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/mojang/minecraftpe/Webview/MinecraftWebview$3;->val$urlCapture:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
