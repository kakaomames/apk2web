.class public final enum Lcom/microsoft/xbox/idp/interop/Interop$ErrorStatus;
.super Ljava/lang/Enum;
.source "Interop.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/idp/interop/Interop;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ErrorStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/xbox/idp/interop/Interop$ErrorStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/xbox/idp/interop/Interop$ErrorStatus;

.field public static final enum CLOSE:Lcom/microsoft/xbox/idp/interop/Interop$ErrorStatus;

.field public static final enum TRY_AGAIN:Lcom/microsoft/xbox/idp/interop/Interop$ErrorStatus;


# instance fields
.field private final id:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 182
    new-instance v0, Lcom/microsoft/xbox/idp/interop/Interop$ErrorStatus;

    const-string v1, "TRY_AGAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/microsoft/xbox/idp/interop/Interop$ErrorStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/xbox/idp/interop/Interop$ErrorStatus;->TRY_AGAIN:Lcom/microsoft/xbox/idp/interop/Interop$ErrorStatus;

    .line 183
    new-instance v1, Lcom/microsoft/xbox/idp/interop/Interop$ErrorStatus;

    const-string v2, "CLOSE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/microsoft/xbox/idp/interop/Interop$ErrorStatus;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/microsoft/xbox/idp/interop/Interop$ErrorStatus;->CLOSE:Lcom/microsoft/xbox/idp/interop/Interop$ErrorStatus;

    .line 180
    filled-new-array {v0, v1}, [Lcom/microsoft/xbox/idp/interop/Interop$ErrorStatus;

    move-result-object v0

    sput-object v0, Lcom/microsoft/xbox/idp/interop/Interop$ErrorStatus;->$VALUES:[Lcom/microsoft/xbox/idp/interop/Interop$ErrorStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 188
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 189
    iput p3, p0, Lcom/microsoft/xbox/idp/interop/Interop$ErrorStatus;->id:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/xbox/idp/interop/Interop$ErrorStatus;
    .locals 1

    .line 180
    const-class v0, Lcom/microsoft/xbox/idp/interop/Interop$ErrorStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/xbox/idp/interop/Interop$ErrorStatus;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/xbox/idp/interop/Interop$ErrorStatus;
    .locals 1

    .line 180
    sget-object v0, Lcom/microsoft/xbox/idp/interop/Interop$ErrorStatus;->$VALUES:[Lcom/microsoft/xbox/idp/interop/Interop$ErrorStatus;

    invoke-virtual {v0}, [Lcom/microsoft/xbox/idp/interop/Interop$ErrorStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/xbox/idp/interop/Interop$ErrorStatus;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 1

    .line 194
    iget v0, p0, Lcom/microsoft/xbox/idp/interop/Interop$ErrorStatus;->id:I

    return v0
.end method
