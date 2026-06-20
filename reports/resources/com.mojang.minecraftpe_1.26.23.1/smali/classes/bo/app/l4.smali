.class public final enum Lbo/app/l4;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lbo/app/l4;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0006\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lbo/app/l4;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "ZIP",
        "IMAGE",
        "FILE",
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
.field public static final enum b:Lbo/app/l4;

.field public static final enum c:Lbo/app/l4;

.field public static final enum d:Lbo/app/l4;

.field private static final synthetic e:[Lbo/app/l4;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lbo/app/l4;

    const-string v1, "ZIP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lbo/app/l4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbo/app/l4;->b:Lbo/app/l4;

    .line 6
    new-instance v0, Lbo/app/l4;

    const-string v1, "IMAGE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lbo/app/l4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbo/app/l4;->c:Lbo/app/l4;

    .line 11
    new-instance v0, Lbo/app/l4;

    const-string v1, "FILE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lbo/app/l4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbo/app/l4;->d:Lbo/app/l4;

    invoke-static {}, Lbo/app/l4;->a()[Lbo/app/l4;

    move-result-object v0

    sput-object v0, Lbo/app/l4;->e:[Lbo/app/l4;

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

.method private static final synthetic a()[Lbo/app/l4;
    .locals 3

    sget-object v0, Lbo/app/l4;->b:Lbo/app/l4;

    sget-object v1, Lbo/app/l4;->c:Lbo/app/l4;

    sget-object v2, Lbo/app/l4;->d:Lbo/app/l4;

    filled-new-array {v0, v1, v2}, [Lbo/app/l4;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lbo/app/l4;
    .locals 1

    const-class v0, Lbo/app/l4;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lbo/app/l4;

    return-object p0
.end method

.method public static values()[Lbo/app/l4;
    .locals 1

    sget-object v0, Lbo/app/l4;->e:[Lbo/app/l4;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbo/app/l4;

    return-object v0
.end method
