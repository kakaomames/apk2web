.class public Lcom/microsoft/xbox/toolkit/anim/HeightAnimation;
.super Landroid/view/animation/Animation;
.source "HeightAnimation.java"


# instance fields
.field private fromValue:I

.field private toValue:I

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 12
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 13
    iput p1, p0, Lcom/microsoft/xbox/toolkit/anim/HeightAnimation;->fromValue:I

    .line 14
    iput p2, p0, Lcom/microsoft/xbox/toolkit/anim/HeightAnimation;->toValue:I

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 1

    .line 24
    iget p2, p0, Lcom/microsoft/xbox/toolkit/anim/HeightAnimation;->toValue:I

    iget v0, p0, Lcom/microsoft/xbox/toolkit/anim/HeightAnimation;->fromValue:I

    sub-int/2addr p2, v0

    int-to-float p2, p2

    mul-float/2addr p2, p1

    float-to-int p1, p2

    .line 26
    iget-object p2, p0, Lcom/microsoft/xbox/toolkit/anim/HeightAnimation;->view:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iget v0, p0, Lcom/microsoft/xbox/toolkit/anim/HeightAnimation;->fromValue:I

    add-int/2addr v0, p1

    iput v0, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 27
    iget-object p1, p0, Lcom/microsoft/xbox/toolkit/anim/HeightAnimation;->view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setTargetView(Landroid/view/View;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/anim/HeightAnimation;->view:Landroid/view/View;

    .line 19
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/microsoft/xbox/toolkit/anim/HeightAnimation;->fromValue:I

    return-void
.end method

.method public willChangeBounds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
