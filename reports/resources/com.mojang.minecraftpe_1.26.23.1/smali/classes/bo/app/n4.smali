.class public final Lbo/app/n4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbo/app/m2;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B?\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u000c\u001a\u00020\u000b\u0012\u0006\u0010\r\u001a\u00020\u000b\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\u0006\u0010\u0013\u001a\u00020\u0012\u0012\u0006\u0010\u0015\u001a\u00020\u0014\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u0008\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0016\u00a8\u0006\u0018"
    }
    d2 = {
        "Lbo/app/n4;",
        "Lbo/app/m2;",
        "Lbo/app/z1;",
        "brazeRequest",
        "",
        "a",
        "Lbo/app/l2;",
        "request",
        "b",
        "Lbo/app/h2;",
        "httpConnector",
        "Lbo/app/g2;",
        "internalEventPublisher",
        "externalEventPublisher",
        "Lbo/app/l1;",
        "feedStorageProvider",
        "Lbo/app/a5;",
        "serverConfigStorageProvider",
        "Lbo/app/b0;",
        "contentCardsStorageProvider",
        "Lbo/app/y1;",
        "brazeManager",
        "<init>",
        "(Lbo/app/h2;Lbo/app/g2;Lbo/app/g2;Lbo/app/l1;Lbo/app/a5;Lbo/app/b0;Lbo/app/y1;)V",
        "android-sdk-base_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# instance fields
.field private final a:Lbo/app/h2;

.field private final b:Lbo/app/g2;

.field private final c:Lbo/app/g2;

.field private final d:Lbo/app/l1;

.field private final e:Lbo/app/a5;

.field private final f:Lbo/app/b0;

.field private final g:Lbo/app/y1;


# direct methods
.method public constructor <init>(Lbo/app/h2;Lbo/app/g2;Lbo/app/g2;Lbo/app/l1;Lbo/app/a5;Lbo/app/b0;Lbo/app/y1;)V
    .locals 1

    const-string v0, "httpConnector"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "internalEventPublisher"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "externalEventPublisher"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "feedStorageProvider"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serverConfigStorageProvider"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentCardsStorageProvider"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "brazeManager"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lbo/app/n4;->a:Lbo/app/h2;

    .line 4
    iput-object p2, p0, Lbo/app/n4;->b:Lbo/app/g2;

    .line 5
    iput-object p3, p0, Lbo/app/n4;->c:Lbo/app/g2;

    .line 6
    iput-object p4, p0, Lbo/app/n4;->d:Lbo/app/l1;

    .line 7
    iput-object p5, p0, Lbo/app/n4;->e:Lbo/app/a5;

    .line 8
    iput-object p6, p0, Lbo/app/n4;->f:Lbo/app/b0;

    .line 9
    iput-object p7, p0, Lbo/app/n4;->g:Lbo/app/y1;

    return-void
.end method

.method public static final synthetic a(Lbo/app/n4;Lbo/app/z1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lbo/app/n4;->a(Lbo/app/z1;)V

    return-void
.end method

.method private final a(Lbo/app/z1;)V
    .locals 10

    .line 8
    new-instance v9, Lbo/app/t;

    .line 10
    iget-object v2, p0, Lbo/app/n4;->a:Lbo/app/h2;

    .line 11
    iget-object v3, p0, Lbo/app/n4;->b:Lbo/app/g2;

    .line 12
    iget-object v4, p0, Lbo/app/n4;->c:Lbo/app/g2;

    .line 13
    iget-object v5, p0, Lbo/app/n4;->d:Lbo/app/l1;

    .line 14
    iget-object v6, p0, Lbo/app/n4;->g:Lbo/app/y1;

    .line 15
    iget-object v7, p0, Lbo/app/n4;->e:Lbo/app/a5;

    .line 16
    iget-object v8, p0, Lbo/app/n4;->f:Lbo/app/b0;

    move-object v0, v9

    move-object v1, p1

    .line 17
    invoke-direct/range {v0 .. v8}, Lbo/app/t;-><init>(Lbo/app/z1;Lbo/app/h2;Lbo/app/g2;Lbo/app/g2;Lbo/app/l1;Lbo/app/y1;Lbo/app/a5;Lbo/app/b0;)V

    .line 26
    invoke-virtual {v9}, Lbo/app/t;->c()V

    return-void
.end method


# virtual methods
.method public a(Lbo/app/l2;)V
    .locals 7

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    instance-of v0, p1, Lbo/app/z1;

    if-eqz v0, :cond_0

    check-cast p1, Lbo/app/z1;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    .line 4
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v2, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    sget-object v4, Lbo/app/n4$c;->b:Lbo/app/n4$c;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v6}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void

    .line 7
    :cond_1
    invoke-direct {p0, p1}, Lbo/app/n4;->a(Lbo/app/z1;)V

    return-void
.end method

.method public b(Lbo/app/l2;)V
    .locals 16

    move-object/from16 v0, p1

    const-string v1, "request"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v1, v0, Lbo/app/z1;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lbo/app/z1;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-nez v0, :cond_1

    .line 3
    sget-object v3, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v5, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    sget-object v7, Lbo/app/n4$a;->b:Lbo/app/n4$a;

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v6, 0x0

    move-object/from16 v4, p0

    invoke-static/range {v3 .. v9}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void

    .line 6
    :cond_1
    sget-object v10, Lcom/braze/coroutine/BrazeCoroutineScope;->INSTANCE:Lcom/braze/coroutine/BrazeCoroutineScope;

    new-instance v13, Lbo/app/n4$b;

    move-object/from16 v1, p0

    invoke-direct {v13, v1, v0, v2}, Lbo/app/n4$b;-><init>(Lbo/app/n4;Lbo/app/z1;Lkotlin/coroutines/Continuation;)V

    const/4 v14, 0x3

    const/4 v15, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v10 .. v15}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method
