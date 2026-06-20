.class final Lbo/app/t$g;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbo/app/t;->a(Lorg/json/JSONArray;Ljava/lang/String;)V
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
.field final synthetic b:Lbo/app/t;

.field final synthetic c:Lorg/json/JSONArray;

.field final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Lbo/app/t;Lorg/json/JSONArray;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lbo/app/t$g;->b:Lbo/app/t;

    iput-object p2, p0, Lbo/app/t$g;->c:Lorg/json/JSONArray;

    iput-object p3, p0, Lbo/app/t$g;->d:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lbo/app/t$g;->b:Lbo/app/t;

    invoke-static {v0}, Lbo/app/t;->d(Lbo/app/t;)Lbo/app/l1;

    move-result-object v0

    iget-object v1, p0, Lbo/app/t$g;->c:Lorg/json/JSONArray;

    iget-object v2, p0, Lbo/app/t$g;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lbo/app/l1;->a(Lorg/json/JSONArray;Ljava/lang/String;)Lcom/braze/events/FeedUpdatedEvent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lbo/app/t$g;->b:Lbo/app/t;

    .line 2
    invoke-static {v1}, Lbo/app/t;->c(Lbo/app/t;)Lbo/app/g2;

    move-result-object v1

    const-class v2, Lcom/braze/events/FeedUpdatedEvent;

    invoke-interface {v1, v0, v2}, Lbo/app/g2;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lbo/app/t$g;->a()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
