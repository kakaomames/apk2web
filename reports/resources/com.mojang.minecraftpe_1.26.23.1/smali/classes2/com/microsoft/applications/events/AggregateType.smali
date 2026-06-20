.class public final enum Lcom/microsoft/applications/events/AggregateType;
.super Ljava/lang/Enum;
.source "AggregateType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/applications/events/AggregateType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/applications/events/AggregateType;

.field public static final enum Maximum:Lcom/microsoft/applications/events/AggregateType;

.field public static final enum Minimum:Lcom/microsoft/applications/events/AggregateType;

.field public static final enum Sum:Lcom/microsoft/applications/events/AggregateType;

.field public static final enum SumOfSquares:Lcom/microsoft/applications/events/AggregateType;


# instance fields
.field private final m_value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 14
    new-instance v0, Lcom/microsoft/applications/events/AggregateType;

    const-string v1, "Sum"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/microsoft/applications/events/AggregateType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/applications/events/AggregateType;->Sum:Lcom/microsoft/applications/events/AggregateType;

    .line 19
    new-instance v1, Lcom/microsoft/applications/events/AggregateType;

    const-string v2, "Maximum"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/microsoft/applications/events/AggregateType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/microsoft/applications/events/AggregateType;->Maximum:Lcom/microsoft/applications/events/AggregateType;

    .line 24
    new-instance v2, Lcom/microsoft/applications/events/AggregateType;

    const-string v3, "Minimum"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/microsoft/applications/events/AggregateType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/microsoft/applications/events/AggregateType;->Minimum:Lcom/microsoft/applications/events/AggregateType;

    .line 29
    new-instance v3, Lcom/microsoft/applications/events/AggregateType;

    const-string v4, "SumOfSquares"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lcom/microsoft/applications/events/AggregateType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/microsoft/applications/events/AggregateType;->SumOfSquares:Lcom/microsoft/applications/events/AggregateType;

    .line 10
    filled-new-array {v0, v1, v2, v3}, [Lcom/microsoft/applications/events/AggregateType;

    move-result-object v0

    sput-object v0, Lcom/microsoft/applications/events/AggregateType;->$VALUES:[Lcom/microsoft/applications/events/AggregateType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 34
    iput p3, p0, Lcom/microsoft/applications/events/AggregateType;->m_value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/applications/events/AggregateType;
    .locals 1

    .line 10
    const-class v0, Lcom/microsoft/applications/events/AggregateType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/applications/events/AggregateType;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/applications/events/AggregateType;
    .locals 1

    .line 10
    sget-object v0, Lcom/microsoft/applications/events/AggregateType;->$VALUES:[Lcom/microsoft/applications/events/AggregateType;

    invoke-virtual {v0}, [Lcom/microsoft/applications/events/AggregateType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/applications/events/AggregateType;

    return-object v0
.end method


# virtual methods
.method getValue()I
    .locals 1

    .line 38
    iget v0, p0, Lcom/microsoft/applications/events/AggregateType;->m_value:I

    return v0
.end method
