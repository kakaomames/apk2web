.class final Lcom/braze/Braze$q2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/braze/Braze;->retryInAppMessage$android_sdk_base_release(Lcom/braze/events/InAppMessageEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0008\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "",
        "a",
        "()V"
    }
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/braze/Braze;

.field final synthetic c:Lcom/braze/events/InAppMessageEvent;


# direct methods
.method constructor <init>(Lcom/braze/Braze;Lcom/braze/events/InAppMessageEvent;)V
    .locals 0

    iput-object p1, p0, Lcom/braze/Braze$q2;->b:Lcom/braze/Braze;

    iput-object p2, p0, Lcom/braze/Braze$q2;->c:Lcom/braze/events/InAppMessageEvent;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/braze/Braze$q2;->b:Lcom/braze/Braze;

    invoke-virtual {v0}, Lcom/braze/Braze;->getUdm$android_sdk_base_release()Lbo/app/y2;

    move-result-object v0

    invoke-interface {v0}, Lbo/app/y2;->l()Lbo/app/d6;

    move-result-object v0

    iget-object v1, p0, Lcom/braze/Braze$q2;->c:Lcom/braze/events/InAppMessageEvent;

    invoke-virtual {v1}, Lcom/braze/events/InAppMessageEvent;->getTriggerEvent()Lbo/app/s2;

    move-result-object v1

    iget-object v2, p0, Lcom/braze/Braze$q2;->c:Lcom/braze/events/InAppMessageEvent;

    invoke-virtual {v2}, Lcom/braze/events/InAppMessageEvent;->getTriggerAction()Lbo/app/x2;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lbo/app/d6;->a(Lbo/app/s2;Lbo/app/x2;)V

    return-void
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/braze/Braze$q2;->a()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
