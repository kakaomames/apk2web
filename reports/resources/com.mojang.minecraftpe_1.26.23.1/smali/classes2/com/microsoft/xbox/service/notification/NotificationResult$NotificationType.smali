.class public final enum Lcom/microsoft/xbox/service/notification/NotificationResult$NotificationType;
.super Ljava/lang/Enum;
.source "NotificationResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/service/notification/NotificationResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NotificationType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/xbox/service/notification/NotificationResult$NotificationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/xbox/service/notification/NotificationResult$NotificationType;

.field public static final enum Achievement:Lcom/microsoft/xbox/service/notification/NotificationResult$NotificationType;

.field public static final enum Invite:Lcom/microsoft/xbox/service/notification/NotificationResult$NotificationType;

.field public static final enum Unknown:Lcom/microsoft/xbox/service/notification/NotificationResult$NotificationType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 12
    new-instance v0, Lcom/microsoft/xbox/service/notification/NotificationResult$NotificationType;

    const-string v1, "Achievement"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/service/notification/NotificationResult$NotificationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/service/notification/NotificationResult$NotificationType;->Achievement:Lcom/microsoft/xbox/service/notification/NotificationResult$NotificationType;

    .line 13
    new-instance v1, Lcom/microsoft/xbox/service/notification/NotificationResult$NotificationType;

    const-string v2, "Invite"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/microsoft/xbox/service/notification/NotificationResult$NotificationType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/microsoft/xbox/service/notification/NotificationResult$NotificationType;->Invite:Lcom/microsoft/xbox/service/notification/NotificationResult$NotificationType;

    .line 14
    new-instance v2, Lcom/microsoft/xbox/service/notification/NotificationResult$NotificationType;

    const-string v3, "Unknown"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/microsoft/xbox/service/notification/NotificationResult$NotificationType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/microsoft/xbox/service/notification/NotificationResult$NotificationType;->Unknown:Lcom/microsoft/xbox/service/notification/NotificationResult$NotificationType;

    .line 11
    filled-new-array {v0, v1, v2}, [Lcom/microsoft/xbox/service/notification/NotificationResult$NotificationType;

    move-result-object v0

    sput-object v0, Lcom/microsoft/xbox/service/notification/NotificationResult$NotificationType;->$VALUES:[Lcom/microsoft/xbox/service/notification/NotificationResult$NotificationType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/xbox/service/notification/NotificationResult$NotificationType;
    .locals 1

    .line 11
    const-class v0, Lcom/microsoft/xbox/service/notification/NotificationResult$NotificationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/xbox/service/notification/NotificationResult$NotificationType;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/xbox/service/notification/NotificationResult$NotificationType;
    .locals 1

    .line 11
    sget-object v0, Lcom/microsoft/xbox/service/notification/NotificationResult$NotificationType;->$VALUES:[Lcom/microsoft/xbox/service/notification/NotificationResult$NotificationType;

    invoke-virtual {v0}, [Lcom/microsoft/xbox/service/notification/NotificationResult$NotificationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/xbox/service/notification/NotificationResult$NotificationType;

    return-object v0
.end method
