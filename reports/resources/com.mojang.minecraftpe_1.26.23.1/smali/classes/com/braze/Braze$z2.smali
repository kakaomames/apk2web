.class final Lcom/braze/Braze$z2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/braze/Braze;->setSyncPolicyOfflineStatus(Z)V
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

.field final synthetic c:Z


# direct methods
.method constructor <init>(Lcom/braze/Braze;Z)V
    .locals 0

    iput-object p1, p0, Lcom/braze/Braze$z2;->b:Lcom/braze/Braze;

    iput-boolean p2, p0, Lcom/braze/Braze$z2;->c:Z

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/braze/Braze$z2;->b:Lcom/braze/Braze;

    invoke-virtual {v0}, Lcom/braze/Braze;->getUdm$android_sdk_base_release()Lbo/app/y2;

    move-result-object v0

    invoke-interface {v0}, Lbo/app/y2;->m()Lbo/app/y1;

    move-result-object v0

    iget-boolean v1, p0, Lcom/braze/Braze$z2;->c:Z

    invoke-interface {v0, v1}, Lbo/app/y1;->b(Z)V

    .line 2
    iget-object v0, p0, Lcom/braze/Braze$z2;->b:Lcom/braze/Braze;

    invoke-virtual {v0}, Lcom/braze/Braze;->getUdm$android_sdk_base_release()Lbo/app/y2;

    move-result-object v0

    invoke-interface {v0}, Lbo/app/y2;->d()Lbo/app/i0;

    move-result-object v0

    iget-boolean v1, p0, Lcom/braze/Braze$z2;->c:Z

    invoke-virtual {v0, v1}, Lbo/app/i0;->a(Z)V

    .line 3
    iget-object v3, p0, Lcom/braze/Braze$z2;->b:Lcom/braze/Braze;

    iget-object v0, v3, Lcom/braze/Braze;->imageLoader:Lcom/braze/images/IBrazeImageLoader;

    if-eqz v0, :cond_0

    .line 4
    sget-object v2, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    new-instance v6, Lcom/braze/Braze$z2$a;

    iget-boolean v0, p0, Lcom/braze/Braze$z2;->c:Z

    invoke-direct {v6, v0}, Lcom/braze/Braze$z2$a;-><init>(Z)V

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lcom/braze/Braze$z2;->b:Lcom/braze/Braze;

    invoke-virtual {v0}, Lcom/braze/Braze;->getImageLoader()Lcom/braze/images/IBrazeImageLoader;

    move-result-object v0

    iget-boolean v1, p0, Lcom/braze/Braze$z2;->c:Z

    invoke-interface {v0, v1}, Lcom/braze/images/IBrazeImageLoader;->setOffline(Z)V

    :cond_0
    return-void
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/braze/Braze$z2;->a()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
