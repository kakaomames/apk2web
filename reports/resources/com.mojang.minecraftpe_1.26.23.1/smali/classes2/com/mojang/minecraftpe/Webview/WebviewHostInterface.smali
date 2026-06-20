.class Lcom/mojang/minecraftpe/Webview/WebviewHostInterface;
.super Ljava/lang/Object;
.source "WebviewHostInterface.java"


# instance fields
.field private mView:Lcom/mojang/minecraftpe/Webview/MinecraftWebview;


# direct methods
.method public constructor <init>(Lcom/mojang/minecraftpe/Webview/MinecraftWebview;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/mojang/minecraftpe/Webview/WebviewHostInterface;->mView:Lcom/mojang/minecraftpe/Webview/MinecraftWebview;

    return-void
.end method


# virtual methods
.method public sendToHost(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 16
    const-string v0, ""

    invoke-virtual {p0, p1, p2, v0}, Lcom/mojang/minecraftpe/Webview/WebviewHostInterface;->sendToHost(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public sendToHost(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 21
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SendToHost "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 22
    iget-object v0, p0, Lcom/mojang/minecraftpe/Webview/WebviewHostInterface;->mView:Lcom/mojang/minecraftpe/Webview/MinecraftWebview;

    invoke-virtual {v0, p1, p2, p3}, Lcom/mojang/minecraftpe/Webview/MinecraftWebview;->sendToHost(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
