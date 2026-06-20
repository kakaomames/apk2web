.class public final Lcom/braze/models/push/BrazeNotificationPayload$ActionButton;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/braze/models/push/BrazeNotificationPayload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActionButton"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0015\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u000e\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u0003J\u0008\u0010 \u001a\u00020\u0008H\u0016R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\n\"\u0004\u0008\u0013\u0010\u000cR\u001c\u0010\u0014\u001a\u0004\u0018\u00010\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\n\"\u0004\u0008\u0016\u0010\u000cR\u001c\u0010\u0017\u001a\u0004\u0018\u00010\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\n\"\u0004\u0008\u0019\u0010\u000cR\u001c\u0010\u001a\u001a\u0004\u0018\u00010\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\n\"\u0004\u0008\u001c\u0010\u000c\u00a8\u0006!"
    }
    d2 = {
        "Lcom/braze/models/push/BrazeNotificationPayload$ActionButton;",
        "",
        "notificationExtras",
        "Landroid/os/Bundle;",
        "actionIndex",
        "",
        "(Landroid/os/Bundle;I)V",
        "actionId",
        "",
        "getActionId",
        "()Ljava/lang/String;",
        "setActionId",
        "(Ljava/lang/String;)V",
        "getActionIndex",
        "()I",
        "setActionIndex",
        "(I)V",
        "text",
        "getText",
        "setText",
        "type",
        "getType",
        "setType",
        "uri",
        "getUri",
        "setUri",
        "useWebview",
        "getUseWebview",
        "setUseWebview",
        "putIntoBundle",
        "",
        "destination",
        "toString",
        "android-sdk-base_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private actionId:Ljava/lang/String;

.field private actionIndex:I

.field private text:Ljava/lang/String;

.field private type:Ljava/lang/String;

.field private uri:Ljava/lang/String;

.field private useWebview:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;I)V
    .locals 2

    const-string v0, "notificationExtras"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p2, p0, Lcom/braze/models/push/BrazeNotificationPayload$ActionButton;->actionIndex:I

    .line 4
    sget-object v0, Lcom/braze/models/push/BrazeNotificationPayload;->Companion:Lcom/braze/models/push/BrazeNotificationPayload$Companion;

    const-string v1, "ab_a*_a"

    invoke-virtual {v0, p2, p1, v1}, Lcom/braze/models/push/BrazeNotificationPayload$Companion;->getTemplateFieldAtIndex(ILandroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/braze/models/push/BrazeNotificationPayload$ActionButton;->type:Ljava/lang/String;

    .line 5
    iget p2, p0, Lcom/braze/models/push/BrazeNotificationPayload$ActionButton;->actionIndex:I

    const-string v1, "ab_a*_id"

    invoke-virtual {v0, p2, p1, v1}, Lcom/braze/models/push/BrazeNotificationPayload$Companion;->getTemplateFieldAtIndex(ILandroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/braze/models/push/BrazeNotificationPayload$ActionButton;->actionId:Ljava/lang/String;

    .line 6
    iget p2, p0, Lcom/braze/models/push/BrazeNotificationPayload$ActionButton;->actionIndex:I

    const-string v1, "ab_a*_uri"

    invoke-virtual {v0, p2, p1, v1}, Lcom/braze/models/push/BrazeNotificationPayload$Companion;->getTemplateFieldAtIndex(ILandroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/braze/models/push/BrazeNotificationPayload$ActionButton;->uri:Ljava/lang/String;

    .line 8
    iget p2, p0, Lcom/braze/models/push/BrazeNotificationPayload$ActionButton;->actionIndex:I

    .line 9
    const-string v1, "ab_a*_use_webview"

    invoke-virtual {v0, p2, p1, v1}, Lcom/braze/models/push/BrazeNotificationPayload$Companion;->getTemplateFieldAtIndex(ILandroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/braze/models/push/BrazeNotificationPayload$ActionButton;->useWebview:Ljava/lang/String;

    .line 14
    iget p2, p0, Lcom/braze/models/push/BrazeNotificationPayload$ActionButton;->actionIndex:I

    const-string v1, "ab_a*_t"

    invoke-virtual {v0, p2, p1, v1}, Lcom/braze/models/push/BrazeNotificationPayload$Companion;->getTemplateFieldAtIndex(ILandroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/braze/models/push/BrazeNotificationPayload$ActionButton;->text:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getActionId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/braze/models/push/BrazeNotificationPayload$ActionButton;->actionId:Ljava/lang/String;

    return-object v0
.end method

.method public final getActionIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/braze/models/push/BrazeNotificationPayload$ActionButton;->actionIndex:I

    return v0
.end method

.method public final getText()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/braze/models/push/BrazeNotificationPayload$ActionButton;->text:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/braze/models/push/BrazeNotificationPayload$ActionButton;->type:Ljava/lang/String;

    return-object v0
.end method

.method public final getUri()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/braze/models/push/BrazeNotificationPayload$ActionButton;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public final getUseWebview()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/braze/models/push/BrazeNotificationPayload$ActionButton;->useWebview:Ljava/lang/String;

    return-object v0
.end method

.method public final putIntoBundle(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "destination"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget v0, p0, Lcom/braze/models/push/BrazeNotificationPayload$ActionButton;->actionIndex:I

    const-string v1, "braze_action_index"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2
    iget-object v0, p0, Lcom/braze/models/push/BrazeNotificationPayload$ActionButton;->type:Ljava/lang/String;

    const-string v1, "braze_action_type"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/braze/models/push/BrazeNotificationPayload$ActionButton;->actionId:Ljava/lang/String;

    const-string v1, "braze_action_id"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/braze/models/push/BrazeNotificationPayload$ActionButton;->uri:Ljava/lang/String;

    const-string v1, "braze_action_uri"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/braze/models/push/BrazeNotificationPayload$ActionButton;->useWebview:Ljava/lang/String;

    const-string v1, "braze_action_use_webview"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setActionId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/braze/models/push/BrazeNotificationPayload$ActionButton;->actionId:Ljava/lang/String;

    return-void
.end method

.method public final setActionIndex(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/braze/models/push/BrazeNotificationPayload$ActionButton;->actionIndex:I

    return-void
.end method

.method public final setText(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/braze/models/push/BrazeNotificationPayload$ActionButton;->text:Ljava/lang/String;

    return-void
.end method

.method public final setType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/braze/models/push/BrazeNotificationPayload$ActionButton;->type:Ljava/lang/String;

    return-void
.end method

.method public final setUri(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/braze/models/push/BrazeNotificationPayload$ActionButton;->uri:Ljava/lang/String;

    return-void
.end method

.method public final setUseWebview(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/braze/models/push/BrazeNotificationPayload$ActionButton;->useWebview:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/braze/models/push/BrazeNotificationPayload;->Companion:Lcom/braze/models/push/BrazeNotificationPayload$Companion;

    iget v2, p0, Lcom/braze/models/push/BrazeNotificationPayload$ActionButton;->actionIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "ActionIndex"

    invoke-static {v1, v3, v2}, Lcom/braze/models/push/BrazeNotificationPayload$Companion;->access$stringAndKey(Lcom/braze/models/push/BrazeNotificationPayload$Companion;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v2, p0, Lcom/braze/models/push/BrazeNotificationPayload$ActionButton;->type:Ljava/lang/String;

    const-string v3, "Type"

    invoke-static {v1, v3, v2}, Lcom/braze/models/push/BrazeNotificationPayload$Companion;->access$stringAndKey(Lcom/braze/models/push/BrazeNotificationPayload$Companion;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 5
    iget-object v2, p0, Lcom/braze/models/push/BrazeNotificationPayload$ActionButton;->actionId:Ljava/lang/String;

    const-string v3, "Id"

    invoke-static {v1, v3, v2}, Lcom/braze/models/push/BrazeNotificationPayload$Companion;->access$stringAndKey(Lcom/braze/models/push/BrazeNotificationPayload$Companion;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 9
    iget-object v2, p0, Lcom/braze/models/push/BrazeNotificationPayload$ActionButton;->uri:Ljava/lang/String;

    const/4 v3, 0x0

    sget-object v3, Lorg/spongycastle/asn1/cms/ecc/ERP/JpmwdoMtPrsbO;->tJxLcP:Ljava/lang/String;

    invoke-static {v1, v3, v2}, Lcom/braze/models/push/BrazeNotificationPayload$Companion;->access$stringAndKey(Lcom/braze/models/push/BrazeNotificationPayload$Companion;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 10
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 14
    iget-object v2, p0, Lcom/braze/models/push/BrazeNotificationPayload$ActionButton;->useWebview:Ljava/lang/String;

    const-string v3, "UseWebview"

    invoke-static {v1, v3, v2}, Lcom/braze/models/push/BrazeNotificationPayload$Companion;->access$stringAndKey(Lcom/braze/models/push/BrazeNotificationPayload$Companion;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 15
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 20
    iget-object v2, p0, Lcom/braze/models/push/BrazeNotificationPayload$ActionButton;->text:Ljava/lang/String;

    const-string v3, "Text"

    invoke-static {v1, v3, v2}, Lcom/braze/models/push/BrazeNotificationPayload$Companion;->access$stringAndKey(Lcom/braze/models/push/BrazeNotificationPayload$Companion;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
