.class public Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;
.super Landroid/widget/LinearLayout;
.source "IconFontToggleButton.java"

# interfaces
.implements Landroid/widget/Checkable;


# instance fields
.field private checked:Z

.field private checkedIcon:Ljava/lang/String;

.field private checkedText:Ljava/lang/String;

.field private iconTextView:Landroid/widget/TextView;

.field private labelTextView:Landroid/widget/TextView;

.field private uncheckedIcon:Ljava/lang/String;

.field private uncheckedText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->initViews(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->initViews(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private applyCustomTypeface(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 76
    iget-object p1, p0, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->labelTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    .line 77
    invoke-static {}, Lcom/microsoft/xbox/toolkit/ui/FontManager;->Instance()Lcom/microsoft/xbox/toolkit/ui/FontManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/microsoft/xbox/toolkit/ui/FontManager;->getTypeface(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    .line 78
    iget-object p2, p0, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->labelTextView:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_0
    return-void
.end method

.method private initViews(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .line 47
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 48
    sget v1, Lcom/microsoft/xboxtcui/R$layout;->iconfont_toggle_btn_view:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 49
    sget v0, Lcom/microsoft/xboxtcui/R$id;->iconfont_toggle_btn_icon:I

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->iconTextView:Landroid/widget/TextView;

    .line 50
    sget v0, Lcom/microsoft/xboxtcui/R$id;->iconfont_toggle_btn_text:I

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->labelTextView:Landroid/widget/TextView;

    .line 52
    const-string v0, "CustomTypeface"

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLERValueHelper;->getStyleableRValueArray(Ljava/lang/String;)[I

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 53
    const-string v1, "CustomTypeface_typefaceSource"

    invoke-static {v1}, Lcom/microsoft/xbox/toolkit/XLERValueHelper;->getStyleableRValue(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 54
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 56
    const-string v0, "IconFontToggleButton"

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLERValueHelper;->getStyleableRValueArray(Ljava/lang/String;)[I

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 57
    const-string v0, "IconFontToggleButton_text_checked"

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLERValueHelper;->getStyleableRValue(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->checkedText:Ljava/lang/String;

    .line 58
    const-string v0, "IconFontToggleButton_text_unchecked"

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLERValueHelper;->getStyleableRValue(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->uncheckedText:Ljava/lang/String;

    .line 59
    const-string v0, "IconFontToggleButton_icon_checked"

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLERValueHelper;->getStyleableRValue(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->checkedIcon:Ljava/lang/String;

    .line 60
    const-string v0, "IconFontToggleButton_icon_unchecked"

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLERValueHelper;->getStyleableRValue(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->uncheckedIcon:Ljava/lang/String;

    .line 62
    const-string v0, "IconFontToggleButton_icon_size"

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLERValueHelper;->getStyleableRValue(Ljava/lang/String;)I

    move-result v0

    const/4 v3, -0x1

    invoke-virtual {p2, v0, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    int-to-float v0, v0

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v3, v0, v3

    if-eqz v3, :cond_0

    .line 65
    iget-object v3, p0, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->iconTextView:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 68
    :cond_0
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 70
    invoke-direct {p0, p1, v1}, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->applyCustomTypeface(Landroid/content/Context;Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0, v2}, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->setFocusable(Z)V

    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .line 84
    iget-boolean v0, p0, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->checked:Z

    return v0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 111
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const/4 v0, 0x1

    .line 112
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 113
    const-class v0, Landroid/widget/Button;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setChecked(Z)V
    .locals 2

    .line 89
    iput-boolean p1, p0, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->checked:Z

    const/4 p1, 0x1

    .line 91
    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->sendAccessibilityEvent(I)V

    .line 93
    iget-object p1, p0, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->labelTextView:Landroid/widget/TextView;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 94
    iget-boolean v1, p0, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->checked:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->checkedText:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->uncheckedText:Ljava/lang/String;

    :goto_0
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object p1, p0, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->labelTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 97
    :cond_1
    iget-object p1, p0, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->iconTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    .line 98
    iget-boolean v1, p0, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->checked:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->checkedIcon:Ljava/lang/String;

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->uncheckedIcon:Ljava/lang/String;

    :goto_1
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object p1, p0, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->iconTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 101
    :cond_3
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->invalidate()V

    return-void
.end method

.method public setCheckedText(Ljava/lang/String;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->checkedText:Ljava/lang/String;

    return-void
.end method

.method public setUncheckedText(Ljava/lang/String;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->uncheckedText:Ljava/lang/String;

    return-void
.end method

.method public toggle()V
    .locals 1

    .line 106
    iget-boolean v0, p0, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->checked:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/xle/ui/IconFontToggleButton;->setChecked(Z)V

    return-void
.end method
