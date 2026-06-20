.class public final Lcom/braze/ui/inappmessage/BrazeInAppMessageManager$Companion;
.super Ljava/lang/Object;
.source "BrazeInAppMessageManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0007\u001a\u00020\u0004H\u0007R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/braze/ui/inappmessage/BrazeInAppMessageManager$Companion;",
        "",
        "()V",
        "instance",
        "Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;",
        "instanceLock",
        "Ljava/util/concurrent/locks/ReentrantLock;",
        "getInstance",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 649
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInstance()Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 657
    invoke-static {}, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;->access$getInstance$cp()Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.braze.ui.inappmessage.BrazeInAppMessageManager"

    if-eqz v0, :cond_1

    .line 658
    invoke-static {}, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;->access$getInstance$cp()Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 660
    :cond_1
    invoke-static {}, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;->access$getInstanceLock$cp()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 661
    :try_start_0
    invoke-static {}, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;->access$getInstance$cp()Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;

    move-result-object v2

    if-nez v2, :cond_2

    .line 662
    sget-object v2, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;->Companion:Lcom/braze/ui/inappmessage/BrazeInAppMessageManager$Companion;

    new-instance v2, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;

    invoke-direct {v2}, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;-><init>()V

    invoke-static {v2}, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;->access$setInstance$cp(Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;)V

    .line 664
    :cond_2
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 660
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 665
    invoke-static {}, Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;->access$getInstance$cp()Lcom/braze/ui/inappmessage/BrazeInAppMessageManager;

    move-result-object v0

    if-eqz v0, :cond_3

    return-object v0

    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v1

    .line 660
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method
