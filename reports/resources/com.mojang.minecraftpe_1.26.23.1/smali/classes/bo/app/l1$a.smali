.class public final enum Lbo/app/l1$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbo/app/l1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lbo/app/l1$a;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\u0008\u000b\u0008\u0087\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0019\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\t\u0010\nR\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006R\u0017\u0010\u0007\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0004\u001a\u0004\u0008\u0008\u0010\u0006j\u0002\u0008\u000bj\u0002\u0008\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lbo/app/l1$a;",
        "",
        "",
        "setKey",
        "Ljava/lang/String;",
        "c",
        "()Ljava/lang/String;",
        "flatKey",
        "b",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V",
        "READ_CARDS",
        "VIEWED_CARDS",
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
.field public static final enum d:Lbo/app/l1$a;

.field public static final enum e:Lbo/app/l1$a;

.field private static final synthetic f:[Lbo/app/l1$a;


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lbo/app/l1$a;

    const-string v1, "read_cards_set"

    const-string v2, "read_cards_flat"

    const-string v3, "READ_CARDS"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lbo/app/l1$a;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lbo/app/l1$a;->d:Lbo/app/l1$a;

    .line 2
    new-instance v0, Lbo/app/l1$a;

    const-string v1, "viewed_cards_set"

    const-string v2, "viewed_cards_flat"

    const-string v3, "VIEWED_CARDS"

    const/4 v4, 0x1

    invoke-direct {v0, v3, v4, v1, v2}, Lbo/app/l1$a;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lbo/app/l1$a;->e:Lbo/app/l1$a;

    invoke-static {}, Lbo/app/l1$a;->a()[Lbo/app/l1$a;

    move-result-object v0

    sput-object v0, Lbo/app/l1$a;->f:[Lbo/app/l1$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lbo/app/l1$a;->b:Ljava/lang/String;

    iput-object p4, p0, Lbo/app/l1$a;->c:Ljava/lang/String;

    return-void
.end method

.method private static final synthetic a()[Lbo/app/l1$a;
    .locals 2

    sget-object v0, Lbo/app/l1$a;->d:Lbo/app/l1$a;

    sget-object v1, Lbo/app/l1$a;->e:Lbo/app/l1$a;

    filled-new-array {v0, v1}, [Lbo/app/l1$a;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lbo/app/l1$a;
    .locals 1

    const-class v0, Lbo/app/l1$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lbo/app/l1$a;

    return-object p0
.end method

.method public static values()[Lbo/app/l1$a;
    .locals 1

    sget-object v0, Lbo/app/l1$a;->f:[Lbo/app/l1$a;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbo/app/l1$a;

    return-object v0
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lbo/app/l1$a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lbo/app/l1$a;->b:Ljava/lang/String;

    return-object v0
.end method
