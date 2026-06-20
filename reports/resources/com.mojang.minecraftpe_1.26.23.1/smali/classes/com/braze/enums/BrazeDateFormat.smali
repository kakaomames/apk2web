.class public final enum Lcom/braze/enums/BrazeDateFormat;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/braze/enums/BrazeDateFormat;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0008\u0008\u0087\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/braze/enums/BrazeDateFormat;",
        "",
        "format",
        "",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getFormat",
        "()Ljava/lang/String;",
        "SHORT",
        "LONG",
        "ANDROID_LOGCAT",
        "CLOCK_12_HOUR",
        "android-sdk-base_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/braze/enums/BrazeDateFormat;

.field public static final enum ANDROID_LOGCAT:Lcom/braze/enums/BrazeDateFormat;

.field public static final enum CLOCK_12_HOUR:Lcom/braze/enums/BrazeDateFormat;

.field public static final enum LONG:Lcom/braze/enums/BrazeDateFormat;

.field public static final enum SHORT:Lcom/braze/enums/BrazeDateFormat;


# instance fields
.field private final format:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/braze/enums/BrazeDateFormat;
    .locals 4

    sget-object v0, Lcom/braze/enums/BrazeDateFormat;->SHORT:Lcom/braze/enums/BrazeDateFormat;

    sget-object v1, Lcom/braze/enums/BrazeDateFormat;->LONG:Lcom/braze/enums/BrazeDateFormat;

    sget-object v2, Lcom/braze/enums/BrazeDateFormat;->ANDROID_LOGCAT:Lcom/braze/enums/BrazeDateFormat;

    sget-object v3, Lcom/braze/enums/BrazeDateFormat;->CLOCK_12_HOUR:Lcom/braze/enums/BrazeDateFormat;

    filled-new-array {v0, v1, v2, v3}, [Lcom/braze/enums/BrazeDateFormat;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/braze/enums/BrazeDateFormat;

    const/4 v1, 0x0

    const-string v2, "yyyy-MM-dd"

    const-string v3, "SHORT"

    invoke-direct {v0, v3, v1, v2}, Lcom/braze/enums/BrazeDateFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/braze/enums/BrazeDateFormat;->SHORT:Lcom/braze/enums/BrazeDateFormat;

    .line 2
    new-instance v0, Lcom/braze/enums/BrazeDateFormat;

    const/4 v1, 0x1

    const-string v2, "yyyy-MM-dd kk:mm:ss"

    const-string v3, "LONG"

    invoke-direct {v0, v3, v1, v2}, Lcom/braze/enums/BrazeDateFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/braze/enums/BrazeDateFormat;->LONG:Lcom/braze/enums/BrazeDateFormat;

    .line 3
    new-instance v0, Lcom/braze/enums/BrazeDateFormat;

    const/4 v1, 0x2

    const-string v2, "MM-dd kk:mm:ss.SSS"

    const-string v3, "ANDROID_LOGCAT"

    invoke-direct {v0, v3, v1, v2}, Lcom/braze/enums/BrazeDateFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/braze/enums/BrazeDateFormat;->ANDROID_LOGCAT:Lcom/braze/enums/BrazeDateFormat;

    .line 4
    new-instance v0, Lcom/braze/enums/BrazeDateFormat;

    const/4 v1, 0x3

    const-string v2, "h:mm a"

    const-string v3, "CLOCK_12_HOUR"

    invoke-direct {v0, v3, v1, v2}, Lcom/braze/enums/BrazeDateFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/braze/enums/BrazeDateFormat;->CLOCK_12_HOUR:Lcom/braze/enums/BrazeDateFormat;

    invoke-static {}, Lcom/braze/enums/BrazeDateFormat;->$values()[Lcom/braze/enums/BrazeDateFormat;

    move-result-object v0

    sput-object v0, Lcom/braze/enums/BrazeDateFormat;->$VALUES:[Lcom/braze/enums/BrazeDateFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lcom/braze/enums/BrazeDateFormat;->format:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/braze/enums/BrazeDateFormat;
    .locals 1

    const-class v0, Lcom/braze/enums/BrazeDateFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/braze/enums/BrazeDateFormat;

    return-object p0
.end method

.method public static values()[Lcom/braze/enums/BrazeDateFormat;
    .locals 1

    sget-object v0, Lcom/braze/enums/BrazeDateFormat;->$VALUES:[Lcom/braze/enums/BrazeDateFormat;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/braze/enums/BrazeDateFormat;

    return-object v0
.end method


# virtual methods
.method public final getFormat()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/braze/enums/BrazeDateFormat;->format:Ljava/lang/String;

    return-object v0
.end method
