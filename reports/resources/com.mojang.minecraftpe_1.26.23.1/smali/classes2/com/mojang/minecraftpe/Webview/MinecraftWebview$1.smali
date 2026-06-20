.class Lcom/mojang/minecraftpe/Webview/MinecraftWebview$1;
.super Ljava/lang/Object;
.source "MinecraftWebview.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mojang/minecraftpe/Webview/MinecraftWebview;-><init>(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mojang/minecraftpe/Webview/MinecraftWebview;


# direct methods
.method constructor <init>(Lcom/mojang/minecraftpe/Webview/MinecraftWebview;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/mojang/minecraftpe/Webview/MinecraftWebview$1;->this$0:Lcom/mojang/minecraftpe/Webview/MinecraftWebview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/mojang/minecraftpe/Webview/MinecraftWebview$1;->this$0:Lcom/mojang/minecraftpe/Webview/MinecraftWebview;

    invoke-static {v0}, Lcom/mojang/minecraftpe/Webview/MinecraftWebview;->-$$Nest$m_createWebView(Lcom/mojang/minecraftpe/Webview/MinecraftWebview;)V

    return-void
.end method
