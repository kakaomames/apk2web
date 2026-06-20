.class final Lbo/app/d6$u;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbo/app/d6;->a(Lbo/app/s2;Lbo/app/x2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0006\n\u0002\u0010\u0002\n\u0000\u0010\u0001\u001a\u00020\u0000H\u008a@"
    }
    d2 = {
        "",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.braze.triggers.managers.TriggerManager$retryTriggeredAction$6"
    f = "TriggerManager.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field b:I

.field final synthetic c:Lbo/app/x2;

.field final synthetic d:Lbo/app/d6;

.field final synthetic e:Lbo/app/s2;

.field final synthetic f:J


# direct methods
.method constructor <init>(Lbo/app/x2;Lbo/app/d6;Lbo/app/s2;JLkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbo/app/x2;",
            "Lbo/app/d6;",
            "Lbo/app/s2;",
            "J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lbo/app/d6$u;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lbo/app/d6$u;->c:Lbo/app/x2;

    iput-object p2, p0, Lbo/app/d6$u;->d:Lbo/app/d6;

    iput-object p3, p0, Lbo/app/d6$u;->e:Lbo/app/s2;

    iput-wide p4, p0, Lbo/app/d6$u;->f:J

    const/4 p1, 0x1

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lbo/app/d6$u;->create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lbo/app/d6$u;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, v0}, Lbo/app/d6$u;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v7, Lbo/app/d6$u;

    iget-object v1, p0, Lbo/app/d6$u;->c:Lbo/app/x2;

    iget-object v2, p0, Lbo/app/d6$u;->d:Lbo/app/d6;

    iget-object v3, p0, Lbo/app/d6$u;->e:Lbo/app/s2;

    iget-wide v4, p0, Lbo/app/d6$u;->f:J

    move-object v0, v7

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lbo/app/d6$u;-><init>(Lbo/app/x2;Lbo/app/d6;Lbo/app/s2;JLkotlin/coroutines/Continuation;)V

    return-object v7
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1}, Lbo/app/d6$u;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 1
    iget v0, p0, Lbo/app/d6$u;->b:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2
    iget-object v1, p0, Lbo/app/d6$u;->c:Lbo/app/x2;

    iget-object p1, p0, Lbo/app/d6$u;->d:Lbo/app/d6;

    invoke-static {p1}, Lbo/app/d6;->a(Lbo/app/d6;)Landroid/content/Context;

    move-result-object v2

    iget-object p1, p0, Lbo/app/d6$u;->d:Lbo/app/d6;

    invoke-static {p1}, Lbo/app/d6;->b(Lbo/app/d6;)Lbo/app/g2;

    move-result-object v3

    iget-object v4, p0, Lbo/app/d6$u;->e:Lbo/app/s2;

    iget-wide v5, p0, Lbo/app/d6$u;->f:J

    invoke-interface/range {v1 .. v6}, Lbo/app/x2;->a(Landroid/content/Context;Lbo/app/g2;Lbo/app/s2;J)V

    .line 3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
