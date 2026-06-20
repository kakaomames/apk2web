.class public Lcom/microsoft/xal/browser/BrowserSelectionResult;
.super Ljava/lang/Object;
.source "BrowserSelectionResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xal/browser/BrowserSelectionResult$BrowserInfo;
    }
.end annotation


# instance fields
.field public final m_defaultBrowserInfo:Lcom/microsoft/xal/browser/BrowserSelectionResult$BrowserInfo;

.field public final m_notes:Ljava/lang/String;

.field public final m_useCustomTabs:Z


# direct methods
.method public constructor <init>(Lcom/microsoft/xal/browser/BrowserSelectionResult$BrowserInfo;Ljava/lang/String;Z)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/microsoft/xal/browser/BrowserSelectionResult;->m_defaultBrowserInfo:Lcom/microsoft/xal/browser/BrowserSelectionResult$BrowserInfo;

    .line 38
    iput-object p2, p0, Lcom/microsoft/xal/browser/BrowserSelectionResult;->m_notes:Ljava/lang/String;

    .line 39
    iput-boolean p3, p0, Lcom/microsoft/xal/browser/BrowserSelectionResult;->m_useCustomTabs:Z

    return-void
.end method


# virtual methods
.method public packageName()Ljava/lang/String;
    .locals 1

    .line 78
    iget-boolean v0, p0, Lcom/microsoft/xal/browser/BrowserSelectionResult;->m_useCustomTabs:Z

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/microsoft/xal/browser/BrowserSelectionResult;->m_defaultBrowserInfo:Lcom/microsoft/xal/browser/BrowserSelectionResult$BrowserInfo;

    iget-object v0, v0, Lcom/microsoft/xal/browser/BrowserSelectionResult$BrowserInfo;->packageName:Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 54
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 57
    iget-boolean v1, p0, Lcom/microsoft/xal/browser/BrowserSelectionResult;->m_useCustomTabs:Z

    if-eqz v1, :cond_0

    const-string v1, "CT"

    goto :goto_0

    :cond_0
    const-string v1, "WK"

    :goto_0
    iget-object v2, p0, Lcom/microsoft/xal/browser/BrowserSelectionResult;->m_defaultBrowserInfo:Lcom/microsoft/xal/browser/BrowserSelectionResult$BrowserInfo;

    iget-object v2, v2, Lcom/microsoft/xal/browser/BrowserSelectionResult$BrowserInfo;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/microsoft/xal/browser/BrowserSelectionResult;->m_notes:Ljava/lang/String;

    iget-object v4, p0, Lcom/microsoft/xal/browser/BrowserSelectionResult;->m_defaultBrowserInfo:Lcom/microsoft/xal/browser/BrowserSelectionResult$BrowserInfo;

    iget-object v4, v4, Lcom/microsoft/xal/browser/BrowserSelectionResult$BrowserInfo;->versionName:Ljava/lang/String;

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v1

    .line 54
    const-string v2, "%s-%s-%s::%s"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
