.class public Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage;
.super Ljava/lang/Object;
.source "XLEAnimationPackage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage$XLEAnimationEntry;
    }
.end annotation


# instance fields
.field private animations:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage$XLEAnimationEntry;",
            ">;"
        }
    .end annotation
.end field

.field private onAnimationEndRunnable:Ljava/lang/Runnable;

.field private running:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 65
    iput-boolean v0, p0, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage;->running:Z

    .line 88
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage;->animations:Ljava/util/LinkedList;

    return-void
.end method

.method static synthetic access$100(Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage;)Ljava/lang/Runnable;
    .locals 0

    .line 8
    iget-object p0, p0, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage;->onAnimationEndRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$300(Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage;->tryFinishAll()V

    return-void
.end method

.method private getRemainingAnimations()I
    .locals 3

    .line 79
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage;->animations:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage$XLEAnimationEntry;

    .line 80
    iget-boolean v2, v2, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage$XLEAnimationEntry;->done:Z

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private tryFinishAll()V
    .locals 1

    .line 68
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage;->getRemainingAnimations()I

    move-result v0

    if-nez v0, :cond_0

    .line 69
    iget-boolean v0, p0, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage;->running:Z

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    const/4 v0, 0x0

    .line 70
    iput-boolean v0, p0, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage;->running:Z

    .line 73
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage;->onAnimationEndRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method


# virtual methods
.method public add(Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage;)Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage;
    .locals 1

    if-eqz p1, :cond_0

    .line 116
    iget-object p1, p1, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage;->animations:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage$XLEAnimationEntry;

    .line 117
    iget-object v0, v0, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage$XLEAnimationEntry;->animation:Lcom/microsoft/xbox/toolkit/anim/XLEAnimation;

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage;->add(Lcom/microsoft/xbox/toolkit/anim/XLEAnimation;)V

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public add(Lcom/microsoft/xbox/toolkit/anim/XLEAnimation;)V
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage;->animations:Ljava/util/LinkedList;

    new-instance v1, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage$XLEAnimationEntry;

    invoke-direct {v1, p0, p1}, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage$XLEAnimationEntry;-><init>(Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage;Lcom/microsoft/xbox/toolkit/anim/XLEAnimation;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clearAnimation()V
    .locals 2

    .line 105
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage;->animations:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage$XLEAnimationEntry;

    .line 106
    invoke-virtual {v1}, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage$XLEAnimationEntry;->clearAnimation()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setOnAnimationEndRunnable(Ljava/lang/Runnable;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage;->onAnimationEndRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public startAnimation()V
    .locals 2

    .line 96
    iget-boolean v0, p0, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage;->running:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    .line 97
    iput-boolean v1, p0, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage;->running:Z

    .line 99
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage;->animations:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage$XLEAnimationEntry;

    .line 100
    invoke-virtual {v1}, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationPackage$XLEAnimationEntry;->startAnimation()V

    goto :goto_0

    :cond_0
    return-void
.end method
