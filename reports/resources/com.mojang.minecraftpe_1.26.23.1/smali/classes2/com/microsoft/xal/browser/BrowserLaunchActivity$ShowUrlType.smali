.class public final enum Lcom/microsoft/xal/browser/BrowserLaunchActivity$ShowUrlType;
.super Ljava/lang/Enum;
.source "BrowserLaunchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xal/browser/BrowserLaunchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ShowUrlType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/xal/browser/BrowserLaunchActivity$ShowUrlType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/microsoft/xal/browser/BrowserLaunchActivity$ShowUrlType;

.field public static final enum CookieRemovalSkipIfSharedCredentials:Lcom/microsoft/xal/browser/BrowserLaunchActivity$ShowUrlType;

.field public static final enum CookieRemoval_DEPRECATED:Lcom/microsoft/xal/browser/BrowserLaunchActivity$ShowUrlType;

.field public static final enum NonAuthFlow:Lcom/microsoft/xal/browser/BrowserLaunchActivity$ShowUrlType;

.field public static final enum Normal:Lcom/microsoft/xal/browser/BrowserLaunchActivity$ShowUrlType;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 26
    new-instance v0, Lcom/microsoft/xal/browser/BrowserLaunchActivity$ShowUrlType;

    const-string v1, "Normal"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xal/browser/BrowserLaunchActivity$ShowUrlType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xal/browser/BrowserLaunchActivity$ShowUrlType;->Normal:Lcom/microsoft/xal/browser/BrowserLaunchActivity$ShowUrlType;

    .line 27
    new-instance v1, Lcom/microsoft/xal/browser/BrowserLaunchActivity$ShowUrlType;

    const-string v2, "CookieRemoval_DEPRECATED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/microsoft/xal/browser/BrowserLaunchActivity$ShowUrlType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/microsoft/xal/browser/BrowserLaunchActivity$ShowUrlType;->CookieRemoval_DEPRECATED:Lcom/microsoft/xal/browser/BrowserLaunchActivity$ShowUrlType;

    .line 28
    new-instance v2, Lcom/microsoft/xal/browser/BrowserLaunchActivity$ShowUrlType;

    const-string v3, "CookieRemovalSkipIfSharedCredentials"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/microsoft/xal/browser/BrowserLaunchActivity$ShowUrlType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/microsoft/xal/browser/BrowserLaunchActivity$ShowUrlType;->CookieRemovalSkipIfSharedCredentials:Lcom/microsoft/xal/browser/BrowserLaunchActivity$ShowUrlType;

    .line 29
    new-instance v3, Lcom/microsoft/xal/browser/BrowserLaunchActivity$ShowUrlType;

    const-string v4, "NonAuthFlow"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/microsoft/xal/browser/BrowserLaunchActivity$ShowUrlType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/microsoft/xal/browser/BrowserLaunchActivity$ShowUrlType;->NonAuthFlow:Lcom/microsoft/xal/browser/BrowserLaunchActivity$ShowUrlType;

    .line 24
    filled-new-array {v0, v1, v2, v3}, [Lcom/microsoft/xal/browser/BrowserLaunchActivity$ShowUrlType;

    move-result-object v0

    sput-object v0, Lcom/microsoft/xal/browser/BrowserLaunchActivity$ShowUrlType;->$VALUES:[Lcom/microsoft/xal/browser/BrowserLaunchActivity$ShowUrlType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromInt(I)Lcom/microsoft/xal/browser/BrowserLaunchActivity$ShowUrlType;
    .locals 3

    const-string v0, "Encountered unexpected show type int value: "

    .line 33
    new-instance v1, Lcom/microsoft/xal/logging/XalLogger;

    const-string v2, "BrowserLaunchActivity.ShowUrlType"

    invoke-direct {v1, v2}, Lcom/microsoft/xal/logging/XalLogger;-><init>(Ljava/lang/String;)V

    if-eqz p0, :cond_3

    const/4 v2, 0x1

    if-eq p0, v2, :cond_2

    const/4 v2, 0x2

    if-eq p0, v2, :cond_1

    const/4 v2, 0x3

    if-eq p0, v2, :cond_0

    .line 46
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/microsoft/xal/logging/XalLogger;->Warning(Ljava/lang/String;)V

    .line 48
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Lcom/microsoft/xal/logging/XalLogger;->close()V

    const/4 p0, 0x0

    return-object p0

    .line 43
    :cond_0
    :try_start_1
    sget-object p0, Lcom/microsoft/xal/browser/BrowserLaunchActivity$ShowUrlType;->NonAuthFlow:Lcom/microsoft/xal/browser/BrowserLaunchActivity$ShowUrlType;

    .line 48
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v1}, Lcom/microsoft/xal/logging/XalLogger;->close()V

    return-object p0

    .line 41
    :cond_1
    :try_start_2
    sget-object p0, Lcom/microsoft/xal/browser/BrowserLaunchActivity$ShowUrlType;->CookieRemovalSkipIfSharedCredentials:Lcom/microsoft/xal/browser/BrowserLaunchActivity$ShowUrlType;

    .line 48
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v1}, Lcom/microsoft/xal/logging/XalLogger;->close()V

    return-object p0

    .line 38
    :cond_2
    :try_start_3
    const-string p0, "Encountered unexpected show type, mapped to deprecated case CookieRemoval_DEPRECATED."

    invoke-virtual {v1, p0}, Lcom/microsoft/xal/logging/XalLogger;->Warning(Ljava/lang/String;)V

    .line 39
    sget-object p0, Lcom/microsoft/xal/browser/BrowserLaunchActivity$ShowUrlType;->CookieRemoval_DEPRECATED:Lcom/microsoft/xal/browser/BrowserLaunchActivity$ShowUrlType;

    .line 48
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual {v1}, Lcom/microsoft/xal/logging/XalLogger;->close()V

    return-object p0

    .line 36
    :cond_3
    :try_start_4
    sget-object p0, Lcom/microsoft/xal/browser/BrowserLaunchActivity$ShowUrlType;->Normal:Lcom/microsoft/xal/browser/BrowserLaunchActivity$ShowUrlType;

    .line 48
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-virtual {v1}, Lcom/microsoft/xal/logging/XalLogger;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    .line 33
    :try_start_5
    invoke-virtual {v1}, Lcom/microsoft/xal/logging/XalLogger;->close()V

    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/xal/browser/BrowserLaunchActivity$ShowUrlType;
    .locals 1

    .line 24
    const-class v0, Lcom/microsoft/xal/browser/BrowserLaunchActivity$ShowUrlType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/xal/browser/BrowserLaunchActivity$ShowUrlType;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/xal/browser/BrowserLaunchActivity$ShowUrlType;
    .locals 1

    .line 24
    sget-object v0, Lcom/microsoft/xal/browser/BrowserLaunchActivity$ShowUrlType;->$VALUES:[Lcom/microsoft/xal/browser/BrowserLaunchActivity$ShowUrlType;

    invoke-virtual {v0}, [Lcom/microsoft/xal/browser/BrowserLaunchActivity$ShowUrlType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/xal/browser/BrowserLaunchActivity$ShowUrlType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 54
    sget-object v0, Lcom/microsoft/xal/browser/BrowserLaunchActivity$1;->$SwitchMap$com$microsoft$xal$browser$BrowserLaunchActivity$ShowUrlType:[I

    invoke-virtual {p0}, Lcom/microsoft/xal/browser/BrowserLaunchActivity$ShowUrlType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 66
    const-string v0, "Unknown"

    return-object v0

    .line 63
    :cond_0
    const-string v0, "NonAuthFlow"

    return-object v0

    .line 61
    :cond_1
    const-string v0, "CookieRemovalSkipIfSharedCredentials"

    return-object v0

    .line 59
    :cond_2
    const-string v0, "CookieRemoval_DEPRECATED"

    return-object v0

    .line 57
    :cond_3
    const-string v0, "Normal"

    return-object v0
.end method
