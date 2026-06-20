.class public Lcom/microsoft/xbox/xle/anim/XLEAnimationDefinition;
.super Ljava/lang/Object;
.source "XLEAnimationDefinition.java"


# instance fields
.field public delayMs:I
    .annotation runtime Lorg/simpleframework/xml/Attribute;
        required = false
    .end annotation
.end field

.field public dimen:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Attribute;
        required = false
    .end annotation
.end field

.field public durationMs:I
    .annotation runtime Lorg/simpleframework/xml/Attribute;
        required = false
    .end annotation
.end field

.field public easing:Lcom/microsoft/xbox/toolkit/anim/EasingMode;
    .annotation runtime Lorg/simpleframework/xml/Attribute;
        required = false
    .end annotation
.end field

.field public from:F
    .annotation runtime Lorg/simpleframework/xml/Attribute;
        required = false
    .end annotation
.end field

.field public fromXType:I
    .annotation runtime Lorg/simpleframework/xml/Attribute;
        required = false
    .end annotation
.end field

.field public fromYType:I
    .annotation runtime Lorg/simpleframework/xml/Attribute;
        required = false
    .end annotation
.end field

.field public parameter:F
    .annotation runtime Lorg/simpleframework/xml/Attribute;
        required = false
    .end annotation
.end field

.field public pivotX:F
    .annotation runtime Lorg/simpleframework/xml/Attribute;
        required = false
    .end annotation
.end field

.field public pivotY:F
    .annotation runtime Lorg/simpleframework/xml/Attribute;
        required = false
    .end annotation
.end field

.field public property:Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;
    .annotation runtime Lorg/simpleframework/xml/Attribute;
        required = false
    .end annotation
.end field

.field public scaleRelativeToSelf:Z
    .annotation runtime Lorg/simpleframework/xml/Attribute;
        required = false
    .end annotation
.end field

.field public to:F
    .annotation runtime Lorg/simpleframework/xml/Attribute;
        required = false
    .end annotation
.end field

.field public toXType:I
    .annotation runtime Lorg/simpleframework/xml/Attribute;
        required = false
    .end annotation
.end field

.field public toYType:I
    .annotation runtime Lorg/simpleframework/xml/Attribute;
        required = false
    .end annotation
.end field

.field public type:Lcom/microsoft/xbox/toolkit/anim/AnimationFunctionType;
    .annotation runtime Lorg/simpleframework/xml/Attribute;
        required = false
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    sget-object v0, Lcom/microsoft/xbox/toolkit/anim/EasingMode;->EaseIn:Lcom/microsoft/xbox/toolkit/anim/EasingMode;

    iput-object v0, p0, Lcom/microsoft/xbox/xle/anim/XLEAnimationDefinition;->easing:Lcom/microsoft/xbox/toolkit/anim/EasingMode;

    const/high16 v0, 0x3f000000    # 0.5f

    .line 51
    iput v0, p0, Lcom/microsoft/xbox/xle/anim/XLEAnimationDefinition;->pivotX:F

    .line 54
    iput v0, p0, Lcom/microsoft/xbox/xle/anim/XLEAnimationDefinition;->pivotY:F

    const/4 v0, 0x1

    .line 57
    iput-boolean v0, p0, Lcom/microsoft/xbox/xle/anim/XLEAnimationDefinition;->scaleRelativeToSelf:Z

    .line 60
    iput v0, p0, Lcom/microsoft/xbox/xle/anim/XLEAnimationDefinition;->fromXType:I

    .line 63
    iput v0, p0, Lcom/microsoft/xbox/xle/anim/XLEAnimationDefinition;->toXType:I

    .line 66
    iput v0, p0, Lcom/microsoft/xbox/xle/anim/XLEAnimationDefinition;->fromYType:I

    .line 69
    iput v0, p0, Lcom/microsoft/xbox/xle/anim/XLEAnimationDefinition;->toYType:I

    return-void
.end method

.method private getInterpolator()Landroid/view/animation/Interpolator;
    .locals 3

    .line 115
    sget-object v0, Lcom/microsoft/xbox/xle/anim/XLEAnimationDefinition$1;->$SwitchMap$com$microsoft$xbox$toolkit$anim$AnimationFunctionType:[I

    iget-object v1, p0, Lcom/microsoft/xbox/xle/anim/XLEAnimationDefinition;->type:Lcom/microsoft/xbox/toolkit/anim/AnimationFunctionType;

    invoke-virtual {v1}, Lcom/microsoft/xbox/toolkit/anim/AnimationFunctionType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 124
    new-instance v0, Lcom/microsoft/xbox/toolkit/anim/XLEInterpolator;

    iget-object v1, p0, Lcom/microsoft/xbox/xle/anim/XLEAnimationDefinition;->easing:Lcom/microsoft/xbox/toolkit/anim/EasingMode;

    invoke-direct {v0, v1}, Lcom/microsoft/xbox/toolkit/anim/XLEInterpolator;-><init>(Lcom/microsoft/xbox/toolkit/anim/EasingMode;)V

    return-object v0

    .line 121
    :cond_0
    new-instance v0, Lcom/microsoft/xbox/toolkit/anim/BackEaseInterpolator;

    iget v1, p0, Lcom/microsoft/xbox/xle/anim/XLEAnimationDefinition;->parameter:F

    iget-object v2, p0, Lcom/microsoft/xbox/xle/anim/XLEAnimationDefinition;->easing:Lcom/microsoft/xbox/toolkit/anim/EasingMode;

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/toolkit/anim/BackEaseInterpolator;-><init>(FLcom/microsoft/xbox/toolkit/anim/EasingMode;)V

    return-object v0

    .line 119
    :cond_1
    new-instance v0, Lcom/microsoft/xbox/toolkit/anim/ExponentialInterpolator;

    iget v1, p0, Lcom/microsoft/xbox/xle/anim/XLEAnimationDefinition;->parameter:F

    iget-object v2, p0, Lcom/microsoft/xbox/xle/anim/XLEAnimationDefinition;->easing:Lcom/microsoft/xbox/toolkit/anim/EasingMode;

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/toolkit/anim/ExponentialInterpolator;-><init>(FLcom/microsoft/xbox/toolkit/anim/EasingMode;)V

    return-object v0

    .line 117
    :cond_2
    new-instance v0, Lcom/microsoft/xbox/toolkit/anim/SineInterpolator;

    iget-object v1, p0, Lcom/microsoft/xbox/xle/anim/XLEAnimationDefinition;->easing:Lcom/microsoft/xbox/toolkit/anim/EasingMode;

    invoke-direct {v0, v1}, Lcom/microsoft/xbox/toolkit/anim/SineInterpolator;-><init>(Lcom/microsoft/xbox/toolkit/anim/EasingMode;)V

    return-object v0
.end method


# virtual methods
.method public getAnimation()Landroid/view/animation/Animation;
    .locals 24

    move-object/from16 v0, p0

    .line 73
    invoke-direct/range {p0 .. p0}, Lcom/microsoft/xbox/xle/anim/XLEAnimationDefinition;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v1

    .line 76
    sget-object v2, Lcom/microsoft/xbox/xle/anim/XLEAnimationDefinition$1;->$SwitchMap$com$microsoft$xbox$toolkit$anim$AnimationProperty:[I

    iget-object v3, v0, Lcom/microsoft/xbox/xle/anim/XLEAnimationDefinition;->property:Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;

    invoke-virtual {v3}, Lcom/microsoft/xbox/toolkit/anim/AnimationProperty;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v2, v3, :cond_7

    const/4 v5, 0x2

    if-eq v2, v5, :cond_4

    const/4 v3, 0x3

    if-eq v2, v3, :cond_3

    const/4 v3, 0x4

    if-eq v2, v3, :cond_2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_0

    move-object v5, v4

    goto/16 :goto_3

    .line 95
    :cond_0
    iget-object v2, v0, Lcom/microsoft/xbox/xle/anim/XLEAnimationDefinition;->dimen:Ljava/lang/String;

    invoke-static {v2}, Lcom/microsoft/xbox/toolkit/XLERValueHelper;->findDimensionIdByName(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    if-ltz v2, :cond_1

    .line 98
    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_0

    :cond_1
    move v2, v3

    .line 100
    :goto_0
    new-instance v5, Lcom/microsoft/xbox/toolkit/anim/HeightAnimation;

    invoke-direct {v5, v3, v2}, Lcom/microsoft/xbox/toolkit/anim/HeightAnimation;-><init>(II)V

    goto/16 :goto_3

    .line 91
    :cond_2
    new-instance v5, Landroid/view/animation/TranslateAnimation;

    iget v11, v0, Lcom/microsoft/xbox/xle/anim/XLEAnimationDefinition;->fromYType:I

    iget v12, v0, Lcom/microsoft/xbox/xle/anim/XLEAnimationDefinition;->from:F

    iget v13, v0, Lcom/microsoft/xbox/xle/anim/XLEAnimationDefinition;->toYType:I

    iget v14, v0, Lcom/microsoft/xbox/xle/anim/XLEAnimationDefinition;->to:F

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v6, v5

    invoke-direct/range {v6 .. v14}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    goto :goto_3

    .line 87
    :cond_3
    new-instance v5, Landroid/view/animation/TranslateAnimation;

    iget v2, v0, Lcom/microsoft/xbox/xle/anim/XLEAnimationDefinition;->fromXType:I

    iget v3, v0, Lcom/microsoft/xbox/xle/anim/XLEAnimationDefinition;->from:F

    iget v6, v0, Lcom/microsoft/xbox/xle/anim/XLEAnimationDefinition;->toXType:I

    iget v7, v0, Lcom/microsoft/xbox/xle/anim/XLEAnimationDefinition;->to:F

    const/16 v22, 0x1

    const/16 v23, 0x0

    const/16 v20, 0x1

    const/16 v21, 0x0

    move-object v15, v5

    move/from16 v16, v2

    move/from16 v17, v3

    move/from16 v18, v6

    move/from16 v19, v7

    invoke-direct/range {v15 .. v23}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    goto :goto_3

    .line 82
    :cond_4
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    iget v11, v0, Lcom/microsoft/xbox/xle/anim/XLEAnimationDefinition;->from:F

    iget v12, v0, Lcom/microsoft/xbox/xle/anim/XLEAnimationDefinition;->to:F

    iget-boolean v6, v0, Lcom/microsoft/xbox/xle/anim/XLEAnimationDefinition;->scaleRelativeToSelf:Z

    if-eqz v6, :cond_5

    move v13, v3

    goto :goto_1

    :cond_5
    move v13, v5

    :goto_1
    iget v14, v0, Lcom/microsoft/xbox/xle/anim/XLEAnimationDefinition;->pivotX:F

    if-eqz v6, :cond_6

    move v15, v3

    goto :goto_2

    :cond_6
    move v15, v5

    .line 83
    :goto_2
    iget v3, v0, Lcom/microsoft/xbox/xle/anim/XLEAnimationDefinition;->pivotY:F

    move-object v8, v2

    move v9, v11

    move v10, v12

    move/from16 v16, v3

    invoke-direct/range {v8 .. v16}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    move-object v5, v2

    goto :goto_3

    .line 78
    :cond_7
    new-instance v5, Landroid/view/animation/AlphaAnimation;

    iget v2, v0, Lcom/microsoft/xbox/xle/anim/XLEAnimationDefinition;->from:F

    iget v3, v0, Lcom/microsoft/xbox/xle/anim/XLEAnimationDefinition;->to:F

    invoke-direct {v5, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    :goto_3
    if-eqz v5, :cond_8

    .line 105
    iget v2, v0, Lcom/microsoft/xbox/xle/anim/XLEAnimationDefinition;->durationMs:I

    int-to-long v2, v2

    invoke-virtual {v5, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 106
    invoke-virtual {v5, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 107
    iget v1, v0, Lcom/microsoft/xbox/xle/anim/XLEAnimationDefinition;->delayMs:I

    int-to-long v1, v1

    invoke-virtual {v5, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    return-object v5

    :cond_8
    return-object v4
.end method
