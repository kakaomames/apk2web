.class public final enum Lcom/microsoft/applications/events/UserState;
.super Ljava/lang/Enum;
.source "UserState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/applications/events/UserState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/applications/events/UserState;

.field public static final enum Connected:Lcom/microsoft/applications/events/UserState;

.field public static final enum Reachable:Lcom/microsoft/applications/events/UserState;

.field public static final enum SignedIn:Lcom/microsoft/applications/events/UserState;

.field public static final enum SignedOut:Lcom/microsoft/applications/events/UserState;

.field public static final enum Unknown:Lcom/microsoft/applications/events/UserState;


# instance fields
.field private final m_value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 14
    new-instance v0, Lcom/microsoft/applications/events/UserState;

    const-string v1, "Unknown"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/microsoft/applications/events/UserState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/applications/events/UserState;->Unknown:Lcom/microsoft/applications/events/UserState;

    .line 19
    new-instance v1, Lcom/microsoft/applications/events/UserState;

    const-string v2, "Connected"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/microsoft/applications/events/UserState;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/microsoft/applications/events/UserState;->Connected:Lcom/microsoft/applications/events/UserState;

    .line 24
    new-instance v2, Lcom/microsoft/applications/events/UserState;

    const-string v3, "Reachable"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/microsoft/applications/events/UserState;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/microsoft/applications/events/UserState;->Reachable:Lcom/microsoft/applications/events/UserState;

    .line 29
    new-instance v3, Lcom/microsoft/applications/events/UserState;

    const-string v4, "SignedIn"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lcom/microsoft/applications/events/UserState;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/microsoft/applications/events/UserState;->SignedIn:Lcom/microsoft/applications/events/UserState;

    .line 34
    new-instance v4, Lcom/microsoft/applications/events/UserState;

    const-string v5, "SignedOut"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, Lcom/microsoft/applications/events/UserState;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/microsoft/applications/events/UserState;->SignedOut:Lcom/microsoft/applications/events/UserState;

    .line 10
    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/microsoft/applications/events/UserState;

    move-result-object v0

    sput-object v0, Lcom/microsoft/applications/events/UserState;->$VALUES:[Lcom/microsoft/applications/events/UserState;

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
    iput p3, p0, Lcom/microsoft/applications/events/UserState;->m_value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/applications/events/UserState;
    .locals 1

    .line 10
    const-class v0, Lcom/microsoft/applications/events/UserState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/applications/events/UserState;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/applications/events/UserState;
    .locals 1

    .line 10
    sget-object v0, Lcom/microsoft/applications/events/UserState;->$VALUES:[Lcom/microsoft/applications/events/UserState;

    invoke-virtual {v0}, [Lcom/microsoft/applications/events/UserState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/applications/events/UserState;

    return-object v0
.end method


# virtual methods
.method getValue()I
    .locals 1

    .line 43
    iget v0, p0, Lcom/microsoft/applications/events/UserState;->m_value:I

    return v0
.end method
