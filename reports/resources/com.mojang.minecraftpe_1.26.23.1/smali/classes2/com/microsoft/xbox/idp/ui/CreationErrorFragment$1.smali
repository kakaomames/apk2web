.class Lcom/microsoft/xbox/idp/ui/CreationErrorFragment$1;
.super Landroid/text/style/ClickableSpan;
.source "CreationErrorFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/xbox/idp/ui/CreationErrorFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/xbox/idp/ui/CreationErrorFragment;


# direct methods
.method constructor <init>(Lcom/microsoft/xbox/idp/ui/CreationErrorFragment;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/microsoft/xbox/idp/ui/CreationErrorFragment$1;->this$0:Lcom/microsoft/xbox/idp/ui/CreationErrorFragment;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 36
    sget-object p1, Lcom/microsoft/xbox/idp/ui/CreationErrorFragment;->TAG:Ljava/lang/String;

    const-string v0, "onClick"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    :try_start_0
    iget-object p1, p0, Lcom/microsoft/xbox/idp/ui/CreationErrorFragment$1;->this$0:Lcom/microsoft/xbox/idp/ui/CreationErrorFragment;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    sget-object v2, Lcom/microsoft/xbox/idp/model/Const;->URL_XBOX_COM:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v0}, Lcom/microsoft/xbox/idp/ui/CreationErrorFragment;->startActivity(Landroid/content/Intent;)V

    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 40
    sget-object v0, Lcom/microsoft/xbox/idp/ui/CreationErrorFragment;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
