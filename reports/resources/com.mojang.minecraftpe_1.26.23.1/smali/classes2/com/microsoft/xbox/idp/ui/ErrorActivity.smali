.class public Lcom/microsoft/xbox/idp/ui/ErrorActivity;
.super Lcom/microsoft/xbox/idp/compat/BaseActivity;
.source "ErrorActivity.java"

# interfaces
.implements Lcom/microsoft/xbox/idp/ui/HeaderFragment$Callbacks;
.implements Lcom/microsoft/xbox/idp/ui/ErrorButtonsFragment$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;
    }
.end annotation


# static fields
.field public static final ARG_ERROR_TYPE:Ljava/lang/String; = "ARG_ERROR_TYPE"

.field public static final ARG_GAMER_TAG:Ljava/lang/String; = "ARG_GAMER_TAG"

.field public static final RESULT_TRY_AGAIN:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ErrorActivity"


# instance fields
.field private activityResult:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Lcom/microsoft/xbox/idp/compat/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput v0, p0, Lcom/microsoft/xbox/idp/ui/ErrorActivity;->activityResult:I

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 0

    .line 114
    invoke-static {}, Lcom/microsoft/xbox/telemetry/helpers/UTCPageView;->removePage()V

    .line 116
    invoke-super {p0}, Lcom/microsoft/xbox/idp/compat/BaseActivity;->finish()V

    return-void
.end method

.method public onClickCloseHeader()V
    .locals 3

    .line 62
    sget-object v0, Lcom/microsoft/xbox/idp/ui/ErrorActivity;->TAG:Ljava/lang/String;

    const-string v1, "onClickCloseHeader"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-virtual {p0}, Lcom/microsoft/xbox/idp/ui/ErrorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 65
    const-string v1, "ARG_ERROR_TYPE"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;->fromId(I)Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;

    move-result-object v0

    .line 68
    invoke-virtual {p0}, Lcom/microsoft/xbox/idp/ui/ErrorActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/microsoft/xbox/telemetry/helpers/UTCError;->trackClose(Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;Ljava/lang/CharSequence;)V

    .line 69
    invoke-virtual {p0}, Lcom/microsoft/xbox/idp/ui/ErrorActivity;->finish()V

    return-void
.end method

.method public onClickedLeftButton()V
    .locals 3

    .line 74
    sget-object v0, Lcom/microsoft/xbox/idp/ui/ErrorActivity;->TAG:Ljava/lang/String;

    const-string v1, "onClickedLeftButton"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-virtual {p0}, Lcom/microsoft/xbox/idp/ui/ErrorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ARG_ERROR_TYPE"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;->fromId(I)Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;

    move-result-object v0

    .line 76
    sget-object v1, Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;->BAN:Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;

    if-ne v0, v1, :cond_0

    .line 79
    invoke-virtual {p0}, Lcom/microsoft/xbox/idp/ui/ErrorActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/microsoft/xbox/telemetry/helpers/UTCError;->trackGoToEnforcement(Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;Ljava/lang/CharSequence;)V

    .line 82
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    sget-object v2, Lcom/microsoft/xbox/idp/model/Const;->URL_ENFORCEMENT_XBOX_COM:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/idp/ui/ErrorActivity;->startActivity(Landroid/content/Intent;)V

    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 84
    sget-object v1, Lcom/microsoft/xbox/idp/ui/ErrorActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 89
    :cond_0
    invoke-virtual {p0}, Lcom/microsoft/xbox/idp/ui/ErrorActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/microsoft/xbox/telemetry/helpers/UTCError;->trackTryAgain(Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    .line 91
    iput v0, p0, Lcom/microsoft/xbox/idp/ui/ErrorActivity;->activityResult:I

    .line 92
    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/idp/ui/ErrorActivity;->setResult(I)V

    .line 93
    invoke-virtual {p0}, Lcom/microsoft/xbox/idp/ui/ErrorActivity;->finish()V

    :goto_0
    return-void
.end method

.method public onClickedRightButton()V
    .locals 3

    .line 99
    sget-object v0, Lcom/microsoft/xbox/idp/ui/ErrorActivity;->TAG:Ljava/lang/String;

    const-string v1, "onClickedRightButton"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-virtual {p0}, Lcom/microsoft/xbox/idp/ui/ErrorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 102
    const-string v1, "ARG_ERROR_TYPE"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;->fromId(I)Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;

    move-result-object v0

    .line 105
    invoke-virtual {p0}, Lcom/microsoft/xbox/idp/ui/ErrorActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/microsoft/xbox/telemetry/helpers/UTCError;->trackRightButton(Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;Ljava/lang/CharSequence;)V

    .line 107
    invoke-virtual {p0}, Lcom/microsoft/xbox/idp/ui/ErrorActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 35
    sget-object v0, Lcom/microsoft/xbox/idp/ui/ErrorActivity;->TAG:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    invoke-super {p0, p1}, Lcom/microsoft/xbox/idp/compat/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    sget p1, Lcom/microsoft/xboxtcui/R$layout;->xbid_activity_error:I

    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/idp/ui/ErrorActivity;->setContentView(I)V

    .line 39
    invoke-virtual {p0}, Lcom/microsoft/xbox/idp/ui/ErrorActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 41
    sget v1, Lcom/microsoft/xboxtcui/R$id;->xbid_header_fragment:I

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/microsoft/xbox/idp/ui/UiUtil;->ensureHeaderFragment(Lcom/microsoft/xbox/idp/compat/BaseActivity;ILandroid/os/Bundle;)Z

    .line 43
    const-string v1, "ARG_ERROR_TYPE"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, -0x1

    .line 44
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;->fromId(I)Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 46
    invoke-static {p0, p1}, Lcom/microsoft/xbox/idp/ui/UiUtil;->ensureErrorFragment(Lcom/microsoft/xbox/idp/compat/BaseActivity;Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;)Z

    .line 47
    invoke-static {p0, p1}, Lcom/microsoft/xbox/idp/ui/UiUtil;->ensureErrorButtonsFragment(Lcom/microsoft/xbox/idp/compat/BaseActivity;Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;)Z

    .line 50
    invoke-virtual {p0}, Lcom/microsoft/xbox/idp/ui/ErrorActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/microsoft/xbox/telemetry/helpers/UTCError;->trackPageView(Lcom/microsoft/xbox/idp/ui/ErrorActivity$ErrorScreen;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 53
    :cond_0
    const-string p1, "Incorrect error type was provided"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 56
    :cond_1
    const-string p1, "No error type was provided"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
