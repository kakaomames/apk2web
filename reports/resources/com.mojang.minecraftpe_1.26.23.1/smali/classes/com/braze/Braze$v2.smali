.class final Lcom/braze/Braze$v2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/braze/Braze;->setGoogleAdvertisingId(Ljava/lang/String;Z)V
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
.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/braze/Braze;

.field final synthetic d:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/braze/Braze;Z)V
    .locals 0

    iput-object p1, p0, Lcom/braze/Braze$v2;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/braze/Braze$v2;->c:Lcom/braze/Braze;

    iput-boolean p3, p0, Lcom/braze/Braze$v2;->d:Z

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 15

    .line 1
    iget-object v0, p0, Lcom/braze/Braze$v2;->b:Ljava/lang/String;

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    iget-object v2, p0, Lcom/braze/Braze$v2;->c:Lcom/braze/Braze;

    sget-object v3, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    sget-object v5, Lcom/braze/Braze$v2$a;->b:Lcom/braze/Braze$v2$a;

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void

    .line 5
    :cond_0
    sget-object v8, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    iget-object v9, p0, Lcom/braze/Braze$v2;->c:Lcom/braze/Braze;

    sget-object v10, Lcom/braze/support/BrazeLogger$Priority;->D:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v12, Lcom/braze/Braze$v2$b;

    iget-object v0, p0, Lcom/braze/Braze$v2;->b:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/braze/Braze$v2;->d:Z

    invoke-direct {v12, v0, v1}, Lcom/braze/Braze$v2$b;-><init>(Ljava/lang/String;Z)V

    const/4 v13, 0x2

    const/4 v14, 0x0

    const/4 v11, 0x0

    invoke-static/range {v8 .. v14}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 9
    iget-object v0, p0, Lcom/braze/Braze$v2;->c:Lcom/braze/Braze;

    invoke-virtual {v0}, Lcom/braze/Braze;->getUdm$android_sdk_base_release()Lbo/app/y2;

    move-result-object v0

    invoke-interface {v0}, Lbo/app/y2;->r()Lbo/app/c2;

    move-result-object v0

    iget-object v1, p0, Lcom/braze/Braze$v2;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lbo/app/c2;->a(Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/braze/Braze$v2;->c:Lcom/braze/Braze;

    invoke-virtual {v0}, Lcom/braze/Braze;->getUdm$android_sdk_base_release()Lbo/app/y2;

    move-result-object v0

    invoke-interface {v0}, Lbo/app/y2;->r()Lbo/app/c2;

    move-result-object v0

    iget-boolean v1, p0, Lcom/braze/Braze$v2;->d:Z

    invoke-interface {v0, v1}, Lbo/app/c2;->a(Z)V

    return-void
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/braze/Braze$v2;->a()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
