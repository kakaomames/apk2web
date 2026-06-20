.class public Lcom/microsoft/applications/events/PrivacyGuardInitConfig;
.super Ljava/lang/Object;
.source "PrivacyGuardInitConfig.java"


# instance fields
.field public DataContext:Lcom/microsoft/applications/events/CommonDataContext;

.field public LoggerInstance:Lcom/microsoft/applications/events/ILogger;

.field public NotificationEventName:Ljava/lang/String;

.field public ScanForUrls:Z

.field public SemanticContextNotificationEventName:Ljava/lang/String;

.field public SummaryEventName:Ljava/lang/String;

.field public UseEventFieldPrefix:Z


# direct methods
.method public constructor <init>(Lcom/microsoft/applications/events/ILogger;Lcom/microsoft/applications/events/CommonDataContext;)V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 59
    iput-boolean v0, p0, Lcom/microsoft/applications/events/PrivacyGuardInitConfig;->UseEventFieldPrefix:Z

    const/4 v0, 0x1

    .line 65
    iput-boolean v0, p0, Lcom/microsoft/applications/events/PrivacyGuardInitConfig;->ScanForUrls:Z

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 23
    iput-object p1, p0, Lcom/microsoft/applications/events/PrivacyGuardInitConfig;->LoggerInstance:Lcom/microsoft/applications/events/ILogger;

    .line 24
    iput-object p2, p0, Lcom/microsoft/applications/events/PrivacyGuardInitConfig;->DataContext:Lcom/microsoft/applications/events/CommonDataContext;

    return-void

    .line 20
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "context cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 16
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "logger cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
