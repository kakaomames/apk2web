.class public Lcom/mojang/minecraftpe/SessionInfo;
.super Ljava/lang/Object;
.source "SessionInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final NOT_YET_CONFIGURED:Ljava/lang/String; = "Not yet configured"

.field public static final SEP:Ljava/lang/String; = ";"


# instance fields
.field public appVersion:I

.field public branchId:Ljava/lang/String;

.field public buildId:Ljava/lang/String;

.field public commitId:Ljava/lang/String;

.field public transient crashTimestamp:Ljava/util/Date;

.field public flavor:Ljava/lang/String;

.field public gameVersionName:Ljava/lang/String;

.field public recordDate:Ljava/util/Date;

.field public sessionId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput v0, p0, Lcom/mojang/minecraftpe/SessionInfo;->appVersion:I

    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lcom/mojang/minecraftpe/SessionInfo;->recordDate:Ljava/util/Date;

    .line 25
    iput-object v0, p0, Lcom/mojang/minecraftpe/SessionInfo;->crashTimestamp:Ljava/util/Date;

    .line 28
    const-string v0, "Not yet configured"

    iput-object v0, p0, Lcom/mojang/minecraftpe/SessionInfo;->sessionId:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Lcom/mojang/minecraftpe/SessionInfo;->buildId:Ljava/lang/String;

    .line 30
    iput-object v0, p0, Lcom/mojang/minecraftpe/SessionInfo;->commitId:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lcom/mojang/minecraftpe/SessionInfo;->branchId:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Lcom/mojang/minecraftpe/SessionInfo;->flavor:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcom/mojang/minecraftpe/SessionInfo;->gameVersionName:Ljava/lang/String;

    .line 34
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/mojang/minecraftpe/SessionInfo;->recordDate:Ljava/util/Date;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/Date;)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/mojang/minecraftpe/SessionInfo;->crashTimestamp:Ljava/util/Date;

    .line 38
    iput-object p1, p0, Lcom/mojang/minecraftpe/SessionInfo;->sessionId:Ljava/lang/String;

    .line 39
    iput-object p2, p0, Lcom/mojang/minecraftpe/SessionInfo;->buildId:Ljava/lang/String;

    .line 40
    iput-object p3, p0, Lcom/mojang/minecraftpe/SessionInfo;->commitId:Ljava/lang/String;

    .line 41
    iput-object p4, p0, Lcom/mojang/minecraftpe/SessionInfo;->branchId:Ljava/lang/String;

    .line 42
    iput-object p5, p0, Lcom/mojang/minecraftpe/SessionInfo;->flavor:Ljava/lang/String;

    .line 43
    iput-object p6, p0, Lcom/mojang/minecraftpe/SessionInfo;->gameVersionName:Ljava/lang/String;

    .line 44
    iput p7, p0, Lcom/mojang/minecraftpe/SessionInfo;->appVersion:I

    .line 45
    iput-object p8, p0, Lcom/mojang/minecraftpe/SessionInfo;->recordDate:Ljava/util/Date;

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/mojang/minecraftpe/SessionInfo;
    .locals 5

    .line 69
    new-instance v0, Lcom/mojang/minecraftpe/SessionInfo;

    invoke-direct {v0}, Lcom/mojang/minecraftpe/SessionInfo;-><init>()V

    if-eqz p0, :cond_2

    .line 71
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    .line 75
    const-string v1, ";"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 77
    array-length v2, v1

    const/16 v3, 0x8

    if-ne v2, v3, :cond_1

    const/4 v2, 0x0

    .line 81
    aget-object v3, v1, v2

    iput-object v3, v0, Lcom/mojang/minecraftpe/SessionInfo;->sessionId:Ljava/lang/String;

    const/4 v3, 0x1

    .line 82
    aget-object v3, v1, v3

    iput-object v3, v0, Lcom/mojang/minecraftpe/SessionInfo;->buildId:Ljava/lang/String;

    const/4 v3, 0x2

    .line 83
    aget-object v3, v1, v3

    iput-object v3, v0, Lcom/mojang/minecraftpe/SessionInfo;->commitId:Ljava/lang/String;

    const/4 v3, 0x3

    .line 84
    aget-object v3, v1, v3

    iput-object v3, v0, Lcom/mojang/minecraftpe/SessionInfo;->branchId:Ljava/lang/String;

    const/4 v3, 0x4

    .line 85
    aget-object v3, v1, v3

    iput-object v3, v0, Lcom/mojang/minecraftpe/SessionInfo;->flavor:Ljava/lang/String;

    const/4 v3, 0x5

    .line 86
    aget-object v3, v1, v3

    iput-object v3, v0, Lcom/mojang/minecraftpe/SessionInfo;->gameVersionName:Ljava/lang/String;

    const/4 v3, 0x6

    .line 89
    :try_start_0
    aget-object v4, v1, v3

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Lcom/mojang/minecraftpe/SessionInfo;->appVersion:I

    .line 95
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {}, Lcom/mojang/minecraftpe/SessionInfo;->getDateFormat()Ljava/text/SimpleDateFormat;

    move-result-object v3

    const/4 v4, 0x7

    aget-object v1, v1, v4

    new-instance v4, Ljava/text/ParsePosition;

    invoke-direct {v4, v2}, Ljava/text/ParsePosition;-><init>(I)V

    invoke-virtual {v3, v1, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v1

    iput-object v1, v0, Lcom/mojang/minecraftpe/SessionInfo;->recordDate:Ljava/util/Date;

    if-eqz v1, :cond_0

    return-object v0

    .line 98
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to parse date/time in SessionInfo string \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "\'"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :catch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Failed to convert app version \'"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' into an integer"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 78
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid SessionInfo string \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "\', must be 8 parts split by \';\'"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Empty SessionInfo string"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getDateFormat()Ljava/text/SimpleDateFormat;
    .locals 2

    .line 119
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM/dd/yyyy-HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 120
    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    return-object v0
.end method


# virtual methods
.method public setContents(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 49
    iput-object p2, p0, Lcom/mojang/minecraftpe/SessionInfo;->sessionId:Ljava/lang/String;

    .line 50
    iput-object p3, p0, Lcom/mojang/minecraftpe/SessionInfo;->buildId:Ljava/lang/String;

    .line 51
    iput-object p4, p0, Lcom/mojang/minecraftpe/SessionInfo;->commitId:Ljava/lang/String;

    .line 52
    iput-object p5, p0, Lcom/mojang/minecraftpe/SessionInfo;->branchId:Ljava/lang/String;

    .line 53
    iput-object p6, p0, Lcom/mojang/minecraftpe/SessionInfo;->flavor:Ljava/lang/String;

    .line 54
    invoke-virtual {p0, p1}, Lcom/mojang/minecraftpe/SessionInfo;->updateJavaConstants(Landroid/content/Context;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/mojang/minecraftpe/SessionInfo;->sessionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/mojang/minecraftpe/SessionInfo;->buildId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/mojang/minecraftpe/SessionInfo;->commitId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/mojang/minecraftpe/SessionInfo;->branchId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/mojang/minecraftpe/SessionInfo;->flavor:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/mojang/minecraftpe/SessionInfo;->gameVersionName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/mojang/minecraftpe/SessionInfo;->appVersion:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 113
    invoke-static {}, Lcom/mojang/minecraftpe/SessionInfo;->getDateFormat()Ljava/text/SimpleDateFormat;

    move-result-object v1

    iget-object v2, p0, Lcom/mojang/minecraftpe/SessionInfo;->recordDate:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateJavaConstants(Landroid/content/Context;)V
    .locals 2

    .line 58
    sget v0, Lcom/mojang/minecraftpe/AppConstants;->APP_VERSION:I

    iput v0, p0, Lcom/mojang/minecraftpe/SessionInfo;->appVersion:I

    .line 61
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object p1, p0, Lcom/mojang/minecraftpe/SessionInfo;->gameVersionName:Ljava/lang/String;

    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 64
    :catch_0
    const-string p1, "Not found"

    iput-object p1, p0, Lcom/mojang/minecraftpe/SessionInfo;->gameVersionName:Ljava/lang/String;

    :goto_0
    return-void
.end method
