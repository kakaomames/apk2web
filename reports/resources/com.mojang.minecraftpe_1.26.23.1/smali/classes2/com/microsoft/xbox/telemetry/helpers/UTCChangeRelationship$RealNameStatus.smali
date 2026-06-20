.class public final enum Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$RealNameStatus;
.super Ljava/lang/Enum;
.source "UTCChangeRelationship.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RealNameStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$RealNameStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$RealNameStatus;

.field public static final enum EXISTINGNOTSHARED:Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$RealNameStatus;

.field public static final enum EXISTINGSHARED:Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$RealNameStatus;

.field public static final enum SHARINGOFF:Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$RealNameStatus;

.field public static final enum SHARINGON:Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$RealNameStatus;

.field public static final enum UNKNOWN:Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$RealNameStatus;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 50
    new-instance v0, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$RealNameStatus;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$RealNameStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$RealNameStatus;->UNKNOWN:Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$RealNameStatus;

    .line 51
    new-instance v1, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$RealNameStatus;

    const-string v2, "SHARINGON"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$RealNameStatus;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$RealNameStatus;->SHARINGON:Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$RealNameStatus;

    .line 52
    new-instance v2, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$RealNameStatus;

    const-string v3, "SHARINGOFF"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$RealNameStatus;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$RealNameStatus;->SHARINGOFF:Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$RealNameStatus;

    .line 53
    new-instance v3, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$RealNameStatus;

    const-string v4, "EXISTINGSHARED"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$RealNameStatus;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$RealNameStatus;->EXISTINGSHARED:Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$RealNameStatus;

    .line 54
    new-instance v4, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$RealNameStatus;

    const-string v5, "EXISTINGNOTSHARED"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$RealNameStatus;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$RealNameStatus;->EXISTINGNOTSHARED:Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$RealNameStatus;

    .line 49
    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$RealNameStatus;

    move-result-object v0

    sput-object v0, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$RealNameStatus;->$VALUES:[Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$RealNameStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 61
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 62
    iput p3, p0, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$RealNameStatus;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$RealNameStatus;
    .locals 1

    .line 49
    const-class v0, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$RealNameStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$RealNameStatus;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$RealNameStatus;
    .locals 1

    .line 49
    sget-object v0, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$RealNameStatus;->$VALUES:[Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$RealNameStatus;

    invoke-virtual {v0}, [Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$RealNameStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$RealNameStatus;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 58
    iget v0, p0, Lcom/microsoft/xbox/telemetry/helpers/UTCChangeRelationship$RealNameStatus;->value:I

    return v0
.end method
