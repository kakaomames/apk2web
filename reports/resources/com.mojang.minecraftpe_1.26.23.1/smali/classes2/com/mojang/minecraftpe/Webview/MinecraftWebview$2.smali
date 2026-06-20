.class Lcom/mojang/minecraftpe/Webview/MinecraftWebview$2;
.super Ljava/lang/Object;
.source "MinecraftWebview.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mojang/minecraftpe/Webview/MinecraftWebview;->setRect(FFFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mojang/minecraftpe/Webview/MinecraftWebview;

.field final synthetic val$x0:I

.field final synthetic val$x1:I

.field final synthetic val$y0:I

.field final synthetic val$y1:I


# direct methods
.method constructor <init>(Lcom/mojang/minecraftpe/Webview/MinecraftWebview;IIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 58
    iput-object p1, p0, Lcom/mojang/minecraftpe/Webview/MinecraftWebview$2;->this$0:Lcom/mojang/minecraftpe/Webview/MinecraftWebview;

    iput p2, p0, Lcom/mojang/minecraftpe/Webview/MinecraftWebview$2;->val$x0:I

    iput p3, p0, Lcom/mojang/minecraftpe/Webview/MinecraftWebview$2;->val$x1:I

    iput p4, p0, Lcom/mojang/minecraftpe/Webview/MinecraftWebview$2;->val$y0:I

    iput p5, p0, Lcom/mojang/minecraftpe/Webview/MinecraftWebview$2;->val$y1:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 61
    iget-object v0, p0, Lcom/mojang/minecraftpe/Webview/MinecraftWebview$2;->this$0:Lcom/mojang/minecraftpe/Webview/MinecraftWebview;

    invoke-static {v0}, Lcom/mojang/minecraftpe/Webview/MinecraftWebview;->-$$Nest$fgetmWebViewPopup(Lcom/mojang/minecraftpe/Webview/MinecraftWebview;)Lcom/mojang/minecraftpe/PopupView;

    move-result-object v0

    iget v1, p0, Lcom/mojang/minecraftpe/Webview/MinecraftWebview$2;->val$x0:I

    iget v2, p0, Lcom/mojang/minecraftpe/Webview/MinecraftWebview$2;->val$x1:I

    iget v3, p0, Lcom/mojang/minecraftpe/Webview/MinecraftWebview$2;->val$y0:I

    iget v4, p0, Lcom/mojang/minecraftpe/Webview/MinecraftWebview$2;->val$y1:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/mojang/minecraftpe/PopupView;->setRect(IIII)V

    .line 62
    iget-object v0, p0, Lcom/mojang/minecraftpe/Webview/MinecraftWebview$2;->this$0:Lcom/mojang/minecraftpe/Webview/MinecraftWebview;

    invoke-static {v0}, Lcom/mojang/minecraftpe/Webview/MinecraftWebview;->-$$Nest$fgetmWebViewPopup(Lcom/mojang/minecraftpe/Webview/MinecraftWebview;)Lcom/mojang/minecraftpe/PopupView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mojang/minecraftpe/PopupView;->update()V

    return-void
.end method
