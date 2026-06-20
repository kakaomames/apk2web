.class final enum Lcom/braze/push/BrazeNotificationUtils$BrazeNotificationBroadcastType;
.super Ljava/lang/Enum;
.source "BrazeNotificationUtils.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/braze/push/BrazeNotificationUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "BrazeNotificationBroadcastType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/braze/push/BrazeNotificationUtils$BrazeNotificationBroadcastType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0082\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/braze/push/BrazeNotificationUtils$BrazeNotificationBroadcastType;",
        "",
        "brazePushEventType",
        "Lcom/braze/enums/BrazePushEventType;",
        "(Ljava/lang/String;ILcom/braze/enums/BrazePushEventType;)V",
        "getBrazePushEventType",
        "()Lcom/braze/enums/BrazePushEventType;",
        "OPENED",
        "RECEIVED",
        "DELETED",
        "android-sdk-ui_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/braze/push/BrazeNotificationUtils$BrazeNotificationBroadcastType;

.field public static final enum DELETED:Lcom/braze/push/BrazeNotificationUtils$BrazeNotificationBroadcastType;

.field public static final enum OPENED:Lcom/braze/push/BrazeNotificationUtils$BrazeNotificationBroadcastType;

.field public static final enum RECEIVED:Lcom/braze/push/BrazeNotificationUtils$BrazeNotificationBroadcastType;


# instance fields
.field private final brazePushEventType:Lcom/braze/enums/BrazePushEventType;


# direct methods
.method private static final synthetic $values()[Lcom/braze/push/BrazeNotificationUtils$BrazeNotificationBroadcastType;
    .locals 3

    sget-object v0, Lcom/braze/push/BrazeNotificationUtils$BrazeNotificationBroadcastType;->OPENED:Lcom/braze/push/BrazeNotificationUtils$BrazeNotificationBroadcastType;

    sget-object v1, Lcom/braze/push/BrazeNotificationUtils$BrazeNotificationBroadcastType;->RECEIVED:Lcom/braze/push/BrazeNotificationUtils$BrazeNotificationBroadcastType;

    sget-object v2, Lcom/braze/push/BrazeNotificationUtils$BrazeNotificationBroadcastType;->DELETED:Lcom/braze/push/BrazeNotificationUtils$BrazeNotificationBroadcastType;

    filled-new-array {v0, v1, v2}, [Lcom/braze/push/BrazeNotificationUtils$BrazeNotificationBroadcastType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 58
    new-instance v0, Lcom/braze/push/BrazeNotificationUtils$BrazeNotificationBroadcastType;

    const/4 v1, 0x0

    sget-object v2, Lcom/braze/enums/BrazePushEventType;->NOTIFICATION_OPENED:Lcom/braze/enums/BrazePushEventType;

    const-string v3, "OPENED"

    invoke-direct {v0, v3, v1, v2}, Lcom/braze/push/BrazeNotificationUtils$BrazeNotificationBroadcastType;-><init>(Ljava/lang/String;ILcom/braze/enums/BrazePushEventType;)V

    sput-object v0, Lcom/braze/push/BrazeNotificationUtils$BrazeNotificationBroadcastType;->OPENED:Lcom/braze/push/BrazeNotificationUtils$BrazeNotificationBroadcastType;

    .line 59
    new-instance v0, Lcom/braze/push/BrazeNotificationUtils$BrazeNotificationBroadcastType;

    const/4 v1, 0x1

    sget-object v2, Lcom/braze/enums/BrazePushEventType;->NOTIFICATION_RECEIVED:Lcom/braze/enums/BrazePushEventType;

    const-string v3, "RECEIVED"

    invoke-direct {v0, v3, v1, v2}, Lcom/braze/push/BrazeNotificationUtils$BrazeNotificationBroadcastType;-><init>(Ljava/lang/String;ILcom/braze/enums/BrazePushEventType;)V

    sput-object v0, Lcom/braze/push/BrazeNotificationUtils$BrazeNotificationBroadcastType;->RECEIVED:Lcom/braze/push/BrazeNotificationUtils$BrazeNotificationBroadcastType;

    .line 60
    new-instance v0, Lcom/braze/push/BrazeNotificationUtils$BrazeNotificationBroadcastType;

    const/4 v1, 0x2

    sget-object v2, Lcom/braze/enums/BrazePushEventType;->NOTIFICATION_DELETED:Lcom/braze/enums/BrazePushEventType;

    const-string v3, "DELETED"

    invoke-direct {v0, v3, v1, v2}, Lcom/braze/push/BrazeNotificationUtils$BrazeNotificationBroadcastType;-><init>(Ljava/lang/String;ILcom/braze/enums/BrazePushEventType;)V

    sput-object v0, Lcom/braze/push/BrazeNotificationUtils$BrazeNotificationBroadcastType;->DELETED:Lcom/braze/push/BrazeNotificationUtils$BrazeNotificationBroadcastType;

    invoke-static {}, Lcom/braze/push/BrazeNotificationUtils$BrazeNotificationBroadcastType;->$values()[Lcom/braze/push/BrazeNotificationUtils$BrazeNotificationBroadcastType;

    move-result-object v0

    sput-object v0, Lcom/braze/push/BrazeNotificationUtils$BrazeNotificationBroadcastType;->$VALUES:[Lcom/braze/push/BrazeNotificationUtils$BrazeNotificationBroadcastType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/braze/enums/BrazePushEventType;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/braze/enums/BrazePushEventType;",
            ")V"
        }
    .end annotation

    .line 57
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/braze/push/BrazeNotificationUtils$BrazeNotificationBroadcastType;->brazePushEventType:Lcom/braze/enums/BrazePushEventType;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/braze/push/BrazeNotificationUtils$BrazeNotificationBroadcastType;
    .locals 1

    const-class v0, Lcom/braze/push/BrazeNotificationUtils$BrazeNotificationBroadcastType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/braze/push/BrazeNotificationUtils$BrazeNotificationBroadcastType;

    return-object p0
.end method

.method public static values()[Lcom/braze/push/BrazeNotificationUtils$BrazeNotificationBroadcastType;
    .locals 1

    sget-object v0, Lcom/braze/push/BrazeNotificationUtils$BrazeNotificationBroadcastType;->$VALUES:[Lcom/braze/push/BrazeNotificationUtils$BrazeNotificationBroadcastType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/braze/push/BrazeNotificationUtils$BrazeNotificationBroadcastType;

    return-object v0
.end method


# virtual methods
.method public final getBrazePushEventType()Lcom/braze/enums/BrazePushEventType;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/braze/push/BrazeNotificationUtils$BrazeNotificationBroadcastType;->brazePushEventType:Lcom/braze/enums/BrazePushEventType;

    return-object v0
.end method
