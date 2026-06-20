.class public Lcom/mojang/minecraftpe/AppExitInfoHelper;
.super Ljava/lang/Object;
.source "AppExitInfoHelper.java"


# instance fields
.field public mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/mojang/minecraftpe/AppExitInfoHelper;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static native nativeSendApplicationExitInfo(Ljava/lang/String;IIIJJLjava/lang/String;Z)V
.end method


# virtual methods
.method public readyForAppExitInfo()V
    .locals 13

    .line 32
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_0

    return-void

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/mojang/minecraftpe/AppExitInfoHelper;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 40
    invoke-virtual {v0, v1, v3, v2}, Landroid/app/ActivityManager;->getHistoricalProcessExitReasons(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    .line 41
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 42
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ApplicationExitInfo;

    .line 43
    invoke-virtual {v0}, Landroid/app/ApplicationExitInfo;->getProcessStateSummary()[B

    move-result-object v1

    if-eqz v1, :cond_1

    .line 46
    new-instance v2, Ljava/lang/String;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_0

    .line 45
    :cond_1
    const-string v2, ""

    :goto_0
    move-object v11, v2

    .line 48
    const-string v1, "Received session ID from ApplicationExitInfo: "

    invoke-virtual {v1, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppExitInfoHelper"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    invoke-virtual {v0}, Landroid/app/ApplicationExitInfo;->getDescription()Ljava/lang/String;

    move-result-object v3

    .line 52
    invoke-virtual {v0}, Landroid/app/ApplicationExitInfo;->getReason()I

    move-result v4

    .line 53
    invoke-virtual {v0}, Landroid/app/ApplicationExitInfo;->getStatus()I

    move-result v5

    .line 54
    invoke-virtual {v0}, Landroid/app/ApplicationExitInfo;->getImportance()I

    move-result v6

    .line 55
    invoke-virtual {v0}, Landroid/app/ApplicationExitInfo;->getRss()J

    move-result-wide v7

    .line 56
    invoke-virtual {v0}, Landroid/app/ApplicationExitInfo;->getPss()J

    move-result-wide v9

    .line 58
    invoke-static {}, Landroid/app/ActivityManager;->isLowMemoryKillReportSupported()Z

    move-result v12

    .line 50
    invoke-static/range {v3 .. v12}, Lcom/mojang/minecraftpe/AppExitInfoHelper;->nativeSendApplicationExitInfo(Ljava/lang/String;IIIJJLjava/lang/String;Z)V

    :cond_2
    return-void
.end method

.method public registerSessionIdForApplicationExitInfo(Ljava/lang/String;)V
    .locals 2

    .line 19
    iget-object v0, p0, Lcom/mojang/minecraftpe/AppExitInfoHelper;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/mojang/minecraftpe/AppExitInfoHelper;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 24
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->setProcessStateSummary([B)V

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Registering session ID for ApplicationExitInfo: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AppExitInfoHelper"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method
