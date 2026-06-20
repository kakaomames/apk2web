.class public final enum Lcom/microsoft/xbox/idp/interop/Interop$ErrorType;
.super Ljava/lang/Enum;
.source "Interop.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/idp/interop/Interop;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ErrorType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/xbox/idp/interop/Interop$ErrorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/xbox/idp/interop/Interop$ErrorType;

.field public static final enum BAN:Lcom/microsoft/xbox/idp/interop/Interop$ErrorType;

.field public static final enum CATCHALL:Lcom/microsoft/xbox/idp/interop/Interop$ErrorType;

.field public static final enum CREATION:Lcom/microsoft/xbox/idp/interop/Interop$ErrorType;

.field public static final enum OFFLINE:Lcom/microsoft/xbox/idp/interop/Interop$ErrorType;


# instance fields
.field private final id:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 162
    new-instance v0, Lcom/microsoft/xbox/idp/interop/Interop$ErrorType;

    const-string v1, "BAN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/microsoft/xbox/idp/interop/Interop$ErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/xbox/idp/interop/Interop$ErrorType;->BAN:Lcom/microsoft/xbox/idp/interop/Interop$ErrorType;

    .line 163
    new-instance v1, Lcom/microsoft/xbox/idp/interop/Interop$ErrorType;

    const-string v2, "CREATION"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/microsoft/xbox/idp/interop/Interop$ErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/microsoft/xbox/idp/interop/Interop$ErrorType;->CREATION:Lcom/microsoft/xbox/idp/interop/Interop$ErrorType;

    .line 164
    new-instance v2, Lcom/microsoft/xbox/idp/interop/Interop$ErrorType;

    const-string v3, "OFFLINE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/microsoft/xbox/idp/interop/Interop$ErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/microsoft/xbox/idp/interop/Interop$ErrorType;->OFFLINE:Lcom/microsoft/xbox/idp/interop/Interop$ErrorType;

    .line 165
    new-instance v3, Lcom/microsoft/xbox/idp/interop/Interop$ErrorType;

    const-string v4, "CATCHALL"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lcom/microsoft/xbox/idp/interop/Interop$ErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/microsoft/xbox/idp/interop/Interop$ErrorType;->CATCHALL:Lcom/microsoft/xbox/idp/interop/Interop$ErrorType;

    .line 160
    filled-new-array {v0, v1, v2, v3}, [Lcom/microsoft/xbox/idp/interop/Interop$ErrorType;

    move-result-object v0

    sput-object v0, Lcom/microsoft/xbox/idp/interop/Interop$ErrorType;->$VALUES:[Lcom/microsoft/xbox/idp/interop/Interop$ErrorType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 170
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 171
    iput p3, p0, Lcom/microsoft/xbox/idp/interop/Interop$ErrorType;->id:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/xbox/idp/interop/Interop$ErrorType;
    .locals 1

    .line 160
    const-class v0, Lcom/microsoft/xbox/idp/interop/Interop$ErrorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/xbox/idp/interop/Interop$ErrorType;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/xbox/idp/interop/Interop$ErrorType;
    .locals 1

    .line 160
    sget-object v0, Lcom/microsoft/xbox/idp/interop/Interop$ErrorType;->$VALUES:[Lcom/microsoft/xbox/idp/interop/Interop$ErrorType;

    invoke-virtual {v0}, [Lcom/microsoft/xbox/idp/interop/Interop$ErrorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/xbox/idp/interop/Interop$ErrorType;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 1

    .line 176
    iget v0, p0, Lcom/microsoft/xbox/idp/interop/Interop$ErrorType;->id:I

    return v0
.end method
