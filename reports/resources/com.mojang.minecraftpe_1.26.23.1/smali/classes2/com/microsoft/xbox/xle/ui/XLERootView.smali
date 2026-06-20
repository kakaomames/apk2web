.class public Lcom/microsoft/xbox/xle/ui/XLERootView;
.super Landroid/widget/RelativeLayout;
.source "XLERootView.java"


# static fields
.field private static final UNASSIGNED_ACTIVITY_BODY_ID:I = -0x1


# instance fields
.field private activityBody:Landroid/view/View;

.field private activityBodyIndex:I

.field private headerName:Ljava/lang/String;

.field private isTopLevel:Z

.field private lastFps:J

.field private lastMs:J

.field private origPaddingBottom:I

.field private showTitleBar:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 34
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 19
    iput-boolean p1, p0, Lcom/microsoft/xbox/xle/ui/XLERootView;->isTopLevel:Z

    const/4 p1, 0x1

    .line 20
    iput-boolean p1, p0, Lcom/microsoft/xbox/xle/ui/XLERootView;->showTitleBar:Z

    const-wide/16 v0, 0x0

    .line 22
    iput-wide v0, p0, Lcom/microsoft/xbox/xle/ui/XLERootView;->lastMs:J

    .line 23
    iput-wide v0, p0, Lcom/microsoft/xbox/xle/ui/XLERootView;->lastFps:J

    .line 37
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 47
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/microsoft/xbox/xle/ui/XLERootView;->isTopLevel:Z

    const/4 v1, 0x1

    .line 20
    iput-boolean v1, p0, Lcom/microsoft/xbox/xle/ui/XLERootView;->showTitleBar:Z

    const-wide/16 v2, 0x0

    .line 22
    iput-wide v2, p0, Lcom/microsoft/xbox/xle/ui/XLERootView;->lastMs:J

    .line 23
    iput-wide v2, p0, Lcom/microsoft/xbox/xle/ui/XLERootView;->lastFps:J

    .line 49
    sget-object v2, Lcom/microsoft/xboxtcui/R$styleable;->XLERootView:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 52
    :try_start_0
    sget p2, Lcom/microsoft/xboxtcui/R$styleable;->XLERootView_activityBody:I

    const/4 v2, -0x1

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/microsoft/xbox/xle/ui/XLERootView;->activityBodyIndex:I

    .line 53
    sget p2, Lcom/microsoft/xboxtcui/R$styleable;->XLERootView_isTopLevel:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/microsoft/xbox/xle/ui/XLERootView;->isTopLevel:Z

    .line 54
    sget p2, Lcom/microsoft/xboxtcui/R$styleable;->XLERootView_showTitleBar:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/microsoft/xbox/xle/ui/XLERootView;->showTitleBar:Z

    .line 55
    sget p2, Lcom/microsoft/xboxtcui/R$styleable;->XLERootView_minScreenPercent:I

    const/high16 v1, -0x80000000

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    if-eq p2, v1, :cond_0

    .line 58
    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-static {}, Lcom/microsoft/xbox/toolkit/system/SystemUtil;->getScreenWidth()I

    move-result v0

    mul-int/2addr p2, v0

    div-int/lit8 p2, p2, 0x64

    invoke-virtual {p0, p2}, Lcom/microsoft/xbox/xle/ui/XLERootView;->setMinimumWidth(I)V

    .line 60
    :cond_0
    sget p2, Lcom/microsoft/xboxtcui/R$styleable;->XLERootView_headerName:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/microsoft/xbox/xle/ui/XLERootView;->headerName:Ljava/lang/String;

    .line 62
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 63
    throw p2

    :cond_1
    :goto_0
    return-void
.end method

.method private initialize()V
    .locals 6

    .line 91
    iget v0, p0, Lcom/microsoft/xbox/xle/ui/XLERootView;->activityBodyIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 92
    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/xle/ui/XLERootView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/xbox/xle/ui/XLERootView;->activityBody:Landroid/view/View;

    goto :goto_0

    .line 94
    :cond_0
    iput-object p0, p0, Lcom/microsoft/xbox/xle/ui/XLERootView;->activityBody:Landroid/view/View;

    .line 97
    :goto_0
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/ui/XLERootView;->getPaddingBottom()I

    move-result v0

    iput v0, p0, Lcom/microsoft/xbox/xle/ui/XLERootView;->origPaddingBottom:I

    .line 99
    iget-object v0, p0, Lcom/microsoft/xbox/xle/ui/XLERootView;->activityBody:Landroid/view/View;

    if-eqz v0, :cond_2

    if-eq v0, p0, :cond_2

    .line 100
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 102
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 103
    iput v1, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 104
    iput v1, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    const/16 v1, 0xa

    .line 105
    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 107
    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_1

    .line 109
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 110
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/ui/XLERootView;->getPaddingLeft()I

    move-result v1

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v1, v3

    .line 111
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/ui/XLERootView;->getPaddingTop()I

    move-result v3

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v3, v4

    .line 112
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/ui/XLERootView;->getPaddingRight()I

    move-result v4

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/microsoft/xbox/xle/ui/XLERootView;->origPaddingBottom:I

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v5, v0

    .line 110
    invoke-virtual {p0, v1, v3, v4, v5}, Lcom/microsoft/xbox/xle/ui/XLERootView;->setPadding(IIII)V

    const/4 v0, 0x0

    .line 115
    invoke-virtual {v2, v0, v0, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 118
    :cond_1
    iget-object v0, p0, Lcom/microsoft/xbox/xle/ui/XLERootView;->activityBody:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/xle/ui/XLERootView;->removeView(Landroid/view/View;)V

    .line 119
    iget-object v0, p0, Lcom/microsoft/xbox/xle/ui/XLERootView;->activityBody:Landroid/view/View;

    invoke-virtual {p0, v0, v2}, Lcom/microsoft/xbox/xle/ui/XLERootView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 125
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getHeaderName()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/microsoft/xbox/xle/ui/XLERootView;->headerName:Ljava/lang/String;

    return-object v0
.end method

.method public getIsTopLevel()Z
    .locals 1

    .line 68
    iget-boolean v0, p0, Lcom/microsoft/xbox/xle/ui/XLERootView;->isTopLevel:Z

    return v0
.end method

.method public getShowTitleBar()Z
    .locals 1

    .line 72
    iget-boolean v0, p0, Lcom/microsoft/xbox/xle/ui/XLERootView;->showTitleBar:Z

    return v0
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 81
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 83
    invoke-direct {p0}, Lcom/microsoft/xbox/xle/ui/XLERootView;->initialize()V

    return-void
.end method

.method public setBottomMargin(I)V
    .locals 4

    .line 129
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/ui/XLERootView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/ui/XLERootView;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/ui/XLERootView;->getPaddingRight()I

    move-result v2

    iget v3, p0, Lcom/microsoft/xbox/xle/ui/XLERootView;->origPaddingBottom:I

    add-int/2addr v3, p1

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/microsoft/xbox/xle/ui/XLERootView;->setPadding(IIII)V

    return-void
.end method
