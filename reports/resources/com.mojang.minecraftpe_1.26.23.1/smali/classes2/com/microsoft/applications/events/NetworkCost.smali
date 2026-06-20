.class public final enum Lcom/microsoft/applications/events/NetworkCost;
.super Ljava/lang/Enum;
.source "NetworkCost.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/applications/events/NetworkCost;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/applications/events/NetworkCost;

.field public static final enum Any:Lcom/microsoft/applications/events/NetworkCost;

.field public static final enum Metered:Lcom/microsoft/applications/events/NetworkCost;

.field public static final enum Roaming:Lcom/microsoft/applications/events/NetworkCost;

.field public static final enum Unknown:Lcom/microsoft/applications/events/NetworkCost;

.field public static final enum Unmetered:Lcom/microsoft/applications/events/NetworkCost;


# instance fields
.field private final m_value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 14
    new-instance v0, Lcom/microsoft/applications/events/NetworkCost;

    const-string v1, "Any"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/microsoft/applications/events/NetworkCost;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/applications/events/NetworkCost;->Any:Lcom/microsoft/applications/events/NetworkCost;

    .line 19
    new-instance v1, Lcom/microsoft/applications/events/NetworkCost;

    const-string v4, "Unknown"

    invoke-direct {v1, v4, v3, v2}, Lcom/microsoft/applications/events/NetworkCost;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/microsoft/applications/events/NetworkCost;->Unknown:Lcom/microsoft/applications/events/NetworkCost;

    .line 24
    new-instance v2, Lcom/microsoft/applications/events/NetworkCost;

    const-string v4, "Unmetered"

    const/4 v5, 0x2

    invoke-direct {v2, v4, v5, v3}, Lcom/microsoft/applications/events/NetworkCost;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/microsoft/applications/events/NetworkCost;->Unmetered:Lcom/microsoft/applications/events/NetworkCost;

    .line 29
    new-instance v3, Lcom/microsoft/applications/events/NetworkCost;

    const-string v4, "Metered"

    const/4 v6, 0x3

    invoke-direct {v3, v4, v6, v5}, Lcom/microsoft/applications/events/NetworkCost;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/microsoft/applications/events/NetworkCost;->Metered:Lcom/microsoft/applications/events/NetworkCost;

    .line 34
    new-instance v4, Lcom/microsoft/applications/events/NetworkCost;

    const-string v5, "Roaming"

    const/4 v7, 0x4

    invoke-direct {v4, v5, v7, v6}, Lcom/microsoft/applications/events/NetworkCost;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/microsoft/applications/events/NetworkCost;->Roaming:Lcom/microsoft/applications/events/NetworkCost;

    .line 10
    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/microsoft/applications/events/NetworkCost;

    move-result-object v0

    sput-object v0, Lcom/microsoft/applications/events/NetworkCost;->$VALUES:[Lcom/microsoft/applications/events/NetworkCost;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 39
    iput p3, p0, Lcom/microsoft/applications/events/NetworkCost;->m_value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/applications/events/NetworkCost;
    .locals 1

    .line 10
    const-class v0, Lcom/microsoft/applications/events/NetworkCost;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/applications/events/NetworkCost;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/applications/events/NetworkCost;
    .locals 1

    .line 10
    sget-object v0, Lcom/microsoft/applications/events/NetworkCost;->$VALUES:[Lcom/microsoft/applications/events/NetworkCost;

    invoke-virtual {v0}, [Lcom/microsoft/applications/events/NetworkCost;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/applications/events/NetworkCost;

    return-object v0
.end method


# virtual methods
.method getValue()I
    .locals 1

    .line 43
    iget v0, p0, Lcom/microsoft/applications/events/NetworkCost;->m_value:I

    return v0
.end method
