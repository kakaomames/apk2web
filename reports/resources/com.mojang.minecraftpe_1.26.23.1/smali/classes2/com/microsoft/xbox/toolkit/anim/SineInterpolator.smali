.class public Lcom/microsoft/xbox/toolkit/anim/SineInterpolator;
.super Lcom/microsoft/xbox/toolkit/anim/XLEInterpolator;
.source "SineInterpolator.java"


# direct methods
.method public constructor <init>(Lcom/microsoft/xbox/toolkit/anim/EasingMode;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/microsoft/xbox/toolkit/anim/XLEInterpolator;-><init>(Lcom/microsoft/xbox/toolkit/anim/EasingMode;)V

    return-void
.end method


# virtual methods
.method protected getInterpolationCore(F)F
    .locals 6

    float-to-double v0, p1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double v0, v2, v0

    const-wide v4, 0x3ff921fb54442d18L    # 1.5707963267948966

    mul-double/2addr v0, v4

    .line 11
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    sub-double/2addr v2, v0

    double-to-float p1, v2

    return p1
.end method
