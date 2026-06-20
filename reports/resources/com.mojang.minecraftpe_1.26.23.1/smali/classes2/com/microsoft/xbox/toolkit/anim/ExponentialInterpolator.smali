.class public Lcom/microsoft/xbox/toolkit/anim/ExponentialInterpolator;
.super Lcom/microsoft/xbox/toolkit/anim/XLEInterpolator;
.source "ExponentialInterpolator.java"


# instance fields
.field private exponent:F


# direct methods
.method public constructor <init>(FLcom/microsoft/xbox/toolkit/anim/EasingMode;)V
    .locals 0

    .line 8
    invoke-direct {p0, p2}, Lcom/microsoft/xbox/toolkit/anim/XLEInterpolator;-><init>(Lcom/microsoft/xbox/toolkit/anim/EasingMode;)V

    .line 9
    iput p1, p0, Lcom/microsoft/xbox/toolkit/anim/ExponentialInterpolator;->exponent:F

    return-void
.end method


# virtual methods
.method protected getInterpolationCore(F)F
    .locals 8

    .line 14
    iget v0, p0, Lcom/microsoft/xbox/toolkit/anim/ExponentialInterpolator;->exponent:F

    mul-float/2addr v0, p1

    float-to-double v0, v0

    const-wide v2, 0x4005bf0a8b145769L    # 2.718281828459045

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, v4

    iget p1, p0, Lcom/microsoft/xbox/toolkit/anim/ExponentialInterpolator;->exponent:F

    float-to-double v6, p1

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    sub-double/2addr v2, v4

    div-double/2addr v0, v2

    double-to-float p1, v0

    return p1
.end method
