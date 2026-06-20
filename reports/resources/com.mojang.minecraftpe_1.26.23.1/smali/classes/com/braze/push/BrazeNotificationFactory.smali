.class public Lcom/braze/push/BrazeNotificationFactory;
.super Ljava/lang/Object;
.source "BrazeNotificationFactory.kt"

# interfaces
.implements Lcom/braze/IBrazeNotificationFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/braze/push/BrazeNotificationFactory$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0016\u0018\u0000 \u00112\u00020\u0001:\u0001\u0011B\u0005\u00a2\u0006\u0002\u0010\u0002J0\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\nJ\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u000c\u001a\u00020\rH\u0016J0\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\n\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/braze/push/BrazeNotificationFactory;",
        "Lcom/braze/IBrazeNotificationFactory;",
        "()V",
        "createNotification",
        "Landroid/app/Notification;",
        "appConfigurationProvider",
        "Lcom/braze/configuration/BrazeConfigurationProvider;",
        "context",
        "Landroid/content/Context;",
        "notificationExtras",
        "Landroid/os/Bundle;",
        "brazeExtras",
        "payload",
        "Lcom/braze/models/push/BrazeNotificationPayload;",
        "populateNotificationBuilder",
        "Landroidx/core/app/NotificationCompat$Builder;",
        "configurationProvider",
        "Companion",
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
.field public static final Companion:Lcom/braze/push/BrazeNotificationFactory$Companion;

.field private static final internalInstance:Lcom/braze/push/BrazeNotificationFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/braze/push/BrazeNotificationFactory$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/braze/push/BrazeNotificationFactory$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/braze/push/BrazeNotificationFactory;->Companion:Lcom/braze/push/BrazeNotificationFactory$Companion;

    .line 89
    new-instance v0, Lcom/braze/push/BrazeNotificationFactory;

    invoke-direct {v0}, Lcom/braze/push/BrazeNotificationFactory;-><init>()V

    sput-object v0, Lcom/braze/push/BrazeNotificationFactory;->internalInstance:Lcom/braze/push/BrazeNotificationFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getInternalInstance$cp()Lcom/braze/push/BrazeNotificationFactory;
    .locals 1

    .line 34
    sget-object v0, Lcom/braze/push/BrazeNotificationFactory;->internalInstance:Lcom/braze/push/BrazeNotificationFactory;

    return-object v0
.end method

.method public static final getInstance()Lcom/braze/push/BrazeNotificationFactory;
    .locals 1

    sget-object v0, Lcom/braze/push/BrazeNotificationFactory;->Companion:Lcom/braze/push/BrazeNotificationFactory$Companion;

    invoke-virtual {v0}, Lcom/braze/push/BrazeNotificationFactory$Companion;->getInstance()Lcom/braze/push/BrazeNotificationFactory;

    move-result-object v0

    return-object v0
.end method

.method public static final populateNotificationBuilder(Lcom/braze/models/push/BrazeNotificationPayload;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/braze/push/BrazeNotificationFactory;->Companion:Lcom/braze/push/BrazeNotificationFactory$Companion;

    invoke-virtual {v0, p0}, Lcom/braze/push/BrazeNotificationFactory$Companion;->populateNotificationBuilder(Lcom/braze/models/push/BrazeNotificationPayload;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final createNotification(Lcom/braze/configuration/BrazeConfigurationProvider;Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/app/Notification;
    .locals 1

    .line 61
    new-instance v0, Lcom/braze/models/push/BrazeNotificationPayload;

    invoke-direct {v0, p3, p4, p2, p1}, Lcom/braze/models/push/BrazeNotificationPayload;-><init>(Landroid/os/Bundle;Landroid/os/Bundle;Landroid/content/Context;Lcom/braze/configuration/BrazeConfigurationProvider;)V

    .line 67
    invoke-virtual {p0, v0}, Lcom/braze/push/BrazeNotificationFactory;->createNotification(Lcom/braze/models/push/BrazeNotificationPayload;)Landroid/app/Notification;

    move-result-object p1

    return-object p1
.end method

.method public createNotification(Lcom/braze/models/push/BrazeNotificationPayload;)Landroid/app/Notification;
    .locals 7

    const-string v0, "payload"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    sget-object v0, Lcom/braze/push/BrazeNotificationFactory;->Companion:Lcom/braze/push/BrazeNotificationFactory$Companion;

    invoke-virtual {v0, p1}, Lcom/braze/push/BrazeNotificationFactory$Companion;->populateNotificationBuilder(Lcom/braze/models/push/BrazeNotificationPayload;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 45
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    goto :goto_0

    .line 47
    :cond_0
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v2, Lcom/braze/support/BrazeLogger$Priority;->I:Lcom/braze/support/BrazeLogger$Priority;

    sget-object p1, Lcom/braze/push/BrazeNotificationFactory$createNotification$1;->INSTANCE:Lcom/braze/push/BrazeNotificationFactory$createNotification$1;

    move-object v4, p1

    check-cast v4, Lkotlin/jvm/functions/Function0;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v6}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    const/4 p1, 0x0

    .line 48
    move-object v0, p1

    check-cast v0, Landroid/app/Notification;

    :goto_0
    return-object p1
.end method

.method public final populateNotificationBuilder(Lcom/braze/configuration/BrazeConfigurationProvider;Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Bundle;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 1

    .line 79
    new-instance v0, Lcom/braze/models/push/BrazeNotificationPayload;

    invoke-direct {v0, p3, p4, p2, p1}, Lcom/braze/models/push/BrazeNotificationPayload;-><init>(Landroid/os/Bundle;Landroid/os/Bundle;Landroid/content/Context;Lcom/braze/configuration/BrazeConfigurationProvider;)V

    .line 85
    sget-object p1, Lcom/braze/push/BrazeNotificationFactory;->Companion:Lcom/braze/push/BrazeNotificationFactory$Companion;

    invoke-virtual {p1, v0}, Lcom/braze/push/BrazeNotificationFactory$Companion;->populateNotificationBuilder(Lcom/braze/models/push/BrazeNotificationPayload;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    return-object p1
.end method
