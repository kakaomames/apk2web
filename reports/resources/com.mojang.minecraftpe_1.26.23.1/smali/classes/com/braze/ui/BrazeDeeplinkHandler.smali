.class public Lcom/braze/ui/BrazeDeeplinkHandler;
.super Ljava/lang/Object;
.source "BrazeDeeplinkHandler.kt"

# interfaces
.implements Lcom/braze/IBrazeDeeplinkHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/braze/ui/BrazeDeeplinkHandler$Companion;,
        Lcom/braze/ui/BrazeDeeplinkHandler$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0016\u0018\u0000 \u001c2\u00020\u0001:\u0001\u001cB\u0005\u00a2\u0006\u0002\u0010\u0002J*\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0016J,\u0010\r\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0016J\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0016J\u0018\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019H\u0016J\u0018\u0010\u001a\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u001b\u001a\u00020\u0004H\u0016\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/braze/ui/BrazeDeeplinkHandler;",
        "Lcom/braze/IBrazeDeeplinkHandler;",
        "()V",
        "createUriActionFromUri",
        "Lcom/braze/ui/actions/UriAction;",
        "uri",
        "Landroid/net/Uri;",
        "extras",
        "Landroid/os/Bundle;",
        "openInWebView",
        "",
        "channel",
        "Lcom/braze/enums/Channel;",
        "createUriActionFromUrlString",
        "url",
        "",
        "getIntentFlags",
        "",
        "intentFlagPurpose",
        "Lcom/braze/IBrazeDeeplinkHandler$IntentFlagPurpose;",
        "gotoNewsFeed",
        "",
        "context",
        "Landroid/content/Context;",
        "newsfeedAction",
        "Lcom/braze/ui/actions/NewsfeedAction;",
        "gotoUri",
        "uriAction",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/braze/ui/BrazeDeeplinkHandler$Companion;

.field private static volatile customHandler:Lcom/braze/IBrazeDeeplinkHandler;

.field private static final defaultHandler:Lcom/braze/IBrazeDeeplinkHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/braze/ui/BrazeDeeplinkHandler$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/braze/ui/BrazeDeeplinkHandler$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/braze/ui/BrazeDeeplinkHandler;->Companion:Lcom/braze/ui/BrazeDeeplinkHandler$Companion;

    .line 68
    new-instance v0, Lcom/braze/ui/BrazeDeeplinkHandler;

    invoke-direct {v0}, Lcom/braze/ui/BrazeDeeplinkHandler;-><init>()V

    check-cast v0, Lcom/braze/IBrazeDeeplinkHandler;

    sput-object v0, Lcom/braze/ui/BrazeDeeplinkHandler;->defaultHandler:Lcom/braze/IBrazeDeeplinkHandler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getCustomHandler$cp()Lcom/braze/IBrazeDeeplinkHandler;
    .locals 1

    .line 15
    sget-object v0, Lcom/braze/ui/BrazeDeeplinkHandler;->customHandler:Lcom/braze/IBrazeDeeplinkHandler;

    return-object v0
.end method

.method public static final synthetic access$getDefaultHandler$cp()Lcom/braze/IBrazeDeeplinkHandler;
    .locals 1

    .line 15
    sget-object v0, Lcom/braze/ui/BrazeDeeplinkHandler;->defaultHandler:Lcom/braze/IBrazeDeeplinkHandler;

    return-object v0
.end method

.method public static final synthetic access$setCustomHandler$cp(Lcom/braze/IBrazeDeeplinkHandler;)V
    .locals 0

    .line 15
    sput-object p0, Lcom/braze/ui/BrazeDeeplinkHandler;->customHandler:Lcom/braze/IBrazeDeeplinkHandler;

    return-void
.end method

.method public static final getInstance()Lcom/braze/IBrazeDeeplinkHandler;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/braze/ui/BrazeDeeplinkHandler;->Companion:Lcom/braze/ui/BrazeDeeplinkHandler$Companion;

    invoke-virtual {v0}, Lcom/braze/ui/BrazeDeeplinkHandler$Companion;->getInstance()Lcom/braze/IBrazeDeeplinkHandler;

    move-result-object v0

    return-object v0
.end method

.method public static final setBrazeDeeplinkHandler(Lcom/braze/IBrazeDeeplinkHandler;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/braze/ui/BrazeDeeplinkHandler;->Companion:Lcom/braze/ui/BrazeDeeplinkHandler$Companion;

    invoke-virtual {v0, p0}, Lcom/braze/ui/BrazeDeeplinkHandler$Companion;->setBrazeDeeplinkHandler(Lcom/braze/IBrazeDeeplinkHandler;)V

    return-void
.end method


# virtual methods
.method public createUriActionFromUri(Landroid/net/Uri;Landroid/os/Bundle;ZLcom/braze/enums/Channel;)Lcom/braze/ui/actions/UriAction;
    .locals 1

    const-string v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "channel"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    new-instance v0, Lcom/braze/ui/actions/UriAction;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/braze/ui/actions/UriAction;-><init>(Landroid/net/Uri;Landroid/os/Bundle;ZLcom/braze/enums/Channel;)V

    return-object v0
.end method

.method public createUriActionFromUrlString(Ljava/lang/String;Landroid/os/Bundle;ZLcom/braze/enums/Channel;)Lcom/braze/ui/actions/UriAction;
    .locals 8

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "channel"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 46
    :try_start_0
    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 47
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 48
    const-string v1, "uri"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/braze/ui/BrazeDeeplinkHandler;->createUriActionFromUri(Landroid/net/Uri;Landroid/os/Bundle;ZLcom/braze/enums/Channel;)Lcom/braze/ui/actions/UriAction;

    move-result-object p1

    move-object v0, p1

    goto :goto_0

    .line 50
    :cond_0
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v3, Lcom/braze/support/BrazeLogger$Priority;->E:Lcom/braze/support/BrazeLogger$Priority;

    sget-object p1, Lcom/braze/ui/BrazeDeeplinkHandler$createUriActionFromUrlString$1;->INSTANCE:Lcom/braze/ui/BrazeDeeplinkHandler$createUriActionFromUrlString$1;

    move-object v5, p1

    check-cast v5, Lkotlin/jvm/functions/Function0;

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 51
    move-object p1, v0

    check-cast p1, Lcom/braze/ui/actions/UriAction;

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 54
    sget-object p2, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object p3, Lcom/braze/support/BrazeLogger$Priority;->E:Lcom/braze/support/BrazeLogger$Priority;

    check-cast p1, Ljava/lang/Throwable;

    sget-object p4, Lcom/braze/ui/BrazeDeeplinkHandler$createUriActionFromUrlString$2;->INSTANCE:Lcom/braze/ui/BrazeDeeplinkHandler$createUriActionFromUrlString$2;

    check-cast p4, Lkotlin/jvm/functions/Function0;

    invoke-virtual {p2, p0, p3, p1, p4}, Lcom/braze/support/BrazeLogger;->brazelog(Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V

    .line 55
    move-object p1, v0

    check-cast p1, Lcom/braze/ui/actions/UriAction;

    :goto_0
    return-object v0
.end method

.method public getIntentFlags(Lcom/braze/IBrazeDeeplinkHandler$IntentFlagPurpose;)I
    .locals 1

    const-string v0, "intentFlagPurpose"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    sget-object v0, Lcom/braze/ui/BrazeDeeplinkHandler$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/braze/IBrazeDeeplinkHandler$IntentFlagPurpose;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    .line 35
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :pswitch_0    # 0x6 0x7
    const/high16 p1, 0x10000000

    goto :goto_0

    :pswitch_1    # 0x3 0x4 0x5
    const/high16 p1, 0x34000000

    goto :goto_0

    :pswitch_2    # 0x1 0x2
    const/high16 p1, 0x40000000

    :goto_0
    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2    # 0x1
        :pswitch_2    # 0x2
        :pswitch_1    # 0x3
        :pswitch_1    # 0x4
        :pswitch_1    # 0x5
        :pswitch_0    # 0x6
        :pswitch_0    # 0x7
    .end packed-switch
.end method

.method public gotoNewsFeed(Landroid/content/Context;Lcom/braze/ui/actions/NewsfeedAction;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newsfeedAction"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-virtual {p2, p1}, Lcom/braze/ui/actions/NewsfeedAction;->execute(Landroid/content/Context;)V

    return-void
.end method

.method public gotoUri(Landroid/content/Context;Lcom/braze/ui/actions/UriAction;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uriAction"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-virtual {p2, p1}, Lcom/braze/ui/actions/UriAction;->execute(Landroid/content/Context;)V

    return-void
.end method
