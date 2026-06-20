.class public final Lcom/google/androidgamesdk/gametextinput/GameTextInput;
.super Ljava/lang/Object;
.source "GameTextInput.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/androidgamesdk/gametextinput/GameTextInput$Pair;
    }
.end annotation


# static fields
.field private static final composingRegionKey:Lcom/google/androidgamesdk/gametextinput/GameTextInput;

.field private static final selectionKey:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 110
    new-instance v0, Lcom/google/androidgamesdk/gametextinput/GameTextInput;

    invoke-direct {v0}, Lcom/google/androidgamesdk/gametextinput/GameTextInput;-><init>()V

    sput-object v0, Lcom/google/androidgamesdk/gametextinput/GameTextInput;->composingRegionKey:Lcom/google/androidgamesdk/gametextinput/GameTextInput;

    .line 111
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/google/androidgamesdk/gametextinput/GameTextInput;->selectionKey:Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final copyEditorInfo(Landroid/view/inputmethod/EditorInfo;Landroid/view/inputmethod/EditorInfo;)V
    .locals 1

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    .line 32
    :cond_0
    iget-object v0, p0, Landroid/view/inputmethod/EditorInfo;->hintText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 33
    iget-object v0, p0, Landroid/view/inputmethod/EditorInfo;->hintText:Ljava/lang/CharSequence;

    iput-object v0, p1, Landroid/view/inputmethod/EditorInfo;->hintText:Ljava/lang/CharSequence;

    .line 36
    :cond_1
    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 37
    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 38
    iget-object v0, p0, Landroid/view/inputmethod/EditorInfo;->label:Ljava/lang/CharSequence;

    iput-object v0, p1, Landroid/view/inputmethod/EditorInfo;->label:Ljava/lang/CharSequence;

    .line 39
    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->initialCapsMode:I

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->initialCapsMode:I

    .line 40
    iget-object v0, p0, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    iput-object v0, p1, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    .line 41
    iget-object v0, p0, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 42
    iget-object v0, p0, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    iput-object v0, p1, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    .line 45
    :cond_2
    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->fieldId:I

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->fieldId:I

    .line 46
    iget-object v0, p0, Landroid/view/inputmethod/EditorInfo;->fieldName:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 47
    iget-object p0, p0, Landroid/view/inputmethod/EditorInfo;->fieldName:Ljava/lang/String;

    iput-object p0, p1, Landroid/view/inputmethod/EditorInfo;->fieldName:Ljava/lang/String;

    :cond_3
    :goto_0
    return-void
.end method

.method public static final getComposingRegion(Landroid/text/Editable;)Lcom/google/androidgamesdk/gametextinput/GameTextInput$Pair;
    .locals 3

    .line 65
    new-instance v0, Lcom/google/androidgamesdk/gametextinput/GameTextInput$Pair;

    sget-object v1, Lcom/google/androidgamesdk/gametextinput/GameTextInput;->composingRegionKey:Lcom/google/androidgamesdk/gametextinput/GameTextInput;

    .line 66
    invoke-interface {p0, v1}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    invoke-interface {p0, v1}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result p0

    invoke-direct {v0, v2, p0}, Lcom/google/androidgamesdk/gametextinput/GameTextInput$Pair;-><init>(II)V

    return-object v0
.end method

.method public static final getComposingRegionKey()Lcom/google/androidgamesdk/gametextinput/GameTextInput;
    .locals 1

    .line 100
    sget-object v0, Lcom/google/androidgamesdk/gametextinput/GameTextInput;->composingRegionKey:Lcom/google/androidgamesdk/gametextinput/GameTextInput;

    return-object v0
.end method

.method public static final getSelection(Landroid/text/Editable;)Lcom/google/androidgamesdk/gametextinput/GameTextInput$Pair;
    .locals 3

    .line 61
    new-instance v0, Lcom/google/androidgamesdk/gametextinput/GameTextInput$Pair;

    sget-object v1, Lcom/google/androidgamesdk/gametextinput/GameTextInput;->selectionKey:Ljava/lang/Class;

    invoke-interface {p0, v1}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    invoke-interface {p0, v1}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result p0

    invoke-direct {v0, v2, p0}, Lcom/google/androidgamesdk/gametextinput/GameTextInput$Pair;-><init>(II)V

    return-object v0
.end method

.method public static final getSelectionKey()Ljava/lang/Class;
    .locals 1

    .line 104
    sget-object v0, Lcom/google/androidgamesdk/gametextinput/GameTextInput;->selectionKey:Ljava/lang/Class;

    return-object v0
.end method

.method public static final removeComposingRegion(Landroid/text/Editable;)V
    .locals 1

    .line 96
    sget-object v0, Lcom/google/androidgamesdk/gametextinput/GameTextInput;->composingRegionKey:Lcom/google/androidgamesdk/gametextinput/GameTextInput;

    invoke-interface {p0, v0}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    return-void
.end method

.method public static final setComposingRegion(Landroid/text/Editable;II)V
    .locals 2

    .line 83
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v0

    if-le p1, v0, :cond_0

    .line 84
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result p1

    .line 85
    :cond_0
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v0

    if-le p2, v0, :cond_1

    .line 86
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result p2

    :cond_1
    const/16 v0, 0x100

    if-le p1, p2, :cond_2

    .line 90
    sget-object v1, Lcom/google/androidgamesdk/gametextinput/GameTextInput;->composingRegionKey:Lcom/google/androidgamesdk/gametextinput/GameTextInput;

    invoke-interface {p0, v1, p2, p1, v0}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    .line 92
    :cond_2
    sget-object v1, Lcom/google/androidgamesdk/gametextinput/GameTextInput;->composingRegionKey:Lcom/google/androidgamesdk/gametextinput/GameTextInput;

    invoke-interface {p0, v1, p1, p2, v0}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    :goto_0
    return-void
.end method

.method public static final setSelection(Landroid/text/Editable;II)V
    .locals 2

    .line 70
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v0

    if-le p1, v0, :cond_0

    .line 71
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result p1

    .line 72
    :cond_0
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v0

    if-le p2, v0, :cond_1

    .line 73
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result p2

    :cond_1
    const/4 v0, 0x0

    if-le p1, p2, :cond_2

    .line 77
    sget-object v1, Lcom/google/androidgamesdk/gametextinput/GameTextInput;->selectionKey:Ljava/lang/Class;

    invoke-interface {p0, v1, p2, p1, v0}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    .line 79
    :cond_2
    sget-object v1, Lcom/google/androidgamesdk/gametextinput/GameTextInput;->selectionKey:Ljava/lang/Class;

    invoke-interface {p0, v1, p1, p2, v0}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    :goto_0
    return-void
.end method
