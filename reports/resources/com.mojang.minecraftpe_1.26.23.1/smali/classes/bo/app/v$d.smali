.class final Lbo/app/v$d;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbo/app/v;->a(Lorg/json/JSONArray;Lcom/braze/enums/CardKey$Provider;Lbo/app/y1;Lcom/braze/storage/ICardStorageProvider;Lbo/app/a2;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Object;",
        "Lcom/braze/models/cards/Card;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u000e\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "",
        "it",
        "Lcom/braze/models/cards/Card;",
        "a",
        "(Ljava/lang/Object;)Lcom/braze/models/cards/Card;"
    }
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/braze/enums/CardKey$Provider;

.field final synthetic c:Lbo/app/y1;

.field final synthetic d:Lcom/braze/storage/ICardStorageProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/braze/storage/ICardStorageProvider<",
            "*>;"
        }
    .end annotation
.end field

.field final synthetic e:Lbo/app/a2;

.field final synthetic f:Lorg/json/JSONArray;


# direct methods
.method constructor <init>(Lcom/braze/enums/CardKey$Provider;Lbo/app/y1;Lcom/braze/storage/ICardStorageProvider;Lbo/app/a2;Lorg/json/JSONArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/braze/enums/CardKey$Provider;",
            "Lbo/app/y1;",
            "Lcom/braze/storage/ICardStorageProvider<",
            "*>;",
            "Lbo/app/a2;",
            "Lorg/json/JSONArray;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lbo/app/v$d;->b:Lcom/braze/enums/CardKey$Provider;

    iput-object p2, p0, Lbo/app/v$d;->c:Lbo/app/y1;

    iput-object p3, p0, Lbo/app/v$d;->d:Lcom/braze/storage/ICardStorageProvider;

    iput-object p4, p0, Lbo/app/v$d;->e:Lbo/app/a2;

    iput-object p5, p0, Lbo/app/v$d;->f:Lorg/json/JSONArray;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/braze/models/cards/Card;
    .locals 7

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    sget-object v1, Lbo/app/v;->a:Lbo/app/v;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3
    iget-object v3, p0, Lbo/app/v$d;->b:Lcom/braze/enums/CardKey$Provider;

    .line 4
    iget-object v4, p0, Lbo/app/v$d;->c:Lbo/app/y1;

    .line 5
    iget-object v5, p0, Lbo/app/v$d;->d:Lcom/braze/storage/ICardStorageProvider;

    .line 6
    iget-object v6, p0, Lbo/app/v$d;->e:Lbo/app/a2;

    .line 7
    invoke-static/range {v1 .. v6}, Lbo/app/v;->a(Lbo/app/v;Ljava/lang/String;Lcom/braze/enums/CardKey$Provider;Lbo/app/y1;Lcom/braze/storage/ICardStorageProvider;Lbo/app/a2;)Lcom/braze/models/cards/Card;

    move-result-object p1

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 15
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v2, Lbo/app/v;->a:Lbo/app/v;

    sget-object v3, Lcom/braze/support/BrazeLogger$Priority;->E:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v4, Lbo/app/v$d$a;

    iget-object v5, p0, Lbo/app/v$d;->f:Lorg/json/JSONArray;

    invoke-direct {v4, p1, v5}, Lbo/app/v$d$a;-><init>(Ljava/lang/Object;Lorg/json/JSONArray;)V

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/braze/support/BrazeLogger;->brazelog(Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V

    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lbo/app/v$d;->a(Ljava/lang/Object;)Lcom/braze/models/cards/Card;

    move-result-object p1

    return-object p1
.end method
