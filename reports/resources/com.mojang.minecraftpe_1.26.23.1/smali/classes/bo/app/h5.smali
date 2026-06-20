.class public final enum Lbo/app/h5;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lbo/app/h5;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0005\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lbo/app/h5;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "OPEN_SESSION",
        "NO_SESSION",
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
.field public static final enum b:Lbo/app/h5;

.field public static final enum c:Lbo/app/h5;

.field private static final synthetic d:[Lbo/app/h5;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lbo/app/h5;

    const-string v1, "OPEN_SESSION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lbo/app/h5;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbo/app/h5;->b:Lbo/app/h5;

    new-instance v0, Lbo/app/h5;

    const-string v1, "NO_SESSION"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lbo/app/h5;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbo/app/h5;->c:Lbo/app/h5;

    invoke-static {}, Lbo/app/h5;->a()[Lbo/app/h5;

    move-result-object v0

    sput-object v0, Lbo/app/h5;->d:[Lbo/app/h5;

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

.method private static final synthetic a()[Lbo/app/h5;
    .locals 2

    sget-object v0, Lbo/app/h5;->b:Lbo/app/h5;

    sget-object v1, Lbo/app/h5;->c:Lbo/app/h5;

    filled-new-array {v0, v1}, [Lbo/app/h5;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lbo/app/h5;
    .locals 1

    const-class v0, Lbo/app/h5;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lbo/app/h5;

    return-object p0
.end method

.method public static values()[Lbo/app/h5;
    .locals 1

    sget-object v0, Lbo/app/h5;->d:[Lbo/app/h5;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbo/app/h5;

    return-object v0
.end method
