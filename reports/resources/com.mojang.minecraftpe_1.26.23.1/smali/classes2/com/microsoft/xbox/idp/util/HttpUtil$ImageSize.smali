.class public final enum Lcom/microsoft/xbox/idp/util/HttpUtil$ImageSize;
.super Ljava/lang/Enum;
.source "HttpUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/idp/util/HttpUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ImageSize"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/xbox/idp/util/HttpUtil$ImageSize;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/xbox/idp/util/HttpUtil$ImageSize;

.field public static final enum LARGE:Lcom/microsoft/xbox/idp/util/HttpUtil$ImageSize;

.field public static final enum MEDIUM:Lcom/microsoft/xbox/idp/util/HttpUtil$ImageSize;

.field public static final enum SMALL:Lcom/microsoft/xbox/idp/util/HttpUtil$ImageSize;


# instance fields
.field private final h:I

.field private final w:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 11
    new-instance v0, Lcom/microsoft/xbox/idp/util/HttpUtil$ImageSize;

    const/4 v1, 0x0

    const/16 v2, 0x40

    const-string v3, "SMALL"

    invoke-direct {v0, v3, v1, v2, v2}, Lcom/microsoft/xbox/idp/util/HttpUtil$ImageSize;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/microsoft/xbox/idp/util/HttpUtil$ImageSize;->SMALL:Lcom/microsoft/xbox/idp/util/HttpUtil$ImageSize;

    .line 12
    new-instance v1, Lcom/microsoft/xbox/idp/util/HttpUtil$ImageSize;

    const/4 v2, 0x1

    const/16 v3, 0xd0

    const-string v4, "MEDIUM"

    invoke-direct {v1, v4, v2, v3, v3}, Lcom/microsoft/xbox/idp/util/HttpUtil$ImageSize;-><init>(Ljava/lang/String;III)V

    sput-object v1, Lcom/microsoft/xbox/idp/util/HttpUtil$ImageSize;->MEDIUM:Lcom/microsoft/xbox/idp/util/HttpUtil$ImageSize;

    .line 13
    new-instance v2, Lcom/microsoft/xbox/idp/util/HttpUtil$ImageSize;

    const/4 v3, 0x2

    const/16 v4, 0x1a8

    const-string v5, "LARGE"

    invoke-direct {v2, v5, v3, v4, v4}, Lcom/microsoft/xbox/idp/util/HttpUtil$ImageSize;-><init>(Ljava/lang/String;III)V

    sput-object v2, Lcom/microsoft/xbox/idp/util/HttpUtil$ImageSize;->LARGE:Lcom/microsoft/xbox/idp/util/HttpUtil$ImageSize;

    .line 10
    filled-new-array {v0, v1, v2}, [Lcom/microsoft/xbox/idp/util/HttpUtil$ImageSize;

    move-result-object v0

    sput-object v0, Lcom/microsoft/xbox/idp/util/HttpUtil$ImageSize;->$VALUES:[Lcom/microsoft/xbox/idp/util/HttpUtil$ImageSize;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 18
    iput p3, p0, Lcom/microsoft/xbox/idp/util/HttpUtil$ImageSize;->w:I

    .line 19
    iput p4, p0, Lcom/microsoft/xbox/idp/util/HttpUtil$ImageSize;->h:I

    return-void
.end method

.method static synthetic access$000(Lcom/microsoft/xbox/idp/util/HttpUtil$ImageSize;)I
    .locals 0

    .line 10
    iget p0, p0, Lcom/microsoft/xbox/idp/util/HttpUtil$ImageSize;->h:I

    return p0
.end method

.method static synthetic access$100(Lcom/microsoft/xbox/idp/util/HttpUtil$ImageSize;)I
    .locals 0

    .line 10
    iget p0, p0, Lcom/microsoft/xbox/idp/util/HttpUtil$ImageSize;->w:I

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/xbox/idp/util/HttpUtil$ImageSize;
    .locals 1

    .line 10
    const-class v0, Lcom/microsoft/xbox/idp/util/HttpUtil$ImageSize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/xbox/idp/util/HttpUtil$ImageSize;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/xbox/idp/util/HttpUtil$ImageSize;
    .locals 1

    .line 10
    sget-object v0, Lcom/microsoft/xbox/idp/util/HttpUtil$ImageSize;->$VALUES:[Lcom/microsoft/xbox/idp/util/HttpUtil$ImageSize;

    invoke-virtual {v0}, [Lcom/microsoft/xbox/idp/util/HttpUtil$ImageSize;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/xbox/idp/util/HttpUtil$ImageSize;

    return-object v0
.end method
