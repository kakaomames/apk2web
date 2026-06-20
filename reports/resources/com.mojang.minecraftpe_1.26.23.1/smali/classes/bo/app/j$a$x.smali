.class final Lbo/app/j$a$x;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbo/app/j$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/math/BigDecimal;ILcom/braze/models/outgoing/BrazeProperties;)Lbo/app/w1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lbo/app/w1;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "Lbo/app/w1;",
        "a",
        "()Lbo/app/w1;"
    }
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/braze/models/outgoing/BrazeProperties;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/math/BigDecimal;

.field final synthetic f:I


# direct methods
.method constructor <init>(Lcom/braze/models/outgoing/BrazeProperties;Ljava/lang/String;Ljava/lang/String;Ljava/math/BigDecimal;I)V
    .locals 0

    iput-object p1, p0, Lbo/app/j$a$x;->b:Lcom/braze/models/outgoing/BrazeProperties;

    iput-object p2, p0, Lbo/app/j$a$x;->c:Ljava/lang/String;

    iput-object p3, p0, Lbo/app/j$a$x;->d:Ljava/lang/String;

    iput-object p4, p0, Lbo/app/j$a$x;->e:Ljava/math/BigDecimal;

    iput p5, p0, Lbo/app/j$a$x;->f:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Lbo/app/w1;
    .locals 9

    .line 1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    iget-object v0, p0, Lbo/app/j$a$x;->c:Ljava/lang/String;

    iget-object v1, p0, Lbo/app/j$a$x;->d:Ljava/lang/String;

    iget-object v3, p0, Lbo/app/j$a$x;->e:Ljava/math/BigDecimal;

    iget v4, p0, Lbo/app/j$a$x;->f:I

    .line 2
    const-string v5, "pid"

    invoke-virtual {v2, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3
    const-string v0, "c"

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4
    invoke-static {v3}, Lbo/app/q3;->a(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    const-string v3, "p"

    invoke-virtual {v2, v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 5
    const-string v0, "q"

    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 7
    iget-object v0, p0, Lbo/app/j$a$x;->b:Lcom/braze/models/outgoing/BrazeProperties;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/braze/models/outgoing/BrazeProperties;->getSize()I

    move-result v0

    if-lez v0, :cond_0

    .line 8
    iget-object v0, p0, Lbo/app/j$a$x;->b:Lcom/braze/models/outgoing/BrazeProperties;

    invoke-virtual {v0}, Lcom/braze/models/outgoing/BrazeProperties;->forJsonPut()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "pr"

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 10
    :cond_0
    new-instance v8, Lbo/app/j;

    sget-object v1, Lbo/app/d1;->g:Lbo/app/d1;

    const/16 v6, 0xc

    const/4 v7, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lbo/app/j;-><init>(Lbo/app/d1;Lorg/json/JSONObject;DLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v8
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lbo/app/j$a$x;->a()Lbo/app/w1;

    move-result-object v0

    return-object v0
.end method
