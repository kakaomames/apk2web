.class Lcom/googleplay/licensing/LicenseChecker$ResultListener;
.super Lcom/googleplay/licensing/ILicenseResultListener$Stub;
.source "LicenseChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googleplay/licensing/LicenseChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResultListener"
.end annotation


# static fields
.field private static final ERROR_CONTACTING_SERVER:I = 0x101

.field private static final ERROR_INVALID_PACKAGE_NAME:I = 0x102

.field private static final ERROR_NON_MATCHING_UID:I = 0x103


# instance fields
.field private mOnTimeout:Ljava/lang/Runnable;

.field private final mValidator:Lcom/googleplay/licensing/LicenseValidator;

.field final synthetic this$0:Lcom/googleplay/licensing/LicenseChecker;


# direct methods
.method static bridge synthetic -$$Nest$fgetmValidator(Lcom/googleplay/licensing/LicenseChecker$ResultListener;)Lcom/googleplay/licensing/LicenseValidator;
    .locals 0

    iget-object p0, p0, Lcom/googleplay/licensing/LicenseChecker$ResultListener;->mValidator:Lcom/googleplay/licensing/LicenseValidator;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mclearTimeout(Lcom/googleplay/licensing/LicenseChecker$ResultListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/googleplay/licensing/LicenseChecker$ResultListener;->clearTimeout()V

    return-void
.end method

.method public constructor <init>(Lcom/googleplay/licensing/LicenseChecker;Lcom/googleplay/licensing/LicenseValidator;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lcom/googleplay/licensing/LicenseChecker$ResultListener;->this$0:Lcom/googleplay/licensing/LicenseChecker;

    invoke-direct {p0}, Lcom/googleplay/licensing/ILicenseResultListener$Stub;-><init>()V

    .line 204
    iput-object p2, p0, Lcom/googleplay/licensing/LicenseChecker$ResultListener;->mValidator:Lcom/googleplay/licensing/LicenseValidator;

    .line 205
    new-instance p2, Lcom/googleplay/licensing/LicenseChecker$ResultListener$1;

    invoke-direct {p2, p0, p1}, Lcom/googleplay/licensing/LicenseChecker$ResultListener$1;-><init>(Lcom/googleplay/licensing/LicenseChecker$ResultListener;Lcom/googleplay/licensing/LicenseChecker;)V

    iput-object p2, p0, Lcom/googleplay/licensing/LicenseChecker$ResultListener;->mOnTimeout:Ljava/lang/Runnable;

    .line 212
    invoke-direct {p0}, Lcom/googleplay/licensing/LicenseChecker$ResultListener;->startTimeout()V

    return-void
.end method

.method private clearTimeout()V
    .locals 2

    .line 272
    const-string v0, "LicenseChecker"

    const-string v1, "Clearing timeout."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    iget-object v0, p0, Lcom/googleplay/licensing/LicenseChecker$ResultListener;->this$0:Lcom/googleplay/licensing/LicenseChecker;

    invoke-static {v0}, Lcom/googleplay/licensing/LicenseChecker;->-$$Nest$fgetmHandler(Lcom/googleplay/licensing/LicenseChecker;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/googleplay/licensing/LicenseChecker$ResultListener;->mOnTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private startTimeout()V
    .locals 4

    .line 267
    const-string v0, "LicenseChecker"

    const-string v1, "Start monitoring timeout."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    iget-object v0, p0, Lcom/googleplay/licensing/LicenseChecker$ResultListener;->this$0:Lcom/googleplay/licensing/LicenseChecker;

    invoke-static {v0}, Lcom/googleplay/licensing/LicenseChecker;->-$$Nest$fgetmHandler(Lcom/googleplay/licensing/LicenseChecker;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/googleplay/licensing/LicenseChecker$ResultListener;->mOnTimeout:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public verifyLicense(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 223
    iget-object v0, p0, Lcom/googleplay/licensing/LicenseChecker$ResultListener;->this$0:Lcom/googleplay/licensing/LicenseChecker;

    invoke-static {v0}, Lcom/googleplay/licensing/LicenseChecker;->-$$Nest$fgetmHandler(Lcom/googleplay/licensing/LicenseChecker;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/googleplay/licensing/LicenseChecker$ResultListener$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/googleplay/licensing/LicenseChecker$ResultListener$2;-><init>(Lcom/googleplay/licensing/LicenseChecker$ResultListener;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
