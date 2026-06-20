.class public Lcom/microsoft/xbox/toolkit/ui/XLEButton;
.super Landroid/widget/Button;
.source "XLEButton.java"


# instance fields
.field private alwaysClickable:Z

.field protected disableSound:Z

.field private disabledTextColor:I

.field private enabledTextColor:I

.field protected stateHandler:Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 16
    new-instance p1, Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler;

    invoke-direct {p1}, Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler;-><init>()V

    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->stateHandler:Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler;

    const/4 p1, 0x0

    .line 18
    iput-boolean p1, p0, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->disableSound:Z

    .line 28
    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->setSoundEffectsEnabled(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1, p2, v0}, Lcom/microsoft/xbox/toolkit/ui/XLEButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 16
    new-instance p3, Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler;

    invoke-direct {p3}, Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler;-><init>()V

    iput-object p3, p0, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->stateHandler:Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler;

    const/4 p3, 0x0

    .line 18
    iput-boolean p3, p0, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->disableSound:Z

    .line 38
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 42
    :cond_0
    invoke-virtual {p0, p3}, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->setSoundEffectsEnabled(Z)V

    .line 44
    const-string v0, "XLEButton"

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLERValueHelper;->getStyleableRValueArray(Ljava/lang/String;)[I

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 46
    :try_start_0
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->stateHandler:Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler;

    const-string v2, "XLEButton_disabled"

    invoke-static {v2}, Lcom/microsoft/xbox/toolkit/XLERValueHelper;->getStyleableRValue(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler;->setDisabled(Z)V

    .line 48
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->stateHandler:Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler;

    const-string v2, "XLEButton_disabledImage"

    invoke-static {v2}, Lcom/microsoft/xbox/toolkit/XLERValueHelper;->getStyleableRValue(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler;->setDisabledImageHandle(I)V

    .line 49
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->stateHandler:Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler;

    const-string v2, "XLEButton_enabledImage"

    invoke-static {v2}, Lcom/microsoft/xbox/toolkit/XLERValueHelper;->getStyleableRValue(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler;->setEnabledImageHandle(I)V

    .line 50
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->stateHandler:Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler;

    const-string v2, "XLEButton_pressedImage"

    invoke-static {v2}, Lcom/microsoft/xbox/toolkit/XLERValueHelper;->getStyleableRValue(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler;->setPressedImageHandle(I)V

    .line 52
    const-string v1, "XLEButton_disableSound"

    invoke-static {v1}, Lcom/microsoft/xbox/toolkit/XLERValueHelper;->getStyleableRValue(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->disableSound:Z

    .line 54
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 55
    invoke-virtual {p0, v1}, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 57
    const-string v1, "CustomTypeface"

    invoke-static {v1}, Lcom/microsoft/xbox/toolkit/XLERValueHelper;->getStyleableRValueArray(Ljava/lang/String;)[I

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 58
    const-string v1, "CustomTypeface_typefaceSource"

    invoke-static {v1}, Lcom/microsoft/xbox/toolkit/XLERValueHelper;->getStyleableRValue(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 59
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v1, :cond_1

    .line 61
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_1

    .line 62
    invoke-direct {p0, p1, v1}, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->applyCustomTypeface(Landroid/content/Context;Ljava/lang/String;)V

    .line 65
    :cond_1
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->getCurrentTextColor()I

    move-result p1

    iput p1, p0, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->enabledTextColor:I

    .line 66
    const-string p1, "XLEButton_disabledTextColor"

    invoke-static {p1}, Lcom/microsoft/xbox/toolkit/XLERValueHelper;->getStyleableRValue(Ljava/lang/String;)I

    move-result p1

    iget p2, p0, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->enabledTextColor:I

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->disabledTextColor:I

    .line 68
    const-string p1, "XLEButton_alwaysClickable"

    invoke-static {p1}, Lcom/microsoft/xbox/toolkit/XLERValueHelper;->getStyleableRValue(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->alwaysClickable:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    .line 70
    invoke-super {p0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 71
    invoke-super {p0, p1}, Landroid/widget/Button;->setClickable(Z)V

    .line 74
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 75
    throw p1
.end method

.method private applyCustomTypeface(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 80
    invoke-static {}, Lcom/microsoft/xbox/toolkit/ui/FontManager;->Instance()Lcom/microsoft/xbox/toolkit/ui/FontManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/microsoft/xbox/toolkit/ui/FontManager;->getTypeface(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    .line 81
    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_0
    return-void
.end method

.method private hasSize()Z
    .locals 1

    .line 155
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .line 106
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->updateImage()V

    .line 107
    new-instance v0, Lcom/microsoft/xbox/toolkit/ui/XLEButton$1;

    invoke-direct {v0, p0}, Lcom/microsoft/xbox/toolkit/ui/XLEButton$1;-><init>(Lcom/microsoft/xbox/toolkit/ui/XLEButton;)V

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 141
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/Button;->onSizeChanged(IIII)V

    .line 145
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->hasSize()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 146
    iget-object p1, p0, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->stateHandler:Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler;

    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->getWidth()I

    move-result p2

    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->getHeight()I

    move-result p3

    invoke-virtual {p1, p2, p3}, Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler;->onSizeChanged(II)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 150
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->updateImage()V

    :cond_1
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 91
    iget-boolean v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->alwaysClickable:Z

    if-nez v0, :cond_0

    .line 92
    invoke-super {p0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->stateHandler:Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler;

    if-nez v0, :cond_1

    .line 96
    new-instance v0, Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler;

    invoke-direct {v0}, Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler;-><init>()V

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->stateHandler:Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler;

    .line 99
    :cond_1
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->stateHandler:Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler;

    invoke-virtual {v0, p1}, Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler;->setEnabled(Z)V

    .line 100
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->updateImage()V

    .line 101
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->updateTextColor()V

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 119
    iget-boolean v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->disableSound:Z

    if-eqz v0, :cond_0

    .line 120
    invoke-super {p0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 122
    :cond_0
    invoke-static {p1}, Lcom/microsoft/xbox/toolkit/ui/TouchUtil;->createOnClickListener(Landroid/view/View$OnClickListener;)Landroid/view/View$OnClickListener;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 1

    .line 128
    iget-boolean v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->disableSound:Z

    if-eqz v0, :cond_0

    .line 129
    invoke-super {p0, p1}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_0

    .line 131
    :cond_0
    invoke-static {p1}, Lcom/microsoft/xbox/toolkit/ui/TouchUtil;->createOnLongClickListener(Landroid/view/View$OnLongClickListener;)Landroid/view/View$OnLongClickListener;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :goto_0
    return-void
.end method

.method public setPressedStateRunnable(Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler$ButtonStateHandlerRunnable;)V
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->stateHandler:Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler;

    invoke-virtual {v0, p1}, Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler;->setPressedStateRunnable(Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler$ButtonStateHandlerRunnable;)V

    return-void
.end method

.method public setTypeFace(Ljava/lang/String;)V
    .locals 1

    .line 86
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->applyCustomTypeface(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method protected updateImage()V
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->stateHandler:Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler;

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler;->getImageDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->stateHandler:Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler;

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler;->getImageDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method protected updateTextColor()V
    .locals 2

    .line 165
    iget v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->enabledTextColor:I

    iget v1, p0, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->disabledTextColor:I

    if-eq v0, v1, :cond_1

    .line 166
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->stateHandler:Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler;

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler;->getDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->disabledTextColor:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->enabledTextColor:I

    :goto_0
    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->setTextColor(I)V

    :cond_1
    return-void
.end method
