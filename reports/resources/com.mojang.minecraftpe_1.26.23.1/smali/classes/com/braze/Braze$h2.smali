.class final Lcom/braze/Braze$h2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/braze/Braze;->requestGeofences(DD)V
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
.field final synthetic b:D

.field final synthetic c:D

.field final synthetic d:Lcom/braze/Braze;


# direct methods
.method constructor <init>(DDLcom/braze/Braze;)V
    .locals 0

    iput-wide p1, p0, Lcom/braze/Braze$h2;->b:D

    iput-wide p3, p0, Lcom/braze/Braze$h2;->c:D

    iput-object p5, p0, Lcom/braze/Braze$h2;->d:Lcom/braze/Braze;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 15

    .line 1
    iget-wide v0, p0, Lcom/braze/Braze$h2;->b:D

    iget-wide v2, p0, Lcom/braze/Braze$h2;->c:D

    invoke-static {v0, v1, v2, v3}, Lcom/braze/support/ValidationUtils;->isValidLocation(DD)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    iget-object v2, p0, Lcom/braze/Braze$h2;->d:Lcom/braze/Braze;

    sget-object v3, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v5, Lcom/braze/Braze$h2$a;

    iget-wide v6, p0, Lcom/braze/Braze$h2;->b:D

    iget-wide v8, p0, Lcom/braze/Braze$h2;->c:D

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/braze/Braze$h2$a;-><init>(DD)V

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void

    .line 8
    :cond_0
    sget-object v8, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    iget-object v9, p0, Lcom/braze/Braze$h2;->d:Lcom/braze/Braze;

    sget-object v10, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v12, Lcom/braze/Braze$h2$b;

    iget-wide v0, p0, Lcom/braze/Braze$h2;->b:D

    iget-wide v2, p0, Lcom/braze/Braze$h2;->c:D

    invoke-direct {v12, v0, v1, v2, v3}, Lcom/braze/Braze$h2$b;-><init>(DD)V

    const/4 v13, 0x2

    const/4 v14, 0x0

    const/4 v11, 0x0

    invoke-static/range {v8 .. v14}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 12
    iget-object v0, p0, Lcom/braze/Braze$h2;->d:Lcom/braze/Braze;

    invoke-virtual {v0}, Lcom/braze/Braze;->getUdm$android_sdk_base_release()Lbo/app/y2;

    move-result-object v0

    invoke-interface {v0}, Lbo/app/y2;->i()Lcom/braze/managers/BrazeGeofenceManager;

    move-result-object v0

    new-instance v10, Lcom/braze/models/outgoing/BrazeLocation;

    iget-wide v2, p0, Lcom/braze/Braze$h2;->b:D

    iget-wide v4, p0, Lcom/braze/Braze$h2;->c:D

    const/16 v8, 0xc

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Lcom/braze/models/outgoing/BrazeLocation;-><init>(DDLjava/lang/Double;Ljava/lang/Double;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v10}, Lcom/braze/managers/BrazeGeofenceManager;->requestGeofenceRefresh(Lcom/braze/models/IBrazeLocation;)V

    return-void
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/braze/Braze$h2;->a()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
