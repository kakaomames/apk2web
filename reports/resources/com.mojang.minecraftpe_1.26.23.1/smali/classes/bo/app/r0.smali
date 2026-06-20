.class public final Lbo/app/r0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbo/app/e2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbo/app/r0$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001:\u0001\u0008B7\u0012\u0006\u0010\u0018\u001a\u00020\u0017\u0012\u0006\u0010\u001a\u001a\u00020\u0019\u0012\u0006\u0010\u001c\u001a\u00020\u001b\u0012\u0006\u0010\u001e\u001a\u00020\u001d\u0012\u0006\u0010 \u001a\u00020\u001f\u0012\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008!\u0010\"J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0008\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J\u0010\u0010\u0008\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0018\u0010\u0008\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\u000bH\u0016J\u0006\u0010\u0005\u001a\u00020\rJ\u0013\u0010\u0008\u001a\u00020\u000bH\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0008\u0010\u000eJ\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000bJ\u0010\u0010\u0005\u001a\u00020\u000b2\u0006\u0010\u0010\u001a\u00020\u000bH\u0007J\u0010\u0010\u0008\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u000bH\u0007R\u0011\u0010\u0013\u001a\u00020\u00118G\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\u0012R\u0011\u0010\u0016\u001a\u00020\r8G\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\u0015\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006#"
    }
    d2 = {
        "Lbo/app/r0;",
        "Lbo/app/e2;",
        "Lbo/app/w1;",
        "event",
        "",
        "b",
        "Lbo/app/e5;",
        "sessionId",
        "a",
        "Lbo/app/g2;",
        "internalEventPublisher",
        "Lbo/app/z1;",
        "request",
        "",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "d",
        "brazeRequest",
        "Lbo/app/k;",
        "()Lbo/app/k;",
        "brazeEventsForDispatch",
        "c",
        "()Z",
        "isNetworkRequestsOffline",
        "Lbo/app/m6;",
        "userCache",
        "Lbo/app/c2;",
        "deviceDataProvider",
        "Lcom/braze/configuration/BrazeConfigurationProvider;",
        "configurationProvider",
        "Lbo/app/u4;",
        "sdkAuthenticationCache",
        "Lbo/app/w4;",
        "sdkMetadataCache",
        "<init>",
        "(Lbo/app/m6;Lbo/app/c2;Lcom/braze/configuration/BrazeConfigurationProvider;Lbo/app/u4;Lbo/app/w4;Lbo/app/g2;)V",
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
.field public static final j:Lbo/app/r0$a;


# instance fields
.field private final a:Lbo/app/m6;

.field private final b:Lbo/app/c2;

.field private final c:Lcom/braze/configuration/BrazeConfigurationProvider;

.field private final d:Lbo/app/u4;

.field private final e:Lbo/app/w4;

.field private final f:Lkotlinx/coroutines/channels/Channel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/channels/Channel<",
            "Lbo/app/z1;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lbo/app/w1;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lbo/app/w1;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public static synthetic $r8$lambda$TtT7EDsaur-jR6slcEc5QNlAHe8(Lbo/app/r0;Lbo/app/g3;)V
    .locals 0

    invoke-static {p0, p1}, Lbo/app/r0;->a(Lbo/app/r0;Lbo/app/g3;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lbo/app/r0$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbo/app/r0$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lbo/app/r0;->j:Lbo/app/r0$a;

    return-void
.end method

.method public constructor <init>(Lbo/app/m6;Lbo/app/c2;Lcom/braze/configuration/BrazeConfigurationProvider;Lbo/app/u4;Lbo/app/w4;Lbo/app/g2;)V
    .locals 1

    const-string v0, "userCache"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceDataProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configurationProvider"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sdkAuthenticationCache"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sdkMetadataCache"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "internalEventPublisher"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lbo/app/r0;->a:Lbo/app/m6;

    .line 4
    iput-object p2, p0, Lbo/app/r0;->b:Lbo/app/c2;

    .line 5
    iput-object p3, p0, Lbo/app/r0;->c:Lcom/braze/configuration/BrazeConfigurationProvider;

    .line 6
    iput-object p4, p0, Lbo/app/r0;->d:Lbo/app/u4;

    .line 7
    iput-object p5, p0, Lbo/app/r0;->e:Lbo/app/w4;

    const/4 p1, 0x0

    const/4 p2, 0x6

    const/16 p3, 0x3e8

    .line 10
    invoke-static {p3, p1, p1, p2, p1}, Lkotlinx/coroutines/channels/ChannelKt;->Channel$default(ILkotlinx/coroutines/channels/BufferOverflow;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/coroutines/channels/Channel;

    move-result-object p1

    iput-object p1, p0, Lbo/app/r0;->f:Lkotlinx/coroutines/channels/Channel;

    .line 11
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lbo/app/r0;->g:Ljava/util/concurrent/ConcurrentHashMap;

    .line 12
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lbo/app/r0;->h:Ljava/util/concurrent/ConcurrentHashMap;

    .line 13
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lbo/app/r0;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 16
    new-instance p1, Lbo/app/r0$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lbo/app/r0$$ExternalSyntheticLambda0;-><init>(Lbo/app/r0;)V

    const-class p2, Lbo/app/g3;

    invoke-interface {p6, p2, p1}, Lbo/app/g2;->b(Ljava/lang/Class;Lcom/braze/events/IEventSubscriber;)Z

    return-void
.end method

.method private static final a(Lbo/app/r0;Lbo/app/g3;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p0, p0, Lbo/app/r0;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()Lbo/app/k;
    .locals 12

    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lbo/app/r0;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    const-string v1, "brazeEventMap.values"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 4
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbo/app/w1;

    .line 6
    const/4 v4, 0x0

    sget-object v4, Lkotlin/streams/jdk8/Iq/XmnkEGmkvCpmts;->cHpmdfLtUx:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-interface {v0, v3}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 8
    sget-object v4, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    new-instance v9, Lbo/app/r0$f;

    invoke-direct {v9, v3}, Lbo/app/r0$f;-><init>(Lbo/app/w1;)V

    const/4 v10, 0x3

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v5, v4

    move-object v6, p0

    invoke-static/range {v5 .. v11}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 9
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v3

    const/16 v5, 0x20

    if-lt v3, v5, :cond_0

    .line 10
    sget-object v7, Lcom/braze/support/BrazeLogger$Priority;->I:Lcom/braze/support/BrazeLogger$Priority;

    sget-object v9, Lbo/app/r0$g;->b:Lbo/app/r0$g;

    const/4 v10, 0x2

    const/4 v11, 0x0

    const/4 v8, 0x0

    move-object v5, v4

    move-object v6, p0

    invoke-static/range {v5 .. v11}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 17
    :cond_1
    new-instance v0, Lbo/app/k;

    invoke-direct {v0, v1}, Lbo/app/k;-><init>(Ljava/util/Set;)V

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0

    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lbo/app/z1;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lbo/app/r0$i;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lbo/app/r0$i;

    iget v1, v0, Lbo/app/r0$i;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lbo/app/r0$i;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lbo/app/r0$i;

    invoke-direct {v0, p0, p1}, Lbo/app/r0$i;-><init>(Lbo/app/r0;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lbo/app/r0$i;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 219
    iget v2, v0, Lbo/app/r0$i;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v0, v0, Lbo/app/r0$i;->b:Ljava/lang/Object;

    check-cast v0, Lbo/app/r0;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .line 221
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 222
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 223
    iget-object p1, p0, Lbo/app/r0;->f:Lkotlinx/coroutines/channels/Channel;

    iput-object p0, v0, Lbo/app/r0$i;->b:Ljava/lang/Object;

    iput v3, v0, Lbo/app/r0$i;->e:I

    invoke-interface {p1, v0}, Lkotlinx/coroutines/channels/Channel;->receive(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    .line 224
    :goto_1
    check-cast p1, Lbo/app/z1;

    .line 226
    invoke-virtual {v0, p1}, Lbo/app/r0;->b(Lbo/app/z1;)Lbo/app/z1;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized a(Lbo/app/e5;)V
    .locals 8

    monitor-enter p0

    :try_start_0
    const-string v0, "sessionId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iget-object v0, p0, Lbo/app/r0;->h:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    .line 21
    :cond_0
    :try_start_1
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v5, Lbo/app/r0$h;->b:Lbo/app/r0$h;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 24
    iget-object v0, p0, Lbo/app/r0;->h:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    const-string v1, "pendingBrazeEventMap.values"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbo/app/w1;

    .line 186
    invoke-interface {v1, p1}, Lbo/app/w1;->a(Lbo/app/e5;)V

    goto :goto_0

    .line 187
    :cond_1
    iget-object p1, p0, Lbo/app/r0;->g:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v0, p0, Lbo/app/r0;->h:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putAll(Ljava/util/Map;)V

    .line 188
    iget-object p1, p0, Lbo/app/r0;->h:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0

    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public a(Lbo/app/g2;Lbo/app/z1;)V
    .locals 7

    const-string v0, "internalEventPublisher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 190
    invoke-virtual {p0}, Lbo/app/r0;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v2, Lcom/braze/support/BrazeLogger$Priority;->I:Lcom/braze/support/BrazeLogger$Priority;

    sget-object v4, Lbo/app/r0$b;->b:Lbo/app/r0$b;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v6}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void

    .line 194
    :cond_0
    iget-object v0, p0, Lbo/app/r0;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_1

    .line 195
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v2, Lcom/braze/support/BrazeLogger$Priority;->I:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v4, Lbo/app/r0$c;

    invoke-direct {v4, p2}, Lbo/app/r0$c;-><init>(Lbo/app/z1;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v6}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void

    .line 202
    :cond_1
    invoke-interface {p2}, Lbo/app/z1;->l()Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/braze/support/JsonUtils;->getPrettyPrintedString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    .line 206
    invoke-interface {p2, p1}, Lbo/app/l2;->a(Lbo/app/g2;)V

    .line 208
    iget-object v1, p0, Lbo/app/r0;->f:Lkotlinx/coroutines/channels/Channel;

    invoke-interface {v1, p2}, Lkotlinx/coroutines/channels/Channel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 210
    invoke-static {v1}, Lkotlinx/coroutines/channels/ChannelResult;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v2, Lcom/braze/support/BrazeLogger$Priority;->V:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v4, Lbo/app/r0$d;

    invoke-direct {v4, v0}, Lbo/app/r0$d;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v0, v1

    move-object v1, p0

    invoke-static/range {v0 .. v6}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    goto :goto_0

    .line 214
    :cond_2
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v2, Lcom/braze/support/BrazeLogger$Priority;->E:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v4, Lbo/app/r0$e;

    invoke-direct {v4, v0}, Lbo/app/r0$e;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v0, v1

    move-object v1, p0

    invoke-static/range {v0 .. v6}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 218
    invoke-interface {p2, p1}, Lbo/app/l2;->b(Lbo/app/g2;)V

    :goto_0
    return-void
.end method

.method public declared-synchronized a(Lbo/app/w1;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Lbo/app/r0;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p1}, Lbo/app/w1;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0

    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized a(Lbo/app/z1;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "brazeRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lbo/app/r0;->b:Lbo/app/c2;

    invoke-interface {v0}, Lbo/app/c2;->c()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lbo/app/z1;->c(Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lbo/app/r0;->c:Lcom/braze/configuration/BrazeConfigurationProvider;

    invoke-virtual {v0}, Lcom/braze/configuration/BrazeConfigurationProvider;->getSdkFlavor()Lcom/braze/enums/SdkFlavor;

    move-result-object v0

    invoke-interface {p1, v0}, Lbo/app/z1;->a(Lcom/braze/enums/SdkFlavor;)V

    .line 229
    iget-object v0, p0, Lbo/app/r0;->b:Lbo/app/c2;

    invoke-interface {v0}, Lbo/app/c2;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lbo/app/z1;->e(Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Lbo/app/r0;->b:Lbo/app/c2;

    invoke-interface {v0}, Lbo/app/c2;->b()Lbo/app/k0;

    move-result-object v0

    .line 231
    invoke-interface {p1, v0}, Lbo/app/z1;->a(Lbo/app/k0;)V

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 233
    invoke-virtual {v0}, Lbo/app/k0;->x()Z

    move-result v2

    if-ne v2, v1, :cond_0

    .line 234
    iget-object v2, p0, Lbo/app/r0;->a:Lbo/app/m6;

    sget-object v3, Lcom/braze/enums/NotificationSubscriptionType;->SUBSCRIBED:Lcom/braze/enums/NotificationSubscriptionType;

    invoke-virtual {v2, v3}, Lbo/app/m6;->b(Lcom/braze/enums/NotificationSubscriptionType;)V

    :cond_0
    if-eqz v0, :cond_1

    .line 238
    invoke-virtual {v0}, Lbo/app/k0;->v()Z

    move-result v0

    if-ne v0, v1, :cond_1

    .line 239
    iget-object v0, p0, Lbo/app/r0;->a:Lbo/app/m6;

    invoke-virtual {v0}, Lbo/app/m6;->h()V

    .line 242
    :cond_1
    iget-object v0, p0, Lbo/app/r0;->a:Lbo/app/m6;

    invoke-virtual {v0}, Lbo/app/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbo/app/x3;

    invoke-interface {p1, v0}, Lbo/app/z1;->a(Lbo/app/x3;)V

    .line 243
    invoke-virtual {p0}, Lbo/app/r0;->a()Lbo/app/k;

    move-result-object v0

    .line 244
    invoke-interface {p1, v0}, Lbo/app/z1;->a(Lbo/app/k;)V

    .line 245
    invoke-virtual {v0}, Lbo/app/k;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 246
    iget-object v0, p0, Lbo/app/r0;->e:Lbo/app/w4;

    iget-object v1, p0, Lbo/app/r0;->c:Lcom/braze/configuration/BrazeConfigurationProvider;

    invoke-virtual {v1}, Lcom/braze/configuration/BrazeConfigurationProvider;->getSdkMetadata()Ljava/util/EnumSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbo/app/w4;->b(Ljava/util/EnumSet;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-interface {p1, v0}, Lbo/app/z1;->a(Ljava/util/EnumSet;)V

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0

    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized b(Lbo/app/z1;)Lbo/app/z1;
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "brazeRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lbo/app/r0;->a:Lbo/app/m6;

    invoke-virtual {v0}, Lbo/app/m6;->f()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lbo/app/z1;->a(Ljava/lang/String;)V

    .line 6
    sget-object v0, Lbo/app/r0;->j:Lbo/app/r0$a;

    iget-object v1, p0, Lbo/app/r0;->b:Lbo/app/c2;

    iget-object v2, p0, Lbo/app/r0;->c:Lcom/braze/configuration/BrazeConfigurationProvider;

    iget-object v3, p0, Lbo/app/r0;->d:Lbo/app/u4;

    invoke-virtual {v0, v1, v2, v3, p1}, Lbo/app/r0$a;->a(Lbo/app/c2;Lcom/braze/configuration/BrazeConfigurationProvider;Lbo/app/u4;Lbo/app/z1;)V

    .line 10
    invoke-interface {p1}, Lbo/app/z1;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11
    invoke-virtual {p0, p1}, Lbo/app/r0;->a(Lbo/app/z1;)V

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0

    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized b(Lbo/app/w1;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lbo/app/r0;->h:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p1}, Lbo/app/w1;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0

    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final b()Z
    .locals 1

    .line 2
    iget-object v0, p0, Lbo/app/r0;->f:Lkotlinx/coroutines/channels/Channel;

    invoke-interface {v0}, Lkotlinx/coroutines/channels/Channel;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final c()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/braze/Braze;->Companion:Lcom/braze/Braze$Companion;

    invoke-virtual {v0}, Lcom/braze/Braze$Companion;->getOutboundNetworkRequestsOffline()Z

    move-result v0

    return v0
.end method

.method public final d()Lbo/app/z1;
    .locals 1

    .line 1
    iget-object v0, p0, Lbo/app/r0;->f:Lkotlinx/coroutines/channels/Channel;

    invoke-interface {v0}, Lkotlinx/coroutines/channels/Channel;->tryReceive-PtdJZtk()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/channels/ChannelResult;->getOrNull-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbo/app/z1;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Lbo/app/r0;->b(Lbo/app/z1;)Lbo/app/z1;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
