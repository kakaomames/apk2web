.class public final Lbo/app/x0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbo/app/p2;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u000e\u001a\u00020\u0001\u0012\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J\u0016\u0010\u0005\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\nR\u0016\u0010\r\u001a\u0004\u0018\u00010\u00028VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u000c\u00a8\u0006\u0011"
    }
    d2 = {
        "Lbo/app/x0;",
        "Lbo/app/p2;",
        "Lbo/app/c5;",
        "session",
        "",
        "a",
        "",
        "sessionId",
        "Lbo/app/g2;",
        "eventPublisher",
        "",
        "throwable",
        "()Lbo/app/c5;",
        "storedOpenSession",
        "sessionStorageManager",
        "<init>",
        "(Lbo/app/p2;Lbo/app/g2;)V",
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
.field private final a:Lbo/app/p2;

.field private final b:Lbo/app/g2;


# direct methods
.method public constructor <init>(Lbo/app/p2;Lbo/app/g2;)V
    .locals 1

    const-string v0, "sessionStorageManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventPublisher"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lbo/app/x0;->a:Lbo/app/p2;

    .line 3
    iput-object p2, p0, Lbo/app/x0;->b:Lbo/app/g2;

    return-void
.end method


# virtual methods
.method public a()Lbo/app/c5;
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lbo/app/x0;->a:Lbo/app/p2;

    invoke-interface {v0}, Lbo/app/p2;->a()Lbo/app/c5;

    move-result-object v0

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v2, Lcom/braze/support/BrazeLogger$Priority;->E:Lcom/braze/support/BrazeLogger$Priority;

    sget-object v3, Lbo/app/x0$c;->b:Lbo/app/x0$c;

    invoke-virtual {v1, p0, v2, v0, v3}, Lcom/braze/support/BrazeLogger;->brazelog(Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V

    .line 4
    iget-object v1, p0, Lbo/app/x0;->b:Lbo/app/g2;

    invoke-virtual {p0, v1, v0}, Lbo/app/x0;->a(Lbo/app/g2;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public a(Lbo/app/c5;)V
    .locals 3

    const-string v0, "session"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    :try_start_0
    iget-object v0, p0, Lbo/app/x0;->a:Lbo/app/p2;

    invoke-interface {v0, p1}, Lbo/app/p2;->a(Lbo/app/c5;)V

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v1, Lcom/braze/support/BrazeLogger$Priority;->E:Lcom/braze/support/BrazeLogger$Priority;

    sget-object v2, Lbo/app/x0$d;->b:Lbo/app/x0$d;

    invoke-virtual {v0, p0, v1, p1, v2}, Lcom/braze/support/BrazeLogger;->brazelog(Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V

    .line 8
    iget-object v0, p0, Lbo/app/x0;->b:Lbo/app/g2;

    invoke-virtual {p0, v0, p1}, Lbo/app/x0;->a(Lbo/app/g2;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final a(Lbo/app/g2;Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "eventPublisher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "throwable"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    :try_start_0
    new-instance v0, Lbo/app/m5;

    .line 14
    const-string v1, "A storage exception has occurred. Please view the stack trace for more details."

    .line 15
    invoke-direct {v0, v1, p2}, Lbo/app/m5;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-class p2, Lbo/app/m5;

    .line 16
    invoke-interface {p1, v0, p2}, Lbo/app/g2;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 25
    sget-object p2, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v0, Lcom/braze/support/BrazeLogger$Priority;->E:Lcom/braze/support/BrazeLogger$Priority;

    sget-object v1, Lbo/app/x0$b;->b:Lbo/app/x0$b;

    invoke-virtual {p2, p0, v0, p1, v1}, Lcom/braze/support/BrazeLogger;->brazelog(Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    const-string v0, "sessionId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    :try_start_0
    iget-object v0, p0, Lbo/app/x0;->a:Lbo/app/p2;

    invoke-interface {v0, p1}, Lbo/app/p2;->a(Ljava/lang/String;)V

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 11
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v1, Lcom/braze/support/BrazeLogger$Priority;->E:Lcom/braze/support/BrazeLogger$Priority;

    sget-object v2, Lbo/app/x0$a;->b:Lbo/app/x0$a;

    invoke-virtual {v0, p0, v1, p1, v2}, Lcom/braze/support/BrazeLogger;->brazelog(Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V

    .line 12
    iget-object v0, p0, Lbo/app/x0;->b:Lbo/app/g2;

    invoke-virtual {p0, v0, p1}, Lbo/app/x0;->a(Lbo/app/g2;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
