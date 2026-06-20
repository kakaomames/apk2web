.class public final enum Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$GamerType;
.super Ljava/lang/Enum;
.source "UTCChangeRelationship.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GamerType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$GamerType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$GamerType;

.field public static final enum FACEBOOK:Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$GamerType;

.field public static final enum NORMAL:Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$GamerType;

.field public static final enum SUGGESTED:Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$GamerType;

.field public static final enum UNKNOWN:Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$GamerType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 67
    new-instance v0, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$GamerType;

    const/4 v1, 0x0

    sget-object v1, Lcom/google/android/datatransport/runtime/dagger/internal/TVW/fhjtYMsniW;->TuCBJP:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$GamerType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$GamerType;->UNKNOWN:Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$GamerType;

    .line 68
    new-instance v1, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$GamerType;

    const/4 v2, 0x0

    sget-object v2, Ljavax/annotation/concurrent/sZY/CUrDPLd;->qAOaSxlb:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$GamerType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$GamerType;->NORMAL:Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$GamerType;

    .line 69
    new-instance v2, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$GamerType;

    const-string v3, "FACEBOOK"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$GamerType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$GamerType;->FACEBOOK:Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$GamerType;

    .line 70
    new-instance v3, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$GamerType;

    const-string v4, "SUGGESTED"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$GamerType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$GamerType;->SUGGESTED:Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$GamerType;

    .line 66
    filled-new-array {v0, v1, v2, v3}, [Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$GamerType;

    move-result-object v0

    sput-object v0, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$GamerType;->$VALUES:[Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$GamerType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 74
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 75
    iput p3, p0, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$GamerType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$GamerType;
    .locals 1

    .line 66
    const-class v0, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$GamerType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$GamerType;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$GamerType;
    .locals 1

    .line 66
    sget-object v0, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$GamerType;->$VALUES:[Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$GamerType;

    invoke-virtual {v0}, [Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$GamerType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$GamerType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 79
    iget v0, p0, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$GamerType;->value:I

    return v0
.end method
