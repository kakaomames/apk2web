.class public final enum Lcom/microsoft/applications/events/Status;
.super Ljava/lang/Enum;
.source "Status.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/applications/events/Status$StatusValues;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/applications/events/Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/applications/events/Status;

.field public static final enum EALREADY:Lcom/microsoft/applications/events/Status;

.field public static final enum EFAIL:Lcom/microsoft/applications/events/Status;

.field public static final enum ENOSYS:Lcom/microsoft/applications/events/Status;

.field public static final enum ENOTSUP:Lcom/microsoft/applications/events/Status;

.field public static final enum EPERM:Lcom/microsoft/applications/events/Status;

.field public static final enum SUCCESS:Lcom/microsoft/applications/events/Status;


# instance fields
.field private final m_value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 16
    new-instance v0, Lcom/microsoft/applications/events/Status;

    const/4 v1, -0x1

    const-string v2, "EFAIL"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/microsoft/applications/events/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/applications/events/Status;->EFAIL:Lcom/microsoft/applications/events/Status;

    .line 21
    new-instance v1, Lcom/microsoft/applications/events/Status;

    const-string v2, "SUCCESS"

    const/4 v4, 0x1

    invoke-direct {v1, v2, v4, v3}, Lcom/microsoft/applications/events/Status;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/microsoft/applications/events/Status;->SUCCESS:Lcom/microsoft/applications/events/Status;

    .line 26
    new-instance v2, Lcom/microsoft/applications/events/Status;

    const-string v3, "EPERM"

    const/4 v5, 0x2

    invoke-direct {v2, v3, v5, v4}, Lcom/microsoft/applications/events/Status;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/microsoft/applications/events/Status;->EPERM:Lcom/microsoft/applications/events/Status;

    .line 31
    new-instance v3, Lcom/microsoft/applications/events/Status;

    const/4 v4, 0x3

    const/16 v5, 0x67

    const-string v6, "EALREADY"

    invoke-direct {v3, v6, v4, v5}, Lcom/microsoft/applications/events/Status;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/microsoft/applications/events/Status;->EALREADY:Lcom/microsoft/applications/events/Status;

    .line 36
    new-instance v4, Lcom/microsoft/applications/events/Status;

    const/4 v5, 0x4

    const/16 v6, 0x28

    const-string v7, "ENOSYS"

    invoke-direct {v4, v7, v5, v6}, Lcom/microsoft/applications/events/Status;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/microsoft/applications/events/Status;->ENOSYS:Lcom/microsoft/applications/events/Status;

    .line 41
    new-instance v5, Lcom/microsoft/applications/events/Status;

    const/4 v6, 0x5

    const/16 v7, 0x81

    const-string v8, "ENOTSUP"

    invoke-direct {v5, v8, v6, v7}, Lcom/microsoft/applications/events/Status;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/microsoft/applications/events/Status;->ENOTSUP:Lcom/microsoft/applications/events/Status;

    .line 12
    filled-new-array/range {v0 .. v5}, [Lcom/microsoft/applications/events/Status;

    move-result-object v0

    sput-object v0, Lcom/microsoft/applications/events/Status;->$VALUES:[Lcom/microsoft/applications/events/Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 46
    iput p3, p0, Lcom/microsoft/applications/events/Status;->m_value:I

    return-void
.end method

.method static getEnum(I)Lcom/microsoft/applications/events/Status;
    .locals 3

    const/4 v0, -0x1

    if-eq p0, v0, :cond_5

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/16 v0, 0x28

    if-eq p0, v0, :cond_2

    const/16 v0, 0x67

    if-eq p0, v0, :cond_1

    const/16 v0, 0x81

    if-ne p0, v0, :cond_0

    .line 62
    sget-object p0, Lcom/microsoft/applications/events/Status;->ENOTSUP:Lcom/microsoft/applications/events/Status;

    return-object p0

    .line 64
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported value: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_1
    sget-object p0, Lcom/microsoft/applications/events/Status;->EALREADY:Lcom/microsoft/applications/events/Status;

    return-object p0

    .line 60
    :cond_2
    sget-object p0, Lcom/microsoft/applications/events/Status;->ENOSYS:Lcom/microsoft/applications/events/Status;

    return-object p0

    .line 56
    :cond_3
    sget-object p0, Lcom/microsoft/applications/events/Status;->EPERM:Lcom/microsoft/applications/events/Status;

    return-object p0

    .line 54
    :cond_4
    sget-object p0, Lcom/microsoft/applications/events/Status;->SUCCESS:Lcom/microsoft/applications/events/Status;

    return-object p0

    .line 52
    :cond_5
    sget-object p0, Lcom/microsoft/applications/events/Status;->EFAIL:Lcom/microsoft/applications/events/Status;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/applications/events/Status;
    .locals 1

    .line 12
    const-class v0, Lcom/microsoft/applications/events/Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/applications/events/Status;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/applications/events/Status;
    .locals 1

    .line 12
    sget-object v0, Lcom/microsoft/applications/events/Status;->$VALUES:[Lcom/microsoft/applications/events/Status;

    invoke-virtual {v0}, [Lcom/microsoft/applications/events/Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/applications/events/Status;

    return-object v0
.end method
