.class Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage$XLEAnimationEntry;
.super Ljava/lang/Object;
.source "XLEAnimationPackage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "XLEAnimationEntry"
.end annotation


# instance fields
.field public animation:Lcom/microsoft/xbox/toolkit/anim/XLEAnimation;

.field public done:Z

.field public iterationID:I

.field final synthetic this$0:Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage;


# direct methods
.method public constructor <init>(Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage;Lcom/microsoft/xbox/toolkit/anim/XLEAnimation;)V
    .locals 1

    .line 16
    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage$XLEAnimationEntry;->this$0:Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p2, p0, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage$XLEAnimationEntry;->animation:Lcom/microsoft/xbox/toolkit/anim/XLEAnimation;

    const/4 v0, 0x0

    .line 18
    iput v0, p0, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage$XLEAnimationEntry;->iterationID:I

    .line 19
    iput-boolean v0, p0, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage$XLEAnimationEntry;->done:Z

    .line 21
    new-instance v0, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage$XLEAnimationEntry$1;

    invoke-direct {v0, p0, p1}, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage$XLEAnimationEntry$1;-><init>(Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage$XLEAnimationEntry;Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage;)V

    invoke-virtual {p2, v0}, Lcom/microsoft/xbox/toolkit/anim/XLEAnimation;->setOnAnimationEnd(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$000(Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage$XLEAnimationEntry;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage$XLEAnimationEntry;->onAnimationEnded()V

    return-void
.end method

.method static synthetic access$200(Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage$XLEAnimationEntry;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage$XLEAnimationEntry;->finish()V

    return-void
.end method

.method private finish()V
    .locals 1

    const/4 v0, 0x1

    .line 48
    iput-boolean v0, p0, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage$XLEAnimationEntry;->done:Z

    .line 49
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage$XLEAnimationEntry;->this$0:Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage;

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage;->access$300(Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage;)V

    return-void
.end method

.method private onAnimationEnded()V
    .locals 4

    .line 30
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    .line 31
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage$XLEAnimationEntry;->this$0:Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage;

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage;->access$100(Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-static {v2}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    .line 34
    iget v0, p0, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage$XLEAnimationEntry;->iterationID:I

    .line 37
    new-instance v1, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage$XLEAnimationEntry$2;

    invoke-direct {v1, p0, v0}, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage$XLEAnimationEntry$2;-><init>(Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage$XLEAnimationEntry;I)V

    invoke-static {v1}, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThreadPost(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public clearAnimation()V
    .locals 1

    .line 58
    iget v0, p0, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage$XLEAnimationEntry;->iterationID:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage$XLEAnimationEntry;->iterationID:I

    .line 59
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage$XLEAnimationEntry;->animation:Lcom/microsoft/xbox/toolkit/anim/XLEAnimation;

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/anim/XLEAnimation;->clear()V

    return-void
.end method

.method public startAnimation()V
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage$XLEAnimationEntry;->animation:Lcom/microsoft/xbox/toolkit/anim/XLEAnimation;

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/anim/XLEAnimation;->start()V

    return-void
.end method
