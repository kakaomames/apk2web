.class public final enum Lcom/microsoft/applications/events/EventPersistence;
.super Ljava/lang/Enum;
.source "EventPersistence.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/applications/events/EventPersistence;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/applications/events/EventPersistence;

.field public static final enum Critical:Lcom/microsoft/applications/events/EventPersistence;

.field public static final enum DoNotStoreOnDisk:Lcom/microsoft/applications/events/EventPersistence;

.field public static final enum Normal:Lcom/microsoft/applications/events/EventPersistence;


# instance fields
.field private final m_value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 14
    new-instance v0, Lcom/microsoft/applications/events/EventPersistence;

    const-string v1, "Normal"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/microsoft/applications/events/EventPersistence;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/applications/events/EventPersistence;->Normal:Lcom/microsoft/applications/events/EventPersistence;

    .line 19
    new-instance v1, Lcom/microsoft/applications/events/EventPersistence;

    const-string v2, "Critical"

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, Lcom/microsoft/applications/events/EventPersistence;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/microsoft/applications/events/EventPersistence;->Critical:Lcom/microsoft/applications/events/EventPersistence;

    .line 24
    new-instance v2, Lcom/microsoft/applications/events/EventPersistence;

    const-string v3, "DoNotStoreOnDisk"

    const/4 v5, 0x3

    invoke-direct {v2, v3, v4, v5}, Lcom/microsoft/applications/events/EventPersistence;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/microsoft/applications/events/EventPersistence;->DoNotStoreOnDisk:Lcom/microsoft/applications/events/EventPersistence;

    .line 10
    filled-new-array {v0, v1, v2}, [Lcom/microsoft/applications/events/EventPersistence;

    move-result-object v0

    sput-object v0, Lcom/microsoft/applications/events/EventPersistence;->$VALUES:[Lcom/microsoft/applications/events/EventPersistence;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 29
    iput p3, p0, Lcom/microsoft/applications/events/EventPersistence;->m_value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/applications/events/EventPersistence;
    .locals 1

    .line 10
    const-class v0, Lcom/microsoft/applications/events/EventPersistence;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/applications/events/EventPersistence;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/applications/events/EventPersistence;
    .locals 1

    .line 10
    sget-object v0, Lcom/microsoft/applications/events/EventPersistence;->$VALUES:[Lcom/microsoft/applications/events/EventPersistence;

    invoke-virtual {v0}, [Lcom/microsoft/applications/events/EventPersistence;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/applications/events/EventPersistence;

    return-object v0
.end method


# virtual methods
.method getValue()I
    .locals 1

    .line 33
    iget v0, p0, Lcom/microsoft/applications/events/EventPersistence;->m_value:I

    return v0
.end method
