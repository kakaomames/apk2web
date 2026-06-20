.class public Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;
.super Lcom/braze/ui/inappmessage/InAppMessageManagerBase;
.source "BrazeInAppMessageManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/braze/ui/inappmessage/BrazeInAppMessageManager$Companion;,
        Lcom/braze/ui/inappmessage/BrazeInAppMessageManager$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBrazeInAppMessageManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BrazeInAppMessageManager.kt\ncom/braze/ui/inappmessage/BrazeInAppMessageManager\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,669:1\n1#2:670\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000x\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0017\u0018\u0000 >2\u00020\u0001:\u0001>B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010+\u001a\u00020,2\u0008\u0010-\u001a\u0004\u0018\u00010\u0004H\u0016J\u000e\u0010.\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u0015H\u0002J\u0018\u0010/\u001a\u00020,2\u0006\u0010-\u001a\u00020\u00042\u0006\u00100\u001a\u00020 H\u0016J\u0010\u00101\u001a\u00020,2\u0006\u00102\u001a\u000203H\u0016J\u0008\u00104\u001a\u00020 H\u0016J\u0010\u00105\u001a\u00020,2\u0006\u00106\u001a\u00020 H\u0016J\u0012\u00107\u001a\u00020,2\u0008\u00108\u001a\u0004\u0018\u000109H\u0016J\u0008\u0010:\u001a\u00020 H\u0016J\u0008\u0010;\u001a\u00020,H\u0016J\u0012\u0010<\u001a\u00020,2\u0008\u00108\u001a\u0004\u0018\u000109H\u0016J\u0010\u0010=\u001a\u00020 2\u0006\u0010-\u001a\u00020\u0004H\u0017R&\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0005\u0010\u0002\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000c\u001a\u00020\r8\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u000e\u0010\u0002R\u001d\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00110\u0010\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u0016\u0010\u0014\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\"\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00178\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0018\u0010\u0002\u001a\u0004\u0008\u0019\u0010\u001aR\u000e\u0010\u001b\u001a\u00020\u001cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001d\u001a\u0004\u0018\u00010\u001eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u001f\u001a\u00020 8F\u00a2\u0006\u0006\u001a\u0004\u0008\u001f\u0010!R\u0012\u0010\"\u001a\u0004\u0018\u00010#X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010$R\u0016\u0010%\u001a\n\u0012\u0004\u0012\u00020&\u0018\u00010\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000R&\u0010\'\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008(\u0010\u0002\u001a\u0004\u0008)\u0010\u0007\"\u0004\u0008*\u0010\t\u00a8\u0006?"
    }
    d2 = {
        "Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;",
        "Lcom/braze/ui/inappmessage/InAppMessageManagerBase;",
        "()V",
        "carryoverInAppMessage",
        "Lcom/braze/models/inappmessage/IInAppMessage;",
        "getCarryoverInAppMessage$annotations",
        "getCarryoverInAppMessage",
        "()Lcom/braze/models/inappmessage/IInAppMessage;",
        "setCarryoverInAppMessage",
        "(Lcom/braze/models/inappmessage/IInAppMessage;)V",
        "configurationProvider",
        "Lcom/braze/configuration/BrazeConfigurationProvider;",
        "displayingInAppMessage",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "getDisplayingInAppMessage$annotations",
        "inAppMessageEventMap",
        "",
        "Lcom/braze/events/InAppMessageEvent;",
        "getInAppMessageEventMap",
        "()Ljava/util/Map;",
        "inAppMessageEventSubscriber",
        "Lcom/braze/events/IEventSubscriber;",
        "inAppMessageStack",
        "Ljava/util/Stack;",
        "getInAppMessageStack$annotations",
        "getInAppMessageStack",
        "()Ljava/util/Stack;",
        "inAppMessageViewLifecycleListener",
        "Lcom/braze/ui/inappmessage/listeners/IInAppMessageViewLifecycleListener;",
        "inAppMessageViewWrapper",
        "Lcom/braze/ui/inappmessage/IInAppMessageViewWrapper;",
        "isCurrentlyDisplayingInAppMessage",
        "",
        "()Z",
        "originalOrientation",
        "",
        "Ljava/lang/Integer;",
        "sdkDataWipeEventSubscriber",
        "Lcom/braze/events/SdkDataWipeEvent;",
        "unregisteredInAppMessage",
        "getUnregisteredInAppMessage$annotations",
        "getUnregisteredInAppMessage",
        "setUnregisteredInAppMessage",
        "addInAppMessage",
        "",
        "inAppMessage",
        "createInAppMessageEventSubscriber",
        "displayInAppMessage",
        "isCarryOver",
        "ensureSubscribedToInAppMessageEvents",
        "context",
        "Landroid/content/Context;",
        "getIsCurrentlyDisplayingInAppMessage",
        "hideCurrentlyDisplayingInAppMessage",
        "dismissed",
        "registerInAppMessageManager",
        "activity",
        "Landroid/app/Activity;",
        "requestDisplayInAppMessage",
        "resetAfterInAppMessageClose",
        "unregisterInAppMessageManager",
        "verifyOrientationStatus",
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
.field public static final Companion:Lcom/braze/ui/inappmessage/BrazeInAppMessageManager$Companion;

.field private static volatile instance:Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;

.field private static final instanceLock:Ljava/util/concurrent/locks/ReentrantLock;


# instance fields
.field private carryoverInAppMessage:Lcom/braze/models/inappmessage/IInAppMessage;

.field private configurationProvider:Lcom/braze/configuration/BrazeConfigurationProvider;

.field public final displayingInAppMessage:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final inAppMessageEventMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/braze/models/inappmessage/IInAppMessage;",
            "Lcom/braze/events/InAppMessageEvent;",
            ">;"
        }
    .end annotation
.end field

.field private inAppMessageEventSubscriber:Lcom/braze/events/IEventSubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/braze/events/IEventSubscriber<",
            "Lcom/braze/events/InAppMessageEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final inAppMessageStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/braze/models/inappmessage/IInAppMessage;",
            ">;"
        }
    .end annotation
.end field

.field private final inAppMessageViewLifecycleListener:Lcom/braze/ui/inappmessage/listeners/IInAppMessageViewLifecycleListener;

.field private inAppMessageViewWrapper:Lcom/braze/ui/inappmessage/IInAppMessageViewWrapper;

.field private originalOrientation:Ljava/lang/Integer;

.field private sdkDataWipeEventSubscriber:Lcom/braze/events/IEventSubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/braze/events/IEventSubscriber<",
            "Lcom/braze/events/SdkDataWipeEvent;",
            ">;"
        }
    .end annotation
.end field

.field private unregisteredInAppMessage:Lcom/braze/models/inappmessage/IInAppMessage;


# direct methods
.method public static synthetic $r8$lambda$QshXhrPYX5ayLv20QxS2DAfEvRA(Lcom/braze/ui/inappmessage/IInAppMessageViewWrapper;Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;Landroid/app/Activity;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;->displayInAppMessage$lambda-7(Lcom/braze/ui/inappmessage/IInAppMessageViewWrapper;Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;Landroid/app/Activity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$erkHBKW4boOkzUAzL48KoARwqm8(Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;Lcom/braze/events/SdkDataWipeEvent;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;->ensureSubscribedToInAppMessageEvents$lambda-1(Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;Lcom/braze/events/SdkDataWipeEvent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zG1QGTEbEIs2zcqPfU616XaHBfY(Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;Lcom/braze/events/InAppMessageEvent;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;->createInAppMessageEventSubscriber$lambda-8(Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;Lcom/braze/events/InAppMessageEvent;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;->Companion:Lcom/braze/ui/inappmessage/BrazeInAppMessageManager$Companion;

    .line 650
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;->instanceLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 79
    invoke-direct {p0}, Lcom/braze/ui/inappmessage/InAppMessageManagerBase;-><init>()V

    .line 81
    new-instance v0, Lcom/braze/ui/inappmessage/listeners/DefaultInAppMessageViewLifecycleListener;

    invoke-direct {v0}, Lcom/braze/ui/inappmessage/listeners/DefaultInAppMessageViewLifecycleListener;-><init>()V

    check-cast v0, Lcom/braze/ui/inappmessage/listeners/IInAppMessageViewLifecycleListener;

    iput-object v0, p0, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;->inAppMessageViewLifecycleListener:Lcom/braze/ui/inappmessage/listeners/IInAppMessageViewLifecycleListener;

    .line 85
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;->displayingInAppMessage:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 91
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;->inAppMessageStack:Ljava/util/Stack;

    .line 92
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;->inAppMessageEventMap:Ljava/util/Map;

    return-void
.end method

.method public static final synthetic access$getInstance$cp()Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;
    .locals 1

    .line 78
    sget-object v0, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;->instance:Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;

    return-object v0
.end method

.method public static final synthetic access$getInstanceLock$cp()Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1

    .line 78
    sget-object v0, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;->instanceLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method public static final synthetic access$setInstance$cp(Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;)V
    .locals 0

    .line 78
    sput-object p0, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;->instance:Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;

    return-void
.end method

.method private final createInAppMessageEventSubscriber()Lcom/braze/events/IEventSubscriber;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/braze/events/IEventSubscriber<",
            "Lcom/braze/events/InAppMessageEvent;",
            ">;"
        }
    .end annotation

    .line 604
    new-instance v0, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager$$ExternalSyntheticLambda1;-><init>(Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;)V

    return-object v0
.end method

.method private static final createInAppMessageEventSubscriber$lambda-8(Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;Lcom/braze/events/InAppMessageEvent;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 605
    invoke-virtual {p1}, Lcom/braze/events/InAppMessageEvent;->getInAppMessage()Lcom/braze/models/inappmessage/IInAppMessage;

    move-result-object v0

    .line 606
    iget-object v1, p0, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;->inAppMessageEventMap:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 607
    invoke-virtual {p0, v0}, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;->addInAppMessage(Lcom/braze/models/inappmessage/IInAppMessage;)V

    return-void
.end method

.method private static final displayInAppMessage$lambda-7(Lcom/braze/ui/inappmessage/IInAppMessageViewWrapper;Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;Landroid/app/Activity;)V
    .locals 8

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    .line 583
    :try_start_0
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v0, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager$displayInAppMessage$14$1;->INSTANCE:Lcom/braze/ui/inappmessage/BrazeInAppMessageManager$displayInAppMessage$14$1;

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function0;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    invoke-static/range {v1 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 586
    invoke-interface {p0, p2}, Lcom/braze/ui/inappmessage/IInAppMessageViewWrapper;->open(Landroid/app/Activity;)V

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 589
    sget-object p2, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v0, Lcom/braze/support/BrazeLogger$Priority;->E:Lcom/braze/support/BrazeLogger$Priority;

    check-cast p0, Ljava/lang/Throwable;

    sget-object v1, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager$displayInAppMessage$14$2;->INSTANCE:Lcom/braze/ui/inappmessage/BrazeInAppMessageManager$displayInAppMessage$14$2;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-virtual {p2, p1, v0, p0, v1}, Lcom/braze/support/BrazeLogger;->brazelog(Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private static final ensureSubscribedToInAppMessageEvents$lambda-1(Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;Lcom/braze/events/SdkDataWipeEvent;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    iget-object p1, p0, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;->inAppMessageStack:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->clear()V

    const/4 p1, 0x0

    .line 161
    iput-object p1, p0, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;->carryoverInAppMessage:Lcom/braze/models/inappmessage/IInAppMessage;

    .line 162
    iput-object p1, p0, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;->unregisteredInAppMessage:Lcom/braze/models/inappmessage/IInAppMessage;

    return-void
.end method

.method public static synthetic getCarryoverInAppMessage$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getDisplayingInAppMessage$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getInAppMessageStack$annotations()V
    .locals 0

    return-void
.end method

.method public static final getInstance()Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;->Companion:Lcom/braze/ui/inappmessage/BrazeInAppMessageManager$Companion;

    invoke-virtual {v0}, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager$Companion;->getInstance()Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic getUnregisteredInAppMessage$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public addInAppMessage(Lcom/braze/models/inappmessage/IInAppMessage;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 284
    iget-object v0, p0, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;->inAppMessageStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    invoke-virtual {p0}, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;->requestDisplayInAppMessage()Z

    :cond_0
    return-void
.end method

.method public displayInAppMessage(Lcom/braze/models/inappmessage/IInAppMessage;Z)V
    .locals 19

    move-object/from16 v8, p0

    move-object/from16 v15, p1

    const-string v0, "In-app message is expired. Doing nothing. Expiration: "

    const-string v1, "inAppMessage"

    invoke-static {v15, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 415
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v3, Lcom/braze/support/BrazeLogger$Priority;->V:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v2, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager$displayInAppMessage$1;

    invoke-direct {v2, v15}, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager$displayInAppMessage$1;-><init>(Lcom/braze/models/inappmessage/IInAppMessage;)V

    move-object v5, v2

    check-cast v5, Lkotlin/jvm/functions/Function0;

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object/from16 v2, p0

    invoke-static/range {v1 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 422
    iget-object v1, v8, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;->displayingInAppMessage:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-nez v1, :cond_0

    .line 423
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v0, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager$displayInAppMessage$2;->INSTANCE:Lcom/braze/ui/inappmessage/BrazeInAppMessageManager$displayInAppMessage$2;

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function0;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v2, p0

    invoke-static/range {v1 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 426
    iget-object v0, v8, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;->inAppMessageStack:Ljava/util/Stack;

    invoke-virtual {v0, v15}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 430
    :cond_0
    :try_start_0
    iget-object v14, v8, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;->mActivity:Landroid/app/Activity;

    if-eqz v14, :cond_11

    if-nez p2, :cond_3

    .line 440
    invoke-interface/range {p1 .. p1}, Lcom/braze/models/inappmessage/IInAppMessage;->getExpirationTimestamp()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_2

    .line 442
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    cmp-long v5, v3, v1

    if-gtz v5, :cond_1

    goto :goto_0

    .line 444
    :cond_1
    new-instance v5, Ljava/lang/Exception;

    .line 445
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 446
    const-string v1, ". Current time: "

    .line 445
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 444
    invoke-direct {v5, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v5

    .line 450
    :cond_2
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v0, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager$displayInAppMessage$3;->INSTANCE:Lcom/braze/ui/inappmessage/BrazeInAppMessageManager$displayInAppMessage$3;

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function0;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v2, p0

    invoke-static/range {v1 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    goto :goto_0

    .line 453
    :cond_3
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v0, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager$displayInAppMessage$4;->INSTANCE:Lcom/braze/ui/inappmessage/BrazeInAppMessageManager$displayInAppMessage$4;

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function0;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v2, p0

    invoke-static/range {v1 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 455
    :goto_0
    invoke-virtual/range {p0 .. p1}, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;->verifyOrientationStatus(Lcom/braze/models/inappmessage/IInAppMessage;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 462
    invoke-interface/range {p1 .. p1}, Lcom/braze/models/inappmessage/IInAppMessage;->isControl()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 463
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v0, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager$displayInAppMessage$5;->INSTANCE:Lcom/braze/ui/inappmessage/BrazeInAppMessageManager$displayInAppMessage$5;

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function0;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v2, p0

    invoke-static/range {v1 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 466
    invoke-interface/range {p1 .. p1}, Lcom/braze/models/inappmessage/IInAppMessage;->logImpression()Z

    .line 467
    invoke-virtual/range {p0 .. p0}, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;->resetAfterInAppMessageClose()V

    return-void

    .line 470
    :cond_4
    invoke-static/range {p1 .. p1}, Lcom/braze/ui/actions/brazeactions/BrazeActionUtils;->containsInvalidBrazeAction(Lcom/braze/models/inappmessage/IInAppMessage;)Z

    move-result v0

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const-string v9, "activity.applicationContext"

    if-eqz v0, :cond_6

    .line 471
    :try_start_1
    iget-object v0, v8, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;->inAppMessageEventMap:Ljava/util/Map;

    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/braze/events/InAppMessageEvent;

    .line 472
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v3, Lcom/braze/support/BrazeLogger$Priority;->I:Lcom/braze/support/BrazeLogger$Priority;

    sget-object v2, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager$displayInAppMessage$6;->INSTANCE:Lcom/braze/ui/inappmessage/BrazeInAppMessageManager$displayInAppMessage$6;

    move-object v5, v2

    check-cast v5, Lkotlin/jvm/functions/Function0;

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object/from16 v2, p0

    invoke-static/range {v1 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    if-eqz v0, :cond_5

    .line 474
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v3, Lcom/braze/support/BrazeLogger$Priority;->I:Lcom/braze/support/BrazeLogger$Priority;

    sget-object v2, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager$displayInAppMessage$7;->INSTANCE:Lcom/braze/ui/inappmessage/BrazeInAppMessageManager$displayInAppMessage$7;

    move-object v5, v2

    check-cast v5, Lkotlin/jvm/functions/Function0;

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object/from16 v2, p0

    invoke-static/range {v1 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 475
    invoke-virtual {v14}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v0}, Lcom/braze/BrazeInternal;->retryInAppMessage(Landroid/content/Context;Lcom/braze/events/InAppMessageEvent;)V

    .line 477
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;->resetAfterInAppMessageClose()V

    return-void

    .line 480
    :cond_6
    invoke-static/range {p1 .. p1}, Lcom/braze/ui/actions/brazeactions/BrazeActionUtils;->containsAnyPushPermissionBrazeActions(Lcom/braze/models/inappmessage/IInAppMessage;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 481
    invoke-static {v14}, Lcom/braze/support/PermissionUtils;->wouldPushPermissionPromptDisplay(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 483
    iget-object v0, v8, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;->inAppMessageEventMap:Ljava/util/Map;

    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/braze/events/InAppMessageEvent;

    .line 484
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v3, Lcom/braze/support/BrazeLogger$Priority;->I:Lcom/braze/support/BrazeLogger$Priority;

    sget-object v2, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager$displayInAppMessage$8;->INSTANCE:Lcom/braze/ui/inappmessage/BrazeInAppMessageManager$displayInAppMessage$8;

    move-object v5, v2

    check-cast v5, Lkotlin/jvm/functions/Function0;

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object/from16 v2, p0

    invoke-static/range {v1 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    if-eqz v0, :cond_7

    .line 489
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v3, Lcom/braze/support/BrazeLogger$Priority;->I:Lcom/braze/support/BrazeLogger$Priority;

    sget-object v2, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager$displayInAppMessage$9;->INSTANCE:Lcom/braze/ui/inappmessage/BrazeInAppMessageManager$displayInAppMessage$9;

    move-object v5, v2

    check-cast v5, Lkotlin/jvm/functions/Function0;

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object/from16 v2, p0

    invoke-static/range {v1 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 490
    invoke-virtual {v14}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v0}, Lcom/braze/BrazeInternal;->retryInAppMessage(Landroid/content/Context;Lcom/braze/events/InAppMessageEvent;)V

    .line 492
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;->resetAfterInAppMessageClose()V

    return-void

    .line 495
    :cond_8
    invoke-virtual/range {p0 .. p1}, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;->getInAppMessageViewFactory(Lcom/braze/models/inappmessage/IInAppMessage;)Lcom/braze/ui/inappmessage/IInAppMessageViewFactory;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 500
    invoke-interface {v0, v14, v15}, Lcom/braze/ui/inappmessage/IInAppMessageViewFactory;->createInAppMessageView(Landroid/app/Activity;Lcom/braze/models/inappmessage/IInAppMessage;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 510
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_d

    .line 520
    iget-object v13, v8, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;->configurationProvider:Lcom/braze/configuration/BrazeConfigurationProvider;

    if-eqz v13, :cond_c

    .line 525
    invoke-virtual/range {p0 .. p0}, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;->getInAppMessageAnimationFactory()Lcom/braze/ui/inappmessage/IInAppMessageAnimationFactory;

    move-result-object v1

    invoke-interface {v1, v15}, Lcom/braze/ui/inappmessage/IInAppMessageAnimationFactory;->getOpeningAnimation(Lcom/braze/models/inappmessage/IInAppMessage;)Landroid/view/animation/Animation;

    move-result-object v16

    .line 526
    invoke-virtual/range {p0 .. p0}, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;->getInAppMessageAnimationFactory()Lcom/braze/ui/inappmessage/IInAppMessageAnimationFactory;

    move-result-object v1

    invoke-interface {v1, v15}, Lcom/braze/ui/inappmessage/IInAppMessageAnimationFactory;->getClosingAnimation(Lcom/braze/models/inappmessage/IInAppMessage;)Landroid/view/animation/Animation;

    move-result-object v17

    .line 527
    invoke-virtual/range {p0 .. p0}, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;->getInAppMessageViewWrapperFactory()Lcom/braze/ui/inappmessage/IInAppMessageViewWrapperFactory;

    move-result-object v9

    .line 529
    instance-of v1, v0, Lcom/braze/ui/inappmessage/views/IInAppMessageImmersiveView;

    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    if-eqz v1, :cond_9

    .line 530
    :try_start_2
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v2, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager$displayInAppMessage$10;->INSTANCE:Lcom/braze/ui/inappmessage/BrazeInAppMessageManager$displayInAppMessage$10;

    move-object v5, v2

    check-cast v5, Lkotlin/jvm/functions/Function0;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v2, p0

    invoke-static/range {v1 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 531
    move-object v1, v0

    check-cast v1, Lcom/braze/ui/inappmessage/views/IInAppMessageImmersiveView;

    .line 532
    move-object v2, v15

    check-cast v2, Lcom/braze/models/inappmessage/InAppMessageImmersiveBase;

    .line 533
    invoke-virtual {v2}, Lcom/braze/models/inappmessage/InAppMessageImmersiveBase;->getMessageButtons()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 537
    iget-object v12, v8, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;->inAppMessageViewLifecycleListener:Lcom/braze/ui/inappmessage/listeners/IInAppMessageViewLifecycleListener;

    .line 541
    invoke-interface {v1}, Lcom/braze/ui/inappmessage/views/IInAppMessageImmersiveView;->getMessageClickableView()Landroid/view/View;

    move-result-object v3

    .line 542
    invoke-interface {v1, v2}, Lcom/braze/ui/inappmessage/views/IInAppMessageImmersiveView;->getMessageButtonViews(I)Ljava/util/List;

    move-result-object v2

    .line 543
    invoke-interface {v1}, Lcom/braze/ui/inappmessage/views/IInAppMessageImmersiveView;->getMessageCloseButtonView()Landroid/view/View;

    move-result-object v18

    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v10, v0

    move-object/from16 v11, p1

    move-object v7, v14

    move-object/from16 v14, v16

    move-object v6, v15

    move-object/from16 v15, v17

    move-object/from16 v16, v3

    move-object/from16 v17, v2

    .line 534
    :try_start_3
    invoke-interface/range {v9 .. v18}, Lcom/braze/ui/inappmessage/IInAppMessageViewWrapperFactory;->createInAppMessageViewWrapper(Landroid/view/View;Lcom/braze/models/inappmessage/IInAppMessage;Lcom/braze/ui/inappmessage/listeners/IInAppMessageViewLifecycleListener;Lcom/braze/configuration/BrazeConfigurationProvider;Landroid/view/animation/Animation;Landroid/view/animation/Animation;Landroid/view/View;Ljava/util/List;Landroid/view/View;)Lcom/braze/ui/inappmessage/IInAppMessageViewWrapper;

    move-result-object v1

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    move-object v6, v15

    goto/16 :goto_2

    :cond_9
    move-object v7, v14

    move-object v6, v15

    .line 546
    instance-of v1, v0, Lcom/braze/ui/inappmessage/views/IInAppMessageView;

    if-eqz v1, :cond_a

    .line 547
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v2, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager$displayInAppMessage$11;->INSTANCE:Lcom/braze/ui/inappmessage/BrazeInAppMessageManager$displayInAppMessage$11;

    move-object v5, v2

    check-cast v5, Lkotlin/jvm/functions/Function0;

    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 v10, 0x3

    const/4 v11, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v2, p0

    move-object v15, v6

    move v6, v10

    move-object v14, v7

    move-object v7, v11

    :try_start_4
    invoke-static/range {v1 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 548
    move-object v1, v0

    check-cast v1, Lcom/braze/ui/inappmessage/views/IInAppMessageView;

    .line 552
    iget-object v12, v8, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;->inAppMessageViewLifecycleListener:Lcom/braze/ui/inappmessage/listeners/IInAppMessageViewLifecycleListener;

    .line 556
    invoke-interface {v1}, Lcom/braze/ui/inappmessage/views/IInAppMessageView;->getMessageClickableView()Landroid/view/View;

    move-result-object v1

    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v10, v0

    move-object/from16 v11, p1

    move-object v7, v14

    move-object/from16 v14, v16

    move-object v6, v15

    move-object/from16 v15, v17

    move-object/from16 v16, v1

    .line 549
    :try_start_5
    invoke-interface/range {v9 .. v16}, Lcom/braze/ui/inappmessage/IInAppMessageViewWrapperFactory;->createInAppMessageViewWrapper(Landroid/view/View;Lcom/braze/models/inappmessage/IInAppMessage;Lcom/braze/ui/inappmessage/listeners/IInAppMessageViewLifecycleListener;Lcom/braze/configuration/BrazeConfigurationProvider;Landroid/view/animation/Animation;Landroid/view/animation/Animation;Landroid/view/View;)Lcom/braze/ui/inappmessage/IInAppMessageViewWrapper;

    move-result-object v1

    goto :goto_1

    .line 560
    :cond_a
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v2, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager$displayInAppMessage$12;->INSTANCE:Lcom/braze/ui/inappmessage/BrazeInAppMessageManager$displayInAppMessage$12;

    move-object v5, v2

    check-cast v5, Lkotlin/jvm/functions/Function0;

    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    const/4 v10, 0x3

    const/4 v11, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v2, p0

    move-object v15, v6

    move v6, v10

    move-object v14, v7

    move-object v7, v11

    :try_start_6
    invoke-static/range {v1 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 564
    iget-object v12, v8, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;->inAppMessageViewLifecycleListener:Lcom/braze/ui/inappmessage/listeners/IInAppMessageViewLifecycleListener;

    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    move-object v10, v0

    move-object/from16 v11, p1

    move-object v7, v14

    move-object/from16 v14, v16

    move-object v6, v15

    move-object/from16 v15, v17

    move-object/from16 v16, v0

    .line 561
    :try_start_7
    invoke-interface/range {v9 .. v16}, Lcom/braze/ui/inappmessage/IInAppMessageViewWrapperFactory;->createInAppMessageViewWrapper(Landroid/view/View;Lcom/braze/models/inappmessage/IInAppMessage;Lcom/braze/ui/inappmessage/listeners/IInAppMessageViewLifecycleListener;Lcom/braze/configuration/BrazeConfigurationProvider;Landroid/view/animation/Animation;Landroid/view/animation/Animation;Landroid/view/View;)Lcom/braze/ui/inappmessage/IInAppMessageViewWrapper;

    move-result-object v1

    :goto_1
    move-object v9, v1

    .line 528
    iput-object v9, v8, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;->inAppMessageViewWrapper:Lcom/braze/ui/inappmessage/IInAppMessageViewWrapper;

    .line 576
    instance-of v1, v0, Lcom/braze/ui/inappmessage/views/InAppMessageHtmlBaseView;

    if-eqz v1, :cond_b

    .line 577
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v2, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager$displayInAppMessage$13;->INSTANCE:Lcom/braze/ui/inappmessage/BrazeInAppMessageManager$displayInAppMessage$13;

    move-object v5, v2

    check-cast v5, Lkotlin/jvm/functions/Function0;

    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    const/4 v10, 0x3

    const/4 v11, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v2, p0

    move-object v12, v6

    move v6, v10

    move-object v10, v7

    move-object v7, v11

    :try_start_8
    invoke-static/range {v1 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 580
    check-cast v0, Lcom/braze/ui/inappmessage/views/InAppMessageHtmlBaseView;

    new-instance v1, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, v9, v8, v10}, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager$$ExternalSyntheticLambda0;-><init>(Lcom/braze/ui/inappmessage/IInAppMessageViewWrapper;Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lcom/braze/ui/inappmessage/views/InAppMessageHtmlBaseView;->setHtmlPageFinishedListener(Lcom/braze/ui/inappmessage/listeners/IWebViewClientStateListener;)V

    goto/16 :goto_4

    :cond_b
    move-object v12, v6

    move-object v10, v7

    if-eqz v9, :cond_12

    .line 593
    invoke-interface {v9, v10}, Lcom/braze/ui/inappmessage/IInAppMessageViewWrapper;->open(Landroid/app/Activity;)V

    goto :goto_4

    :catchall_1
    move-exception v0

    :goto_2
    move-object v12, v6

    goto :goto_3

    :cond_c
    move-object v12, v15

    .line 521
    new-instance v0, Ljava/lang/Exception;

    .line 522
    const-string v1, "configurationProvider is null. The in-app message will not be displayed and will not beput back on the stack."

    .line 521
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    move-object v12, v15

    .line 511
    sget-object v0, Lcom/braze/enums/inappmessage/InAppMessageFailureType;->DISPLAY_VIEW_GENERATION:Lcom/braze/enums/inappmessage/InAppMessageFailureType;

    invoke-interface {v12, v0}, Lcom/braze/models/inappmessage/IInAppMessage;->logDisplayFailure(Lcom/braze/enums/inappmessage/InAppMessageFailureType;)Z

    .line 512
    new-instance v0, Ljava/lang/Exception;

    .line 513
    const-string v1, "The in-app message view returned from the IInAppMessageViewFactory already has a parent. This is a sign that the view is being reused. The IInAppMessageViewFactory method createInAppMessageViewmust return a new view without a parent. The in-app message will not be displayed and will not be put back on the stack."

    .line 512
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    move-object v12, v15

    .line 504
    sget-object v0, Lcom/braze/enums/inappmessage/InAppMessageFailureType;->DISPLAY_VIEW_GENERATION:Lcom/braze/enums/inappmessage/InAppMessageFailureType;

    invoke-interface {v12, v0}, Lcom/braze/models/inappmessage/IInAppMessage;->logDisplayFailure(Lcom/braze/enums/inappmessage/InAppMessageFailureType;)Z

    .line 505
    new-instance v0, Ljava/lang/Exception;

    .line 506
    const-string v1, "The in-app message view returned from the IInAppMessageViewFactory was null. The in-app message will not be displayed and will not be put back on the stack."

    .line 505
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    move-object v12, v15

    .line 497
    sget-object v0, Lcom/braze/enums/inappmessage/InAppMessageFailureType;->DISPLAY_VIEW_GENERATION:Lcom/braze/enums/inappmessage/InAppMessageFailureType;

    invoke-interface {v12, v0}, Lcom/braze/models/inappmessage/IInAppMessage;->logDisplayFailure(Lcom/braze/enums/inappmessage/InAppMessageFailureType;)Z

    .line 498
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "ViewFactory from getInAppMessageViewFactory was null."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    move-object v12, v15

    .line 457
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Current orientation did not match specified orientation for in-app message. Doing nothing."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    move-object v12, v15

    .line 432
    iput-object v12, v8, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;->carryoverInAppMessage:Lcom/braze/models/inappmessage/IInAppMessage;

    .line 433
    new-instance v0, Ljava/lang/Exception;

    .line 434
    const-string v1, "No Activity is currently registered to receive in-app messages. Registering in-app message as carry-over in-app message. It will automatically be displayed when the next Activity registers to receive in-app messages."

    .line 433
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_2
    move-exception v0

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object v12, v15

    .line 596
    :goto_3
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v2, Lcom/braze/support/BrazeLogger$Priority;->E:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v3, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager$displayInAppMessage$15;

    invoke-direct {v3, v12}, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager$displayInAppMessage$15;-><init>(Lcom/braze/models/inappmessage/IInAppMessage;)V

    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v1, v8, v2, v0, v3}, Lcom/braze/support/BrazeLogger;->brazelog(Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V

    .line 599
    invoke-virtual/range {p0 .. p0}, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;->resetAfterInAppMessageClose()V

    :cond_12
    :goto_4
    return-void
.end method

.method public ensureSubscribedToInAppMessageEvents(Landroid/content/Context;)V
    .locals 10

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;->inAppMessageEventSubscriber:Lcom/braze/events/IEventSubscriber;

    if-eqz v0, :cond_0

    .line 138
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v0, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager$ensureSubscribedToInAppMessageEvents$1;->INSTANCE:Lcom/braze/ui/inappmessage/BrazeInAppMessageManager$ensureSubscribedToInAppMessageEvents$1;

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function0;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 141
    sget-object v0, Lcom/braze/Braze;->Companion:Lcom/braze/Braze$Companion;

    invoke-virtual {v0, p1}, Lcom/braze/Braze$Companion;->getInstance(Landroid/content/Context;)Lcom/braze/Braze;

    move-result-object v0

    .line 142
    iget-object v1, p0, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;->inAppMessageEventSubscriber:Lcom/braze/events/IEventSubscriber;

    const-class v2, Lcom/braze/events/InAppMessageEvent;

    .line 141
    invoke-virtual {v0, v1, v2}, Lcom/braze/Braze;->removeSingleSubscription(Lcom/braze/events/IEventSubscriber;Ljava/lang/Class;)V

    .line 146
    :cond_0
    sget-object v3, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v0, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager$ensureSubscribedToInAppMessageEvents$2;->INSTANCE:Lcom/braze/ui/inappmessage/BrazeInAppMessageManager$ensureSubscribedToInAppMessageEvents$2;

    move-object v7, v0

    check-cast v7, Lkotlin/jvm/functions/Function0;

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, p0

    invoke-static/range {v3 .. v9}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 147
    invoke-direct {p0}, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;->createInAppMessageEventSubscriber()Lcom/braze/events/IEventSubscriber;

    move-result-object v0

    .line 148
    sget-object v1, Lcom/braze/Braze;->Companion:Lcom/braze/Braze$Companion;

    invoke-virtual {v1, p1}, Lcom/braze/Braze$Companion;->getInstance(Landroid/content/Context;)Lcom/braze/Braze;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/braze/Braze;->subscribeToNewInAppMessages(Lcom/braze/events/IEventSubscriber;)V

    .line 147
    iput-object v0, p0, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;->inAppMessageEventSubscriber:Lcom/braze/events/IEventSubscriber;

    .line 151
    iget-object v0, p0, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;->sdkDataWipeEventSubscriber:Lcom/braze/events/IEventSubscriber;

    if-eqz v0, :cond_1

    .line 152
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v3, Lcom/braze/support/BrazeLogger$Priority;->V:Lcom/braze/support/BrazeLogger$Priority;

    sget-object v0, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager$ensureSubscribedToInAppMessageEvents$4;->INSTANCE:Lcom/braze/ui/inappmessage/BrazeInAppMessageManager$ensureSubscribedToInAppMessageEvents$4;

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function0;

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 153
    sget-object v0, Lcom/braze/Braze;->Companion:Lcom/braze/Braze$Companion;

    invoke-virtual {v0, p1}, Lcom/braze/Braze$Companion;->getInstance(Landroid/content/Context;)Lcom/braze/Braze;

    move-result-object v0

    .line 154
    iget-object v1, p0, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;->sdkDataWipeEventSubscriber:Lcom/braze/events/IEventSubscriber;

    const-class v2, Lcom/braze/events/SdkDataWipeEvent;

    .line 153
    invoke-virtual {v0, v1, v2}, Lcom/braze/Braze;->removeSingleSubscription(Lcom/braze/events/IEventSubscriber;Ljava/lang/Class;)V

    .line 158
    :cond_1
    sget-object v3, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v5, Lcom/braze/support/BrazeLogger$Priority;->V:Lcom/braze/support/BrazeLogger$Priority;

    sget-object v0, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager$ensureSubscribedToInAppMessageEvents$5;->INSTANCE:Lcom/braze/ui/inappmessage/BrazeInAppMessageManager$ensureSubscribedToInAppMessageEvents$5;

    move-object v7, v0

    check-cast v7, Lkotlin/jvm/functions/Function0;

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v6, 0x0

    move-object v4, p0

    invoke-static/range {v3 .. v9}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 163
    new-instance v0, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager$$ExternalSyntheticLambda2;-><init>(Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;)V

    .line 164
    sget-object v1, Lcom/braze/Braze;->Companion:Lcom/braze/Braze$Companion;

    invoke-virtual {v1, p1}, Lcom/braze/Braze$Companion;->getInstance(Landroid/content/Context;)Lcom/braze/Braze;

    move-result-object p1

    .line 165
    const-class v1, Lcom/braze/events/SdkDataWipeEvent;

    .line 164
    invoke-virtual {p1, v0, v1}, Lcom/braze/Braze;->addSingleSynchronousSubscription(Lcom/braze/events/IEventSubscriber;Ljava/lang/Class;)V

    .line 159
    iput-object v0, p0, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;->sdkDataWipeEventSubscriber:Lcom/braze/events/IEventSubscriber;

    return-void
.end method

.method public final getCarryoverInAppMessage()Lcom/braze/models/inappmessage/IInAppMessage;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;->carryoverInAppMessage:Lcom/braze/models/inappmessage/IInAppMessage;

    return-object v0
.end method

.method public final getInAppMessageEventMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/braze/models/inappmessage/IInAppMessage;",
            "Lcom/braze/events/InAppMessageEvent;",
            ">;"
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;->inAppMessageEventMap:Ljava/util/Map;

    return-object v0
.end method

.method public final getInAppMessageStack()Ljava/util/Stack;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Stack<",
            "Lcom/braze/models/inappmessage/IInAppMessage;",
            ">;"
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;->inAppMessageStack:Ljava/util/Stack;

    return-object v0
.end method

.method public getIsCurrentlyDisplayingInAppMessage()Z
    .locals 1

    .line 401
    iget-object v0, p0, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;->displayingInAppMessage:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public final getUnregisteredInAppMessage()Lcom/braze/models/inappmessage/IInAppMessage;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;->unregisteredInAppMessage:Lcom/braze/models/inappmessage/IInAppMessage;

    return-object v0
.end method

.method public hideCurrentlyDisplayingInAppMessage(Z)V
    .locals 3

    const/4 v0, 0x0

    .line 367
    invoke-virtual {p0, v0}, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;->setShouldNextUnregisterBeSkipped(Z)V

    .line 368
    iget-object v0, p0, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;->inAppMessageViewWrapper:Lcom/braze/ui/inappmessage/IInAppMessageViewWrapper;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 371
    iget-object p1, p0, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;->inAppMessageViewLifecycleListener:Lcom/braze/ui/inappmessage/listeners/IInAppMessageViewLifecycleListener;

    .line 372
    invoke-interface {v0}, Lcom/braze/ui/inappmessage/IInAppMessageViewWrapper;->getInAppMessageView()Landroid/view/View;

    move-result-object v1

    .line 373
    invoke-interface {v0}, Lcom/braze/ui/inappmessage/IInAppMessageViewWrapper;->getInAppMessage()Lcom/braze/models/inappmessage/IInAppMessage;

    move-result-object v2

    .line 371
    invoke-interface {p1, v1, v2}, Lcom/braze/ui/inappmessage/listeners/IInAppMessageViewLifecycleListener;->onDismissed(Landroid/view/View;Lcom/braze/models/inappmessage/IInAppMessage;)V

    .line 376
    :cond_0
    invoke-interface {v0}, Lcom/braze/ui/inappmessage/IInAppMessageViewWrapper;->close()V

    :cond_1
    return-void
.end method

.method public final isCurrentlyDisplayingInAppMessage()Z
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;->displayingInAppMessage:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public registerInAppMessageManager(Landroid/app/Activity;)V
    .locals 14

    if-nez p1, :cond_0

    .line 185
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v2, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    sget-object p1, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager$registerInAppMessageManager$1;->INSTANCE:Lcom/braze/ui/inappmessage/BrazeInAppMessageManager$registerInAppMessageManager$1;

    move-object v4, p1

    check-cast v4, Lkotlin/jvm/functions/Function0;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v6}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void

    .line 188
    :cond_0
    sget-object v7, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v9, Lcom/braze/support/BrazeLogger$Priority;->V:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v0, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager$registerInAppMessageManager$2;

    invoke-direct {v0, p1}, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager$registerInAppMessageManager$2;-><init>(Landroid/app/Activity;)V

    move-object v11, v0

    check-cast v11, Lkotlin/jvm/functions/Function0;

    const/4 v12, 0x2

    const/4 v13, 0x0

    const/4 v10, 0x0

    move-object v8, p0

    invoke-static/range {v7 .. v13}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 193
    iput-object p1, p0, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;->mActivity:Landroid/app/Activity;

    .line 194
    iget-object v0, p0, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;->mApplicationContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 198
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;->mApplicationContext:Landroid/content/Context;

    .line 199
    iget-object p1, p0, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;->mApplicationContext:Landroid/content/Context;

    if-nez p1, :cond_1

    .line 200
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v2, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    sget-object p1, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager$registerInAppMessageManager$3;->INSTANCE:Lcom/braze/ui/inappmessage/BrazeInAppMessageManager$registerInAppMessageManager$3;

    move-object v4, p1

    check-cast v4, Lkotlin/jvm/functions/Function0;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v6}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void

    .line 204
    :cond_1
    iget-object p1, p0, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;->configurationProvider:Lcom/braze/configuration/BrazeConfigurationProvider;

    const/4 v0, 0x0

    if-nez p1, :cond_3

    .line 205
    iget-object p1, p0, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;->mApplicationContext:Landroid/content/Context;

    if-eqz p1, :cond_2

    new-instance v1, Lcom/braze/configuration/BrazeConfigurationProvider;

    invoke-direct {v1, p1}, Lcom/braze/configuration/BrazeConfigurationProvider;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    move-object v1, v0

    :goto_0
    iput-object v1, p0, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;->configurationProvider:Lcom/braze/configuration/BrazeConfigurationProvider;

    .line 210
    :cond_3
    iget-object p1, p0, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;->carryoverInAppMessage:Lcom/braze/models/inappmessage/IInAppMessage;

    if-eqz p1, :cond_5

    if-eqz p1, :cond_4

    .line 212
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v2, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager$registerInAppMessageManager$5$1;->INSTANCE:Lcom/braze/ui/inappmessage/BrazeInAppMessageManager$registerInAppMessageManager$5$1;

    move-object v5, v2

    check-cast v5, Lkotlin/jvm/functions/Function0;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    const/4 v1, 0x0

    .line 213
    invoke-interface {p1, v1}, Lcom/braze/models/inappmessage/IInAppMessage;->setAnimateIn(Z)V

    const/4 v1, 0x1

    .line 214
    invoke-virtual {p0, p1, v1}, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;->displayInAppMessage(Lcom/braze/models/inappmessage/IInAppMessage;Z)V

    .line 216
    :cond_4
    iput-object v0, p0, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;->carryoverInAppMessage:Lcom/braze/models/inappmessage/IInAppMessage;

    goto :goto_1

    .line 218
    :cond_5
    iget-object p1, p0, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;->unregisteredInAppMessage:Lcom/braze/models/inappmessage/IInAppMessage;

    if-eqz p1, :cond_6

    .line 219
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v2, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager$registerInAppMessageManager$6$1;->INSTANCE:Lcom/braze/ui/inappmessage/BrazeInAppMessageManager$registerInAppMessageManager$6$1;

    move-object v5, v2

    check-cast v5, Lkotlin/jvm/functions/Function0;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 220
    invoke-virtual {p0, p1}, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;->addInAppMessage(Lcom/braze/models/inappmessage/IInAppMessage;)V

    .line 221
    iput-object v0, p0, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;->unregisteredInAppMessage:Lcom/braze/models/inappmessage/IInAppMessage;

    .line 224
    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;->mApplicationContext:Landroid/content/Context;

    if-eqz p1, :cond_7

    invoke-virtual {p0, p1}, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;->ensureSubscribedToInAppMessageEvents(Landroid/content/Context;)V

    :cond_7
    return-void
.end method

.method public requestDisplayInAppMessage()Z
    .locals 12

    const/4 v0, 0x0

    .line 298
    :try_start_0
    iget-object v1, p0, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;->mActivity:Landroid/app/Activity;

    if-nez v1, :cond_1

    .line 299
    iget-object v1, p0, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;->inAppMessageStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 300
    sget-object v2, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v4, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    sget-object v1, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager$requestDisplayInAppMessage$1;->INSTANCE:Lcom/braze/ui/inappmessage/BrazeInAppMessageManager$requestDisplayInAppMessage$1;

    move-object v6, v1

    check-cast v6, Lkotlin/jvm/functions/Function0;

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v5, 0x0

    move-object v3, p0

    invoke-static/range {v2 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 305
    iget-object v1, p0, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;->inAppMessageStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/braze/models/inappmessage/IInAppMessage;

    iput-object v1, p0, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;->unregisteredInAppMessage:Lcom/braze/models/inappmessage/IInAppMessage;

    goto :goto_0

    .line 307
    :cond_0
    sget-object v2, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v1, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager$requestDisplayInAppMessage$2;->INSTANCE:Lcom/braze/ui/inappmessage/BrazeInAppMessageManager$requestDisplayInAppMessage$2;

    move-object v6, v1

    check-cast v6, Lkotlin/jvm/functions/Function0;

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p0

    invoke-static/range {v2 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    :goto_0
    return v0

    .line 314
    :cond_1
    iget-object v1, p0, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;->displayingInAppMessage:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 315
    sget-object v2, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v1, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager$requestDisplayInAppMessage$3;->INSTANCE:Lcom/braze/ui/inappmessage/BrazeInAppMessageManager$requestDisplayInAppMessage$3;

    move-object v6, v1

    check-cast v6, Lkotlin/jvm/functions/Function0;

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p0

    invoke-static/range {v2 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return v0

    .line 318
    :cond_2
    iget-object v1, p0, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;->inAppMessageStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 319
    sget-object v2, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v1, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager$requestDisplayInAppMessage$4;->INSTANCE:Lcom/braze/ui/inappmessage/BrazeInAppMessageManager$requestDisplayInAppMessage$4;

    move-object v6, v1

    check-cast v6, Lkotlin/jvm/functions/Function0;

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p0

    invoke-static/range {v2 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return v0

    .line 322
    :cond_3
    iget-object v1, p0, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;->inAppMessageStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/braze/models/inappmessage/IInAppMessage;

    .line 323
    invoke-interface {v1}, Lcom/braze/models/inappmessage/IInAppMessage;->isControl()Z

    move-result v2

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "inAppMessage"

    if-nez v2, :cond_4

    .line 324
    :try_start_1
    invoke-virtual {p0}, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;->getInAppMessageManagerListener()Lcom/braze/ui/inappmessage/listeners/IInAppMessageManagerListener;

    move-result-object v2

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v1}, Lcom/braze/ui/inappmessage/listeners/IInAppMessageManagerListener;->beforeInAppMessageDisplayed(Lcom/braze/models/inappmessage/IInAppMessage;)Lcom/braze/ui/inappmessage/InAppMessageOperation;

    move-result-object v2

    goto :goto_1

    .line 326
    :cond_4
    sget-object v4, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v2, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager$requestDisplayInAppMessage$inAppMessageOperation$1;->INSTANCE:Lcom/braze/ui/inappmessage/BrazeInAppMessageManager$requestDisplayInAppMessage$inAppMessageOperation$1;

    move-object v8, v2

    check-cast v8, Lkotlin/jvm/functions/Function0;

    const/4 v9, 0x3

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v5, p0

    invoke-static/range {v4 .. v10}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 327
    invoke-virtual {p0}, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;->getControlInAppMessageManagerListener()Lcom/braze/ui/inappmessage/listeners/IInAppMessageManagerListener;

    move-result-object v2

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v1}, Lcom/braze/ui/inappmessage/listeners/IInAppMessageManagerListener;->beforeInAppMessageDisplayed(Lcom/braze/models/inappmessage/IInAppMessage;)Lcom/braze/ui/inappmessage/InAppMessageOperation;

    move-result-object v2

    .line 329
    :goto_1
    sget-object v3, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v2}, Lcom/braze/ui/inappmessage/InAppMessageOperation;->ordinal()I

    move-result v2

    aget v2, v3, v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_7

    const/4 v4, 0x2

    if-eq v2, v4, :cond_6

    const/4 v4, 0x3

    if-eq v2, v4, :cond_5

    goto :goto_2

    .line 343
    :cond_5
    sget-object v5, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v1, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager$requestDisplayInAppMessage$7;->INSTANCE:Lcom/braze/ui/inappmessage/BrazeInAppMessageManager$requestDisplayInAppMessage$7;

    move-object v9, v1

    check-cast v9, Lkotlin/jvm/functions/Function0;

    const/4 v10, 0x3

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v6, p0

    invoke-static/range {v5 .. v11}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return v0

    .line 335
    :cond_6
    sget-object v2, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v3, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager$requestDisplayInAppMessage$6;->INSTANCE:Lcom/braze/ui/inappmessage/BrazeInAppMessageManager$requestDisplayInAppMessage$6;

    move-object v6, v3

    check-cast v6, Lkotlin/jvm/functions/Function0;

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p0

    invoke-static/range {v2 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 339
    iget-object v2, p0, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;->inAppMessageStack:Ljava/util/Stack;

    invoke-virtual {v2, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return v0

    .line 330
    :cond_7
    sget-object v4, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v2, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager$requestDisplayInAppMessage$5;->INSTANCE:Lcom/braze/ui/inappmessage/BrazeInAppMessageManager$requestDisplayInAppMessage$5;

    move-object v8, v2

    check-cast v8, Lkotlin/jvm/functions/Function0;

    const/4 v9, 0x3

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v5, p0

    invoke-static/range {v4 .. v10}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 350
    :goto_2
    invoke-static {v1}, Lcom/braze/ui/inappmessage/utils/BackgroundInAppMessagePreparer;->prepareInAppMessageForDisplay(Lcom/braze/models/inappmessage/IInAppMessage;)V

    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v0, v3

    goto :goto_3

    :catch_0
    move-exception v1

    .line 353
    sget-object v2, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v3, Lcom/braze/support/BrazeLogger$Priority;->E:Lcom/braze/support/BrazeLogger$Priority;

    check-cast v1, Ljava/lang/Throwable;

    sget-object v4, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager$requestDisplayInAppMessage$8;->INSTANCE:Lcom/braze/ui/inappmessage/BrazeInAppMessageManager$requestDisplayInAppMessage$8;

    check-cast v4, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v2, p0, v3, v1, v4}, Lcom/braze/support/BrazeLogger;->brazelog(Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V

    :goto_3
    return v0
.end method

.method public resetAfterInAppMessageClose()V
    .locals 12

    .line 387
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v2, Lcom/braze/support/BrazeLogger$Priority;->V:Lcom/braze/support/BrazeLogger$Priority;

    sget-object v1, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager$resetAfterInAppMessageClose$1;->INSTANCE:Lcom/braze/ui/inappmessage/BrazeInAppMessageManager$resetAfterInAppMessageClose$1;

    move-object v4, v1

    check-cast v4, Lkotlin/jvm/functions/Function0;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v6}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    const/4 v0, 0x0

    .line 388
    iput-object v0, p0, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;->inAppMessageViewWrapper:Lcom/braze/ui/inappmessage/IInAppMessageViewWrapper;

    .line 389
    iget-object v1, p0, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;->mActivity:Landroid/app/Activity;

    .line 390
    iget-object v2, p0, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;->originalOrientation:Ljava/lang/Integer;

    .line 391
    iget-object v3, p0, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;->displayingInAppMessage:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 393
    sget-object v5, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    new-instance v3, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager$resetAfterInAppMessageClose$2;

    invoke-direct {v3, v2}, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager$resetAfterInAppMessageClose$2;-><init>(Ljava/lang/Integer;)V

    move-object v9, v3

    check-cast v9, Lkotlin/jvm/functions/Function0;

    const/4 v10, 0x3

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v6, p0

    invoke-static/range {v5 .. v11}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 394
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/braze/ui/support/ViewUtils;->setActivityRequestedOrientation(Landroid/app/Activity;I)V

    .line 395
    iput-object v0, p0, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;->originalOrientation:Ljava/lang/Integer;

    :cond_0
    return-void
.end method

.method public final setCarryoverInAppMessage(Lcom/braze/models/inappmessage/IInAppMessage;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;->carryoverInAppMessage:Lcom/braze/models/inappmessage/IInAppMessage;

    return-void
.end method

.method public final setUnregisteredInAppMessage(Lcom/braze/models/inappmessage/IInAppMessage;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;->unregisteredInAppMessage:Lcom/braze/models/inappmessage/IInAppMessage;

    return-void
.end method

.method public unregisterInAppMessageManager(Landroid/app/Activity;)V
    .locals 11

    .line 233
    invoke-virtual {p0}, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;->getShouldNextUnregisterBeSkipped()Z

    move-result v1

    const/4 v7, 0x0

    if-eqz v1, :cond_0

    .line 234
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    new-instance v2, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager$unregisterInAppMessageManager$1;

    invoke-direct {v2, p1}, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager$unregisterInAppMessageManager$1;-><init>(Landroid/app/Activity;)V

    move-object v4, v2

    check-cast v4, Lkotlin/jvm/functions/Function0;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, v1

    move-object v1, p0

    invoke-static/range {v0 .. v6}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 238
    invoke-virtual {p0, v7}, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;->setShouldNextUnregisterBeSkipped(Z)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 243
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v2, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    sget-object v1, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager$unregisterInAppMessageManager$2;->INSTANCE:Lcom/braze/ui/inappmessage/BrazeInAppMessageManager$unregisterInAppMessageManager$2;

    move-object v4, v1

    check-cast v4, Lkotlin/jvm/functions/Function0;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v6}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    goto :goto_0

    .line 245
    :cond_1
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v2, Lcom/braze/support/BrazeLogger$Priority;->V:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v3, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager$unregisterInAppMessageManager$3;

    invoke-direct {v3, p1}, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager$unregisterInAppMessageManager$3;-><init>(Landroid/app/Activity;)V

    move-object v4, v3

    check-cast v4, Lkotlin/jvm/functions/Function0;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v0, v1

    move-object v1, p0

    invoke-static/range {v0 .. v6}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 251
    :goto_0
    iget-object v8, p0, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;->inAppMessageViewWrapper:Lcom/braze/ui/inappmessage/IInAppMessageViewWrapper;

    const/4 v9, 0x0

    if-eqz v8, :cond_4

    .line 253
    invoke-interface {v8}, Lcom/braze/ui/inappmessage/IInAppMessageViewWrapper;->getInAppMessageView()Landroid/view/View;

    move-result-object v10

    .line 254
    instance-of v0, v10, Lcom/braze/ui/inappmessage/views/InAppMessageHtmlBaseView;

    if-eqz v0, :cond_2

    .line 255
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v1, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager$unregisterInAppMessageManager$4;->INSTANCE:Lcom/braze/ui/inappmessage/BrazeInAppMessageManager$unregisterInAppMessageManager$4;

    move-object v4, v1

    check-cast v4, Lkotlin/jvm/functions/Function0;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v6}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 256
    move-object v0, v10

    check-cast v0, Lcom/braze/ui/inappmessage/views/InAppMessageHtmlBaseView;

    invoke-virtual {v0, v9}, Lcom/braze/ui/inappmessage/views/InAppMessageHtmlBaseView;->setHtmlPageFinishedListener(Lcom/braze/ui/inappmessage/listeners/IWebViewClientStateListener;)V

    .line 258
    :cond_2
    invoke-static {v10}, Lcom/braze/ui/support/ViewUtils;->removeViewFromParent(Landroid/view/View;)V

    .line 261
    invoke-interface {v8}, Lcom/braze/ui/inappmessage/IInAppMessageViewWrapper;->isAnimatingClose()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 263
    iget-object v0, p0, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;->inAppMessageViewLifecycleListener:Lcom/braze/ui/inappmessage/listeners/IInAppMessageViewLifecycleListener;

    invoke-interface {v8}, Lcom/braze/ui/inappmessage/IInAppMessageViewWrapper;->getInAppMessage()Lcom/braze/models/inappmessage/IInAppMessage;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/braze/ui/inappmessage/listeners/IInAppMessageViewLifecycleListener;->afterClosed(Lcom/braze/models/inappmessage/IInAppMessage;)V

    .line 264
    move-object v0, v9

    check-cast v0, Lcom/braze/models/inappmessage/IInAppMessage;

    move-object v0, v9

    goto :goto_1

    .line 266
    :cond_3
    invoke-interface {v8}, Lcom/braze/ui/inappmessage/IInAppMessageViewWrapper;->getInAppMessage()Lcom/braze/models/inappmessage/IInAppMessage;

    move-result-object v0

    .line 261
    :goto_1
    iput-object v0, p0, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;->carryoverInAppMessage:Lcom/braze/models/inappmessage/IInAppMessage;

    .line 268
    iput-object v9, p0, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;->inAppMessageViewWrapper:Lcom/braze/ui/inappmessage/IInAppMessageViewWrapper;

    goto :goto_2

    .line 270
    :cond_4
    iput-object v9, p0, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;->carryoverInAppMessage:Lcom/braze/models/inappmessage/IInAppMessage;

    .line 272
    :goto_2
    iput-object v9, p0, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;->mActivity:Landroid/app/Activity;

    .line 273
    iget-object v0, p0, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;->displayingInAppMessage:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public verifyOrientationStatus(Lcom/braze/models/inappmessage/IInAppMessage;)Z
    .locals 10

    const-string v0, "inAppMessage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 623
    iget-object v0, p0, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;->mActivity:Landroid/app/Activity;

    .line 624
    invoke-interface {p1}, Lcom/braze/models/inappmessage/IInAppMessage;->getOrientation()Lcom/braze/enums/inappmessage/Orientation;

    move-result-object p1

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 627
    sget-object v2, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v4, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    sget-object p1, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager$verifyOrientationStatus$1;->INSTANCE:Lcom/braze/ui/inappmessage/BrazeInAppMessageManager$verifyOrientationStatus$1;

    move-object v6, p1

    check-cast v6, Lkotlin/jvm/functions/Function0;

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v5, 0x0

    move-object v3, p0

    invoke-static/range {v2 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    goto :goto_0

    .line 628
    :cond_0
    invoke-static {v0}, Lcom/braze/ui/support/ViewUtils;->isRunningOnTablet(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 629
    sget-object v3, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object p1, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager$verifyOrientationStatus$2;->INSTANCE:Lcom/braze/ui/inappmessage/BrazeInAppMessageManager$verifyOrientationStatus$2;

    move-object v7, p1

    check-cast v7, Lkotlin/jvm/functions/Function0;

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, p0

    invoke-static/range {v3 .. v9}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    goto :goto_0

    .line 630
    :cond_1
    sget-object v2, Lcom/braze/enums/inappmessage/Orientation;->ANY:Lcom/braze/enums/inappmessage/Orientation;

    if-ne p1, v2, :cond_2

    .line 631
    sget-object v3, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object p1, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager$verifyOrientationStatus$3;->INSTANCE:Lcom/braze/ui/inappmessage/BrazeInAppMessageManager$verifyOrientationStatus$3;

    move-object v7, p1

    check-cast v7, Lkotlin/jvm/functions/Function0;

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, p0

    invoke-static/range {v3 .. v9}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    :goto_0
    return v1

    .line 633
    :cond_2
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    .line 634
    invoke-static {v2, p1}, Lcom/braze/ui/support/ViewUtils;->isCurrentOrientationValid(ILcom/braze/enums/inappmessage/Orientation;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 635
    iget-object p1, p0, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;->originalOrientation:Ljava/lang/Integer;

    if-nez p1, :cond_4

    .line 636
    sget-object v2, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object p1, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager$verifyOrientationStatus$4;->INSTANCE:Lcom/braze/ui/inappmessage/BrazeInAppMessageManager$verifyOrientationStatus$4;

    move-object v6, p1

    check-cast v6, Lkotlin/jvm/functions/Function0;

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p0

    invoke-static/range {v2 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 637
    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;->originalOrientation:Ljava/lang/Integer;

    const/16 p1, 0xe

    .line 639
    invoke-static {v0, p1}, Lcom/braze/ui/support/ViewUtils;->setActivityRequestedOrientation(Landroid/app/Activity;I)V

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :cond_4
    :goto_1
    return v1
.end method
