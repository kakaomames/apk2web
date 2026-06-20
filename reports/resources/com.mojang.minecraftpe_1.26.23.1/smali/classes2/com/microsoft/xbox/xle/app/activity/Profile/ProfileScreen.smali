.class public Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreen;
.super Lcom/microsoft/xbox/xle/app/activity/ActivityBase;
.source "ProfileScreen.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected getActivityName()Ljava/lang/String;
    .locals 1

    .line 39
    const-string v0, "PeopleHub Info"

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .line 21
    invoke-super {p0}, Lcom/microsoft/xbox/xle/app/activity/ActivityBase;->onCreate()V

    .line 23
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreen;->onCreateContentView()V

    .line 25
    new-instance v0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;

    invoke-direct {v0, p0}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;-><init>(Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;)V

    .line 26
    iput-object v0, p0, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreen;->viewModel:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;

    .line 28
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreen;->getActivityName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->getXuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreenViewModel;->isMeProfile()Z

    move-result v0

    invoke-static {v1, v2, v0}, Lcom/microsoft/xbox/telemetry/helpers/UTCPeopleHub;->trackPeopleHubView(Ljava/lang/CharSequence;Ljava/lang/String;Z)V

    return-void
.end method

.method public onCreateContentView()V
    .locals 1

    .line 33
    sget v0, Lcom/microsoft/xboxtcui/R$layout;->profile_screen:I

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/xle/app/activity/Profile/ProfileScreen;->setContentView(I)V

    return-void
.end method
