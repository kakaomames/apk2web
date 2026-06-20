.class public final enum Lcom/microsoft/applications/events/EventPriority;
.super Ljava/lang/Enum;
.source "EventPriority.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/applications/events/EventPriority;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/applications/events/EventPriority;

.field public static final enum High:Lcom/microsoft/applications/events/EventPriority;

.field public static final enum Immediate:Lcom/microsoft/applications/events/EventPriority;

.field public static final enum Low:Lcom/microsoft/applications/events/EventPriority;

.field public static final enum MAX:Lcom/microsoft/applications/events/EventPriority;

.field public static final enum MIN:Lcom/microsoft/applications/events/EventPriority;

.field public static final enum Normal:Lcom/microsoft/applications/events/EventPriority;

.field public static final enum Off:Lcom/microsoft/applications/events/EventPriority;

.field public static final enum Unspecified:Lcom/microsoft/applications/events/EventPriority;


# instance fields
.field private final m_value:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 23
    new-instance v0, Lcom/microsoft/applications/events/EventPriority;

    const/4 v1, -0x1

    const-string v2, "Unspecified"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/microsoft/applications/events/EventPriority;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/applications/events/EventPriority;->Unspecified:Lcom/microsoft/applications/events/EventPriority;

    .line 28
    new-instance v1, Lcom/microsoft/applications/events/EventPriority;

    const-string v2, "Off"

    const/4 v4, 0x1

    invoke-direct {v1, v2, v4, v3}, Lcom/microsoft/applications/events/EventPriority;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/microsoft/applications/events/EventPriority;->Off:Lcom/microsoft/applications/events/EventPriority;

    .line 33
    new-instance v2, Lcom/microsoft/applications/events/EventPriority;

    const-string v3, "Low"

    const/4 v5, 0x2

    invoke-direct {v2, v3, v5, v4}, Lcom/microsoft/applications/events/EventPriority;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/microsoft/applications/events/EventPriority;->Low:Lcom/microsoft/applications/events/EventPriority;

    .line 38
    new-instance v3, Lcom/microsoft/applications/events/EventPriority;

    invoke-virtual {v2}, Lcom/microsoft/applications/events/EventPriority;->getValue()I

    move-result v4

    const-string v6, "MIN"

    const/4 v7, 0x3

    invoke-direct {v3, v6, v7, v4}, Lcom/microsoft/applications/events/EventPriority;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/microsoft/applications/events/EventPriority;->MIN:Lcom/microsoft/applications/events/EventPriority;

    .line 43
    new-instance v4, Lcom/microsoft/applications/events/EventPriority;

    const/4 v6, 0x0

    sget-object v6, Lorg/spongycastle/asn1/util/GKS/lAxclkLY;->QccxaKYAAxGpuVQ:Ljava/lang/String;

    const/4 v8, 0x4

    invoke-direct {v4, v6, v8, v5}, Lcom/microsoft/applications/events/EventPriority;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/microsoft/applications/events/EventPriority;->Normal:Lcom/microsoft/applications/events/EventPriority;

    .line 48
    new-instance v5, Lcom/microsoft/applications/events/EventPriority;

    const-string v6, "High"

    const/4 v9, 0x5

    invoke-direct {v5, v6, v9, v7}, Lcom/microsoft/applications/events/EventPriority;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/microsoft/applications/events/EventPriority;->High:Lcom/microsoft/applications/events/EventPriority;

    .line 53
    new-instance v6, Lcom/microsoft/applications/events/EventPriority;

    const-string v7, "Immediate"

    const/4 v9, 0x6

    invoke-direct {v6, v7, v9, v8}, Lcom/microsoft/applications/events/EventPriority;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/microsoft/applications/events/EventPriority;->Immediate:Lcom/microsoft/applications/events/EventPriority;

    .line 58
    new-instance v7, Lcom/microsoft/applications/events/EventPriority;

    const/4 v8, 0x7

    invoke-virtual {v6}, Lcom/microsoft/applications/events/EventPriority;->getValue()I

    move-result v9

    const-string v10, "MAX"

    invoke-direct {v7, v10, v8, v9}, Lcom/microsoft/applications/events/EventPriority;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/microsoft/applications/events/EventPriority;->MAX:Lcom/microsoft/applications/events/EventPriority;

    .line 19
    filled-new-array/range {v0 .. v7}, [Lcom/microsoft/applications/events/EventPriority;

    move-result-object v0

    sput-object v0, Lcom/microsoft/applications/events/EventPriority;->$VALUES:[Lcom/microsoft/applications/events/EventPriority;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 62
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 63
    iput p3, p0, Lcom/microsoft/applications/events/EventPriority;->m_value:I

    return-void
.end method

.method static getEnum(I)Lcom/microsoft/applications/events/EventPriority;
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

    .line 83
    sget-object p0, Lcom/microsoft/applications/events/EventPriority;->Immediate:Lcom/microsoft/applications/events/EventPriority;

    return-object p0

    .line 85
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

    .line 81
    :cond_1
    sget-object p0, Lcom/microsoft/applications/events/EventPriority;->High:Lcom/microsoft/applications/events/EventPriority;

    return-object p0

    .line 79
    :cond_2
    sget-object p0, Lcom/microsoft/applications/events/EventPriority;->Normal:Lcom/microsoft/applications/events/EventPriority;

    return-object p0

    .line 77
    :cond_3
    sget-object p0, Lcom/microsoft/applications/events/EventPriority;->Low:Lcom/microsoft/applications/events/EventPriority;

    return-object p0

    .line 75
    :cond_4
    sget-object p0, Lcom/microsoft/applications/events/EventPriority;->Off:Lcom/microsoft/applications/events/EventPriority;

    return-object p0

    .line 73
    :cond_5
    sget-object p0, Lcom/microsoft/applications/events/EventPriority;->Unspecified:Lcom/microsoft/applications/events/EventPriority;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/applications/events/EventPriority;
    .locals 1

    .line 19
    const-class v0, Lcom/microsoft/applications/events/EventPriority;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/applications/events/EventPriority;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/applications/events/EventPriority;
    .locals 1

    .line 19
    sget-object v0, Lcom/microsoft/applications/events/EventPriority;->$VALUES:[Lcom/microsoft/applications/events/EventPriority;

    invoke-virtual {v0}, [Lcom/microsoft/applications/events/EventPriority;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/applications/events/EventPriority;

    return-object v0
.end method


# virtual methods
.method getValue()I
    .locals 1

    .line 67
    iget v0, p0, Lcom/microsoft/applications/events/EventPriority;->m_value:I

    return v0
.end method
