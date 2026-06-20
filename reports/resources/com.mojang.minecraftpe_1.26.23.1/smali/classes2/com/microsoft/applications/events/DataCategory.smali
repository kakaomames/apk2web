.class public final enum Lcom/microsoft/applications/events/DataCategory;
.super Ljava/lang/Enum;
.source "DataCategory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/applications/events/DataCategory;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/applications/events/DataCategory;

.field public static final enum MAX:Lcom/microsoft/applications/events/DataCategory;

.field public static final enum PartB:Lcom/microsoft/applications/events/DataCategory;

.field public static final enum PartC:Lcom/microsoft/applications/events/DataCategory;


# instance fields
.field private final m_value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 11
    new-instance v0, Lcom/microsoft/applications/events/DataCategory;

    const-string v1, "PartC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/microsoft/applications/events/DataCategory;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/applications/events/DataCategory;->PartC:Lcom/microsoft/applications/events/DataCategory;

    .line 13
    new-instance v1, Lcom/microsoft/applications/events/DataCategory;

    const-string v2, "PartB"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/microsoft/applications/events/DataCategory;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/microsoft/applications/events/DataCategory;->PartB:Lcom/microsoft/applications/events/DataCategory;

    .line 15
    new-instance v2, Lcom/microsoft/applications/events/DataCategory;

    const-string v3, "MAX"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/microsoft/applications/events/DataCategory;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/microsoft/applications/events/DataCategory;->MAX:Lcom/microsoft/applications/events/DataCategory;

    .line 7
    filled-new-array {v0, v1, v2}, [Lcom/microsoft/applications/events/DataCategory;

    move-result-object v0

    sput-object v0, Lcom/microsoft/applications/events/DataCategory;->$VALUES:[Lcom/microsoft/applications/events/DataCategory;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 20
    iput p3, p0, Lcom/microsoft/applications/events/DataCategory;->m_value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/applications/events/DataCategory;
    .locals 1

    .line 7
    const-class v0, Lcom/microsoft/applications/events/DataCategory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/applications/events/DataCategory;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/applications/events/DataCategory;
    .locals 1

    .line 7
    sget-object v0, Lcom/microsoft/applications/events/DataCategory;->$VALUES:[Lcom/microsoft/applications/events/DataCategory;

    invoke-virtual {v0}, [Lcom/microsoft/applications/events/DataCategory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/applications/events/DataCategory;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 24
    iget v0, p0, Lcom/microsoft/applications/events/DataCategory;->m_value:I

    return v0
.end method
