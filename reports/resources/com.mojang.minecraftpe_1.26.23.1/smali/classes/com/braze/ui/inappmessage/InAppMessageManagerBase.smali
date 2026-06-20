.class public Lcom/braze/ui/inappmessage/InAppMessageManagerBase;
.super Ljava/lang/Object;
.source "InAppMessageManagerBase.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/braze/ui/inappmessage/InAppMessageManagerBase$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000`\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0018\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u000b\u0008\u0016\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010A\u001a\u0004\u0018\u00010\u00162\u0006\u0010B\u001a\u00020CH\u0016J\u0012\u0010D\u001a\u0004\u0018\u00010\u00162\u0006\u0010B\u001a\u00020CH\u0016J\u0010\u0010E\u001a\u00020F2\u0006\u0010G\u001a\u00020\u001dH\u0016J\u0010\u0010H\u001a\u00020F2\u0006\u0010I\u001a\u00020\u001dH\u0016J\u0012\u0010J\u001a\u00020F2\u0008\u0010.\u001a\u0004\u0018\u00010\u000cH\u0016J\u0012\u0010K\u001a\u00020F2\u0008\u0010$\u001a\u0004\u0018\u00010\u0011H\u0016J\u0012\u0010L\u001a\u00020F2\u0008\u0010\'\u001a\u0004\u0018\u00010\u0013H\u0016J\u0012\u0010M\u001a\u00020F2\u0008\u0010.\u001a\u0004\u0018\u00010\u000cH\u0016J\u0012\u0010N\u001a\u00020F2\u0008\u0010O\u001a\u0004\u0018\u00010\u0016H\u0016J\u0012\u0010P\u001a\u00020F2\u0008\u00102\u001a\u0004\u0018\u00010\u0018H\u0016R\u0016\u0010\u0003\u001a\u0004\u0018\u00010\u00048VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0006R\u0016\u0010\u0007\u001a\u0004\u0018\u00010\u00088VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\nR\u0014\u0010\u000b\u001a\u00020\u000c8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000eR\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0018X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u0018X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u001c\u001a\u00020\u001d8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001e\u0010\u001fR\u000e\u0010 \u001a\u00020\u001dX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010!\u001a\u00020\u001d8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\"\u0010\u001fR\u000e\u0010#\u001a\u00020\u001dX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010$\u001a\u00020\u00118VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008%\u0010&R\u0014\u0010\'\u001a\u00020\u00138VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008(\u0010)R\u000e\u0010*\u001a\u00020\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010+\u001a\u00020\u0016X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010,\u001a\u00020\u0016X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010-\u001a\u00020\u0016X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010.\u001a\u00020\u000c8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008/\u0010\u000eR\u000e\u00100\u001a\u00020\u0016X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u00101\u001a\u00020\u0016X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u00102\u001a\u00020\u00188VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u00083\u00104R\u000e\u00105\u001a\u000206X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u00107\u001a\u00020\u001d8WX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u00087\u0010\u001fR\u001a\u00108\u001a\u0004\u0018\u00010\u00048\u0004@\u0004X\u0085\u000e\u00a2\u0006\u0008\n\u0000\u0012\u0004\u00089\u0010\u0002R\u001a\u0010:\u001a\u0004\u0018\u00010\u00088\u0004@\u0004X\u0085\u000e\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008;\u0010\u0002R$\u0010=\u001a\u00020\u001d2\u0006\u0010<\u001a\u00020\u001d@VX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008>\u0010\u001f\"\u0004\u0008?\u0010@\u00a8\u0006Q"
    }
    d2 = {
        "Lcom/braze/ui/inappmessage/InAppMessageManagerBase;",
        "",
        "()V",
        "activity",
        "Landroid/app/Activity;",
        "getActivity",
        "()Landroid/app/Activity;",
        "applicationContext",
        "Landroid/content/Context;",
        "getApplicationContext",
        "()Landroid/content/Context;",
        "controlInAppMessageManagerListener",
        "Lcom/braze/ui/inappmessage/listeners/IInAppMessageManagerListener;",
        "getControlInAppMessageManagerListener",
        "()Lcom/braze/ui/inappmessage/listeners/IInAppMessageManagerListener;",
        "customControlInAppMessageManagerListener",
        "customHtmlInAppMessageActionListener",
        "Lcom/braze/ui/inappmessage/listeners/IHtmlInAppMessageActionListener;",
        "customInAppMessageAnimationFactory",
        "Lcom/braze/ui/inappmessage/IInAppMessageAnimationFactory;",
        "customInAppMessageManagerListener",
        "customInAppMessageViewFactory",
        "Lcom/braze/ui/inappmessage/IInAppMessageViewFactory;",
        "customInAppMessageViewWrapperFactory",
        "Lcom/braze/ui/inappmessage/IInAppMessageViewWrapperFactory;",
        "defaultHtmlInAppMessageActionListener",
        "defaultInAppMessageManagerListener",
        "defaultInAppMessageViewWrapperFactory",
        "doesBackButtonDismissInAppMessageView",
        "",
        "getDoesBackButtonDismissInAppMessageView",
        "()Z",
        "doesBackButtonDismissInAppMessageViewField",
        "doesClickOutsideModalViewDismissInAppMessageView",
        "getDoesClickOutsideModalViewDismissInAppMessageView",
        "doesClickOutsideModalViewDismissInAppMessageViewField",
        "htmlInAppMessageActionListener",
        "getHtmlInAppMessageActionListener",
        "()Lcom/braze/ui/inappmessage/listeners/IHtmlInAppMessageActionListener;",
        "inAppMessageAnimationFactory",
        "getInAppMessageAnimationFactory",
        "()Lcom/braze/ui/inappmessage/IInAppMessageAnimationFactory;",
        "inAppMessageAnimationFactoryField",
        "inAppMessageFullViewFactory",
        "inAppMessageHtmlFullViewFactory",
        "inAppMessageHtmlViewFactory",
        "inAppMessageManagerListener",
        "getInAppMessageManagerListener",
        "inAppMessageModalViewFactory",
        "inAppMessageSlideupViewFactory",
        "inAppMessageViewWrapperFactory",
        "getInAppMessageViewWrapperFactory",
        "()Lcom/braze/ui/inappmessage/IInAppMessageViewWrapperFactory;",
        "inAppMessageWebViewClientListener",
        "Lcom/braze/ui/inappmessage/listeners/IInAppMessageWebViewClientListener;",
        "isActivitySet",
        "mActivity",
        "getMActivity$annotations",
        "mApplicationContext",
        "getMApplicationContext$annotations",
        "shouldSkip",
        "shouldNextUnregisterBeSkipped",
        "getShouldNextUnregisterBeSkipped",
        "setShouldNextUnregisterBeSkipped",
        "(Z)V",
        "getDefaultInAppMessageViewFactory",
        "inAppMessage",
        "Lcom/braze/models/inappmessage/IInAppMessage;",
        "getInAppMessageViewFactory",
        "setBackButtonDismissesInAppMessageView",
        "",
        "backButtonDismissesInAppMessageView",
        "setClickOutsideModalViewDismissInAppMessageView",
        "doesDismiss",
        "setCustomControlInAppMessageManagerListener",
        "setCustomHtmlInAppMessageActionListener",
        "setCustomInAppMessageAnimationFactory",
        "setCustomInAppMessageManagerListener",
        "setCustomInAppMessageViewFactory",
        "inAppMessageViewFactory",
        "setCustomInAppMessageViewWrapperFactory",
        "android-sdk-ui_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private customControlInAppMessageManagerListener:Lcom/braze/ui/inappmessage/listeners/IInAppMessageManagerListener;

.field private customHtmlInAppMessageActionListener:Lcom/braze/ui/inappmessage/listeners/IHtmlInAppMessageActionListener;

.field private customInAppMessageAnimationFactory:Lcom/braze/ui/inappmessage/IInAppMessageAnimationFactory;

.field private customInAppMessageManagerListener:Lcom/braze/ui/inappmessage/listeners/IInAppMessageManagerListener;

.field private customInAppMessageViewFactory:Lcom/braze/ui/inappmessage/IInAppMessageViewFactory;

.field private customInAppMessageViewWrapperFactory:Lcom/braze/ui/inappmessage/IInAppMessageViewWrapperFactory;

.field private final defaultHtmlInAppMessageActionListener:Lcom/braze/ui/inappmessage/listeners/IHtmlInAppMessageActionListener;

.field private final defaultInAppMessageManagerListener:Lcom/braze/ui/inappmessage/listeners/IInAppMessageManagerListener;

.field private final defaultInAppMessageViewWrapperFactory:Lcom/braze/ui/inappmessage/IInAppMessageViewWrapperFactory;

.field private doesBackButtonDismissInAppMessageViewField:Z

.field private doesClickOutsideModalViewDismissInAppMessageViewField:Z

.field private final inAppMessageAnimationFactoryField:Lcom/braze/ui/inappmessage/IInAppMessageAnimationFactory;

.field private final inAppMessageFullViewFactory:Lcom/braze/ui/inappmessage/IInAppMessageViewFactory;

.field private final inAppMessageHtmlFullViewFactory:Lcom/braze/ui/inappmessage/IInAppMessageViewFactory;

.field private final inAppMessageHtmlViewFactory:Lcom/braze/ui/inappmessage/IInAppMessageViewFactory;

.field private final inAppMessageModalViewFactory:Lcom/braze/ui/inappmessage/IInAppMessageViewFactory;

.field private final inAppMessageSlideupViewFactory:Lcom/braze/ui/inappmessage/IInAppMessageViewFactory;

.field private final inAppMessageWebViewClientListener:Lcom/braze/ui/inappmessage/listeners/IInAppMessageWebViewClientListener;

.field protected mActivity:Landroid/app/Activity;

.field protected mApplicationContext:Landroid/content/Context;

.field private shouldNextUnregisterBeSkipped:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 44
    iput-boolean v0, p0, Lcom/braze/ui/inappmessage/InAppMessageManagerBase;->doesBackButtonDismissInAppMessageViewField:Z

    .line 66
    new-instance v0, Lcom/braze/ui/inappmessage/listeners/DefaultInAppMessageWebViewClientListener;

    invoke-direct {v0}, Lcom/braze/ui/inappmessage/listeners/DefaultInAppMessageWebViewClientListener;-><init>()V

    check-cast v0, Lcom/braze/ui/inappmessage/listeners/IInAppMessageWebViewClientListener;

    iput-object v0, p0, Lcom/braze/ui/inappmessage/InAppMessageManagerBase;->inAppMessageWebViewClientListener:Lcom/braze/ui/inappmessage/listeners/IInAppMessageWebViewClientListener;

    .line 70
    new-instance v1, Lcom/braze/ui/inappmessage/listeners/DefaultHtmlInAppMessageActionListener;

    invoke-direct {v1}, Lcom/braze/ui/inappmessage/listeners/DefaultHtmlInAppMessageActionListener;-><init>()V

    check-cast v1, Lcom/braze/ui/inappmessage/listeners/IHtmlInAppMessageActionListener;

    iput-object v1, p0, Lcom/braze/ui/inappmessage/InAppMessageManagerBase;->defaultHtmlInAppMessageActionListener:Lcom/braze/ui/inappmessage/listeners/IHtmlInAppMessageActionListener;

    .line 74
    new-instance v1, Lcom/braze/ui/inappmessage/factories/DefaultInAppMessageSlideupViewFactory;

    invoke-direct {v1}, Lcom/braze/ui/inappmessage/factories/DefaultInAppMessageSlideupViewFactory;-><init>()V

    check-cast v1, Lcom/braze/ui/inappmessage/IInAppMessageViewFactory;

    iput-object v1, p0, Lcom/braze/ui/inappmessage/InAppMessageManagerBase;->inAppMessageSlideupViewFactory:Lcom/braze/ui/inappmessage/IInAppMessageViewFactory;

    .line 76
    new-instance v1, Lcom/braze/ui/inappmessage/factories/DefaultInAppMessageModalViewFactory;

    invoke-direct {v1}, Lcom/braze/ui/inappmessage/factories/DefaultInAppMessageModalViewFactory;-><init>()V

    check-cast v1, Lcom/braze/ui/inappmessage/IInAppMessageViewFactory;

    iput-object v1, p0, Lcom/braze/ui/inappmessage/InAppMessageManagerBase;->inAppMessageModalViewFactory:Lcom/braze/ui/inappmessage/IInAppMessageViewFactory;

    .line 78
    new-instance v1, Lcom/braze/ui/inappmessage/factories/DefaultInAppMessageFullViewFactory;

    invoke-direct {v1}, Lcom/braze/ui/inappmessage/factories/DefaultInAppMessageFullViewFactory;-><init>()V

    check-cast v1, Lcom/braze/ui/inappmessage/IInAppMessageViewFactory;

    iput-object v1, p0, Lcom/braze/ui/inappmessage/InAppMessageManagerBase;->inAppMessageFullViewFactory:Lcom/braze/ui/inappmessage/IInAppMessageViewFactory;

    .line 80
    new-instance v1, Lcom/braze/ui/inappmessage/factories/DefaultInAppMessageHtmlFullViewFactory;

    invoke-direct {v1, v0}, Lcom/braze/ui/inappmessage/factories/DefaultInAppMessageHtmlFullViewFactory;-><init>(Lcom/braze/ui/inappmessage/listeners/IInAppMessageWebViewClientListener;)V

    check-cast v1, Lcom/braze/ui/inappmessage/IInAppMessageViewFactory;

    iput-object v1, p0, Lcom/braze/ui/inappmessage/InAppMessageManagerBase;->inAppMessageHtmlFullViewFactory:Lcom/braze/ui/inappmessage/IInAppMessageViewFactory;

    .line 82
    new-instance v1, Lcom/braze/ui/inappmessage/factories/DefaultInAppMessageHtmlViewFactory;

    invoke-direct {v1, v0}, Lcom/braze/ui/inappmessage/factories/DefaultInAppMessageHtmlViewFactory;-><init>(Lcom/braze/ui/inappmessage/listeners/IInAppMessageWebViewClientListener;)V

    check-cast v1, Lcom/braze/ui/inappmessage/IInAppMessageViewFactory;

    iput-object v1, p0, Lcom/braze/ui/inappmessage/InAppMessageManagerBase;->inAppMessageHtmlViewFactory:Lcom/braze/ui/inappmessage/IInAppMessageViewFactory;

    .line 86
    new-instance v0, Lcom/braze/ui/inappmessage/factories/DefaultInAppMessageAnimationFactory;

    invoke-direct {v0}, Lcom/braze/ui/inappmessage/factories/DefaultInAppMessageAnimationFactory;-><init>()V

    check-cast v0, Lcom/braze/ui/inappmessage/IInAppMessageAnimationFactory;

    iput-object v0, p0, Lcom/braze/ui/inappmessage/InAppMessageManagerBase;->inAppMessageAnimationFactoryField:Lcom/braze/ui/inappmessage/IInAppMessageAnimationFactory;

    .line 90
    new-instance v0, Lcom/braze/ui/inappmessage/listeners/DefaultInAppMessageManagerListener;

    invoke-direct {v0}, Lcom/braze/ui/inappmessage/listeners/DefaultInAppMessageManagerListener;-><init>()V

    check-cast v0, Lcom/braze/ui/inappmessage/listeners/IInAppMessageManagerListener;

    iput-object v0, p0, Lcom/braze/ui/inappmessage/InAppMessageManagerBase;->defaultInAppMessageManagerListener:Lcom/braze/ui/inappmessage/listeners/IInAppMessageManagerListener;

    .line 94
    new-instance v0, Lcom/braze/ui/inappmessage/factories/DefaultInAppMessageViewWrapperFactory;

    invoke-direct {v0}, Lcom/braze/ui/inappmessage/factories/DefaultInAppMessageViewWrapperFactory;-><init>()V

    check-cast v0, Lcom/braze/ui/inappmessage/IInAppMessageViewWrapperFactory;

    iput-object v0, p0, Lcom/braze/ui/inappmessage/InAppMessageManagerBase;->defaultInAppMessageViewWrapperFactory:Lcom/braze/ui/inappmessage/IInAppMessageViewWrapperFactory;

    return-void
.end method

.method protected static synthetic getMActivity$annotations()V
    .locals 0

    return-void
.end method

.method protected static synthetic getMApplicationContext$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public getActivity()Landroid/app/Activity;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/braze/ui/inappmessage/InAppMessageManagerBase;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public getApplicationContext()Landroid/content/Context;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/braze/ui/inappmessage/InAppMessageManagerBase;->mApplicationContext:Landroid/content/Context;

    return-object v0
.end method

.method public getControlInAppMessageManagerListener()Lcom/braze/ui/inappmessage/listeners/IInAppMessageManagerListener;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/braze/ui/inappmessage/InAppMessageManagerBase;->customControlInAppMessageManagerListener:Lcom/braze/ui/inappmessage/listeners/IInAppMessageManagerListener;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/braze/ui/inappmessage/InAppMessageManagerBase;->defaultInAppMessageManagerListener:Lcom/braze/ui/inappmessage/listeners/IInAppMessageManagerListener;

    :cond_0
    return-object v0
.end method

.method public getDefaultInAppMessageViewFactory(Lcom/braze/models/inappmessage/IInAppMessage;)Lcom/braze/ui/inappmessage/IInAppMessageViewFactory;
    .locals 9

    const-string v0, "inAppMessage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    invoke-interface {p1}, Lcom/braze/models/inappmessage/IInAppMessage;->getMessageType()Lcom/braze/enums/inappmessage/MessageType;

    move-result-object v0

    sget-object v1, Lcom/braze/ui/inappmessage/InAppMessageManagerBase$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/braze/enums/inappmessage/MessageType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 146
    sget-object v2, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v4, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v0, Lcom/braze/ui/inappmessage/InAppMessageManagerBase$getDefaultInAppMessageViewFactory$1;

    invoke-direct {v0, p1}, Lcom/braze/ui/inappmessage/InAppMessageManagerBase$getDefaultInAppMessageViewFactory$1;-><init>(Lcom/braze/models/inappmessage/IInAppMessage;)V

    move-object v6, v0

    check-cast v6, Lkotlin/jvm/functions/Function0;

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v5, 0x0

    move-object v3, p0

    invoke-static/range {v2 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    const/4 p1, 0x0

    .line 149
    move-object v0, p1

    check-cast v0, Lcom/braze/ui/inappmessage/IInAppMessageViewFactory;

    goto :goto_0

    .line 144
    :cond_0
    iget-object p1, p0, Lcom/braze/ui/inappmessage/InAppMessageManagerBase;->inAppMessageHtmlViewFactory:Lcom/braze/ui/inappmessage/IInAppMessageViewFactory;

    goto :goto_0

    .line 143
    :cond_1
    iget-object p1, p0, Lcom/braze/ui/inappmessage/InAppMessageManagerBase;->inAppMessageHtmlFullViewFactory:Lcom/braze/ui/inappmessage/IInAppMessageViewFactory;

    goto :goto_0

    .line 142
    :cond_2
    iget-object p1, p0, Lcom/braze/ui/inappmessage/InAppMessageManagerBase;->inAppMessageFullViewFactory:Lcom/braze/ui/inappmessage/IInAppMessageViewFactory;

    goto :goto_0

    .line 141
    :cond_3
    iget-object p1, p0, Lcom/braze/ui/inappmessage/InAppMessageManagerBase;->inAppMessageModalViewFactory:Lcom/braze/ui/inappmessage/IInAppMessageViewFactory;

    goto :goto_0

    .line 140
    :cond_4
    iget-object p1, p0, Lcom/braze/ui/inappmessage/InAppMessageManagerBase;->inAppMessageSlideupViewFactory:Lcom/braze/ui/inappmessage/IInAppMessageViewFactory;

    :goto_0
    return-object p1
.end method

.method public getDoesBackButtonDismissInAppMessageView()Z
    .locals 1

    .line 42
    iget-boolean v0, p0, Lcom/braze/ui/inappmessage/InAppMessageManagerBase;->doesBackButtonDismissInAppMessageViewField:Z

    return v0
.end method

.method public getDoesClickOutsideModalViewDismissInAppMessageView()Z
    .locals 1

    .line 27
    iget-boolean v0, p0, Lcom/braze/ui/inappmessage/InAppMessageManagerBase;->doesClickOutsideModalViewDismissInAppMessageViewField:Z

    return v0
.end method

.method public getHtmlInAppMessageActionListener()Lcom/braze/ui/inappmessage/listeners/IHtmlInAppMessageActionListener;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/braze/ui/inappmessage/InAppMessageManagerBase;->customHtmlInAppMessageActionListener:Lcom/braze/ui/inappmessage/listeners/IHtmlInAppMessageActionListener;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/braze/ui/inappmessage/InAppMessageManagerBase;->defaultHtmlInAppMessageActionListener:Lcom/braze/ui/inappmessage/listeners/IHtmlInAppMessageActionListener;

    :cond_0
    return-object v0
.end method

.method public getInAppMessageAnimationFactory()Lcom/braze/ui/inappmessage/IInAppMessageAnimationFactory;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/braze/ui/inappmessage/InAppMessageManagerBase;->customInAppMessageAnimationFactory:Lcom/braze/ui/inappmessage/IInAppMessageAnimationFactory;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/braze/ui/inappmessage/InAppMessageManagerBase;->inAppMessageAnimationFactoryField:Lcom/braze/ui/inappmessage/IInAppMessageAnimationFactory;

    :cond_0
    return-object v0
.end method

.method public getInAppMessageManagerListener()Lcom/braze/ui/inappmessage/listeners/IInAppMessageManagerListener;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/braze/ui/inappmessage/InAppMessageManagerBase;->customInAppMessageManagerListener:Lcom/braze/ui/inappmessage/listeners/IInAppMessageManagerListener;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/braze/ui/inappmessage/InAppMessageManagerBase;->defaultInAppMessageManagerListener:Lcom/braze/ui/inappmessage/listeners/IInAppMessageManagerListener;

    :cond_0
    return-object v0
.end method

.method public getInAppMessageViewFactory(Lcom/braze/models/inappmessage/IInAppMessage;)Lcom/braze/ui/inappmessage/IInAppMessageViewFactory;
    .locals 1

    const-string v0, "inAppMessage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/braze/ui/inappmessage/InAppMessageManagerBase;->customInAppMessageViewFactory:Lcom/braze/ui/inappmessage/IInAppMessageViewFactory;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/braze/ui/inappmessage/InAppMessageManagerBase;->getDefaultInAppMessageViewFactory(Lcom/braze/models/inappmessage/IInAppMessage;)Lcom/braze/ui/inappmessage/IInAppMessageViewFactory;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getInAppMessageViewWrapperFactory()Lcom/braze/ui/inappmessage/IInAppMessageViewWrapperFactory;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/braze/ui/inappmessage/InAppMessageManagerBase;->customInAppMessageViewWrapperFactory:Lcom/braze/ui/inappmessage/IInAppMessageViewWrapperFactory;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/braze/ui/inappmessage/InAppMessageManagerBase;->defaultInAppMessageViewWrapperFactory:Lcom/braze/ui/inappmessage/IInAppMessageViewWrapperFactory;

    :cond_0
    return-object v0
.end method

.method public getShouldNextUnregisterBeSkipped()Z
    .locals 1

    .line 35
    iget-boolean v0, p0, Lcom/braze/ui/inappmessage/InAppMessageManagerBase;->shouldNextUnregisterBeSkipped:Z

    return v0
.end method

.method public isActivitySet()Z
    .locals 1

    .line 130
    invoke-virtual {p0}, Lcom/braze/ui/inappmessage/InAppMessageManagerBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setBackButtonDismissesInAppMessageView(Z)V
    .locals 7

    .line 163
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    new-instance v1, Lcom/braze/ui/inappmessage/InAppMessageManagerBase$setBackButtonDismissesInAppMessageView$1;

    invoke-direct {v1, p1}, Lcom/braze/ui/inappmessage/InAppMessageManagerBase$setBackButtonDismissesInAppMessageView$1;-><init>(Z)V

    move-object v4, v1

    check-cast v4, Lkotlin/jvm/functions/Function0;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v6}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 164
    iput-boolean p1, p0, Lcom/braze/ui/inappmessage/InAppMessageManagerBase;->doesBackButtonDismissInAppMessageViewField:Z

    return-void
.end method

.method public setClickOutsideModalViewDismissInAppMessageView(Z)V
    .locals 7

    .line 172
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    new-instance v1, Lcom/braze/ui/inappmessage/InAppMessageManagerBase$setClickOutsideModalViewDismissInAppMessageView$1;

    invoke-direct {v1, p1}, Lcom/braze/ui/inappmessage/InAppMessageManagerBase$setClickOutsideModalViewDismissInAppMessageView$1;-><init>(Z)V

    move-object v4, v1

    check-cast v4, Lkotlin/jvm/functions/Function0;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v6}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 173
    iput-boolean p1, p0, Lcom/braze/ui/inappmessage/InAppMessageManagerBase;->doesClickOutsideModalViewDismissInAppMessageViewField:Z

    return-void
.end method

.method public setCustomControlInAppMessageManagerListener(Lcom/braze/ui/inappmessage/listeners/IInAppMessageManagerListener;)V
    .locals 7

    .line 199
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v1, Lcom/braze/ui/inappmessage/InAppMessageManagerBase$setCustomControlInAppMessageManagerListener$1;->INSTANCE:Lcom/braze/ui/inappmessage/InAppMessageManagerBase$setCustomControlInAppMessageManagerListener$1;

    move-object v4, v1

    check-cast v4, Lkotlin/jvm/functions/Function0;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v6}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 202
    iput-object p1, p0, Lcom/braze/ui/inappmessage/InAppMessageManagerBase;->customControlInAppMessageManagerListener:Lcom/braze/ui/inappmessage/listeners/IInAppMessageManagerListener;

    return-void
.end method

.method public setCustomHtmlInAppMessageActionListener(Lcom/braze/ui/inappmessage/listeners/IHtmlInAppMessageActionListener;)V
    .locals 7

    .line 212
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v1, Lcom/braze/ui/inappmessage/InAppMessageManagerBase$setCustomHtmlInAppMessageActionListener$1;->INSTANCE:Lcom/braze/ui/inappmessage/InAppMessageManagerBase$setCustomHtmlInAppMessageActionListener$1;

    move-object v4, v1

    check-cast v4, Lkotlin/jvm/functions/Function0;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v6}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 213
    iput-object p1, p0, Lcom/braze/ui/inappmessage/InAppMessageManagerBase;->customHtmlInAppMessageActionListener:Lcom/braze/ui/inappmessage/listeners/IHtmlInAppMessageActionListener;

    return-void
.end method

.method public setCustomInAppMessageAnimationFactory(Lcom/braze/ui/inappmessage/IInAppMessageAnimationFactory;)V
    .locals 7

    .line 224
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v1, Lcom/braze/ui/inappmessage/InAppMessageManagerBase$setCustomInAppMessageAnimationFactory$1;->INSTANCE:Lcom/braze/ui/inappmessage/InAppMessageManagerBase$setCustomInAppMessageAnimationFactory$1;

    move-object v4, v1

    check-cast v4, Lkotlin/jvm/functions/Function0;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v6}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 225
    iput-object p1, p0, Lcom/braze/ui/inappmessage/InAppMessageManagerBase;->customInAppMessageAnimationFactory:Lcom/braze/ui/inappmessage/IInAppMessageAnimationFactory;

    return-void
.end method

.method public setCustomInAppMessageManagerListener(Lcom/braze/ui/inappmessage/listeners/IInAppMessageManagerListener;)V
    .locals 7

    .line 187
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v1, Lcom/braze/ui/inappmessage/InAppMessageManagerBase$setCustomInAppMessageManagerListener$1;->INSTANCE:Lcom/braze/ui/inappmessage/InAppMessageManagerBase$setCustomInAppMessageManagerListener$1;

    move-object v4, v1

    check-cast v4, Lkotlin/jvm/functions/Function0;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v6}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 188
    iput-object p1, p0, Lcom/braze/ui/inappmessage/InAppMessageManagerBase;->customInAppMessageManagerListener:Lcom/braze/ui/inappmessage/listeners/IInAppMessageManagerListener;

    return-void
.end method

.method public setCustomInAppMessageViewFactory(Lcom/braze/ui/inappmessage/IInAppMessageViewFactory;)V
    .locals 7

    .line 236
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v1, Lcom/braze/ui/inappmessage/InAppMessageManagerBase$setCustomInAppMessageViewFactory$1;->INSTANCE:Lcom/braze/ui/inappmessage/InAppMessageManagerBase$setCustomInAppMessageViewFactory$1;

    move-object v4, v1

    check-cast v4, Lkotlin/jvm/functions/Function0;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v6}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 237
    iput-object p1, p0, Lcom/braze/ui/inappmessage/InAppMessageManagerBase;->customInAppMessageViewFactory:Lcom/braze/ui/inappmessage/IInAppMessageViewFactory;

    return-void
.end method

.method public setCustomInAppMessageViewWrapperFactory(Lcom/braze/ui/inappmessage/IInAppMessageViewWrapperFactory;)V
    .locals 7

    .line 245
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v1, Lcom/braze/ui/inappmessage/InAppMessageManagerBase$setCustomInAppMessageViewWrapperFactory$1;->INSTANCE:Lcom/braze/ui/inappmessage/InAppMessageManagerBase$setCustomInAppMessageViewWrapperFactory$1;

    move-object v4, v1

    check-cast v4, Lkotlin/jvm/functions/Function0;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v6}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 246
    iput-object p1, p0, Lcom/braze/ui/inappmessage/InAppMessageManagerBase;->customInAppMessageViewWrapperFactory:Lcom/braze/ui/inappmessage/IInAppMessageViewWrapperFactory;

    return-void
.end method

.method public setShouldNextUnregisterBeSkipped(Z)V
    .locals 7

    .line 37
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    new-instance v1, Lcom/braze/ui/inappmessage/InAppMessageManagerBase$shouldNextUnregisterBeSkipped$1;

    invoke-direct {v1, p1}, Lcom/braze/ui/inappmessage/InAppMessageManagerBase$shouldNextUnregisterBeSkipped$1;-><init>(Z)V

    move-object v4, v1

    check-cast v4, Lkotlin/jvm/functions/Function0;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v6}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 38
    iput-boolean p1, p0, Lcom/braze/ui/inappmessage/InAppMessageManagerBase;->shouldNextUnregisterBeSkipped:Z

    return-void
.end method
