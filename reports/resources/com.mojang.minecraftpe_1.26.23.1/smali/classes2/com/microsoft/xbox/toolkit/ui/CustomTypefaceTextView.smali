.class public Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;
.super Landroid/widget/TextView;
.source "CustomTypefaceTextView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 19
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 22
    sget-object v0, Lcom/microsoft/xboxtcui/R$styleable;->CustomTypeface:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 23
    sget v0, Lcom/microsoft/xboxtcui/R$styleable;->CustomTypeface_typefaceSource:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 24
    sget v1, Lcom/microsoft/xboxtcui/R$styleable;->CustomTypeface_uppercaseText:I

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 27
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;->applyCustomTypeface(Landroid/content/Context;Ljava/lang/String;)V

    .line 32
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    :cond_1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;->isInEditMode()Z

    move-result p3

    if-nez p3, :cond_0

    .line 40
    sget-object p3, Lcom/microsoft/xboxtcui/R$styleable;->CustomTypeface:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 41
    sget p3, Lcom/microsoft/xboxtcui/R$styleable;->CustomTypeface_typefaceSource:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 43
    invoke-direct {p0, p1, p3}, Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;->applyCustomTypeface(Landroid/content/Context;Ljava/lang/String;)V

    .line 45
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 15
    invoke-direct {p0, p1, p2}, Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;->applyCustomTypeface(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private applyCustomTypeface(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 51
    invoke-static {}, Lcom/microsoft/xbox/toolkit/ui/FontManager;->Instance()Lcom/microsoft/xbox/toolkit/ui/FontManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/microsoft/xbox/toolkit/ui/FontManager;->getTypeface(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    .line 52
    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_0
    const/4 p1, 0x0

    .line 57
    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/toolkit/ui/CustomTypefaceTextView;->setCursorVisible(Z)V

    return-void
.end method


# virtual methods
.method public setClickable(Z)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 68
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "If you want CustomTypefaceTextView to be clickable, use XLEButton instead."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 62
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "If you want CustomTypefaceTextView to be clickable, use XLEButton instead."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
