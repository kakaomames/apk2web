.class final Lbo/app/f1$f;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbo/app/f1;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0008\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "",
        "a",
        "()Ljava/lang/String;"
    }
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# instance fields
.field final synthetic b:Lbo/app/f1;

.field final synthetic c:J


# direct methods
.method constructor <init>(Lbo/app/f1;J)V
    .locals 0

    iput-object p1, p0, Lbo/app/f1$f;->b:Lbo/app/f1;

    iput-wide p2, p0, Lbo/app/f1$f;->c:J

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Not enough time has passed since last feature flags refresh. Not refreshing Feature Flags. "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lbo/app/f1$f;->b:Lbo/app/f1;

    invoke-static {v1}, Lbo/app/f1;->a(Lbo/app/f1;)J

    move-result-wide v1

    iget-wide v3, p0, Lbo/app/f1$f;->c:J

    sub-long/2addr v1, v3

    iget-object v3, p0, Lbo/app/f1$f;->b:Lbo/app/f1;

    invoke-virtual {v3}, Lbo/app/f1;->b()Lbo/app/a5;

    move-result-object v3

    invoke-virtual {v3}, Lbo/app/a5;->f()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    .line 3
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " seconds remaining until next available flush."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lbo/app/f1$f;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
