.class final Lcom/braze/images/DefaultBrazeImageLoader$k;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/braze/images/DefaultBrazeImageLoader;->initDiskCacheTask(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
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
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"
    }
    d2 = {
        "Lkotlinx/coroutines/CoroutineScope;",
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
    c = "com.braze.images.DefaultBrazeImageLoader$initDiskCacheTask$1"
    f = "DefaultBrazeImageLoader.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field b:I

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Lcom/braze/images/DefaultBrazeImageLoader;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/braze/images/DefaultBrazeImageLoader;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/braze/images/DefaultBrazeImageLoader;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/braze/images/DefaultBrazeImageLoader$k;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/braze/images/DefaultBrazeImageLoader$k;->c:Landroid/content/Context;

    iput-object p2, p0, Lcom/braze/images/DefaultBrazeImageLoader$k;->d:Lcom/braze/images/DefaultBrazeImageLoader;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/braze/images/DefaultBrazeImageLoader$k;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/braze/images/DefaultBrazeImageLoader$k;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/braze/images/DefaultBrazeImageLoader$k;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/braze/images/DefaultBrazeImageLoader$k;

    iget-object v0, p0, Lcom/braze/images/DefaultBrazeImageLoader$k;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/braze/images/DefaultBrazeImageLoader$k;->d:Lcom/braze/images/DefaultBrazeImageLoader;

    invoke-direct {p1, v0, v1, p2}, Lcom/braze/images/DefaultBrazeImageLoader$k;-><init>(Landroid/content/Context;Lcom/braze/images/DefaultBrazeImageLoader;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/braze/images/DefaultBrazeImageLoader$k;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 1
    iget v0, p0, Lcom/braze/images/DefaultBrazeImageLoader$k;->b:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2
    sget-object p1, Lcom/braze/images/DefaultBrazeImageLoader;->Companion:Lcom/braze/images/DefaultBrazeImageLoader$b;

    iget-object v0, p0, Lcom/braze/images/DefaultBrazeImageLoader$k;->c:Landroid/content/Context;

    const-string v1, "appboy.imageloader.lru.cache"

    invoke-virtual {p1, v0, v1}, Lcom/braze/images/DefaultBrazeImageLoader$b;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 3
    iget-object p1, p0, Lcom/braze/images/DefaultBrazeImageLoader$k;->d:Lcom/braze/images/DefaultBrazeImageLoader;

    invoke-static {p1}, Lcom/braze/images/DefaultBrazeImageLoader;->access$getDiskCacheLock$p(Lcom/braze/images/DefaultBrazeImageLoader;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p1

    iget-object v0, p0, Lcom/braze/images/DefaultBrazeImageLoader$k;->d:Lcom/braze/images/DefaultBrazeImageLoader;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 5
    :try_start_0
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    invoke-static {}, Lcom/braze/images/DefaultBrazeImageLoader;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v5

    sget-object v8, Lcom/braze/images/DefaultBrazeImageLoader$k$a;->b:Lcom/braze/images/DefaultBrazeImageLoader$k$a;

    const/4 v9, 0x6

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v4, v1

    invoke-static/range {v4 .. v10}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/String;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 6
    new-instance v8, Lbo/app/h;

    const/4 v5, 0x1

    const-wide/32 v6, 0x3200000

    const/4 v4, 0x1

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lbo/app/h;-><init>(Ljava/io/File;IIJ)V

    invoke-static {v0, v8}, Lcom/braze/images/DefaultBrazeImageLoader;->access$setDiskLruCache$p(Lcom/braze/images/DefaultBrazeImageLoader;Lbo/app/h;)V

    .line 7
    invoke-static {}, Lcom/braze/images/DefaultBrazeImageLoader;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v5

    sget-object v8, Lcom/braze/images/DefaultBrazeImageLoader$k$b;->b:Lcom/braze/images/DefaultBrazeImageLoader$k$b;

    const/4 v9, 0x6

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v4, v1

    invoke-static/range {v4 .. v10}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/String;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    const/4 v1, 0x0

    .line 10
    invoke-static {v0, v1}, Lcom/braze/images/DefaultBrazeImageLoader;->access$setDiskCacheStarting$p(Lcom/braze/images/DefaultBrazeImageLoader;Z)V

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 12
    :try_start_1
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    invoke-static {}, Lcom/braze/images/DefaultBrazeImageLoader;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/braze/support/BrazeLogger$Priority;->E:Lcom/braze/support/BrazeLogger$Priority;

    sget-object v4, Lcom/braze/images/DefaultBrazeImageLoader$k$c;->b:Lcom/braze/images/DefaultBrazeImageLoader$k$c;

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/braze/support/BrazeLogger;->brazelog(Ljava/lang/String;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V

    .line 16
    :goto_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 17
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 31
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 32
    :goto_1
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    .line 46
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
