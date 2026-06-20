.class public final enum Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$TypefaceXml;
.super Ljava/lang/Enum;
.source "XLEUniversalImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TypefaceXml"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$TypefaceXml;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$TypefaceXml;

.field public static final enum MONOSPACE:Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$TypefaceXml;

.field public static final enum NORMAL:Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$TypefaceXml;

.field public static final enum SANS:Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$TypefaceXml;

.field public static final enum SERIF:Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$TypefaceXml;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 394
    new-instance v0, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$TypefaceXml;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$TypefaceXml;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$TypefaceXml;->NORMAL:Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$TypefaceXml;

    new-instance v1, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$TypefaceXml;

    const-string v2, "SANS"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$TypefaceXml;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$TypefaceXml;->SANS:Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$TypefaceXml;

    new-instance v2, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$TypefaceXml;

    const-string v3, "SERIF"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$TypefaceXml;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$TypefaceXml;->SERIF:Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$TypefaceXml;

    new-instance v3, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$TypefaceXml;

    const-string v4, "MONOSPACE"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$TypefaceXml;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$TypefaceXml;->MONOSPACE:Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$TypefaceXml;

    .line 393
    filled-new-array {v0, v1, v2, v3}, [Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$TypefaceXml;

    move-result-object v0

    sput-object v0, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$TypefaceXml;->$VALUES:[Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$TypefaceXml;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 393
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromIndex(I)Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$TypefaceXml;
    .locals 2

    .line 397
    invoke-static {}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$TypefaceXml;->values()[Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$TypefaceXml;

    move-result-object v0

    if-ltz p0, :cond_0

    .line 398
    array-length v1, v0

    if-ge p0, v1, :cond_0

    aget-object p0, v0, p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static typefaceFromIndex(I)Landroid/graphics/Typeface;
    .locals 1

    .line 402
    invoke-static {p0}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$TypefaceXml;->fromIndex(I)Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$TypefaceXml;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 404
    sget-object v0, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$2;->$SwitchMap$com$microsoft$xbox$toolkit$ui$XLEUniversalImageView$TypefaceXml:[I

    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$TypefaceXml;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    goto :goto_0

    .line 412
    :cond_0
    sget-object p0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    return-object p0

    .line 410
    :cond_1
    sget-object p0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    return-object p0

    .line 408
    :cond_2
    sget-object p0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    return-object p0

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$TypefaceXml;
    .locals 1

    .line 393
    const-class v0, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$TypefaceXml;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$TypefaceXml;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$TypefaceXml;
    .locals 1

    .line 393
    sget-object v0, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$TypefaceXml;->$VALUES:[Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$TypefaceXml;

    invoke-virtual {v0}, [Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$TypefaceXml;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$TypefaceXml;

    return-object v0
.end method
