.class public final enum Lcom/microsoft/applications/events/EventLatency;
.super Ljava/lang/Enum;
.source "EventLatency.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/applications/events/EventLatency;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/applications/events/EventLatency;

.field public static final enum CostDeferred:Lcom/microsoft/applications/events/EventLatency;

.field public static final enum Max:Lcom/microsoft/applications/events/EventLatency;

.field public static final enum Normal:Lcom/microsoft/applications/events/EventLatency;

.field public static final enum Off:Lcom/microsoft/applications/events/EventLatency;

.field public static final enum RealTime:Lcom/microsoft/applications/events/EventLatency;

.field public static final enum Unspecified:Lcom/microsoft/applications/events/EventLatency;


# instance fields
.field private final m_value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 23
    new-instance v0, Lcom/microsoft/applications/events/EventLatency;

    const/4 v1, -0x1

    const-string v2, "Unspecified"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/microsoft/applications/events/EventLatency;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/applications/events/EventLatency;->Unspecified:Lcom/microsoft/applications/events/EventLatency;

    .line 28
    new-instance v1, Lcom/microsoft/applications/events/EventLatency;

    const-string v2, "Off"

    const/4 v4, 0x1

    invoke-direct {v1, v2, v4, v3}, Lcom/microsoft/applications/events/EventLatency;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/microsoft/applications/events/EventLatency;->Off:Lcom/microsoft/applications/events/EventLatency;

    .line 33
    new-instance v2, Lcom/microsoft/applications/events/EventLatency;

    const-string v3, "Normal"

    const/4 v5, 0x2

    invoke-direct {v2, v3, v5, v4}, Lcom/microsoft/applications/events/EventLatency;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/microsoft/applications/events/EventLatency;->Normal:Lcom/microsoft/applications/events/EventLatency;

    .line 38
    new-instance v3, Lcom/microsoft/applications/events/EventLatency;

    const-string v4, "CostDeferred"

    const/4 v6, 0x3

    invoke-direct {v3, v4, v6, v5}, Lcom/microsoft/applications/events/EventLatency;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/microsoft/applications/events/EventLatency;->CostDeferred:Lcom/microsoft/applications/events/EventLatency;

    .line 43
    new-instance v4, Lcom/microsoft/applications/events/EventLatency;

    const-string v5, "RealTime"

    const/4 v7, 0x4

    invoke-direct {v4, v5, v7, v6}, Lcom/microsoft/applications/events/EventLatency;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/microsoft/applications/events/EventLatency;->RealTime:Lcom/microsoft/applications/events/EventLatency;

    .line 48
    new-instance v5, Lcom/microsoft/applications/events/EventLatency;

    const-string v6, "Max"

    const/4 v8, 0x5

    invoke-direct {v5, v6, v8, v7}, Lcom/microsoft/applications/events/EventLatency;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/microsoft/applications/events/EventLatency;->Max:Lcom/microsoft/applications/events/EventLatency;

    .line 19
    filled-new-array/range {v0 .. v5}, [Lcom/microsoft/applications/events/EventLatency;

    move-result-object v0

    sput-object v0, Lcom/microsoft/applications/events/EventLatency;->$VALUES:[Lcom/microsoft/applications/events/EventLatency;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 52
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 53
    iput p3, p0, Lcom/microsoft/applications/events/EventLatency;->m_value:I

    return-void
.end method

.method static getEnum(I)Lcom/microsoft/applications/events/EventLatency;
    .locals 3

    const/4 v0, -0x1

    if-eq p0, v0, :cond_5

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    .line 73
    sget-object p0, Lcom/microsoft/applications/events/EventLatency;->Max:Lcom/microsoft/applications/events/EventLatency;

    return-object p0

    .line 75
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported value: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_1
    sget-object p0, Lcom/microsoft/applications/events/EventLatency;->RealTime:Lcom/microsoft/applications/events/EventLatency;

    return-object p0

    .line 69
    :cond_2
    sget-object p0, Lcom/microsoft/applications/events/EventLatency;->CostDeferred:Lcom/microsoft/applications/events/EventLatency;

    return-object p0

    .line 67
    :cond_3
    sget-object p0, Lcom/microsoft/applications/events/EventLatency;->Normal:Lcom/microsoft/applications/events/EventLatency;

    return-object p0

    .line 65
    :cond_4
    sget-object p0, Lcom/microsoft/applications/events/EventLatency;->Off:Lcom/microsoft/applications/events/EventLatency;

    return-object p0

    .line 63
    :cond_5
    sget-object p0, Lcom/microsoft/applications/events/EventLatency;->Unspecified:Lcom/microsoft/applications/events/EventLatency;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/applications/events/EventLatency;
    .locals 1

    .line 19
    const-class v0, Lcom/microsoft/applications/events/EventLatency;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/applications/events/EventLatency;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/applications/events/EventLatency;
    .locals 1

    .line 19
    sget-object v0, Lcom/microsoft/applications/events/EventLatency;->$VALUES:[Lcom/microsoft/applications/events/EventLatency;

    invoke-virtual {v0}, [Lcom/microsoft/applications/events/EventLatency;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/applications/events/EventLatency;

    return-object v0
.end method


# virtual methods
.method getValue()I
    .locals 1

    .line 57
    iget v0, p0, Lcom/microsoft/applications/events/EventLatency;->m_value:I

    return v0
.end method
