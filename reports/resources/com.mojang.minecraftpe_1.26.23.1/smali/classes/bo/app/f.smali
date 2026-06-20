.class public final Lbo/app/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbo/app/e2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbo/app/f$a;,
        Lbo/app/f$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001:\u0001\u0007B1\u0012\u0006\u0010\u0015\u001a\u00020\u0014\u0012\u0006\u0010\u0016\u001a\u00020\u000b\u0012\u0006\u0010\u0018\u001a\u00020\u0017\u0012\u0006\u0010\u001a\u001a\u00020\u0019\u0012\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u001b\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u0008\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0010\u0010\u0008\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\tH\u0016J\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u0010\u0010\u0008\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\tH\u0016J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\rH\u0016J\u000e\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u000bJ\u0006\u0010\u0010\u001a\u00020\u0006R\u0014\u0010\u0013\u001a\u00020\u00118BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\u0012\u00a8\u0006\u001f"
    }
    d2 = {
        "Lbo/app/f;",
        "Lbo/app/e2;",
        "Lkotlinx/coroutines/Job;",
        "c",
        "Lbo/app/z1;",
        "request",
        "",
        "a",
        "b",
        "Lbo/app/w1;",
        "event",
        "Lbo/app/g2;",
        "internalEventPublisher",
        "Lbo/app/e5;",
        "sessionId",
        "eventMessenger",
        "d",
        "Lbo/app/j0;",
        "()Lbo/app/j0;",
        "dataSyncRequest",
        "Lcom/braze/configuration/BrazeConfigurationProvider;",
        "appConfigurationProvider",
        "internalIEventMessenger",
        "Lbo/app/m2;",
        "requestExecutor",
        "Lbo/app/r0;",
        "dispatchManager",
        "",
        "mockAllNetworkRequests",
        "<init>",
        "(Lcom/braze/configuration/BrazeConfigurationProvider;Lbo/app/g2;Lbo/app/m2;Lbo/app/r0;Z)V",
        "android-sdk-base_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# static fields
.field public static final i:Lbo/app/f$a;

.field private static final j:Ljava/lang/String;


# instance fields
.field private final a:Lcom/braze/configuration/BrazeConfigurationProvider;

.field private final b:Lbo/app/m2;

.field private final c:Lbo/app/r0;

.field private final d:Z

.field private final e:Ljava/util/concurrent/locks/ReentrantLock;

.field private final f:Lbo/app/t0;

.field private volatile g:Z

.field private volatile h:Lkotlinx/coroutines/Job;


# direct methods
.method public static synthetic $r8$lambda$xrSsowzC_COxYdCtMt1PkzQ31Vo(Lbo/app/f;Lbo/app/g2;Lbo/app/p0;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lbo/app/f;->a(Lbo/app/f;Lbo/app/g2;Lbo/app/p0;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lbo/app/f$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbo/app/f$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lbo/app/f;->i:Lbo/app/f$a;

    .line 1
    const-class v0, Lbo/app/f;

    invoke-static {v0}, Lcom/braze/support/BrazeLogger;->getBrazeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbo/app/f;->j:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/braze/configuration/BrazeConfigurationProvider;Lbo/app/g2;Lbo/app/m2;Lbo/app/r0;Z)V
    .locals 1

    const/4 v0, 0x0

    sget-object v0, Lcom/google/common/reflect/Jpj/datTWqqIbIAFj;->SpZmMD:Ljava/lang/String;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "internalIEventMessenger"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestExecutor"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dispatchManager"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lbo/app/f;->a:Lcom/braze/configuration/BrazeConfigurationProvider;

    .line 4
    iput-object p3, p0, Lbo/app/f;->b:Lbo/app/m2;

    .line 5
    iput-object p4, p0, Lbo/app/f;->c:Lbo/app/r0;

    .line 6
    iput-boolean p5, p0, Lbo/app/f;->d:Z

    .line 8
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Lbo/app/f;->e:Ljava/util/concurrent/locks/ReentrantLock;

    .line 12
    new-instance p1, Lbo/app/t0;

    invoke-direct {p1, p2, p5}, Lbo/app/t0;-><init>(Lbo/app/g2;Z)V

    iput-object p1, p0, Lbo/app/f;->f:Lbo/app/t0;

    .line 27
    new-instance p1, Lbo/app/f$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, p2}, Lbo/app/f$$ExternalSyntheticLambda0;-><init>(Lbo/app/f;Lbo/app/g2;)V

    const-class p3, Lbo/app/p0;

    invoke-interface {p2, p3, p1}, Lbo/app/g2;->b(Ljava/lang/Class;Lcom/braze/events/IEventSubscriber;)Z

    return-void
.end method

.method public static final synthetic a(Lbo/app/f;)Lbo/app/r0;
    .locals 0

    .line 2
    iget-object p0, p0, Lbo/app/f;->c:Lbo/app/r0;

    return-object p0
.end method

.method public static final synthetic a()Ljava/lang/String;
    .locals 1

    .line 3
    sget-object v0, Lbo/app/f;->j:Ljava/lang/String;

    return-object v0
.end method

.method private static final a(Lbo/app/f;Lbo/app/g2;Lbo/app/p0;)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$internalIEventMessenger"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<name for destructuring parameter 0>"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p2}, Lbo/app/p0;->a()Lbo/app/p0$b;

    move-result-object v0

    invoke-virtual {p2}, Lbo/app/p0;->b()Lbo/app/w1;

    move-result-object v1

    invoke-virtual {p2}, Lbo/app/p0;->c()Lbo/app/e5;

    move-result-object v2

    invoke-virtual {p2}, Lbo/app/p0;->d()Lbo/app/z1;

    move-result-object p2

    .line 7
    sget-object v3, Lbo/app/f$b;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v3, v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_4

    .line 20
    invoke-virtual {p0, p1, p2}, Lbo/app/f;->a(Lbo/app/g2;Lbo/app/z1;)V

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_4

    .line 21
    invoke-virtual {p0, v2}, Lbo/app/f;->a(Lbo/app/e5;)V

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_4

    .line 22
    invoke-virtual {p0, v1}, Lbo/app/f;->a(Lbo/app/w1;)V

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_4

    .line 23
    invoke-virtual {p0, v1}, Lbo/app/f;->b(Lbo/app/w1;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public static final synthetic a(Lbo/app/f;Lbo/app/z1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lbo/app/f;->a(Lbo/app/z1;)V

    return-void
.end method

.method private final a(Lbo/app/z1;)V
    .locals 1

    .line 51
    invoke-interface {p1}, Lbo/app/z1;->b()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lbo/app/f;->d:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 54
    :cond_0
    iget-object v0, p0, Lbo/app/f;->b:Lbo/app/m2;

    invoke-interface {v0, p1}, Lbo/app/m2;->b(Lbo/app/l2;)V

    goto :goto_1

    .line 55
    :cond_1
    :goto_0
    iget-object v0, p0, Lbo/app/f;->f:Lbo/app/t0;

    invoke-virtual {v0, p1}, Lbo/app/t0;->b(Lbo/app/l2;)V

    :goto_1
    return-void
.end method

.method private final b()Lbo/app/j0;
    .locals 4

    .line 1
    new-instance v0, Lbo/app/j0;

    iget-object v1, p0, Lbo/app/f;->a:Lcom/braze/configuration/BrazeConfigurationProvider;

    invoke-virtual {v1}, Lcom/braze/configuration/BrazeConfigurationProvider;->getBaseUrlForRequests()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3, v2}, Lbo/app/j0;-><init>(Ljava/lang/String;Lbo/app/w3;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method private final b(Lbo/app/z1;)V
    .locals 1

    .line 3
    invoke-interface {p1}, Lbo/app/z1;->b()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lbo/app/f;->d:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lbo/app/f;->b:Lbo/app/m2;

    invoke-interface {v0, p1}, Lbo/app/m2;->a(Lbo/app/l2;)V

    goto :goto_1

    .line 7
    :cond_1
    :goto_0
    iget-object v0, p0, Lbo/app/f;->f:Lbo/app/t0;

    invoke-virtual {v0, p1}, Lbo/app/t0;->a(Lbo/app/l2;)V

    :goto_1
    return-void
.end method

.method private final c()Lkotlinx/coroutines/Job;
    .locals 6

    .line 1
    sget-object v0, Lcom/braze/coroutine/BrazeCoroutineScope;->INSTANCE:Lcom/braze/coroutine/BrazeCoroutineScope;

    new-instance v3, Lbo/app/f$c;

    const/4 v1, 0x0

    invoke-direct {v3, p0, v1}, Lbo/app/f$c;-><init>(Lbo/app/f;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lbo/app/e5;)V
    .locals 1

    const-string v0, "sessionId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iget-object v0, p0, Lbo/app/f;->c:Lbo/app/r0;

    invoke-virtual {v0, p1}, Lbo/app/r0;->a(Lbo/app/e5;)V

    return-void
.end method

.method public final a(Lbo/app/g2;)V
    .locals 4

    const-string v0, "eventMessenger"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iget-object v0, p0, Lbo/app/f;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 29
    :try_start_0
    iget-object v1, p0, Lbo/app/f;->h:Lkotlinx/coroutines/Job;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3, v2}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 30
    :cond_0
    iput-object v2, p0, Lbo/app/f;->h:Lkotlinx/coroutines/Job;

    .line 31
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 32
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 39
    iget-object v0, p0, Lbo/app/f;->c:Lbo/app/r0;

    invoke-virtual {v0}, Lbo/app/r0;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 40
    iget-object v0, p0, Lbo/app/f;->c:Lbo/app/r0;

    invoke-direct {p0}, Lbo/app/f;->b()Lbo/app/j0;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lbo/app/r0;->a(Lbo/app/g2;Lbo/app/z1;)V

    .line 47
    :cond_1
    iget-object v0, p0, Lbo/app/f;->c:Lbo/app/r0;

    invoke-virtual {v0}, Lbo/app/r0;->d()Lbo/app/z1;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 48
    invoke-direct {p0, v0}, Lbo/app/f;->b(Lbo/app/z1;)V

    .line 49
    :cond_2
    invoke-interface {p1}, Lbo/app/g2;->a()V

    return-void

    :catchall_0
    move-exception p1

    .line 50
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public a(Lbo/app/g2;Lbo/app/z1;)V
    .locals 1

    const-string v0, "internalEventPublisher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    iget-object v0, p0, Lbo/app/f;->c:Lbo/app/r0;

    invoke-virtual {v0, p1, p2}, Lbo/app/r0;->a(Lbo/app/g2;Lbo/app/z1;)V

    return-void
.end method

.method public a(Lbo/app/w1;)V
    .locals 1

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iget-object v0, p0, Lbo/app/f;->c:Lbo/app/r0;

    invoke-virtual {v0, p1}, Lbo/app/r0;->a(Lbo/app/w1;)V

    return-void
.end method

.method public b(Lbo/app/w1;)V
    .locals 1

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lbo/app/f;->c:Lbo/app/r0;

    invoke-virtual {v0, p1}, Lbo/app/r0;->b(Lbo/app/w1;)V

    return-void
.end method

.method public final d()V
    .locals 9

    .line 1
    iget-object v0, p0, Lbo/app/f;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lbo/app/f;->g:Z

    if-eqz v1, :cond_0

    .line 3
    sget-object v2, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v3, Lbo/app/f;->j:Ljava/lang/String;

    sget-object v6, Lbo/app/f$d;->b:Lbo/app/f$d;

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/String;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    .line 6
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lbo/app/f;->c()Lkotlinx/coroutines/Job;

    move-result-object v1

    iput-object v1, p0, Lbo/app/f;->h:Lkotlinx/coroutines/Job;

    const/4 v1, 0x1

    .line 7
    iput-boolean v1, p0, Lbo/app/f;->g:Z

    .line 8
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method
