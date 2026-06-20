.class final Lbo/app/i3$b;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbo/app/i3;->a(Lbo/app/r4;Ljava/util/Map;Lkotlin/Lazy;Lorg/json/JSONObject;)V
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
.field final synthetic b:Lbo/app/i3;

.field final synthetic c:Lbo/app/r4;

.field final synthetic d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic e:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic f:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lbo/app/i3;Lbo/app/r4;Ljava/util/Map;Lkotlin/Lazy;Lorg/json/JSONObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbo/app/i3;",
            "Lbo/app/r4;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/Lazy<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/json/JSONObject;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lbo/app/i3$b;->b:Lbo/app/i3;

    iput-object p2, p0, Lbo/app/i3$b;->c:Lbo/app/r4;

    iput-object p3, p0, Lbo/app/i3$b;->d:Ljava/util/Map;

    iput-object p4, p0, Lbo/app/i3$b;->e:Lkotlin/Lazy;

    iput-object p5, p0, Lbo/app/i3$b;->f:Lorg/json/JSONObject;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lbo/app/i3$b;->b:Lbo/app/i3;

    iget-object v1, p0, Lbo/app/i3$b;->c:Lbo/app/r4;

    iget-object v2, p0, Lbo/app/i3$b;->d:Ljava/util/Map;

    iget-object v3, p0, Lbo/app/i3$b;->e:Lkotlin/Lazy;

    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lbo/app/i3$b;->f:Lorg/json/JSONObject;

    invoke-static {v0, v1, v2, v3, v4}, Lbo/app/i3;->a(Lbo/app/i3;Lbo/app/r4;Ljava/util/Map;Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lbo/app/i3$b;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
