.class final enum Lcom/microsoft/xbox/telemetry/utc/CommonData$NetworkType;
.super Ljava/lang/Enum;
.source "CommonData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/telemetry/utc/CommonData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "NetworkType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/xbox/telemetry/utc/CommonData$NetworkType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/xbox/telemetry/utc/CommonData$NetworkType;

.field public static final enum CELLULAR:Lcom/microsoft/xbox/telemetry/utc/CommonData$NetworkType;

.field public static final enum UNKNOWN:Lcom/microsoft/xbox/telemetry/utc/CommonData$NetworkType;

.field public static final enum WIFI:Lcom/microsoft/xbox/telemetry/utc/CommonData$NetworkType;

.field public static final enum WIRED:Lcom/microsoft/xbox/telemetry/utc/CommonData$NetworkType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 151
    new-instance v0, Lcom/microsoft/xbox/telemetry/utc/CommonData$NetworkType;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/microsoft/xbox/telemetry/utc/CommonData$NetworkType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/xbox/telemetry/utc/CommonData$NetworkType;->UNKNOWN:Lcom/microsoft/xbox/telemetry/utc/CommonData$NetworkType;

    .line 152
    new-instance v1, Lcom/microsoft/xbox/telemetry/utc/CommonData$NetworkType;

    const-string v2, "WIFI"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/microsoft/xbox/telemetry/utc/CommonData$NetworkType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/microsoft/xbox/telemetry/utc/CommonData$NetworkType;->WIFI:Lcom/microsoft/xbox/telemetry/utc/CommonData$NetworkType;

    .line 153
    new-instance v2, Lcom/microsoft/xbox/telemetry/utc/CommonData$NetworkType;

    const-string v3, "CELLULAR"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/microsoft/xbox/telemetry/utc/CommonData$NetworkType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/microsoft/xbox/telemetry/utc/CommonData$NetworkType;->CELLULAR:Lcom/microsoft/xbox/telemetry/utc/CommonData$NetworkType;

    .line 154
    new-instance v3, Lcom/microsoft/xbox/telemetry/utc/CommonData$NetworkType;

    const-string v4, "WIRED"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lcom/microsoft/xbox/telemetry/utc/CommonData$NetworkType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/microsoft/xbox/telemetry/utc/CommonData$NetworkType;->WIRED:Lcom/microsoft/xbox/telemetry/utc/CommonData$NetworkType;

    .line 150
    filled-new-array {v0, v1, v2, v3}, [Lcom/microsoft/xbox/telemetry/utc/CommonData$NetworkType;

    move-result-object v0

    sput-object v0, Lcom/microsoft/xbox/telemetry/utc/CommonData$NetworkType;->$VALUES:[Lcom/microsoft/xbox/telemetry/utc/CommonData$NetworkType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 165
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x0

    .line 156
    iput p1, p0, Lcom/microsoft/xbox/telemetry/utc/CommonData$NetworkType;->value:I

    .line 166
    invoke-virtual {p0, p3}, Lcom/microsoft/xbox/telemetry/utc/CommonData$NetworkType;->setValue(I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/xbox/telemetry/utc/CommonData$NetworkType;
    .locals 1

    .line 150
    const-class v0, Lcom/microsoft/xbox/telemetry/utc/CommonData$NetworkType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/xbox/telemetry/utc/CommonData$NetworkType;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/xbox/telemetry/utc/CommonData$NetworkType;
    .locals 1

    .line 150
    sget-object v0, Lcom/microsoft/xbox/telemetry/utc/CommonData$NetworkType;->$VALUES:[Lcom/microsoft/xbox/telemetry/utc/CommonData$NetworkType;

    invoke-virtual {v0}, [Lcom/microsoft/xbox/telemetry/utc/CommonData$NetworkType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/xbox/telemetry/utc/CommonData$NetworkType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 158
    iget v0, p0, Lcom/microsoft/xbox/telemetry/utc/CommonData$NetworkType;->value:I

    return v0
.end method

.method public setValue(I)V
    .locals 0

    .line 162
    iput p1, p0, Lcom/microsoft/xbox/telemetry/utc/CommonData$NetworkType;->value:I

    return-void
.end method
