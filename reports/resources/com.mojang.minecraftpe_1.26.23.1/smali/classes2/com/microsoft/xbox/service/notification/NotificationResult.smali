.class public Lcom/microsoft/xbox/service/notification/NotificationResult;
.super Ljava/lang/Object;
.source "NotificationResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xbox/service/notification/NotificationResult$NotificationType;
    }
.end annotation


# instance fields
.field public body:Ljava/lang/String;

.field public data:Ljava/lang/String;

.field public notificationType:Lcom/microsoft/xbox/service/notification/NotificationResult$NotificationType;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/firebase/messaging/RemoteMessage;Landroid/content/Context;)V
    .locals 3

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->getData()Ljava/util/Map;

    move-result-object v0

    .line 24
    const-string/jumbo v1, "type"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 26
    sget-object p1, Lcom/microsoft/xbox/service/notification/NotificationResult$NotificationType;->Unknown:Lcom/microsoft/xbox/service/notification/NotificationResult$NotificationType;

    iput-object p1, p0, Lcom/microsoft/xbox/service/notification/NotificationResult;->notificationType:Lcom/microsoft/xbox/service/notification/NotificationResult$NotificationType;

    goto :goto_0

    .line 27
    :cond_0
    const-string/jumbo v2, "xbox_live_game_invite"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 28
    sget-object v1, Lcom/microsoft/xbox/service/notification/NotificationResult$NotificationType;->Invite:Lcom/microsoft/xbox/service/notification/NotificationResult$NotificationType;

    iput-object v1, p0, Lcom/microsoft/xbox/service/notification/NotificationResult;->notificationType:Lcom/microsoft/xbox/service/notification/NotificationResult$NotificationType;

    .line 29
    sget v1, Lcom/microsoft/xboxtcui/R$string;->xbox_live_game_invite_title:I

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/microsoft/xbox/service/notification/NotificationResult;->title:Ljava/lang/String;

    .line 30
    sget v1, Lcom/microsoft/xboxtcui/R$string;->xbox_live_game_invite_body:I

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 31
    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->getNotification()Lcom/google/firebase/messaging/RemoteMessage$Notification;

    move-result-object p1

    .line 32
    const-string v1, "XSAPI.Android"

    if-eqz p1, :cond_1

    .line 33
    const-string v2, "parsing notification"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage$Notification;->getBodyLocalizationArgs()[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    const/4 v1, 0x0

    .line 36
    aget-object v1, p1, v1

    const/4 v2, 0x1

    aget-object p1, p1, v2

    filled-new-array {v1, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/xbox/service/notification/NotificationResult;->body:Ljava/lang/String;

    goto :goto_0

    .line 40
    :cond_1
    const-string p1, "could not parse notification"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 42
    :cond_2
    const-string/jumbo p2, "xbox_live_achievement_unlock"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 43
    sget-object p2, Lcom/microsoft/xbox/service/notification/NotificationResult$NotificationType;->Achievement:Lcom/microsoft/xbox/service/notification/NotificationResult$NotificationType;

    iput-object p2, p0, Lcom/microsoft/xbox/service/notification/NotificationResult;->notificationType:Lcom/microsoft/xbox/service/notification/NotificationResult$NotificationType;

    .line 44
    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->getNotification()Lcom/google/firebase/messaging/RemoteMessage$Notification;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 46
    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->getNotification()Lcom/google/firebase/messaging/RemoteMessage$Notification;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/firebase/messaging/RemoteMessage$Notification;->getTitle()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/microsoft/xbox/service/notification/NotificationResult;->title:Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->getNotification()Lcom/google/firebase/messaging/RemoteMessage$Notification;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage$Notification;->getBody()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/xbox/service/notification/NotificationResult;->body:Ljava/lang/String;

    goto :goto_0

    .line 50
    :cond_3
    sget-object p1, Lcom/microsoft/xbox/service/notification/NotificationResult$NotificationType;->Unknown:Lcom/microsoft/xbox/service/notification/NotificationResult$NotificationType;

    iput-object p1, p0, Lcom/microsoft/xbox/service/notification/NotificationResult;->notificationType:Lcom/microsoft/xbox/service/notification/NotificationResult$NotificationType;

    .line 53
    :cond_4
    :goto_0
    const-string/jumbo p1, "xbl"

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/microsoft/xbox/service/notification/NotificationResult;->data:Ljava/lang/String;

    return-void
.end method
