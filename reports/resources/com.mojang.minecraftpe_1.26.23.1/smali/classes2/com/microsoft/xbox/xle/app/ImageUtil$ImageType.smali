.class public final enum Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;
.super Ljava/lang/Enum;
.source "ImageUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/xle/app/ImageUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ImageType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;

.field public static final enum LARGE:Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;

.field public static final enum LARGE_3X4:Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;

.field public static final enum MEDIUM:Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;

.field public static final enum MEDIUM_3X4:Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;

.field public static final enum MEDIUM_4X3:Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;

.field public static final enum SMALL:Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;

.field public static final enum SMALL_3X4:Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;

.field public static final enum SMALL_4X3:Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;

.field public static final enum TINY:Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;

.field public static final enum TINY_3X4:Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;

.field public static final enum TINY_4X3:Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 310
    new-instance v0, Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;

    const-string v1, "TINY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;->TINY:Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;

    new-instance v1, Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;

    const-string v2, "TINY_3X4"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;->TINY_3X4:Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;

    new-instance v2, Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;

    const-string v3, "TINY_4X3"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;->TINY_4X3:Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;

    new-instance v3, Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;

    const-string v4, "SMALL"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;->SMALL:Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;

    new-instance v4, Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;

    const-string v5, "SMALL_3X4"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;->SMALL_3X4:Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;

    new-instance v5, Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;

    const-string v6, "SMALL_4X3"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;->SMALL_4X3:Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;

    new-instance v6, Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;

    const-string v7, "MEDIUM"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;->MEDIUM:Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;

    new-instance v7, Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;

    const-string v8, "MEDIUM_3X4"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;->MEDIUM_3X4:Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;

    new-instance v8, Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;

    const-string v9, "MEDIUM_4X3"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;->MEDIUM_4X3:Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;

    new-instance v9, Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;

    const-string v10, "LARGE"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11}, Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;->LARGE:Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;

    new-instance v10, Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;

    const-string v11, "LARGE_3X4"

    const/16 v12, 0xa

    invoke-direct {v10, v11, v12}, Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;->LARGE_3X4:Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;

    .line 309
    filled-new-array/range {v0 .. v10}, [Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;

    move-result-object v0

    sput-object v0, Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;->$VALUES:[Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 309
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;
    .locals 1

    const/4 v0, 0x0

    .line 314
    :try_start_0
    invoke-static {p0}, Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;->valueOf(Ljava/lang/String;)Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;

    move-result-object p0

    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;
    .locals 1

    .line 309
    const-class v0, Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;
    .locals 1

    .line 309
    sget-object v0, Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;->$VALUES:[Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;

    invoke-virtual {v0}, [Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/xbox/xle/app/ImageUtil$ImageType;

    return-object v0
.end method
