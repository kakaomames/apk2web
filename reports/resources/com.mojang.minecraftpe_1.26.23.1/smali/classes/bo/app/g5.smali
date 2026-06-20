.class public final Lbo/app/g5;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbo/app/g5$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001:\u0001\u0004B\t\u0008\u0012\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0005"
    }
    d2 = {
        "Lbo/app/g5;",
        "",
        "<init>",
        "()V",
        "a",
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
.field public static final a:Lbo/app/g5$a;

.field public static final b:Lbo/app/g5;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lbo/app/g5$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbo/app/g5$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lbo/app/g5;->a:Lbo/app/g5$a;

    .line 1
    new-instance v0, Lbo/app/g5;

    invoke-direct {v0}, Lbo/app/g5;-><init>()V

    sput-object v0, Lbo/app/g5;->b:Lbo/app/g5;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
