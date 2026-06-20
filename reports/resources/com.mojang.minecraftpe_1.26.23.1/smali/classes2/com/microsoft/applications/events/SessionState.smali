.class public final enum Lcom/microsoft/applications/events/SessionState;
.super Ljava/lang/Enum;
.source "SessionState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/applications/events/SessionState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/applications/events/SessionState;

.field public static final enum Ended:Lcom/microsoft/applications/events/SessionState;

.field public static final enum Started:Lcom/microsoft/applications/events/SessionState;


# instance fields
.field private final m_value:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 14
    new-instance v0, Lcom/microsoft/applications/events/SessionState;

    const-string v1, "Started"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/microsoft/applications/events/SessionState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/applications/events/SessionState;->Started:Lcom/microsoft/applications/events/SessionState;

    .line 18
    new-instance v1, Lcom/microsoft/applications/events/SessionState;

    const-string v2, "Ended"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/microsoft/applications/events/SessionState;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/microsoft/applications/events/SessionState;->Ended:Lcom/microsoft/applications/events/SessionState;

    .line 10
    filled-new-array {v0, v1}, [Lcom/microsoft/applications/events/SessionState;

    move-result-object v0

    sput-object v0, Lcom/microsoft/applications/events/SessionState;->$VALUES:[Lcom/microsoft/applications/events/SessionState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 23
    iput p3, p0, Lcom/microsoft/applications/events/SessionState;->m_value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/applications/events/SessionState;
    .locals 1

    .line 10
    const-class v0, Lcom/microsoft/applications/events/SessionState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/applications/events/SessionState;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/applications/events/SessionState;
    .locals 1

    .line 10
    sget-object v0, Lcom/microsoft/applications/events/SessionState;->$VALUES:[Lcom/microsoft/applications/events/SessionState;

    invoke-virtual {v0}, [Lcom/microsoft/applications/events/SessionState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/applications/events/SessionState;

    return-object v0
.end method


# virtual methods
.method getValue()I
    .locals 1

    .line 27
    iget v0, p0, Lcom/microsoft/applications/events/SessionState;->m_value:I

    return v0
.end method
