.class public final enum Lcom/microsoft/applications/events/DiagnosticLevel;
.super Ljava/lang/Enum;
.source "DiagnosticLevel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/applications/events/DiagnosticLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/applications/events/DiagnosticLevel;

.field public static final enum DIAG_LEVEL_OPTIONAL:Lcom/microsoft/applications/events/DiagnosticLevel;

.field public static final enum DIAG_LEVEL_REQUIRED:Lcom/microsoft/applications/events/DiagnosticLevel;

.field public static final enum DIAG_LEVEL_RSD:Lcom/microsoft/applications/events/DiagnosticLevel;

.field public static final enum DIAG_LEVEL_RSDES:Lcom/microsoft/applications/events/DiagnosticLevel;


# instance fields
.field private final m_value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 14
    new-instance v0, Lcom/microsoft/applications/events/DiagnosticLevel;

    const-string v1, "DIAG_LEVEL_REQUIRED"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/microsoft/applications/events/DiagnosticLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/applications/events/DiagnosticLevel;->DIAG_LEVEL_REQUIRED:Lcom/microsoft/applications/events/DiagnosticLevel;

    .line 19
    new-instance v1, Lcom/microsoft/applications/events/DiagnosticLevel;

    const-string v2, "DIAG_LEVEL_OPTIONAL"

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, Lcom/microsoft/applications/events/DiagnosticLevel;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/microsoft/applications/events/DiagnosticLevel;->DIAG_LEVEL_OPTIONAL:Lcom/microsoft/applications/events/DiagnosticLevel;

    .line 24
    new-instance v2, Lcom/microsoft/applications/events/DiagnosticLevel;

    const-string v3, "DIAG_LEVEL_RSD"

    const/16 v5, 0x6e

    invoke-direct {v2, v3, v4, v5}, Lcom/microsoft/applications/events/DiagnosticLevel;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/microsoft/applications/events/DiagnosticLevel;->DIAG_LEVEL_RSD:Lcom/microsoft/applications/events/DiagnosticLevel;

    .line 29
    new-instance v3, Lcom/microsoft/applications/events/DiagnosticLevel;

    const/4 v4, 0x3

    const/16 v5, 0x78

    const-string v6, "DIAG_LEVEL_RSDES"

    invoke-direct {v3, v6, v4, v5}, Lcom/microsoft/applications/events/DiagnosticLevel;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/microsoft/applications/events/DiagnosticLevel;->DIAG_LEVEL_RSDES:Lcom/microsoft/applications/events/DiagnosticLevel;

    .line 10
    filled-new-array {v0, v1, v2, v3}, [Lcom/microsoft/applications/events/DiagnosticLevel;

    move-result-object v0

    sput-object v0, Lcom/microsoft/applications/events/DiagnosticLevel;->$VALUES:[Lcom/microsoft/applications/events/DiagnosticLevel;

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
    iput p3, p0, Lcom/microsoft/applications/events/DiagnosticLevel;->m_value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/applications/events/DiagnosticLevel;
    .locals 1

    .line 10
    const-class v0, Lcom/microsoft/applications/events/DiagnosticLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/applications/events/DiagnosticLevel;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/applications/events/DiagnosticLevel;
    .locals 1

    .line 10
    sget-object v0, Lcom/microsoft/applications/events/DiagnosticLevel;->$VALUES:[Lcom/microsoft/applications/events/DiagnosticLevel;

    invoke-virtual {v0}, [Lcom/microsoft/applications/events/DiagnosticLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/applications/events/DiagnosticLevel;

    return-object v0
.end method


# virtual methods
.method getValue()I
    .locals 1

    .line 38
    iget v0, p0, Lcom/microsoft/applications/events/DiagnosticLevel;->m_value:I

    return v0
.end method
