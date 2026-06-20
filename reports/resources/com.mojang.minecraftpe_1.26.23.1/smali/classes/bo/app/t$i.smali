.class final Lbo/app/t$i;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbo/app/t;->a(Lbo/app/y4;)V
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

.field final synthetic c:Lbo/app/y4;


# direct methods
.method constructor <init>(Lbo/app/t;Lbo/app/y4;)V
    .locals 0

    iput-object p1, p0, Lbo/app/t$i;->b:Lbo/app/t;

    iput-object p2, p0, Lbo/app/t$i;->c:Lbo/app/y4;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lbo/app/t$i;->b:Lbo/app/t;

    invoke-static {v0}, Lbo/app/t;->g(Lbo/app/t;)Lbo/app/a5;

    move-result-object v0

    iget-object v1, p0, Lbo/app/t$i;->c:Lbo/app/y4;

    invoke-virtual {v0, v1}, Lbo/app/a5;->a(Lbo/app/y4;)V

    .line 2
    iget-object v0, p0, Lbo/app/t$i;->b:Lbo/app/t;

    invoke-static {v0}, Lbo/app/t;->e(Lbo/app/t;)Lbo/app/g2;

    move-result-object v0

    .line 3
    new-instance v1, Lbo/app/z4;

    iget-object v2, p0, Lbo/app/t$i;->c:Lbo/app/y4;

    invoke-direct {v1, v2}, Lbo/app/z4;-><init>(Lbo/app/y4;)V

    .line 4
    const-class v2, Lbo/app/z4;

    invoke-interface {v0, v1, v2}, Lbo/app/g2;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    return-void
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lbo/app/t$i;->a()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
