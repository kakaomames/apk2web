.class public final enum Lcom/microsoft/applications/events/ActionType;
.super Ljava/lang/Enum;
.source "ActionType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/applications/events/ActionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/applications/events/ActionType;

.field public static final enum Click:Lcom/microsoft/applications/events/ActionType;

.field public static final enum Hover:Lcom/microsoft/applications/events/ActionType;

.field public static final enum Other:Lcom/microsoft/applications/events/ActionType;

.field public static final enum Pan:Lcom/microsoft/applications/events/ActionType;

.field public static final enum Unknown:Lcom/microsoft/applications/events/ActionType;

.field public static final enum Unspecified:Lcom/microsoft/applications/events/ActionType;

.field public static final enum Zoom:Lcom/microsoft/applications/events/ActionType;


# instance fields
.field private final m_value:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 18
    new-instance v0, Lcom/microsoft/applications/events/ActionType;

    const-string v1, "Unspecified"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/microsoft/applications/events/ActionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/applications/events/ActionType;->Unspecified:Lcom/microsoft/applications/events/ActionType;

    .line 23
    new-instance v1, Lcom/microsoft/applications/events/ActionType;

    const-string v2, "Unknown"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/microsoft/applications/events/ActionType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/microsoft/applications/events/ActionType;->Unknown:Lcom/microsoft/applications/events/ActionType;

    .line 28
    new-instance v2, Lcom/microsoft/applications/events/ActionType;

    const-string v3, "Other"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/microsoft/applications/events/ActionType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/microsoft/applications/events/ActionType;->Other:Lcom/microsoft/applications/events/ActionType;

    .line 33
    new-instance v3, Lcom/microsoft/applications/events/ActionType;

    const-string v4, "Click"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lcom/microsoft/applications/events/ActionType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/microsoft/applications/events/ActionType;->Click:Lcom/microsoft/applications/events/ActionType;

    .line 38
    new-instance v4, Lcom/microsoft/applications/events/ActionType;

    const-string v5, "Pan"

    const/4 v6, 0x4

    const/4 v7, 0x5

    invoke-direct {v4, v5, v6, v7}, Lcom/microsoft/applications/events/ActionType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/microsoft/applications/events/ActionType;->Pan:Lcom/microsoft/applications/events/ActionType;

    .line 43
    new-instance v5, Lcom/microsoft/applications/events/ActionType;

    const-string v6, "Zoom"

    const/4 v8, 0x6

    invoke-direct {v5, v6, v7, v8}, Lcom/microsoft/applications/events/ActionType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/microsoft/applications/events/ActionType;->Zoom:Lcom/microsoft/applications/events/ActionType;

    .line 48
    new-instance v6, Lcom/microsoft/applications/events/ActionType;

    const-string v7, "Hover"

    const/4 v9, 0x7

    invoke-direct {v6, v7, v8, v9}, Lcom/microsoft/applications/events/ActionType;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/microsoft/applications/events/ActionType;->Hover:Lcom/microsoft/applications/events/ActionType;

    .line 14
    filled-new-array/range {v0 .. v6}, [Lcom/microsoft/applications/events/ActionType;

    move-result-object v0

    sput-object v0, Lcom/microsoft/applications/events/ActionType;->$VALUES:[Lcom/microsoft/applications/events/ActionType;

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
    iput p3, p0, Lcom/microsoft/applications/events/ActionType;->m_value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/applications/events/ActionType;
    .locals 1

    .line 14
    const-class v0, Lcom/microsoft/applications/events/ActionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/applications/events/ActionType;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/applications/events/ActionType;
    .locals 1

    .line 14
    sget-object v0, Lcom/microsoft/applications/events/ActionType;->$VALUES:[Lcom/microsoft/applications/events/ActionType;

    invoke-virtual {v0}, [Lcom/microsoft/applications/events/ActionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/applications/events/ActionType;

    return-object v0
.end method


# virtual methods
.method getValue()I
    .locals 1

    .line 57
    iget v0, p0, Lcom/microsoft/applications/events/ActionType;->m_value:I

    return v0
.end method
