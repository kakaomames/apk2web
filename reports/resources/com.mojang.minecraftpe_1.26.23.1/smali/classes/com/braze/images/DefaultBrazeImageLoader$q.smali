.class final Lcom/braze/images/DefaultBrazeImageLoader$q;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/braze/images/DefaultBrazeImageLoader;->renderUrlIntoViewTask(Landroid/content/Context;Landroid/widget/ImageView;Lcom/braze/enums/BrazeViewBounds;Ljava/lang/String;)V
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
    c = "com.braze.images.DefaultBrazeImageLoader$renderUrlIntoViewTask$1"
    f = "DefaultBrazeImageLoader.kt"
    i = {}
    l = {
        0xf9
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field b:I

.field final synthetic c:Lcom/braze/images/DefaultBrazeImageLoader;

.field final synthetic d:Landroid/content/Context;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lcom/braze/enums/BrazeViewBounds;

.field final synthetic g:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/braze/images/DefaultBrazeImageLoader;Landroid/content/Context;Ljava/lang/String;Lcom/braze/enums/BrazeViewBounds;Landroid/widget/ImageView;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/braze/images/DefaultBrazeImageLoader;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/braze/enums/BrazeViewBounds;",
            "Landroid/widget/ImageView;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/braze/images/DefaultBrazeImageLoader$q;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/braze/images/DefaultBrazeImageLoader$q;->c:Lcom/braze/images/DefaultBrazeImageLoader;

    iput-object p2, p0, Lcom/braze/images/DefaultBrazeImageLoader$q;->d:Landroid/content/Context;

    iput-object p3, p0, Lcom/braze/images/DefaultBrazeImageLoader$q;->e:Ljava/lang/String;

    iput-object p4, p0, Lcom/braze/images/DefaultBrazeImageLoader$q;->f:Lcom/braze/enums/BrazeViewBounds;

    iput-object p5, p0, Lcom/braze/images/DefaultBrazeImageLoader$q;->g:Landroid/widget/ImageView;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/braze/images/DefaultBrazeImageLoader$q;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/braze/images/DefaultBrazeImageLoader$q;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/braze/images/DefaultBrazeImageLoader$q;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7
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

    new-instance p1, Lcom/braze/images/DefaultBrazeImageLoader$q;

    iget-object v1, p0, Lcom/braze/images/DefaultBrazeImageLoader$q;->c:Lcom/braze/images/DefaultBrazeImageLoader;

    iget-object v2, p0, Lcom/braze/images/DefaultBrazeImageLoader$q;->d:Landroid/content/Context;

    iget-object v3, p0, Lcom/braze/images/DefaultBrazeImageLoader$q;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/braze/images/DefaultBrazeImageLoader$q;->f:Lcom/braze/enums/BrazeViewBounds;

    iget-object v5, p0, Lcom/braze/images/DefaultBrazeImageLoader$q;->g:Landroid/widget/ImageView;

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/braze/images/DefaultBrazeImageLoader$q;-><init>(Lcom/braze/images/DefaultBrazeImageLoader;Landroid/content/Context;Ljava/lang/String;Lcom/braze/enums/BrazeViewBounds;Landroid/widget/ImageView;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/braze/images/DefaultBrazeImageLoader$q;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lcom/braze/images/DefaultBrazeImageLoader$q;->b:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    .line 24
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 25
    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    const/16 v2, 0x539

    .line 26
    invoke-static {v2}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 27
    iget-object v2, v0, Lcom/braze/images/DefaultBrazeImageLoader$q;->c:Lcom/braze/images/DefaultBrazeImageLoader;

    iget-object v4, v0, Lcom/braze/images/DefaultBrazeImageLoader$q;->d:Landroid/content/Context;

    iget-object v5, v0, Lcom/braze/images/DefaultBrazeImageLoader$q;->e:Ljava/lang/String;

    iget-object v6, v0, Lcom/braze/images/DefaultBrazeImageLoader$q;->f:Lcom/braze/enums/BrazeViewBounds;

    invoke-virtual {v2, v4, v5, v6}, Lcom/braze/images/DefaultBrazeImageLoader;->getBitmapFromUrl(Landroid/content/Context;Ljava/lang/String;Lcom/braze/enums/BrazeViewBounds;)Landroid/graphics/Bitmap;

    move-result-object v10

    if-nez v10, :cond_2

    .line 29
    sget-object v11, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    invoke-static {}, Lcom/braze/images/DefaultBrazeImageLoader;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v12

    new-instance v15, Lcom/braze/images/DefaultBrazeImageLoader$q$a;

    iget-object v1, v0, Lcom/braze/images/DefaultBrazeImageLoader$q;->e:Ljava/lang/String;

    invoke-direct {v15, v1}, Lcom/braze/images/DefaultBrazeImageLoader$q$a;-><init>(Ljava/lang/String;)V

    const/16 v16, 0x6

    const/16 v17, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v11 .. v17}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/String;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    goto :goto_0

    .line 32
    :cond_2
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v2

    new-instance v4, Lcom/braze/images/DefaultBrazeImageLoader$q$b;

    iget-object v8, v0, Lcom/braze/images/DefaultBrazeImageLoader$q;->e:Ljava/lang/String;

    iget-object v9, v0, Lcom/braze/images/DefaultBrazeImageLoader$q;->g:Landroid/widget/ImageView;

    iget-object v11, v0, Lcom/braze/images/DefaultBrazeImageLoader$q;->f:Lcom/braze/enums/BrazeViewBounds;

    const/4 v12, 0x0

    move-object v7, v4

    invoke-direct/range {v7 .. v12}, Lcom/braze/images/DefaultBrazeImageLoader$q$b;-><init>(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Lcom/braze/enums/BrazeViewBounds;Lkotlin/coroutines/Continuation;)V

    iput v3, v0, Lcom/braze/images/DefaultBrazeImageLoader$q;->b:I

    invoke-static {v2, v4, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_3

    return-object v1

    .line 48
    :cond_3
    :goto_0
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1
.end method
