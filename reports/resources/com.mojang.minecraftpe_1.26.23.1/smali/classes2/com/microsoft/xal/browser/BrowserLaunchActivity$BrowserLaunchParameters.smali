.class public Lcom/microsoft/xal/browser/BrowserLaunchActivity$BrowserLaunchParameters;
.super Ljava/lang/Object;
.source "BrowserLaunchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xal/browser/BrowserLaunchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BrowserLaunchParameters"
.end annotation


# instance fields
.field public final EndUrl:Ljava/lang/String;

.field public final RequestHeaderKeys:[Ljava/lang/String;

.field public final RequestHeaderValues:[Ljava/lang/String;

.field public final ShowType:Lcom/microsoft/xal/browser/BrowserLaunchActivity$ShowUrlType;

.field public final StartUrl:Ljava/lang/String;

.field public final UseInProcBrowser:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Lcom/microsoft/xal/browser/BrowserLaunchActivity$ShowUrlType;Z)V
    .locals 2

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    new-instance v0, Lcom/microsoft/xal/logging/XalLogger;

    const-string v1, "BrowserLaunchActivity.BrowserLaunchParameters"

    invoke-direct {v0, v1}, Lcom/microsoft/xal/logging/XalLogger;-><init>(Ljava/lang/String;)V

    .line 118
    :try_start_0
    iput-object p1, p0, Lcom/microsoft/xal/browser/BrowserLaunchActivity$BrowserLaunchParameters;->StartUrl:Ljava/lang/String;

    .line 119
    iput-object p2, p0, Lcom/microsoft/xal/browser/BrowserLaunchActivity$BrowserLaunchParameters;->EndUrl:Ljava/lang/String;

    .line 120
    iput-object p3, p0, Lcom/microsoft/xal/browser/BrowserLaunchActivity$BrowserLaunchParameters;->RequestHeaderKeys:[Ljava/lang/String;

    .line 121
    iput-object p4, p0, Lcom/microsoft/xal/browser/BrowserLaunchActivity$BrowserLaunchParameters;->RequestHeaderValues:[Ljava/lang/String;

    .line 122
    iput-object p5, p0, Lcom/microsoft/xal/browser/BrowserLaunchActivity$BrowserLaunchParameters;->ShowType:Lcom/microsoft/xal/browser/BrowserLaunchActivity$ShowUrlType;

    .line 124
    sget-object p1, Lcom/microsoft/xal/browser/BrowserLaunchActivity$ShowUrlType;->NonAuthFlow:Lcom/microsoft/xal/browser/BrowserLaunchActivity$ShowUrlType;

    const/4 p2, 0x1

    if-ne p5, p1, :cond_0

    .line 126
    const-string p1, "BrowserLaunchParameters() Forcing inProc browser because flow is marked non-auth."

    invoke-virtual {v0, p1}, Lcom/microsoft/xal/logging/XalLogger;->Important(Ljava/lang/String;)V

    :goto_0
    move p6, p2

    goto :goto_1

    .line 129
    :cond_0
    array-length p1, p3

    if-lez p1, :cond_1

    .line 131
    const-string p1, "BrowserLaunchParameters() Forcing inProc browser because request headers were found."

    invoke-virtual {v0, p1}, Lcom/microsoft/xal/logging/XalLogger;->Important(Ljava/lang/String;)V

    goto :goto_0

    .line 135
    :cond_1
    :goto_1
    iput-boolean p6, p0, Lcom/microsoft/xal/browser/BrowserLaunchActivity$BrowserLaunchParameters;->UseInProcBrowser:Z

    .line 136
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lcom/microsoft/xal/logging/XalLogger;->close()V

    return-void

    :catchall_0
    move-exception p1

    .line 116
    :try_start_1
    invoke-virtual {v0}, Lcom/microsoft/xal/logging/XalLogger;->close()V

    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p2

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p1
.end method

.method public static FromArgs(Landroid/os/Bundle;)Lcom/microsoft/xal/browser/BrowserLaunchActivity$BrowserLaunchParameters;
    .locals 8

    .line 81
    const-string v0, "START_URL"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 82
    const-string v0, "END_URL"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 83
    const-string v0, "REQUEST_HEADER_KEYS"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 84
    const-string v0, "REQUEST_HEADER_VALUES"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 85
    const-string v0, "SHOW_TYPE"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/microsoft/xal/browser/BrowserLaunchActivity$ShowUrlType;

    .line 86
    const-string v0, "IN_PROC_BROWSER"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    if-eqz v4, :cond_1

    if-eqz v5, :cond_1

    .line 88
    array-length p0, v4

    array-length v0, v5

    if-eq p0, v0, :cond_0

    goto :goto_0

    .line 97
    :cond_0
    new-instance p0, Lcom/microsoft/xal/browser/BrowserLaunchActivity$BrowserLaunchParameters;

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/microsoft/xal/browser/BrowserLaunchActivity$BrowserLaunchParameters;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Lcom/microsoft/xal/browser/BrowserLaunchActivity$ShowUrlType;Z)V

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method
