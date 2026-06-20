.class Lcom/microsoft/xbox/toolkit/DialogManagerBase$1;
.super Ljava/lang/Object;
.source "DialogManagerBase.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/xbox/toolkit/DialogManagerBase;->setCancelableBlocking(ZLjava/lang/String;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/xbox/toolkit/DialogManagerBase;

.field final synthetic val$cancelRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/microsoft/xbox/toolkit/DialogManagerBase;Ljava/lang/Runnable;)V
    .locals 0

    .line 235
    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase$1;->this$0:Lcom/microsoft/xbox/toolkit/DialogManagerBase;

    iput-object p2, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase$1;->val$cancelRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 238
    iget-object p1, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase$1;->this$0:Lcom/microsoft/xbox/toolkit/DialogManagerBase;

    invoke-static {p1}, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->access$000(Lcom/microsoft/xbox/toolkit/DialogManagerBase;)Lcom/microsoft/xbox/toolkit/ui/CancellableBlockingScreen;

    move-result-object p1

    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/ui/CancellableBlockingScreen;->dismiss()V

    .line 239
    iget-object p1, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase$1;->this$0:Lcom/microsoft/xbox/toolkit/DialogManagerBase;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/microsoft/xbox/toolkit/DialogManagerBase;->access$002(Lcom/microsoft/xbox/toolkit/DialogManagerBase;Lcom/microsoft/xbox/toolkit/ui/CancellableBlockingScreen;)Lcom/microsoft/xbox/toolkit/ui/CancellableBlockingScreen;

    .line 240
    iget-object p1, p0, Lcom/microsoft/xbox/toolkit/DialogManagerBase$1;->val$cancelRunnable:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method
