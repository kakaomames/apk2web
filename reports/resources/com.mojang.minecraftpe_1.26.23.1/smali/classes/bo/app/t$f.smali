.class final Lbo/app/t$f;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbo/app/t;->a(Lorg/json/JSONArray;)V
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


# direct methods
.method constructor <init>(Lbo/app/t;Lorg/json/JSONArray;)V
    .locals 0

    iput-object p1, p0, Lbo/app/t$f;->b:Lbo/app/t;

    iput-object p2, p0, Lbo/app/t$f;->c:Lorg/json/JSONArray;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lbo/app/t$f;->b:Lbo/app/t;

    invoke-static {v0}, Lbo/app/t;->e(Lbo/app/t;)Lbo/app/g2;

    move-result-object v0

    .line 2
    new-instance v1, Lbo/app/g1;

    iget-object v2, p0, Lbo/app/t$f;->c:Lorg/json/JSONArray;

    invoke-direct {v1, v2}, Lbo/app/g1;-><init>(Lorg/json/JSONArray;)V

    .line 3
    const-class v2, Lbo/app/g1;

    invoke-interface {v0, v1, v2}, Lbo/app/g2;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    return-void
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lbo/app/t$f;->a()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
