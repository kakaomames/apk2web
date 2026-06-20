.class public final enum Lbo/app/o5;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/braze/models/IPutIntoJson;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbo/app/o5$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lbo/app/o5;",
        ">;",
        "Lcom/braze/models/IPutIntoJson<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0006\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u00012\u0008\u0012\u0004\u0012\u00020\u00030\u0002B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0008\u0010\u0004\u001a\u00020\u0003H\u0016j\u0002\u0008\u0007j\u0002\u0008\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lbo/app/o5;",
        "",
        "Lcom/braze/models/IPutIntoJson;",
        "",
        "v",
        "<init>",
        "(Ljava/lang/String;I)V",
        "SUBSCRIBED",
        "UNSUBSCRIBED",
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
.field public static final enum b:Lbo/app/o5;

.field public static final enum c:Lbo/app/o5;

.field private static final synthetic d:[Lbo/app/o5;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lbo/app/o5;

    const-string v1, "SUBSCRIBED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lbo/app/o5;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbo/app/o5;->b:Lbo/app/o5;

    new-instance v0, Lbo/app/o5;

    const-string v1, "UNSUBSCRIBED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lbo/app/o5;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbo/app/o5;->c:Lbo/app/o5;

    invoke-static {}, Lbo/app/o5;->e()[Lbo/app/o5;

    move-result-object v0

    sput-object v0, Lbo/app/o5;->d:[Lbo/app/o5;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static final synthetic e()[Lbo/app/o5;
    .locals 2

    sget-object v0, Lbo/app/o5;->b:Lbo/app/o5;

    sget-object v1, Lbo/app/o5;->c:Lbo/app/o5;

    filled-new-array {v0, v1}, [Lbo/app/o5;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lbo/app/o5;
    .locals 1

    const-class v0, Lbo/app/o5;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lbo/app/o5;

    return-object p0
.end method

.method public static values()[Lbo/app/o5;
    .locals 1

    sget-object v0, Lbo/app/o5;->d:[Lbo/app/o5;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbo/app/o5;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic forJsonPut()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lbo/app/o5;->v()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public v()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lbo/app/o5$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 3
    const-string v0, "unsubscribed"

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 4
    :cond_1
    const-string v0, "subscribed"

    :goto_0
    return-object v0
.end method
