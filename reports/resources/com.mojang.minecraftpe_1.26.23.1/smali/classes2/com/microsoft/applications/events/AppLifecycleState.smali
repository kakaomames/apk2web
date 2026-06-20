.class public final enum Lcom/microsoft/applications/events/AppLifecycleState;
.super Ljava/lang/Enum;
.source "AppLifecycleState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/applications/events/AppLifecycleState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/applications/events/AppLifecycleState;

.field public static final enum Background:Lcom/microsoft/applications/events/AppLifecycleState;

.field public static final enum Exit:Lcom/microsoft/applications/events/AppLifecycleState;

.field public static final enum Foreground:Lcom/microsoft/applications/events/AppLifecycleState;

.field public static final enum Launch:Lcom/microsoft/applications/events/AppLifecycleState;

.field public static final enum Resume:Lcom/microsoft/applications/events/AppLifecycleState;

.field public static final enum Suspend:Lcom/microsoft/applications/events/AppLifecycleState;

.field public static final enum Unknown:Lcom/microsoft/applications/events/AppLifecycleState;


# instance fields
.field private final m_value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 14
    new-instance v0, Lcom/microsoft/applications/events/AppLifecycleState;

    const-string v1, "Unknown"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/microsoft/applications/events/AppLifecycleState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/applications/events/AppLifecycleState;->Unknown:Lcom/microsoft/applications/events/AppLifecycleState;

    .line 18
    new-instance v1, Lcom/microsoft/applications/events/AppLifecycleState;

    const-string v2, "Launch"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/microsoft/applications/events/AppLifecycleState;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/microsoft/applications/events/AppLifecycleState;->Launch:Lcom/microsoft/applications/events/AppLifecycleState;

    .line 22
    new-instance v2, Lcom/microsoft/applications/events/AppLifecycleState;

    const-string v3, "Exit"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/microsoft/applications/events/AppLifecycleState;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/microsoft/applications/events/AppLifecycleState;->Exit:Lcom/microsoft/applications/events/AppLifecycleState;

    .line 26
    new-instance v3, Lcom/microsoft/applications/events/AppLifecycleState;

    const-string v4, "Suspend"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lcom/microsoft/applications/events/AppLifecycleState;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/microsoft/applications/events/AppLifecycleState;->Suspend:Lcom/microsoft/applications/events/AppLifecycleState;

    .line 30
    new-instance v4, Lcom/microsoft/applications/events/AppLifecycleState;

    const-string v5, "Resume"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, Lcom/microsoft/applications/events/AppLifecycleState;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/microsoft/applications/events/AppLifecycleState;->Resume:Lcom/microsoft/applications/events/AppLifecycleState;

    .line 34
    new-instance v5, Lcom/microsoft/applications/events/AppLifecycleState;

    const-string v6, "Foreground"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7, v7}, Lcom/microsoft/applications/events/AppLifecycleState;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/microsoft/applications/events/AppLifecycleState;->Foreground:Lcom/microsoft/applications/events/AppLifecycleState;

    .line 38
    new-instance v6, Lcom/microsoft/applications/events/AppLifecycleState;

    const-string v7, "Background"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8, v8}, Lcom/microsoft/applications/events/AppLifecycleState;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/microsoft/applications/events/AppLifecycleState;->Background:Lcom/microsoft/applications/events/AppLifecycleState;

    .line 10
    filled-new-array/range {v0 .. v6}, [Lcom/microsoft/applications/events/AppLifecycleState;

    move-result-object v0

    sput-object v0, Lcom/microsoft/applications/events/AppLifecycleState;->$VALUES:[Lcom/microsoft/applications/events/AppLifecycleState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 43
    iput p3, p0, Lcom/microsoft/applications/events/AppLifecycleState;->m_value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/applications/events/AppLifecycleState;
    .locals 1

    .line 10
    const-class v0, Lcom/microsoft/applications/events/AppLifecycleState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/applications/events/AppLifecycleState;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/applications/events/AppLifecycleState;
    .locals 1

    .line 10
    sget-object v0, Lcom/microsoft/applications/events/AppLifecycleState;->$VALUES:[Lcom/microsoft/applications/events/AppLifecycleState;

    invoke-virtual {v0}, [Lcom/microsoft/applications/events/AppLifecycleState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/applications/events/AppLifecycleState;

    return-object v0
.end method


# virtual methods
.method getValue()I
    .locals 1

    .line 47
    iget v0, p0, Lcom/microsoft/applications/events/AppLifecycleState;->m_value:I

    return v0
.end method
