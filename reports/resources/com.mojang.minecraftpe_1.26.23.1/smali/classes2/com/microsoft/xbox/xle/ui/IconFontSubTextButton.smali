.class public Lcom/microsoft/xbox/xle/ui/IconFontSubTextButton;
.super Landroid/widget/LinearLayout;
.source "IconFontSubTextButton.java"


# instance fields
.field private iconFrameLayout:Landroid/widget/FrameLayout;

.field private iconTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

.field private subtitleTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

.field private titleTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, p1, v0}, Lcom/microsoft/xbox/xle/ui/IconFontSubTextButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, p1, p2, v0}, Lcom/microsoft/xbox/xle/ui/IconFontSubTextButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    .line 37
    sget v0, Lcom/microsoft/xboxtcui/R$layout;->icon_font_subtext_button:I

    const/4 v1, 0x1

    invoke-virtual {p3, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 38
    sget p3, Lcom/microsoft/xboxtcui/R$id;->icon_font_subtext_icon:I

    invoke-virtual {p0, p3}, Lcom/microsoft/xbox/xle/ui/IconFontSubTextButton;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    iput-object p3, p0, Lcom/microsoft/xbox/xle/ui/IconFontSubTextButton;->iconTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    .line 39
    sget p3, Lcom/microsoft/xboxtcui/R$id;->icon_font_subtext_btn_icon_bg:I

    invoke-virtual {p0, p3}, Lcom/microsoft/xbox/xle/ui/IconFontSubTextButton;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/FrameLayout;

    iput-object p3, p0, Lcom/microsoft/xbox/xle/ui/IconFontSubTextButton;->iconFrameLayout:Landroid/widget/FrameLayout;

    .line 40
    sget p3, Lcom/microsoft/xboxtcui/R$id;->icon_font_subtext_btn_title:I

    invoke-virtual {p0, p3}, Lcom/microsoft/xbox/xle/ui/IconFontSubTextButton;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    iput-object p3, p0, Lcom/microsoft/xbox/xle/ui/IconFontSubTextButton;->titleTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    .line 41
    sget p3, Lcom/microsoft/xboxtcui/R$id;->icon_font_subtext_btn_subtitle:I

    invoke-virtual {p0, p3}, Lcom/microsoft/xbox/xle/ui/IconFontSubTextButton;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    iput-object p3, p0, Lcom/microsoft/xbox/xle/ui/IconFontSubTextButton;->subtitleTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    .line 43
    const-string p3, "IconFontSubTextButton"

    invoke-static {p3}, Lcom/microsoft/xbox/toolkit/XLERValueHelper;->getStyleableRValueArray(Ljava/lang/String;)[I

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 44
    const-string p2, "IconFontSubTextButton_icon_uri"

    invoke-static {p2}, Lcom/microsoft/xbox/toolkit/XLERValueHelper;->getStyleableRValue(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 45
    const-string p3, "IconFontSubTextButton_text_title"

    invoke-static {p3}, Lcom/microsoft/xbox/toolkit/XLERValueHelper;->getStyleableRValue(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 46
    const-string v0, "IconFontSubTextButton_text_subtitle"

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLERValueHelper;->getStyleableRValue(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 48
    iget-object v2, p0, Lcom/microsoft/xbox/xle/ui/IconFontSubTextButton;->iconFrameLayout:Landroid/widget/FrameLayout;

    const-string v3, "IconFontSubTextButton_icon_bg"

    invoke-static {v3}, Lcom/microsoft/xbox/toolkit/XLERValueHelper;->getStyleableRValue(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 50
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 52
    iget-object p1, p0, Lcom/microsoft/xbox/xle/ui/IconFontSubTextButton;->iconTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    invoke-static {p1, p2, v4}, Lcom/microsoft/xbox/xle/app/XLEUtil;->updateTextAndVisibilityIfNotNull(Landroid/widget/TextView;Ljava/lang/CharSequence;I)V

    .line 53
    iget-object p1, p0, Lcom/microsoft/xbox/xle/ui/IconFontSubTextButton;->titleTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    invoke-static {p1, p3, v4}, Lcom/microsoft/xbox/xle/app/XLEUtil;->updateTextAndVisibilityIfNotNull(Landroid/widget/TextView;Ljava/lang/CharSequence;I)V

    .line 54
    iget-object p1, p0, Lcom/microsoft/xbox/xle/ui/IconFontSubTextButton;->subtitleTextView:Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;

    invoke-static {p1, v0, v4}, Lcom/microsoft/xbox/xle/app/XLEUtil;->updateTextAndVisibilityIfNotNull(Landroid/widget/TextView;Ljava/lang/CharSequence;I)V

    .line 56
    invoke-virtual {p0, v1}, Lcom/microsoft/xbox/xle/ui/IconFontSubTextButton;->setFocusable(Z)V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 61
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const/4 v0, 0x1

    .line 62
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 63
    const-class v0, Landroid/widget/Button;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method
