.class public final Lbo/app/i0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbo/app/i0$c;,
        Lbo/app/i0$d;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001:\u0001\u0011B\u001f\u0012\u0006\u0010 \u001a\u00020\u001f\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0006\u0010\"\u001a\u00020!\u00a2\u0006\u0004\u0008#\u0010$J\u0014\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0002H\u0002J\u0008\u0010\u0005\u001a\u00020\u0006H\u0002J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tH\u0002J\u0010\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0012\u0010\u0005\u001a\u00020\u00062\u0008\u0010\r\u001a\u0004\u0018\u00010\u000cH\u0002J\u0006\u0010\u000f\u001a\u00020\u000eJ\u0006\u0010\u0010\u001a\u00020\u000eJ\u0008\u0010\u0011\u001a\u00020\u0006H\u0007J\u0008\u0010\u0012\u001a\u00020\u0006H\u0007J\u0006\u0010\u0013\u001a\u00020\u0006J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u0007H\u0007R\"\u0010\u0015\u001a\u00020\u00028\u0000@\u0000X\u0080\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0015\u0010\u0016\u001a\u0004\u0008\u000b\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R*\u0010\u001b\u001a\u00020\u000e2\u0006\u0010\u001a\u001a\u00020\u000e8\u0006@FX\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001b\u0010\u001c\u001a\u0004\u0008\u001b\u0010\u001d\"\u0004\u0008\u0005\u0010\u001e\u00a8\u0006%"
    }
    d2 = {
        "Lbo/app/i0;",
        "",
        "",
        "initialDelayMs",
        "Lkotlinx/coroutines/Job;",
        "a",
        "",
        "Lbo/app/g2;",
        "eventPublisher",
        "",
        "throwable",
        "b",
        "Landroid/net/NetworkCapabilities;",
        "networkCapabilities",
        "",
        "e",
        "f",
        "c",
        "d",
        "g",
        "eventManager",
        "currentIntervalMs",
        "J",
        "()J",
        "setCurrentIntervalMs$android_sdk_base_release",
        "(J)V",
        "value",
        "isSyncPolicyDisabled",
        "Z",
        "()Z",
        "(Z)V",
        "Landroid/content/Context;",
        "context",
        "Lbo/app/h0;",
        "dataSyncConfigurationProvider",
        "<init>",
        "(Landroid/content/Context;Lbo/app/g2;Lbo/app/h0;)V",
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
.field public static final n:Lbo/app/i0$c;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lbo/app/h0;

.field private c:Landroid/content/BroadcastReceiver;

.field private d:Landroid/net/ConnectivityManager$NetworkCallback;

.field private final e:Lbo/app/e1;

.field private f:Lbo/app/h5;

.field private g:J

.field private volatile h:Z

.field private final i:Landroid/net/ConnectivityManager;

.field private j:Lbo/app/p3;

.field private k:Lkotlinx/coroutines/Job;

.field private l:I

.field private m:Z


# direct methods
.method public static synthetic $r8$lambda$2iVHemZZfQHPrffTiSMcTLAAIGQ(Lbo/app/i0;Lbo/app/i5;)V
    .locals 0

    invoke-static {p0, p1}, Lbo/app/i0;->a(Lbo/app/i0;Lbo/app/i5;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CW8CIiW2uwxmitdg4A6eCZdNcc8(Lbo/app/i0;Lbo/app/g5;)V
    .locals 0

    invoke-static {p0, p1}, Lbo/app/i0;->a(Lbo/app/i0;Lbo/app/g5;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LcV9a4juGfq-AGoQKMtsgfWq_Jk(Lbo/app/i0;Lbo/app/q4;)V
    .locals 0

    invoke-static {p0, p1}, Lbo/app/i0;->a(Lbo/app/i0;Lbo/app/q4;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oA1Go71U9sWJkKh4PYkafDumhNA(Lbo/app/i0;Lbo/app/p4;)V
    .locals 0

    invoke-static {p0, p1}, Lbo/app/i0;->a(Lbo/app/i0;Lbo/app/p4;)V

    return-void
.end method

.method public static synthetic $r8$lambda$z2ZRfbh1dShqc_RsQJrmjbKW8no(Lbo/app/i0;Lbo/app/b5;)V
    .locals 0

    invoke-static {p0, p1}, Lbo/app/i0;->a(Lbo/app/i0;Lbo/app/b5;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lbo/app/i0$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbo/app/i0$c;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lbo/app/i0;->n:Lbo/app/i0$c;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lbo/app/g2;Lbo/app/h0;)V
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventPublisher"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dataSyncConfigurationProvider"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lbo/app/i0;->a:Landroid/content/Context;

    .line 5
    iput-object p3, p0, Lbo/app/i0;->b:Lbo/app/h0;

    .line 11
    new-instance p3, Lbo/app/e1;

    .line 12
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    long-to-int v0, v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 13
    invoke-direct {p3, v0, v3, v1, v2}, Lbo/app/e1;-><init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p3, p0, Lbo/app/i0;->e:Lbo/app/e1;

    .line 16
    sget-object p3, Lbo/app/h5;->c:Lbo/app/h5;

    iput-object p3, p0, Lbo/app/i0;->f:Lbo/app/h5;

    const-wide/16 v0, -0x1

    .line 17
    iput-wide v0, p0, Lbo/app/i0;->g:J

    .line 21
    const-string p3, "connectivity"

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lbo/app/i0;->i:Landroid/net/ConnectivityManager;

    .line 22
    sget-object p1, Lbo/app/p3;->b:Lbo/app/p3;

    iput-object p1, p0, Lbo/app/i0;->j:Lbo/app/p3;

    .line 48
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x1e

    if-lt p1, p3, :cond_0

    .line 49
    new-instance p1, Lbo/app/i0$a;

    invoke-direct {p1, p0}, Lbo/app/i0$a;-><init>(Lbo/app/i0;)V

    iput-object p1, p0, Lbo/app/i0;->d:Landroid/net/ConnectivityManager$NetworkCallback;

    goto :goto_0

    .line 62
    :cond_0
    new-instance p1, Lbo/app/i0$b;

    invoke-direct {p1, p0, p2}, Lbo/app/i0$b;-><init>(Lbo/app/i0;Lbo/app/g2;)V

    iput-object p1, p0, Lbo/app/i0;->c:Landroid/content/BroadcastReceiver;

    .line 80
    :goto_0
    invoke-virtual {p0, p2}, Lbo/app/i0;->a(Lbo/app/g2;)V

    return-void

    .line 81
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type android.net.ConnectivityManager"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final synthetic a(Lbo/app/i0;)Landroid/net/ConnectivityManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lbo/app/i0;->i:Landroid/net/ConnectivityManager;

    return-object p0
.end method

.method private final a(J)Lkotlinx/coroutines/Job;
    .locals 17

    move-object/from16 v7, p0

    move-wide/from16 v8, p1

    .line 11
    iget-wide v0, v7, Lbo/app/i0;->g:J

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    const/4 v10, 0x0

    if-ltz v0, :cond_0

    .line 12
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v2, Lcom/braze/support/BrazeLogger$Priority;->V:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v4, Lbo/app/i0$g;

    invoke-direct {v4, v8, v9, v7}, Lbo/app/i0$g;-><init>(JLbo/app/i0;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object/from16 v1, p0

    invoke-static/range {v0 .. v6}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 15
    sget-object v11, Lcom/braze/coroutine/BrazeCoroutineScope;->INSTANCE:Lcom/braze/coroutine/BrazeCoroutineScope;

    new-instance v14, Lbo/app/i0$h;

    invoke-direct {v14, v7, v8, v9, v10}, Lbo/app/i0$h;-><init>(Lbo/app/i0;JLkotlin/coroutines/Continuation;)V

    const/4 v15, 0x3

    const/16 v16, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v11 .. v16}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v10

    goto :goto_0

    .line 28
    :cond_0
    sget-object v0, Lcom/braze/Braze;->Companion:Lcom/braze/Braze$Companion;

    iget-object v1, v7, Lbo/app/i0;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/braze/Braze$Companion;->getInstance(Landroid/content/Context;)Lcom/braze/Braze;

    move-result-object v0

    invoke-virtual {v0}, Lcom/braze/Braze;->requestImmediateDataFlush()V

    .line 29
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    new-instance v4, Lbo/app/i0$i;

    invoke-direct {v4, v7}, Lbo/app/i0$i;-><init>(Lbo/app/i0;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v1, p0

    invoke-static/range {v0 .. v6}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    :goto_0
    return-object v10
.end method

.method private final a()V
    .locals 3

    .line 30
    iget-object v0, p0, Lbo/app/i0;->k:Lkotlinx/coroutines/Job;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 31
    :cond_0
    iput-object v1, p0, Lbo/app/i0;->k:Lkotlinx/coroutines/Job;

    return-void
.end method

.method private final a(Landroid/net/NetworkCapabilities;)V
    .locals 0

    .line 35
    invoke-static {p1}, Lbo/app/w;->a(Landroid/net/NetworkCapabilities;)Lbo/app/p3;

    move-result-object p1

    iput-object p1, p0, Lbo/app/i0;->j:Lbo/app/p3;

    .line 36
    invoke-virtual {p0}, Lbo/app/i0;->c()V

    return-void
.end method

.method private final a(Lbo/app/g2;Ljava/lang/Throwable;)V
    .locals 2

    .line 32
    :try_start_0
    const-class v0, Ljava/lang/Throwable;

    invoke-interface {p1, p2, v0}, Lbo/app/g2;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 34
    sget-object p2, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v0, Lcom/braze/support/BrazeLogger$Priority;->E:Lcom/braze/support/BrazeLogger$Priority;

    sget-object v1, Lbo/app/i0$j;->b:Lbo/app/i0$j;

    invoke-virtual {p2, p0, v0, p1, v1}, Lcom/braze/support/BrazeLogger;->brazelog(Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V

    :goto_0
    return-void
.end method

.method public static final synthetic a(Lbo/app/i0;Landroid/net/NetworkCapabilities;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lbo/app/i0;->a(Landroid/net/NetworkCapabilities;)V

    return-void
.end method

.method private static final a(Lbo/app/i0;Lbo/app/b5;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<name for destructuring parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    invoke-virtual {p1}, Lbo/app/b5;->a()Lbo/app/n2;

    move-result-object p1

    .line 92
    instance-of p1, p1, Lbo/app/t4;

    if-eqz p1, :cond_0

    .line 93
    iget p1, p0, Lbo/app/i0;->l:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lbo/app/i0;->l:I

    .line 94
    invoke-virtual {p0}, Lbo/app/i0;->c()V

    :cond_0
    return-void
.end method

.method public static final synthetic a(Lbo/app/i0;Lbo/app/g2;Ljava/lang/Throwable;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lbo/app/i0;->a(Lbo/app/g2;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static final a(Lbo/app/i0;Lbo/app/g5;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    sget-object p1, Lbo/app/h5;->b:Lbo/app/h5;

    iput-object p1, p0, Lbo/app/i0;->f:Lbo/app/h5;

    const/4 p1, 0x0

    .line 75
    iput p1, p0, Lbo/app/i0;->l:I

    .line 76
    invoke-virtual {p0}, Lbo/app/i0;->c()V

    return-void
.end method

.method private static final a(Lbo/app/i0;Lbo/app/i5;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    sget-object p1, Lbo/app/h5;->c:Lbo/app/h5;

    iput-object p1, p0, Lbo/app/i0;->f:Lbo/app/h5;

    .line 78
    invoke-virtual {p0}, Lbo/app/i0;->c()V

    return-void
.end method

.method public static final synthetic a(Lbo/app/i0;Lbo/app/p3;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lbo/app/i0;->j:Lbo/app/p3;

    return-void
.end method

.method private static final a(Lbo/app/i0;Lbo/app/p4;)V
    .locals 8

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v5, Lbo/app/i0$e;->b:Lbo/app/i0$e;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 81
    iget-wide v0, p0, Lbo/app/i0;->g:J

    iget-object p1, p0, Lbo/app/i0;->e:Lbo/app/e1;

    long-to-int v2, v0

    invoke-virtual {p1, v2}, Lbo/app/e1;->a(I)I

    move-result p1

    int-to-long v2, p1

    add-long/2addr v0, v2

    .line 82
    invoke-direct {p0, v0, v1}, Lbo/app/i0;->b(J)V

    return-void
.end method

.method private static final a(Lbo/app/i0;Lbo/app/q4;)V
    .locals 7

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    iget-object p1, p0, Lbo/app/i0;->e:Lbo/app/e1;

    invoke-virtual {p1}, Lbo/app/e1;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 84
    iget-object p1, p0, Lbo/app/i0;->e:Lbo/app/e1;

    invoke-virtual {p1}, Lbo/app/e1;->c()V

    .line 85
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    new-instance v4, Lbo/app/i0$f;

    invoke-direct {v4, p0}, Lbo/app/i0$f;-><init>(Lbo/app/i0;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v6}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 88
    iget-wide v0, p0, Lbo/app/i0;->g:J

    invoke-direct {p0, v0, v1}, Lbo/app/i0;->b(J)V

    :cond_0
    const/4 p1, 0x0

    .line 90
    iput p1, p0, Lbo/app/i0;->l:I

    return-void
.end method

.method public static final synthetic b(Lbo/app/i0;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lbo/app/i0;->a:Landroid/content/Context;

    return-object p0
.end method

.method private final b(J)V
    .locals 8

    .line 3
    invoke-direct {p0}, Lbo/app/i0;->a()V

    .line 4
    iget-wide v0, p0, Lbo/app/i0;->g:J

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 5
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    new-instance v5, Lbo/app/i0$o;

    invoke-direct {v5, p1, p2}, Lbo/app/i0$o;-><init>(J)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 6
    invoke-direct {p0, p1, p2}, Lbo/app/i0;->a(J)Lkotlinx/coroutines/Job;

    move-result-object p1

    iput-object p1, p0, Lbo/app/i0;->k:Lkotlinx/coroutines/Job;

    :cond_0
    return-void
.end method

.method public static final synthetic c(Lbo/app/i0;)Lbo/app/p3;
    .locals 0

    .line 1
    iget-object p0, p0, Lbo/app/i0;->j:Lbo/app/p3;

    return-object p0
.end method

.method public static final synthetic d(Lbo/app/i0;)Lbo/app/h5;
    .locals 0

    .line 1
    iget-object p0, p0, Lbo/app/i0;->f:Lbo/app/h5;

    return-object p0
.end method


# virtual methods
.method public final a(Lbo/app/g2;)V
    .locals 2

    const-string v0, "eventManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    new-instance v0, Lbo/app/i0$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lbo/app/i0$$ExternalSyntheticLambda0;-><init>(Lbo/app/i0;)V

    const-class v1, Lbo/app/g5;

    invoke-interface {p1, v1, v0}, Lbo/app/g2;->b(Ljava/lang/Class;Lcom/braze/events/IEventSubscriber;)Z

    .line 44
    new-instance v0, Lbo/app/i0$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lbo/app/i0$$ExternalSyntheticLambda1;-><init>(Lbo/app/i0;)V

    const-class v1, Lbo/app/i5;

    invoke-interface {p1, v1, v0}, Lbo/app/g2;->b(Ljava/lang/Class;Lcom/braze/events/IEventSubscriber;)Z

    .line 49
    new-instance v0, Lbo/app/i0$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lbo/app/i0$$ExternalSyntheticLambda2;-><init>(Lbo/app/i0;)V

    const-class v1, Lbo/app/p4;

    invoke-interface {p1, v1, v0}, Lbo/app/g2;->b(Ljava/lang/Class;Lcom/braze/events/IEventSubscriber;)Z

    .line 58
    new-instance v0, Lbo/app/i0$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lbo/app/i0$$ExternalSyntheticLambda3;-><init>(Lbo/app/i0;)V

    const-class v1, Lbo/app/q4;

    invoke-interface {p1, v1, v0}, Lbo/app/g2;->b(Ljava/lang/Class;Lcom/braze/events/IEventSubscriber;)Z

    .line 72
    new-instance v0, Lbo/app/i0$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lbo/app/i0$$ExternalSyntheticLambda4;-><init>(Lbo/app/i0;)V

    const-class v1, Lbo/app/b5;

    invoke-interface {p1, v1, v0}, Lbo/app/g2;->b(Ljava/lang/Class;Lcom/braze/events/IEventSubscriber;)Z

    return-void
.end method

.method public final declared-synchronized a(Z)V
    .locals 0

    monitor-enter p0

    .line 5
    :try_start_0
    iput-boolean p1, p0, Lbo/app/i0;->m:Z

    .line 6
    invoke-virtual {p0}, Lbo/app/i0;->c()V

    if-eqz p1, :cond_0

    .line 8
    invoke-virtual {p0}, Lbo/app/i0;->f()Z

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0}, Lbo/app/i0;->e()Z

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
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

.method public final b()J
    .locals 2

    .line 2
    iget-wide v0, p0, Lbo/app/i0;->g:J

    return-wide v0
.end method

.method public final c()V
    .locals 13

    .line 2
    sget-object v7, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v8, Lcom/braze/support/BrazeLogger$Priority;->V:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v4, Lbo/app/i0$k;

    invoke-direct {v4, p0}, Lbo/app/i0$k;-><init>(Lbo/app/i0;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v0, v7

    move-object v1, p0

    move-object v2, v8

    invoke-static/range {v0 .. v6}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 3
    iget-wide v9, p0, Lbo/app/i0;->g:J

    .line 4
    iget-object v0, p0, Lbo/app/i0;->f:Lbo/app/h5;

    sget-object v1, Lbo/app/h5;->c:Lbo/app/h5;

    const-wide/16 v2, -0x1

    if-eq v0, v1, :cond_5

    iget-boolean v0, p0, Lbo/app/i0;->m:Z

    if-nez v0, :cond_5

    .line 5
    iget v0, p0, Lbo/app/i0;->l:I

    const/16 v1, 0x32

    if-lt v0, v1, :cond_0

    goto :goto_1

    .line 9
    :cond_0
    iget-object v0, p0, Lbo/app/i0;->j:Lbo/app/p3;

    sget-object v1, Lbo/app/i0$d;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 13
    iget-object v0, p0, Lbo/app/i0;->b:Lbo/app/h0;

    invoke-virtual {v0}, Lbo/app/h0;->b()J

    move-result-wide v0

    goto :goto_0

    :cond_1
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 14
    :cond_2
    iget-object v0, p0, Lbo/app/i0;->b:Lbo/app/h0;

    invoke-virtual {v0}, Lbo/app/h0;->c()J

    move-result-wide v0

    goto :goto_0

    .line 15
    :cond_3
    iget-object v0, p0, Lbo/app/i0;->b:Lbo/app/h0;

    invoke-virtual {v0}, Lbo/app/h0;->a()J

    move-result-wide v0

    goto :goto_0

    :cond_4
    move-wide v0, v2

    .line 16
    :goto_0
    iput-wide v0, p0, Lbo/app/i0;->g:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_6

    const-wide/16 v11, 0x3e8

    cmp-long v0, v0, v11

    if-gez v0, :cond_6

    .line 25
    sget-object v2, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v4, Lbo/app/i0$l;

    invoke-direct {v4, p0}, Lbo/app/i0$l;-><init>(Lbo/app/i0;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v0, v7

    move-object v1, p0

    invoke-static/range {v0 .. v6}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 29
    iput-wide v11, p0, Lbo/app/i0;->g:J

    goto :goto_2

    .line 30
    :cond_5
    :goto_1
    iput-wide v2, p0, Lbo/app/i0;->g:J

    .line 48
    :cond_6
    :goto_2
    new-instance v4, Lbo/app/i0$m;

    invoke-direct {v4, p0}, Lbo/app/i0$m;-><init>(Lbo/app/i0;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v0, v7

    move-object v1, p0

    move-object v2, v8

    invoke-static/range {v0 .. v6}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 49
    iget-wide v0, p0, Lbo/app/i0;->g:J

    cmp-long v0, v9, v0

    if-eqz v0, :cond_7

    .line 50
    new-instance v4, Lbo/app/i0$n;

    invoke-direct {v4, v9, v10, p0}, Lbo/app/i0$n;-><init>(JLbo/app/i0;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, v7

    move-object v1, p0

    invoke-static/range {v0 .. v6}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 54
    iget-wide v0, p0, Lbo/app/i0;->g:J

    invoke-direct {p0, v0, v1}, Lbo/app/i0;->b(J)V

    :cond_7
    return-void
.end method

.method public final d()V
    .locals 3

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_1

    .line 3
    iget-object v0, p0, Lbo/app/i0;->i:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lbo/app/i0;->d:Landroid/net/ConnectivityManager$NetworkCallback;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    sget-object v1, Lorg/apache/http/impl/auth/ZJ/Ygkg;->gkqWKIGIWkEl:Ljava/lang/String;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_0
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 6
    iget-object v0, p0, Lbo/app/i0;->i:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v0

    .line 7
    iget-object v1, p0, Lbo/app/i0;->i:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    invoke-direct {p0, v0}, Lbo/app/i0;->a(Landroid/net/NetworkCapabilities;)V

    goto :goto_0

    .line 10
    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 11
    iget-object v1, p0, Lbo/app/i0;->a:Landroid/content/Context;

    iget-object v2, p0, Lbo/app/i0;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :goto_0
    return-void
.end method

.method public final declared-synchronized e()Z
    .locals 8

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lbo/app/i0;->h:Z

    if-eqz v0, :cond_0

    .line 2
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v5, Lbo/app/i0$p;->b:Lbo/app/i0$p;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    const/4 v0, 0x0

    return v0

    .line 5
    :cond_0
    :try_start_1
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v5, Lbo/app/i0$q;->b:Lbo/app/i0$q;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 6
    invoke-virtual {p0}, Lbo/app/i0;->d()V

    .line 7
    iget-wide v0, p0, Lbo/app/i0;->g:J

    invoke-direct {p0, v0, v1}, Lbo/app/i0;->b(J)V

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lbo/app/i0;->h:Z

    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0

    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final declared-synchronized f()Z
    .locals 9

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lbo/app/i0;->h:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    sget-object v2, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v6, Lbo/app/i0$r;->b:Lbo/app/i0$r;

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p0

    invoke-static/range {v2 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    .line 5
    :cond_0
    :try_start_1
    sget-object v2, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v6, Lbo/app/i0$s;->b:Lbo/app/i0$s;

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p0

    invoke-static/range {v2 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 6
    invoke-direct {p0}, Lbo/app/i0;->a()V

    .line 7
    invoke-virtual {p0}, Lbo/app/i0;->g()V

    .line 8
    iput-boolean v1, p0, Lbo/app/i0;->h:Z

    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0

    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final g()V
    .locals 4

    .line 1
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_1

    .line 2
    iget-object v0, p0, Lbo/app/i0;->i:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lbo/app/i0;->d:Landroid/net/ConnectivityManager$NetworkCallback;

    if-nez v1, :cond_0

    const-string v1, "connectivityNetworkCallback"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_0
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lbo/app/i0;->a:Landroid/content/Context;

    iget-object v1, p0, Lbo/app/i0;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v2, Lcom/braze/support/BrazeLogger$Priority;->E:Lcom/braze/support/BrazeLogger$Priority;

    sget-object v3, Lbo/app/i0$t;->b:Lbo/app/i0$t;

    invoke-virtual {v1, p0, v2, v0, v3}, Lcom/braze/support/BrazeLogger;->brazelog(Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V

    :goto_0
    return-void
.end method
