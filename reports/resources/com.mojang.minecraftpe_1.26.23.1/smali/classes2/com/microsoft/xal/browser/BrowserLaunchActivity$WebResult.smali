.class public final enum Lcom/microsoft/xal/browser/BrowserLaunchActivity$WebResult;
.super Ljava/lang/Enum;
.source "BrowserLaunchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xal/browser/BrowserLaunchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "WebResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/xal/browser/BrowserLaunchActivity$WebResult;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/microsoft/xal/browser/BrowserLaunchActivity$WebResult;

.field public static final enum CANCEL:Lcom/microsoft/xal/browser/BrowserLaunchActivity$WebResult;

.field public static final enum FAIL:Lcom/microsoft/xal/browser/BrowserLaunchActivity$WebResult;

.field public static final enum SUCCESS:Lcom/microsoft/xal/browser/BrowserLaunchActivity$WebResult;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 19
    new-instance v0, Lcom/microsoft/xal/browser/BrowserLaunchActivity$WebResult;

    const-string v1, "SUCCESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xal/browser/BrowserLaunchActivity$WebResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xal/browser/BrowserLaunchActivity$WebResult;->SUCCESS:Lcom/microsoft/xal/browser/BrowserLaunchActivity$WebResult;

    .line 20
    new-instance v1, Lcom/microsoft/xal/browser/BrowserLaunchActivity$WebResult;

    const-string v2, "FAIL"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/microsoft/xal/browser/BrowserLaunchActivity$WebResult;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/microsoft/xal/browser/BrowserLaunchActivity$WebResult;->FAIL:Lcom/microsoft/xal/browser/BrowserLaunchActivity$WebResult;

    .line 21
    new-instance v2, Lcom/microsoft/xal/browser/BrowserLaunchActivity$WebResult;

    const-string v3, "CANCEL"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/microsoft/xal/browser/BrowserLaunchActivity$WebResult;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/microsoft/xal/browser/BrowserLaunchActivity$WebResult;->CANCEL:Lcom/microsoft/xal/browser/BrowserLaunchActivity$WebResult;

    .line 17
    filled-new-array {v0, v1, v2}, [Lcom/microsoft/xal/browser/BrowserLaunchActivity$WebResult;

    move-result-object v0

    sput-object v0, Lcom/microsoft/xal/browser/BrowserLaunchActivity$WebResult;->$VALUES:[Lcom/microsoft/xal/browser/BrowserLaunchActivity$WebResult;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/xal/browser/BrowserLaunchActivity$WebResult;
    .locals 1

    .line 17
    const-class v0, Lcom/microsoft/xal/browser/BrowserLaunchActivity$WebResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/xal/browser/BrowserLaunchActivity$WebResult;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/xal/browser/BrowserLaunchActivity$WebResult;
    .locals 1

    .line 17
    sget-object v0, Lcom/microsoft/xal/browser/BrowserLaunchActivity$WebResult;->$VALUES:[Lcom/microsoft/xal/browser/BrowserLaunchActivity$WebResult;

    invoke-virtual {v0}, [Lcom/microsoft/xal/browser/BrowserLaunchActivity$WebResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/xal/browser/BrowserLaunchActivity$WebResult;

    return-object v0
.end method
