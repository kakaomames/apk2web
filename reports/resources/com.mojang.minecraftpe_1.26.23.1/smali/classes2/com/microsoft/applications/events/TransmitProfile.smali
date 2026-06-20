.class public final enum Lcom/microsoft/applications/events/TransmitProfile;
.super Ljava/lang/Enum;
.source "TransmitProfile.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/applications/events/TransmitProfile;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/applications/events/TransmitProfile;

.field public static final enum BestEffort:Lcom/microsoft/applications/events/TransmitProfile;

.field public static final enum NearRealTime:Lcom/microsoft/applications/events/TransmitProfile;

.field public static final enum RealTime:Lcom/microsoft/applications/events/TransmitProfile;


# instance fields
.field private final m_value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 15
    new-instance v0, Lcom/microsoft/applications/events/TransmitProfile;

    const-string v1, "RealTime"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/microsoft/applications/events/TransmitProfile;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/applications/events/TransmitProfile;->RealTime:Lcom/microsoft/applications/events/TransmitProfile;

    .line 21
    new-instance v1, Lcom/microsoft/applications/events/TransmitProfile;

    const-string v2, "NearRealTime"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/microsoft/applications/events/TransmitProfile;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/microsoft/applications/events/TransmitProfile;->NearRealTime:Lcom/microsoft/applications/events/TransmitProfile;

    .line 26
    new-instance v2, Lcom/microsoft/applications/events/TransmitProfile;

    const-string v3, "BestEffort"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/microsoft/applications/events/TransmitProfile;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/microsoft/applications/events/TransmitProfile;->BestEffort:Lcom/microsoft/applications/events/TransmitProfile;

    .line 11
    filled-new-array {v0, v1, v2}, [Lcom/microsoft/applications/events/TransmitProfile;

    move-result-object v0

    sput-object v0, Lcom/microsoft/applications/events/TransmitProfile;->$VALUES:[Lcom/microsoft/applications/events/TransmitProfile;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 31
    iput p3, p0, Lcom/microsoft/applications/events/TransmitProfile;->m_value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/applications/events/TransmitProfile;
    .locals 1

    .line 11
    const-class v0, Lcom/microsoft/applications/events/TransmitProfile;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/applications/events/TransmitProfile;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/applications/events/TransmitProfile;
    .locals 1

    .line 11
    sget-object v0, Lcom/microsoft/applications/events/TransmitProfile;->$VALUES:[Lcom/microsoft/applications/events/TransmitProfile;

    invoke-virtual {v0}, [Lcom/microsoft/applications/events/TransmitProfile;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/applications/events/TransmitProfile;

    return-object v0
.end method


# virtual methods
.method getValue()I
    .locals 1

    .line 35
    iget v0, p0, Lcom/microsoft/applications/events/TransmitProfile;->m_value:I

    return v0
.end method
