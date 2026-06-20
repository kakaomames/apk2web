.class public Lcom/microsoft/xbox/toolkit/anim/XLEInterpolator;
.super Ljava/lang/Object;
.source "XLEInterpolator.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field private easingMode:Lcom/microsoft/xbox/toolkit/anim/EasingMode;


# direct methods
.method public constructor <init>(Lcom/microsoft/xbox/toolkit/anim/EasingMode;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/anim/XLEInterpolator;->easingMode:Lcom/microsoft/xbox/toolkit/anim/EasingMode;

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 5

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_4

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-gtz v1, :cond_4

    .line 19
    sget-object v1, Lcom/microsoft/xbox/toolkit/anim/XLEInterpolator$1;->$SwitchMap$com$microsoft$xbox$toolkit$anim$EasingMode:[I

    iget-object v2, p0, Lcom/microsoft/xbox/toolkit/anim/XLEInterpolator;->easingMode:Lcom/microsoft/xbox/toolkit/anim/EasingMode;

    invoke-virtual {v2}, Lcom/microsoft/xbox/toolkit/anim/EasingMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    return p1

    :cond_0
    float-to-double v1, p1

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    cmpg-double v1, v1, v3

    const/high16 v2, 0x40000000

    if-gez v1, :cond_1

    mul-float/2addr p1, v2

    .line 28
    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/toolkit/anim/XLEInterpolator;->getInterpolationCore(F)F

    move-result p1

    div-float/2addr p1, v2

    return p1

    :cond_1
    mul-float/2addr p1, v2

    sub-float p1, v2, p1

    .line 30
    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/toolkit/anim/XLEInterpolator;->getInterpolationCore(F)F

    move-result p1

    sub-float/2addr v0, p1

    div-float/2addr v0, v2

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr v0, p1

    return v0

    :cond_2
    sub-float p1, v0, p1

    .line 24
    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/toolkit/anim/XLEInterpolator;->getInterpolationCore(F)F

    move-result p1

    sub-float/2addr v0, p1

    return v0

    .line 21
    :cond_3
    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/toolkit/anim/XLEInterpolator;->getInterpolationCore(F)F

    move-result p1

    return p1

    .line 16
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "should respect 0<=normalizedTime<=1"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected getInterpolationCore(F)F
    .locals 0

    return p1
.end method
