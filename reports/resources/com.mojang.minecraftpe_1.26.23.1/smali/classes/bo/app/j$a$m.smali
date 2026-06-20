.class final Lbo/app/j$a$m;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbo/app/j$a;->a(Ljava/lang/String;Lcom/braze/models/inappmessage/MessageButton;)Lbo/app/w1;
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
.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/braze/models/inappmessage/MessageButton;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/braze/models/inappmessage/MessageButton;)V
    .locals 0

    iput-object p1, p0, Lbo/app/j$a$m;->b:Ljava/lang/String;

    iput-object p2, p0, Lbo/app/j$a$m;->c:Lcom/braze/models/inappmessage/MessageButton;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Lbo/app/w1;
    .locals 9

    .line 1
    new-instance v8, Lbo/app/j;

    sget-object v1, Lbo/app/d1;->A:Lbo/app/d1;

    sget-object v2, Lbo/app/j;->h:Lbo/app/j$a;

    iget-object v3, p0, Lbo/app/j$a$m;->b:Ljava/lang/String;

    iget-object v0, p0, Lbo/app/j$a$m;->c:Lcom/braze/models/inappmessage/MessageButton;

    invoke-virtual {v0}, Lcom/braze/models/inappmessage/MessageButton;->getStringId()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lbo/app/j$a;->a(Lbo/app/j$a;Ljava/lang/String;Ljava/lang/String;Lcom/braze/enums/inappmessage/InAppMessageFailureType;ILjava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    const/16 v6, 0xc

    const-wide/16 v3, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lbo/app/j;-><init>(Lbo/app/d1;Lorg/json/JSONObject;DLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v8
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lbo/app/j$a$m;->a()Lbo/app/w1;

    move-result-object v0

    return-object v0
.end method
