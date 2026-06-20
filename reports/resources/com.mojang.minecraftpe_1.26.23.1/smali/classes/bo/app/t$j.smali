.class final Lbo/app/t$j;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbo/app/t;->a(Lcom/braze/models/inappmessage/IInAppMessage;Ljava/lang/String;)V
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

.field final synthetic c:Lcom/braze/models/inappmessage/IInAppMessage;

.field final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Lbo/app/t;Lcom/braze/models/inappmessage/IInAppMessage;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lbo/app/t$j;->b:Lbo/app/t;

    iput-object p2, p0, Lbo/app/t$j;->c:Lcom/braze/models/inappmessage/IInAppMessage;

    iput-object p3, p0, Lbo/app/t$j;->d:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    .line 1
    iget-object v0, p0, Lbo/app/t$j;->b:Lbo/app/t;

    invoke-static {v0}, Lbo/app/t;->f(Lbo/app/t;)Lbo/app/z1;

    move-result-object v0

    instance-of v0, v0, Lbo/app/r5;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lbo/app/t$j;->c:Lcom/braze/models/inappmessage/IInAppMessage;

    iget-object v1, p0, Lbo/app/t$j;->b:Lbo/app/t;

    invoke-static {v1}, Lbo/app/t;->f(Lbo/app/t;)Lbo/app/z1;

    move-result-object v1

    check-cast v1, Lbo/app/r5;

    invoke-virtual {v1}, Lbo/app/r5;->u()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/braze/models/inappmessage/IInAppMessage;->setExpirationTimestamp(J)V

    .line 4
    iget-object v0, p0, Lbo/app/t$j;->b:Lbo/app/t;

    invoke-static {v0}, Lbo/app/t;->e(Lbo/app/t;)Lbo/app/g2;

    move-result-object v0

    .line 5
    new-instance v1, Lbo/app/c3;

    .line 6
    iget-object v2, p0, Lbo/app/t$j;->b:Lbo/app/t;

    invoke-static {v2}, Lbo/app/t;->f(Lbo/app/t;)Lbo/app/z1;

    move-result-object v2

    check-cast v2, Lbo/app/r5;

    invoke-virtual {v2}, Lbo/app/r5;->v()Lbo/app/s2;

    move-result-object v2

    .line 7
    iget-object v3, p0, Lbo/app/t$j;->b:Lbo/app/t;

    invoke-static {v3}, Lbo/app/t;->f(Lbo/app/t;)Lbo/app/z1;

    move-result-object v3

    check-cast v3, Lbo/app/r5;

    invoke-virtual {v3}, Lbo/app/r5;->w()Lbo/app/x2;

    move-result-object v3

    .line 8
    iget-object v4, p0, Lbo/app/t$j;->c:Lcom/braze/models/inappmessage/IInAppMessage;

    .line 9
    iget-object v5, p0, Lbo/app/t$j;->d:Ljava/lang/String;

    .line 10
    invoke-direct {v1, v2, v3, v4, v5}, Lbo/app/c3;-><init>(Lbo/app/s2;Lbo/app/x2;Lcom/braze/models/inappmessage/IInAppMessage;Ljava/lang/String;)V

    .line 11
    const-class v2, Lbo/app/c3;

    invoke-interface {v0, v1, v2}, Lbo/app/g2;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lbo/app/t$j;->a()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
