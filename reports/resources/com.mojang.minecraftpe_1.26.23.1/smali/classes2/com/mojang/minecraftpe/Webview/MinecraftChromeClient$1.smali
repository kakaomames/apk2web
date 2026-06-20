.class Lcom/mojang/minecraftpe/Webview/MinecraftChromeClient$1;
.super Ljava/lang/Object;
.source "MinecraftChromeClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mojang/minecraftpe/Webview/MinecraftChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mojang/minecraftpe/Webview/MinecraftChromeClient;


# direct methods
.method constructor <init>(Lcom/mojang/minecraftpe/Webview/MinecraftChromeClient;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/mojang/minecraftpe/Webview/MinecraftChromeClient$1;->this$0:Lcom/mojang/minecraftpe/Webview/MinecraftChromeClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/mojang/minecraftpe/Webview/MinecraftChromeClient$1;->this$0:Lcom/mojang/minecraftpe/Webview/MinecraftChromeClient;

    invoke-static {v0}, Lcom/mojang/minecraftpe/Webview/MinecraftChromeClient;->-$$Nest$fgetmView(Lcom/mojang/minecraftpe/Webview/MinecraftChromeClient;)Lcom/mojang/minecraftpe/Webview/MinecraftWebview;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mojang/minecraftpe/Webview/MinecraftWebview;->_injectApi()V

    return-void
.end method
