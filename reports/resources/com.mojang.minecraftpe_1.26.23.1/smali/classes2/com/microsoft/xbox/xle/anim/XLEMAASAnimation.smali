.class public Lcom/microsoft/xbox/xle/anim/XLEMAASAnimation;
.super Lcom/microsoft/xbox/toolkit/anim/MAASAnimation;
.source "XLEMAASAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xbox/xle/anim/XLEMAASAnimation$TargetType;
    }
.end annotation


# instance fields
.field public animations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/microsoft/xbox/xle/anim/XLEAnimationDefinition;",
            ">;"
        }
    .end annotation
    .annotation runtime Lorg/simpleframework/xml/ElementList;
        required = false
    .end annotation
.end field

.field public fillAfter:Z
    .annotation runtime Lorg/simpleframework/xml/Attribute;
        required = false
    .end annotation
.end field

.field public offsetMs:I
    .annotation runtime Lorg/simpleframework/xml/Attribute;
        required = false
    .end annotation
.end field

.field public target:Lcom/microsoft/xbox/xle/anim/XLEMAASAnimation$TargetType;
    .annotation runtime Lorg/simpleframework/xml/Attribute;
        required = false
    .end annotation
.end field

.field public targetId:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Attribute;
        required = false
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/anim/MAASAnimation;-><init>()V

    .line 29
    sget-object v0, Lcom/microsoft/xbox/xle/anim/XLEMAASAnimation$TargetType;->View:Lcom/microsoft/xbox/xle/anim/XLEMAASAnimation$TargetType;

    iput-object v0, p0, Lcom/microsoft/xbox/xle/anim/XLEMAASAnimation;->target:Lcom/microsoft/xbox/xle/anim/XLEMAASAnimation$TargetType;

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/microsoft/xbox/xle/anim/XLEMAASAnimation;->targetId:Ljava/lang/String;

    const/4 v0, 0x1

    .line 38
    iput-boolean v0, p0, Lcom/microsoft/xbox/xle/anim/XLEMAASAnimation;->fillAfter:Z

    return-void
.end method


# virtual methods
.method public compile()Lcom/microsoft/xbox/toolkit/anim/XLEAnimation;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/microsoft/xbox/xle/anim/XLEMAASAnimation;->targetId:Ljava/lang/String;

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLERValueHelper;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/xle/anim/XLEMAASAnimation;->compile(Landroid/view/View;)Lcom/microsoft/xbox/toolkit/anim/XLEAnimation;

    move-result-object v0

    return-object v0
.end method

.method public compile(Landroid/view/View;)Lcom/microsoft/xbox/toolkit/anim/XLEAnimation;
    .locals 3

    .line 56
    iget-object v0, p0, Lcom/microsoft/xbox/xle/anim/XLEMAASAnimation;->animations:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 57
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 58
    iget-object v1, p0, Lcom/microsoft/xbox/xle/anim/XLEMAASAnimation;->animations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/microsoft/xbox/xle/anim/XLEAnimationDefinition;

    .line 59
    invoke-virtual {v2}, Lcom/microsoft/xbox/xle/anim/XLEAnimationDefinition;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 61
    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 66
    :cond_2
    sget-object v1, Lcom/microsoft/xbox/xle/anim/XLEMAASAnimation$1;->$SwitchMap$com$microsoft$xbox$xle$anim$XLEMAASAnimation$TargetType:[I

    iget-object v2, p0, Lcom/microsoft/xbox/xle/anim/XLEMAASAnimation;->target:Lcom/microsoft/xbox/xle/anim/XLEMAASAnimation$TargetType;

    invoke-virtual {v2}, Lcom/microsoft/xbox/xle/anim/XLEMAASAnimation$TargetType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_5

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    goto :goto_1

    .line 80
    :cond_3
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 74
    :cond_4
    :goto_1
    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    .line 75
    iget v1, p0, Lcom/microsoft/xbox/xle/anim/XLEMAASAnimation;->offsetMs:I

    int-to-float v1, v1

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v1, v2

    .line 76
    new-instance v2, Landroid/view/animation/LayoutAnimationController;

    invoke-direct {v2, v0, v1}, Landroid/view/animation/LayoutAnimationController;-><init>(Landroid/view/animation/Animation;F)V

    .line 77
    new-instance v0, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationAbsListView;

    invoke-direct {v0, v2}, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationAbsListView;-><init>(Landroid/view/animation/LayoutAnimationController;)V

    goto :goto_2

    .line 68
    :cond_5
    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertNotNull(Ljava/lang/Object;)V

    .line 69
    new-instance v1, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationView;

    invoke-direct {v1, v0}, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationView;-><init>(Landroid/view/animation/Animation;)V

    .line 70
    move-object v0, v1

    check-cast v0, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationView;

    iget-boolean v0, p0, Lcom/microsoft/xbox/xle/anim/XLEMAASAnimation;->fillAfter:Z

    invoke-virtual {v1, v0}, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationView;->setFillAfter(Z)V

    move-object v0, v1

    .line 83
    :goto_2
    invoke-virtual {v0, p1}, Lcom/microsoft/xbox/toolkit/anim/XLEAnimation;->setTargetView(Landroid/view/View;)V

    return-object v0
.end method

.method public compileWithRoot(Landroid/view/View;)Lcom/microsoft/xbox/toolkit/anim/XLEAnimation;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/microsoft/xbox/xle/anim/XLEMAASAnimation;->targetId:Ljava/lang/String;

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLERValueHelper;->getIdRValue(Ljava/lang/String;)I

    move-result v0

    .line 47
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 48
    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/xle/anim/XLEMAASAnimation;->compile(Landroid/view/View;)Lcom/microsoft/xbox/toolkit/anim/XLEAnimation;

    move-result-object p1

    return-object p1
.end method
