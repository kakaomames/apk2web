.class public Lcom/mojang/minecraftpe/TextInputProxyEditTextbox$LogicalLineMovementMethod;
.super Landroid/text/method/ArrowKeyMovementMethod;
.source "TextInputProxyEditTextbox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LogicalLineMovementMethod"
.end annotation


# instance fields
.field public mIdealColumn:I

.field public mIsNavigatingVertically:Z

.field public final synthetic this$0:Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;


# direct methods
.method public constructor <init>(Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox$LogicalLineMovementMethod;->this$0:Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;

    invoke-direct {p0}, Landroid/text/method/ArrowKeyMovementMethod;-><init>()V

    const/4 p1, -0x1

    .line 37
    iput p1, p0, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox$LogicalLineMovementMethod;->mIdealColumn:I

    const/4 p1, 0x0

    .line 38
    iput-boolean p1, p0, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox$LogicalLineMovementMethod;->mIsNavigatingVertically:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;Lcom/mojang/minecraftpe/TextInputProxyEditTextbox-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox$LogicalLineMovementMethod;-><init>(Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;)V

    return-void
.end method

.method private ensureIdealColumn(Ljava/lang/CharSequence;I)I
    .locals 1

    .line 65
    iget v0, p0, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox$LogicalLineMovementMethod;->mIdealColumn:I

    if-gez v0, :cond_0

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox$LogicalLineMovementMethod;->getColumn(Ljava/lang/CharSequence;I)I

    move-result p1

    iput p1, p0, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox$LogicalLineMovementMethod;->mIdealColumn:I

    .line 68
    :cond_0
    iget p1, p0, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox$LogicalLineMovementMethod;->mIdealColumn:I

    return p1
.end method

.method private getColumn(Ljava/lang/CharSequence;I)I
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox$LogicalLineMovementMethod;->getLogicalLineStart(Ljava/lang/CharSequence;I)I

    move-result p1

    sub-int/2addr p2, p1

    return p2
.end method

.method private getLogicalLineEnd(Ljava/lang/CharSequence;I)I
    .locals 1

    const/16 v0, 0xa    # '\n'

    .line 53
    invoke-static {p1, v0, p2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result p2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 54
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    :cond_0
    return p2
.end method

.method private getLogicalLineStart(Ljava/lang/CharSequence;I)I
    .locals 2

    const/4 v0, 0x0

    if-gtz p2, :cond_0

    return v0

    :cond_0
    const/16 v1, 0xa

    add-int/lit8 p2, p2, -0x1

    .line 48
    invoke-static {p1, v1, p2}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CI)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, p1, 0x1

    :goto_0
    return v0
.end method

.method public static isSelecting(Landroid/text/Spannable;)Z
    .locals 1

    const/4 v0, 0x1

    .line 80
    invoke-static {p0, v0}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private moveCursor(Landroid/text/Spannable;I)V
    .locals 1

    .line 72
    invoke-static {p1}, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox$LogicalLineMovementMethod;->isSelecting(Landroid/text/Spannable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    invoke-static {p1, p2}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    goto :goto_0

    .line 75
    :cond_0
    invoke-static {p1, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected down(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 4

    .line 109
    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result p1

    .line 110
    invoke-direct {p0, p2, p1}, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox$LogicalLineMovementMethod;->getLogicalLineEnd(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 113
    invoke-interface {p2}, Landroid/text/Spannable;->length()I

    move-result v1

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 119
    invoke-direct {p0, p2, v0}, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox$LogicalLineMovementMethod;->getLogicalLineEnd(Ljava/lang/CharSequence;I)I

    move-result v3

    sub-int/2addr v3, v0

    .line 123
    invoke-direct {p0, p2, p1}, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox$LogicalLineMovementMethod;->ensureIdealColumn(Ljava/lang/CharSequence;I)I

    move-result p1

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result p1

    add-int/2addr v0, p1

    .line 124
    iput-boolean v1, p0, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox$LogicalLineMovementMethod;->mIsNavigatingVertically:Z

    .line 125
    invoke-direct {p0, p2, v0}, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox$LogicalLineMovementMethod;->moveCursor(Landroid/text/Spannable;I)V

    .line 126
    iput-boolean v2, p0, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox$LogicalLineMovementMethod;->mIsNavigatingVertically:Z

    return v1
.end method

.method onSelectionChanged()V
    .locals 1

    .line 41
    iget-boolean v0, p0, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox$LogicalLineMovementMethod;->mIsNavigatingVertically:Z

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 42
    iput v0, p0, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox$LogicalLineMovementMethod;->mIdealColumn:I

    :cond_0
    return-void
.end method

.method protected up(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .locals 4

    .line 85
    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result p1

    .line 86
    invoke-direct {p0, p2, p1}, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox$LogicalLineMovementMethod;->getLogicalLineStart(Ljava/lang/CharSequence;I)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x1

    sub-int/2addr v0, v2

    .line 95
    invoke-direct {p0, p2, v0}, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox$LogicalLineMovementMethod;->getLogicalLineStart(Ljava/lang/CharSequence;I)I

    move-result v3

    sub-int/2addr v0, v3

    .line 99
    invoke-direct {p0, p2, p1}, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox$LogicalLineMovementMethod;->ensureIdealColumn(Ljava/lang/CharSequence;I)I

    move-result p1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    add-int/2addr v3, p1

    .line 100
    iput-boolean v2, p0, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox$LogicalLineMovementMethod;->mIsNavigatingVertically:Z

    .line 101
    invoke-direct {p0, p2, v3}, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox$LogicalLineMovementMethod;->moveCursor(Landroid/text/Spannable;I)V

    .line 102
    iput-boolean v1, p0, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox$LogicalLineMovementMethod;->mIsNavigatingVertically:Z

    return v2
.end method
