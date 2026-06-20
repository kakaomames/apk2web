.class Lcom/microsoft/xbox/idp/ui/CatchAllErrorFragment$1;
.super Landroid/text/style/ClickableSpan;
.source "CatchAllErrorFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/xbox/idp/ui/CatchAllErrorFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/xbox/idp/ui/CatchAllErrorFragment;


# direct methods
.method constructor <init>(Lcom/microsoft/xbox/idp/ui/CatchAllErrorFragment;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/microsoft/xbox/idp/ui/CatchAllErrorFragment$1;->this$0:Lcom/microsoft/xbox/idp/ui/CatchAllErrorFragment;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 35
    invoke-static {}, Lcom/microsoft/xbox/idp/ui/CatchAllErrorFragment;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onClick"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    :try_start_0
    iget-object p1, p0, Lcom/microsoft/xbox/idp/ui/CatchAllErrorFragment$1;->this$0:Lcom/microsoft/xbox/idp/ui/CatchAllErrorFragment;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    sget-object v2, Lcom/microsoft/xbox/idp/model/Const;->URL_XBOX_COM:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v0}, Lcom/microsoft/xbox/idp/ui/CatchAllErrorFragment;->startActivity(Landroid/content/Intent;)V

    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 39
    invoke-static {}, Lcom/microsoft/xbox/idp/ui/CatchAllErrorFragment;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
