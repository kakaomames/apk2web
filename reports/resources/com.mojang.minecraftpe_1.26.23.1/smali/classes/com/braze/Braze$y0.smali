.class final Lcom/braze/Braze$y0;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/braze/Braze;->logLocationRecordedEventFromLocationUpdate$android_sdk_base_release(Lcom/braze/models/IBrazeLocation;)V
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
.field final synthetic b:Lcom/braze/models/IBrazeLocation;

.field final synthetic c:Lcom/braze/Braze;


# direct methods
.method constructor <init>(Lcom/braze/models/IBrazeLocation;Lcom/braze/Braze;)V
    .locals 0

    iput-object p1, p0, Lcom/braze/Braze$y0;->b:Lcom/braze/models/IBrazeLocation;

    iput-object p2, p0, Lcom/braze/Braze$y0;->c:Lcom/braze/Braze;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    sget-object v0, Lbo/app/j;->h:Lbo/app/j$a;

    iget-object v1, p0, Lcom/braze/Braze$y0;->b:Lcom/braze/models/IBrazeLocation;

    invoke-virtual {v0, v1}, Lbo/app/j$a;->a(Lcom/braze/models/IBrazeLocation;)Lbo/app/w1;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/braze/Braze$y0;->c:Lcom/braze/Braze;

    .line 2
    invoke-virtual {v1}, Lcom/braze/Braze;->getUdm$android_sdk_base_release()Lbo/app/y2;

    move-result-object v1

    invoke-interface {v1}, Lbo/app/y2;->m()Lbo/app/y1;

    move-result-object v1

    invoke-interface {v1, v0}, Lbo/app/y1;->a(Lbo/app/w1;)Z

    :cond_0
    return-void
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/braze/Braze$y0;->a()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
