.class final Lbo/app/r0$i;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbo/app/r0;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.braze.dispatch.DispatchManager"
    f = "DispatchManager.kt"
    i = {
        0x0
    }
    l = {
        0xa6
    }
    m = "takeRequest"
    n = {
        "this"
    }
    s = {
        "L$0"
    }
.end annotation


# instance fields
.field b:Ljava/lang/Object;

.field synthetic c:Ljava/lang/Object;

.field final synthetic d:Lbo/app/r0;

.field e:I


# direct methods
.method constructor <init>(Lbo/app/r0;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbo/app/r0;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lbo/app/r0$i;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lbo/app/r0$i;->d:Lbo/app/r0;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lbo/app/r0$i;->c:Ljava/lang/Object;

    iget p1, p0, Lbo/app/r0$i;->e:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lbo/app/r0$i;->e:I

    iget-object p1, p0, Lbo/app/r0$i;->d:Lbo/app/r0;

    invoke-virtual {p1, p0}, Lbo/app/r0;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
