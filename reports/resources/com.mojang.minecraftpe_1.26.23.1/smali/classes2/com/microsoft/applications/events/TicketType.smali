.class public final enum Lcom/microsoft/applications/events/TicketType;
.super Ljava/lang/Enum;
.source "TicketType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/applications/events/TicketType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/applications/events/TicketType;

.field public static final enum AAD:Lcom/microsoft/applications/events/TicketType;

.field public static final enum AAD_JWT:Lcom/microsoft/applications/events/TicketType;

.field public static final enum AAD_User:Lcom/microsoft/applications/events/TicketType;

.field public static final enum MSA_Device:Lcom/microsoft/applications/events/TicketType;

.field public static final enum MSA_User:Lcom/microsoft/applications/events/TicketType;

.field public static final enum XAuth_Device:Lcom/microsoft/applications/events/TicketType;

.field public static final enum XAuth_User:Lcom/microsoft/applications/events/TicketType;


# instance fields
.field private final m_value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 8
    new-instance v0, Lcom/microsoft/applications/events/TicketType;

    const-string v1, "MSA_Device"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/microsoft/applications/events/TicketType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/applications/events/TicketType;->MSA_Device:Lcom/microsoft/applications/events/TicketType;

    .line 10
    new-instance v1, Lcom/microsoft/applications/events/TicketType;

    const-string v2, "MSA_User"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/microsoft/applications/events/TicketType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/microsoft/applications/events/TicketType;->MSA_User:Lcom/microsoft/applications/events/TicketType;

    .line 12
    new-instance v2, Lcom/microsoft/applications/events/TicketType;

    const-string v3, "XAuth_Device"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/microsoft/applications/events/TicketType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/microsoft/applications/events/TicketType;->XAuth_Device:Lcom/microsoft/applications/events/TicketType;

    .line 14
    new-instance v3, Lcom/microsoft/applications/events/TicketType;

    const-string v4, "XAuth_User"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lcom/microsoft/applications/events/TicketType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/microsoft/applications/events/TicketType;->XAuth_User:Lcom/microsoft/applications/events/TicketType;

    .line 16
    new-instance v4, Lcom/microsoft/applications/events/TicketType;

    const-string v5, "AAD"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, Lcom/microsoft/applications/events/TicketType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/microsoft/applications/events/TicketType;->AAD:Lcom/microsoft/applications/events/TicketType;

    .line 18
    new-instance v5, Lcom/microsoft/applications/events/TicketType;

    const-string v6, "AAD_User"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7, v7}, Lcom/microsoft/applications/events/TicketType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/microsoft/applications/events/TicketType;->AAD_User:Lcom/microsoft/applications/events/TicketType;

    .line 20
    new-instance v6, Lcom/microsoft/applications/events/TicketType;

    const-string v7, "AAD_JWT"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8, v8}, Lcom/microsoft/applications/events/TicketType;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/microsoft/applications/events/TicketType;->AAD_JWT:Lcom/microsoft/applications/events/TicketType;

    .line 7
    filled-new-array/range {v0 .. v6}, [Lcom/microsoft/applications/events/TicketType;

    move-result-object v0

    sput-object v0, Lcom/microsoft/applications/events/TicketType;->$VALUES:[Lcom/microsoft/applications/events/TicketType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 25
    iput p3, p0, Lcom/microsoft/applications/events/TicketType;->m_value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/applications/events/TicketType;
    .locals 1

    .line 7
    const-class v0, Lcom/microsoft/applications/events/TicketType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/applications/events/TicketType;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/applications/events/TicketType;
    .locals 1

    .line 7
    sget-object v0, Lcom/microsoft/applications/events/TicketType;->$VALUES:[Lcom/microsoft/applications/events/TicketType;

    invoke-virtual {v0}, [Lcom/microsoft/applications/events/TicketType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/applications/events/TicketType;

    return-object v0
.end method


# virtual methods
.method getValue()I
    .locals 1

    .line 29
    iget v0, p0, Lcom/microsoft/applications/events/TicketType;->m_value:I

    return v0
.end method
