.class public Lcom/microsoft/xbox/service/notification/NotificationFirebaseMessagingService;
.super Lcom/google/firebase/messaging/FirebaseMessagingService;
.source "NotificationFirebaseMessagingService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/google/firebase/messaging/FirebaseMessagingService;-><init>()V

    return-void
.end method


# virtual methods
.method public onNewToken(Ljava/lang/String;)V
    .locals 0

    .line 11
    invoke-static {p1}, Lcom/microsoft/xbox/idp/interop/Interop;->NotificationRegisterCallback(Ljava/lang/String;)V

    return-void
.end method
