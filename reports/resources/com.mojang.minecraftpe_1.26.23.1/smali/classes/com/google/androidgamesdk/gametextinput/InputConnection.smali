.class public Lcom/google/androidgamesdk/gametextinput/InputConnection;
.super Landroid/view/inputmethod/BaseInputConnection;
.source "InputConnection.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/androidgamesdk/gametextinput/InputConnection$SingeLineFilter;
    }
.end annotation


# static fields
.field private static final MAX_LENGTH_FOR_SINGLE_LINE_EDIT_TEXT:I = 0x1388

.field private static final TAG:Ljava/lang/String; = "gti.InputConnection"

.field private static final notInsertedKeyCodes:[I


# instance fields
.field private final dontInsertChars:Ljava/util/BitSet;

.field private final imm:Landroid/view/inputmethod/InputMethodManager;

.field private listener:Lcom/google/androidgamesdk/gametextinput/Listener;

.field private final mEditable:Landroid/text/Editable;

.field private mSoftKeyboardActive:Z

.field private final settings:Lcom/google/androidgamesdk/gametextinput/Settings;

.field private final targetView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x4a

    .line 49
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->notInsertedKeyCodes:[I

    return-void

    :array_0
    .array-data 4
        0x17
        0x14
        0x13
        0x15
        0x16
        0x10d
        0x10c
        0x10c
        0x10e
        0x60
        0x61
        0x63
        0x64
        0x66
        0x68
        0x67
        0x69
        0x6a
        0x6b
        0x6d
        0x6c
        0x6e
        0x82
        0x65
        0x62
        0x43
        0x70
        0x72
        0x3b
        0x3c
        0x4
        0x18
        0x19
        0xa4
        0x39
        0x3a
        0x71
        0x83
        0x8c
        0x8d
        0x8e
        0x84
        0x85
        0x86
        0x87
        0x88
        0x89
        0x8a
        0x8b
        0x7c
        0x7a
        0x7b
        0x5c
        0x5d
        0x0
        0x54
        0x55
        0x56
        0x57
        0x58
        0x59
        0x5a
        0x7e
        0x7f
        0x80
        0x81
        0x82
        0xde
        0xe2
        0x101
        0x110
        0x111
        0x112
        0x113
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/google/androidgamesdk/gametextinput/Settings;)V
    .locals 5

    .line 149
    iget-object v0, p3, Lcom/google/androidgamesdk/gametextinput/Settings;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget v0, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-direct {p0, p2, v0}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    .line 150
    const-string v0, "gti.InputConnection"

    const-string v2, "InputConnection created"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iput-object p2, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->targetView:Landroid/view/View;

    .line 153
    iput-object p3, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->settings:Lcom/google/androidgamesdk/gametextinput/Settings;

    .line 154
    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 158
    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    iput-object p1, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->imm:Landroid/view/inputmethod/InputMethodManager;

    .line 159
    new-instance p1, Landroid/text/SpannableStringBuilder;

    invoke-direct {p1}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object p1, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->mEditable:Landroid/text/Editable;

    .line 162
    new-instance p1, Ljava/util/BitSet;

    invoke-direct {p1}, Ljava/util/BitSet;-><init>()V

    iput-object p1, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->dontInsertChars:Ljava/util/BitSet;

    .line 163
    sget-object p1, Lcom/google/androidgamesdk/gametextinput/InputConnection;->notInsertedKeyCodes:[I

    array-length v0, p1

    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_1

    aget v3, p1, v2

    .line 164
    iget-object v4, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->dontInsertChars:Ljava/util/BitSet;

    invoke-virtual {v4, v3}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 167
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p1, v1}, Landroidx/core/view/WindowCompat;->setDecorFitsSystemWindows(Landroid/view/Window;Z)V

    .line 168
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 170
    iget-object p1, p3, Lcom/google/androidgamesdk/gametextinput/Settings;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    invoke-virtual {p0, p1}, Lcom/google/androidgamesdk/gametextinput/InputConnection;->setEditorInfo(Landroid/view/inputmethod/EditorInfo;)V

    return-void

    .line 156
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Can\'t get IMM"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final getComposingRegion()Lcom/google/androidgamesdk/gametextinput/GameTextInput$Pair;
    .locals 1

    .line 460
    iget-object v0, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v0}, Lcom/google/androidgamesdk/gametextinput/GameTextInput;->getComposingRegion(Landroid/text/Editable;)Lcom/google/androidgamesdk/gametextinput/GameTextInput$Pair;

    move-result-object v0

    return-object v0
.end method

.method private final getSelection()Lcom/google/androidgamesdk/gametextinput/GameTextInput$Pair;
    .locals 1

    .line 456
    iget-object v0, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v0}, Lcom/google/androidgamesdk/gametextinput/GameTextInput;->getSelection(Landroid/text/Editable;)Lcom/google/androidgamesdk/gametextinput/GameTextInput$Pair;

    move-result-object v0

    return-object v0
.end method

.method private final informIMM()V
    .locals 8

    .line 449
    invoke-direct {p0}, Lcom/google/androidgamesdk/gametextinput/InputConnection;->getSelection()Lcom/google/androidgamesdk/gametextinput/GameTextInput$Pair;

    move-result-object v0

    .line 450
    invoke-direct {p0}, Lcom/google/androidgamesdk/gametextinput/InputConnection;->getComposingRegion()Lcom/google/androidgamesdk/gametextinput/GameTextInput$Pair;

    move-result-object v1

    .line 451
    iget-object v2, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v3, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->targetView:Landroid/view/View;

    iget v4, v0, Lcom/google/androidgamesdk/gametextinput/GameTextInput$Pair;->first:I

    iget v5, v0, Lcom/google/androidgamesdk/gametextinput/GameTextInput$Pair;->second:I

    iget v6, v1, Lcom/google/androidgamesdk/gametextinput/GameTextInput$Pair;->first:I

    iget v7, v1, Lcom/google/androidgamesdk/gametextinput/GameTextInput$Pair;->second:I

    invoke-virtual/range {v2 .. v7}, Landroid/view/inputmethod/InputMethodManager;->updateSelection(Landroid/view/View;IIII)V

    return-void
.end method

.method private processKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 8

    .line 482
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->mEditable:Landroid/text/Editable;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "processKeyEvent(key=%d) text=%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "gti.InputConnection"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    iget-object v0, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->settings:Lcom/google/androidgamesdk/gametextinput/Settings;

    iget-object v0, v0, Lcom/google/androidgamesdk/gametextinput/Settings;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget v0, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const/high16 v2, 0x20000

    and-int/2addr v0, v2

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 486
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v3, 0x42

    if-eq v0, v3, :cond_0

    .line 487
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v3, 0xa0

    if-ne v0, v3, :cond_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 488
    iget-object p1, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->settings:Lcom/google/androidgamesdk/gametextinput/Settings;

    iget-object p1, p1, Lcom/google/androidgamesdk/gametextinput/Settings;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget p1, p1, Landroid/view/inputmethod/EditorInfo;->actionId:I

    invoke-virtual {p0, p1}, Lcom/google/androidgamesdk/gametextinput/InputConnection;->performEditorAction(I)Z

    return v2

    .line 492
    :cond_1
    invoke-direct {p0}, Lcom/google/androidgamesdk/gametextinput/InputConnection;->getSelection()Lcom/google/androidgamesdk/gametextinput/GameTextInput$Pair;

    move-result-object v0

    const/4 v3, 0x0

    if-nez p1, :cond_2

    return v3

    .line 495
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-eqz v4, :cond_3

    return v2

    .line 502
    :cond_3
    iget v4, v0, Lcom/google/androidgamesdk/gametextinput/GameTextInput$Pair;->first:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_4

    .line 503
    iget-object v4, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->mEditable:Landroid/text/Editable;

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v4

    iput v4, v0, Lcom/google/androidgamesdk/gametextinput/GameTextInput$Pair;->first:I

    .line 504
    iget-object v4, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->mEditable:Landroid/text/Editable;

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v4

    iput v4, v0, Lcom/google/androidgamesdk/gametextinput/GameTextInput$Pair;->second:I

    .line 509
    :cond_4
    iget v4, v0, Lcom/google/androidgamesdk/gametextinput/GameTextInput$Pair;->first:I

    iget v6, v0, Lcom/google/androidgamesdk/gametextinput/GameTextInput$Pair;->second:I

    if-eq v4, v6, :cond_5

    .line 510
    const-string v4, "processKeyEvent: deleting selection"

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    iget-object v4, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->mEditable:Landroid/text/Editable;

    iget v6, v0, Lcom/google/androidgamesdk/gametextinput/GameTextInput$Pair;->first:I

    iget v7, v0, Lcom/google/androidgamesdk/gametextinput/GameTextInput$Pair;->second:I

    invoke-interface {v4, v6, v7}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    move v4, v2

    goto :goto_0

    .line 513
    :cond_5
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    const/16 v6, 0x43

    if-ne v4, v6, :cond_6

    iget v4, v0, Lcom/google/androidgamesdk/gametextinput/GameTextInput$Pair;->first:I

    if-lez v4, :cond_6

    .line 514
    iget-object p1, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->mEditable:Landroid/text/Editable;

    iget v4, v0, Lcom/google/androidgamesdk/gametextinput/GameTextInput$Pair;->first:I

    sub-int/2addr v4, v2

    iget v0, v0, Lcom/google/androidgamesdk/gametextinput/GameTextInput$Pair;->first:I

    invoke-interface {p1, v4, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 515
    invoke-direct {p0, v3}, Lcom/google/androidgamesdk/gametextinput/InputConnection;->stateUpdated(Z)V

    .line 516
    iget-object p1, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->mEditable:Landroid/text/Editable;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "processKeyEvent: exit after DEL, text=%s"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 518
    :cond_6
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    const/16 v6, 0x70

    if-ne v4, v6, :cond_7

    iget v4, v0, Lcom/google/androidgamesdk/gametextinput/GameTextInput$Pair;->first:I

    iget-object v6, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->mEditable:Landroid/text/Editable;

    .line 519
    invoke-interface {v6}, Landroid/text/Editable;->length()I

    move-result v6

    if-ge v4, v6, :cond_7

    .line 520
    iget-object p1, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->mEditable:Landroid/text/Editable;

    iget v4, v0, Lcom/google/androidgamesdk/gametextinput/GameTextInput$Pair;->first:I

    iget v0, v0, Lcom/google/androidgamesdk/gametextinput/GameTextInput$Pair;->first:I

    add-int/2addr v0, v2

    invoke-interface {p1, v4, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 521
    invoke-direct {p0, v3}, Lcom/google/androidgamesdk/gametextinput/InputConnection;->stateUpdated(Z)V

    .line 522
    iget-object p1, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->mEditable:Landroid/text/Editable;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "processKeyEvent: exit after FORWARD_DEL, text=%s"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_7
    move v4, v3

    .line 526
    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    .line 527
    iget-object v7, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->dontInsertChars:Ljava/util/BitSet;

    invoke-virtual {v7, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-nez v6, :cond_9

    .line 528
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result p1

    int-to-char p1, p1

    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object p1

    .line 529
    iget-object v4, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->mEditable:Landroid/text/Editable;

    iget v6, v0, Lcom/google/androidgamesdk/gametextinput/GameTextInput$Pair;->first:I

    invoke-interface {v4, v6, p1}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 531
    iget-object v4, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->mEditable:Landroid/text/Editable;

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v4

    .line 535
    invoke-direct {p0}, Lcom/google/androidgamesdk/gametextinput/InputConnection;->getComposingRegion()Lcom/google/androidgamesdk/gametextinput/GameTextInput$Pair;

    move-result-object v6

    .line 536
    iget v7, v6, Lcom/google/androidgamesdk/gametextinput/GameTextInput$Pair;->first:I

    if-ne v7, v5, :cond_8

    .line 537
    invoke-direct {p0}, Lcom/google/androidgamesdk/gametextinput/InputConnection;->getSelection()Lcom/google/androidgamesdk/gametextinput/GameTextInput$Pair;

    move-result-object v6

    .line 538
    iget v7, v6, Lcom/google/androidgamesdk/gametextinput/GameTextInput$Pair;->first:I

    if-ne v7, v5, :cond_8

    .line 539
    new-instance v6, Lcom/google/androidgamesdk/gametextinput/GameTextInput$Pair;

    invoke-direct {v6, v3, v3}, Lcom/google/androidgamesdk/gametextinput/GameTextInput$Pair;-><init>(II)V

    .line 545
    :cond_8
    iget v5, v6, Lcom/google/androidgamesdk/gametextinput/GameTextInput$Pair;->first:I

    add-int/2addr v5, v4

    iput v5, v6, Lcom/google/androidgamesdk/gametextinput/GameTextInput$Pair;->second:I

    .line 546
    iget v4, v6, Lcom/google/androidgamesdk/gametextinput/GameTextInput$Pair;->first:I

    iget v5, v6, Lcom/google/androidgamesdk/gametextinput/GameTextInput$Pair;->second:I

    invoke-virtual {p0, v4, v5}, Lcom/google/androidgamesdk/gametextinput/InputConnection;->setComposingRegion(II)Z

    .line 547
    iget v0, v0, Lcom/google/androidgamesdk/gametextinput/GameTextInput$Pair;->first:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr v0, p1

    .line 548
    invoke-direct {p0, v0, v0}, Lcom/google/androidgamesdk/gametextinput/InputConnection;->setSelectionInternal(II)V

    .line 549
    invoke-direct {p0}, Lcom/google/androidgamesdk/gametextinput/InputConnection;->informIMM()V

    .line 550
    invoke-virtual {p0}, Lcom/google/androidgamesdk/gametextinput/InputConnection;->restartInput()V

    goto :goto_1

    :cond_9
    move v2, v4

    :goto_1
    if-eqz v2, :cond_a

    .line 555
    iget-object p1, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->mEditable:Landroid/text/Editable;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "processKeyEvent: exit, text=%s"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    invoke-direct {p0, v3}, Lcom/google/androidgamesdk/gametextinput/InputConnection;->stateUpdated(Z)V

    :cond_a
    return v2
.end method

.method private final setComposingRegionInternal(II)V
    .locals 2

    .line 469
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 470
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/4 p2, -0x1

    if-ne v0, p2, :cond_0

    .line 473
    iget-object p1, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {p1}, Lcom/google/androidgamesdk/gametextinput/GameTextInput;->removeComposingRegion(Landroid/text/Editable;)V

    goto :goto_0

    .line 475
    :cond_0
    iget-object p2, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->mEditable:Landroid/text/Editable;

    invoke-interface {p2}, Landroid/text/Editable;->length()I

    move-result p2

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 476
    iget-object v0, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->mEditable:Landroid/text/Editable;

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 477
    iget-object v0, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v0, p2, p1}, Lcom/google/androidgamesdk/gametextinput/GameTextInput;->setComposingRegion(Landroid/text/Editable;II)V

    :goto_0
    return-void
.end method

.method private final setSelectionInternal(II)V
    .locals 1

    .line 464
    iget-object v0, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v0, p1, p2}, Lcom/google/androidgamesdk/gametextinput/GameTextInput;->setSelection(Landroid/text/Editable;II)V

    return-void
.end method

.method private final stateUpdated(Z)V
    .locals 9

    .line 564
    invoke-direct {p0}, Lcom/google/androidgamesdk/gametextinput/InputConnection;->getSelection()Lcom/google/androidgamesdk/gametextinput/GameTextInput$Pair;

    move-result-object v0

    .line 565
    invoke-direct {p0}, Lcom/google/androidgamesdk/gametextinput/InputConnection;->getComposingRegion()Lcom/google/androidgamesdk/gametextinput/GameTextInput$Pair;

    move-result-object v1

    .line 566
    new-instance v8, Lcom/google/androidgamesdk/gametextinput/State;

    iget-object v2, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->mEditable:Landroid/text/Editable;

    .line 567
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget v4, v0, Lcom/google/androidgamesdk/gametextinput/GameTextInput$Pair;->first:I

    iget v5, v0, Lcom/google/androidgamesdk/gametextinput/GameTextInput$Pair;->second:I

    iget v6, v1, Lcom/google/androidgamesdk/gametextinput/GameTextInput$Pair;->first:I

    iget v7, v1, Lcom/google/androidgamesdk/gametextinput/GameTextInput$Pair;->second:I

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/google/androidgamesdk/gametextinput/State;-><init>(Ljava/lang/String;IIII)V

    .line 570
    iget-object v0, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->listener:Lcom/google/androidgamesdk/gametextinput/Listener;

    if-eqz v0, :cond_0

    .line 575
    invoke-interface {v0, v8, p1}, Lcom/google/androidgamesdk/gametextinput/Listener;->stateChanged(Lcom/google/androidgamesdk/gametextinput/State;Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public closeConnection()V
    .locals 2

    .line 444
    const-string v0, "gti.InputConnection"

    const-string v1, "closeConnection"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    invoke-super {p0}, Landroid/view/inputmethod/BaseInputConnection;->closeConnection()V

    return-void
.end method

.method public commitText(Ljava/lang/CharSequence;I)Z
    .locals 2

    .line 348
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Commit: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 351
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", new pos = "

    .line 352
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 353
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 354
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 348
    const-string v1, "gti.InputConnection"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    invoke-virtual {p0, p1, p2}, Lcom/google/androidgamesdk/gametextinput/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 356
    invoke-virtual {p0}, Lcom/google/androidgamesdk/gametextinput/InputConnection;->finishComposingText()Z

    .line 357
    invoke-direct {p0}, Lcom/google/androidgamesdk/gametextinput/InputConnection;->informIMM()V

    const/4 p1, 0x1

    return p1
.end method

.method public deleteSurroundingText(II)Z
    .locals 4

    .line 364
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "deleteSurroundingText: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gti.InputConnection"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    invoke-direct {p0}, Lcom/google/androidgamesdk/gametextinput/InputConnection;->getSelection()Lcom/google/androidgamesdk/gametextinput/GameTextInput$Pair;

    move-result-object v0

    .line 366
    iget v2, v0, Lcom/google/androidgamesdk/gametextinput/GameTextInput$Pair;->first:I

    iget v3, v0, Lcom/google/androidgamesdk/gametextinput/GameTextInput$Pair;->second:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 367
    iget v3, v0, Lcom/google/androidgamesdk/gametextinput/GameTextInput$Pair;->first:I

    iget v0, v0, Lcom/google/androidgamesdk/gametextinput/GameTextInput$Pair;->second:I

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v3, 0x0

    if-ge v2, v0, :cond_0

    .line 372
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 373
    iget-object p2, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->mEditable:Landroid/text/Editable;

    invoke-interface {p2}, Landroid/text/Editable;->length()I

    move-result p2

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_0

    :cond_0
    sub-int/2addr v2, p1

    .line 375
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/2addr v0, p2

    .line 376
    iget-object p2, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->mEditable:Landroid/text/Editable;

    invoke-interface {p2}, Landroid/text/Editable;->length()I

    move-result p2

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 379
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "deleteSurroundingText: deleting text from %d to %d"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    iget-object v0, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->mEditable:Landroid/text/Editable;

    invoke-interface {v0, p1, p2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 382
    invoke-direct {p0, v3}, Lcom/google/androidgamesdk/gametextinput/InputConnection;->stateUpdated(Z)V

    const/4 p1, 0x1

    return p1
.end method

.method public deleteSurroundingTextInCodePoints(II)Z
    .locals 2

    .line 389
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "deleteSurroundingTextInCodePoints: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gti.InputConnection"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->deleteSurroundingTextInCodePoints(II)Z

    move-result p1

    const/4 p2, 0x0

    .line 391
    invoke-direct {p0, p2}, Lcom/google/androidgamesdk/gametextinput/InputConnection;->stateUpdated(Z)V

    return p1
.end method

.method public finishComposingText()Z
    .locals 2

    .line 340
    const-string v0, "gti.InputConnection"

    const-string v1, "finishComposingText"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    .line 341
    invoke-virtual {p0, v0, v0}, Lcom/google/androidgamesdk/gametextinput/InputConnection;->setComposingRegion(II)Z

    const/4 v0, 0x1

    return v0
.end method

.method public getEditable()Landroid/text/Editable;
    .locals 2

    .line 287
    const-string v0, "gti.InputConnection"

    const-string v1, "getEditable "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    iget-object v0, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->mEditable:Landroid/text/Editable;

    return-object v0
.end method

.method public final getEditorInfo()Landroid/view/inputmethod/EditorInfo;
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->settings:Lcom/google/androidgamesdk/gametextinput/Settings;

    iget-object v0, v0, Lcom/google/androidgamesdk/gametextinput/Settings;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    return-object v0
.end method

.method public getImeInsets()Landroidx/core/graphics/Insets;
    .locals 2

    .line 616
    iget-object v0, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->targetView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 617
    sget-object v0, Landroidx/core/graphics/Insets;->NONE:Landroidx/core/graphics/Insets;

    return-object v0

    .line 620
    :cond_0
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getRootWindowInsets(Landroid/view/View;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object v0

    if-nez v0, :cond_1

    .line 623
    sget-object v0, Landroidx/core/graphics/Insets;->NONE:Landroidx/core/graphics/Insets;

    return-object v0

    .line 626
    :cond_1
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->ime()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v0

    return-object v0
.end method

.method public final getListener()Lcom/google/androidgamesdk/gametextinput/Listener;
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->listener:Lcom/google/androidgamesdk/gametextinput/Listener;

    return-object v0
.end method

.method public getSelectedText(I)Ljava/lang/CharSequence;
    .locals 2

    .line 408
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getSelectedText: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gti.InputConnection"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    invoke-super {p0, p1}, Landroid/view/inputmethod/BaseInputConnection;->getSelectedText(I)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public final getSoftKeyboardActive()Z
    .locals 1

    .line 187
    iget-boolean v0, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->mSoftKeyboardActive:Z

    return v0
.end method

.method public getTextAfterCursor(II)Ljava/lang/CharSequence;
    .locals 2

    .line 415
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getTextAfterCursor: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gti.InputConnection"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-gez p1, :cond_0

    .line 417
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "getTextAfterCursor: returning null to due to an invalid length="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1

    .line 420
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public getTextBeforeCursor(II)Ljava/lang/CharSequence;
    .locals 2

    .line 426
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getTextBeforeCursor: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", flags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gti.InputConnection"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-gez p1, :cond_0

    .line 428
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "getTextBeforeCursor: returning null to due to an invalid length="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1

    .line 431
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public isSoftwareKeyboardVisible()Z
    .locals 2

    .line 635
    iget-object v0, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->targetView:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 639
    :cond_0
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getRootWindowInsets(Landroid/view/View;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 645
    :cond_1
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->ime()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/core/view/WindowInsetsCompat;->isVisible(I)Z

    move-result v0

    return v0
.end method

.method public onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 1

    .line 587
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onApplyWindowInsets"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/androidgamesdk/gametextinput/InputConnection;->isSoftwareKeyboardVisible()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "gti.InputConnection"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    iget-object p1, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->listener:Lcom/google/androidgamesdk/gametextinput/Listener;

    if-eqz p1, :cond_0

    .line 590
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->ime()I

    move-result v0

    invoke-virtual {p2, v0}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/androidgamesdk/gametextinput/Listener;->onImeInsetsChanged(Landroidx/core/graphics/Insets;)V

    .line 593
    :cond_0
    invoke-virtual {p0}, Lcom/google/androidgamesdk/gametextinput/InputConnection;->isSoftwareKeyboardVisible()Z

    move-result p1

    .line 594
    iget-boolean v0, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->mSoftKeyboardActive:Z

    if-ne p1, v0, :cond_1

    return-object p2

    .line 598
    :cond_1
    iput-boolean p1, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->mSoftKeyboardActive:Z

    if-nez p1, :cond_2

    .line 600
    iget-object v0, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 603
    :cond_2
    iget-object v0, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->listener:Lcom/google/androidgamesdk/gametextinput/Listener;

    if-eqz v0, :cond_3

    .line 604
    invoke-interface {v0, p1}, Lcom/google/androidgamesdk/gametextinput/Listener;->onSoftwareKeyboardVisibilityChanged(Z)V

    :cond_3
    return-object p2
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 281
    invoke-direct {p0, p3}, Lcom/google/androidgamesdk/gametextinput/InputConnection;->processKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public performEditorAction(I)Z
    .locals 1

    .line 657
    iget-object v0, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->listener:Lcom/google/androidgamesdk/gametextinput/Listener;

    if-eqz v0, :cond_0

    .line 658
    invoke-interface {v0, p1}, Lcom/google/androidgamesdk/gametextinput/Listener;->onEditorAction(I)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public requestCursorUpdates(I)Z
    .locals 2

    .line 437
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Request cursor updates: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gti.InputConnection"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    invoke-super {p0, p1}, Landroid/view/inputmethod/BaseInputConnection;->requestCursorUpdates(I)Z

    move-result p1

    return p1
.end method

.method public restartInput()V
    .locals 2

    .line 178
    iget-object v0, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->targetView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    return-void
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 398
    iget-object v0, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->settings:Lcom/google/androidgamesdk/gametextinput/Settings;

    iget-boolean v0, v0, Lcom/google/androidgamesdk/gametextinput/Settings;->mForwardKeyEvents:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->settings:Lcom/google/androidgamesdk/gametextinput/Settings;

    iget-object v0, v0, Lcom/google/androidgamesdk/gametextinput/Settings;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget v0, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 400
    iget-object v0, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->targetView:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Landroid/view/inputmethod/InputMethodManager;->dispatchKeyEventFromInputMethod(Landroid/view/View;Landroid/view/KeyEvent;)V

    .line 402
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/androidgamesdk/gametextinput/InputConnection;->processKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public setComposingRegion(II)Z
    .locals 2

    .line 331
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setComposingRegion: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gti.InputConnection"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    invoke-direct {p0, p1, p2}, Lcom/google/androidgamesdk/gametextinput/InputConnection;->setComposingRegionInternal(II)V

    const/4 p1, 0x0

    .line 333
    invoke-direct {p0, p1}, Lcom/google/androidgamesdk/gametextinput/InputConnection;->stateUpdated(Z)V

    const/4 p1, 0x1

    return p1
.end method

.method public setComposingText(Ljava/lang/CharSequence;I)Z
    .locals 5

    .line 303
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 302
    const-string v1, "setComposingText=\'%s\' newCursorPosition=%d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "gti.InputConnection"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 307
    :cond_0
    invoke-direct {p0}, Lcom/google/androidgamesdk/gametextinput/InputConnection;->getComposingRegion()Lcom/google/androidgamesdk/gametextinput/GameTextInput$Pair;

    move-result-object v1

    .line 308
    iget v2, v1, Lcom/google/androidgamesdk/gametextinput/GameTextInput$Pair;->first:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 309
    invoke-direct {p0}, Lcom/google/androidgamesdk/gametextinput/InputConnection;->getSelection()Lcom/google/androidgamesdk/gametextinput/GameTextInput$Pair;

    move-result-object v1

    .line 310
    iget v2, v1, Lcom/google/androidgamesdk/gametextinput/GameTextInput$Pair;->first:I

    if-ne v2, v3, :cond_1

    .line 311
    new-instance v1, Lcom/google/androidgamesdk/gametextinput/GameTextInput$Pair;

    invoke-direct {v1, v0, v0}, Lcom/google/androidgamesdk/gametextinput/GameTextInput$Pair;-><init>(II)V

    .line 315
    :cond_1
    iget-object v2, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->mEditable:Landroid/text/Editable;

    iget v3, v1, Lcom/google/androidgamesdk/gametextinput/GameTextInput$Pair;->first:I

    iget v4, v1, Lcom/google/androidgamesdk/gametextinput/GameTextInput$Pair;->second:I

    invoke-interface {v2, v3, v4}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 316
    iget-object v2, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->mEditable:Landroid/text/Editable;

    iget v3, v1, Lcom/google/androidgamesdk/gametextinput/GameTextInput$Pair;->first:I

    invoke-interface {v2, v3, p1}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 317
    iget v2, v1, Lcom/google/androidgamesdk/gametextinput/GameTextInput$Pair;->first:I

    iget v1, v1, Lcom/google/androidgamesdk/gametextinput/GameTextInput$Pair;->first:I

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    add-int/2addr v1, p1

    invoke-virtual {p0, v2, v1}, Lcom/google/androidgamesdk/gametextinput/InputConnection;->setComposingRegion(II)Z

    .line 318
    invoke-direct {p0}, Lcom/google/androidgamesdk/gametextinput/InputConnection;->getComposingRegion()Lcom/google/androidgamesdk/gametextinput/GameTextInput$Pair;

    move-result-object p1

    const/4 v1, 0x1

    if-lez p2, :cond_2

    .line 320
    iget p1, p1, Lcom/google/androidgamesdk/gametextinput/GameTextInput$Pair;->second:I

    add-int/2addr p1, p2

    sub-int/2addr p1, v1

    iget-object p2, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->mEditable:Landroid/text/Editable;

    invoke-interface {p2}, Landroid/text/Editable;->length()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0

    .line 321
    :cond_2
    iget p1, p1, Lcom/google/androidgamesdk/gametextinput/GameTextInput$Pair;->first:I

    add-int/2addr p1, p2

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 322
    :goto_0
    invoke-virtual {p0, p1, p1}, Lcom/google/androidgamesdk/gametextinput/InputConnection;->setSelection(II)Z

    .line 323
    invoke-direct {p0, v0}, Lcom/google/androidgamesdk/gametextinput/InputConnection;->stateUpdated(Z)V

    return v1
.end method

.method public final setEditorInfo(Landroid/view/inputmethod/EditorInfo;)V
    .locals 4

    .line 222
    iget-object v0, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->settings:Lcom/google/androidgamesdk/gametextinput/Settings;

    iput-object p1, v0, Lcom/google/androidgamesdk/gametextinput/Settings;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    .line 227
    iget-object p1, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->settings:Lcom/google/androidgamesdk/gametextinput/Settings;

    iget-object p1, p1, Lcom/google/androidgamesdk/gametextinput/Settings;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget p1, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const/high16 v0, 0x20000

    and-int/2addr p1, v0

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 228
    iget-object p1, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->mEditable:Landroid/text/Editable;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/16 v3, 0x1388

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v1, v0

    new-instance v0, Lcom/google/androidgamesdk/gametextinput/InputConnection$SingeLineFilter;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/google/androidgamesdk/gametextinput/InputConnection$SingeLineFilter;-><init>(Lcom/google/androidgamesdk/gametextinput/InputConnection;Lcom/google/androidgamesdk/gametextinput/InputConnection$1;)V

    const/4 v2, 0x1

    aput-object v0, v1, v2

    invoke-interface {p1, v1}, Landroid/text/Editable;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_0

    .line 233
    :cond_0
    iget-object p1, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->mEditable:Landroid/text/Editable;

    new-array v0, v0, [Landroid/text/InputFilter;

    invoke-interface {p1, v0}, Landroid/text/Editable;->setFilters([Landroid/text/InputFilter;)V

    :goto_0
    return-void
.end method

.method public final setListener(Lcom/google/androidgamesdk/gametextinput/Listener;)Lcom/google/androidgamesdk/gametextinput/InputConnection;
    .locals 0

    .line 273
    iput-object p1, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->listener:Lcom/google/androidgamesdk/gametextinput/Listener;

    return-object p0
.end method

.method public setSelection(II)Z
    .locals 2

    .line 294
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setSelection: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gti.InputConnection"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    invoke-direct {p0, p1, p2}, Lcom/google/androidgamesdk/gametextinput/InputConnection;->setSelectionInternal(II)V

    const/4 p1, 0x1

    return p1
.end method

.method public final setSoftKeyboardActive(ZI)V
    .locals 1

    if-eqz p1, :cond_0

    .line 199
    iget-object p1, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->targetView:Landroid/view/View;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 200
    iget-object p1, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->targetView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 201
    iget-object p1, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->targetView:Landroid/view/View;

    invoke-virtual {p1, v0, p2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_0

    .line 203
    :cond_0
    iget-object p1, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :goto_0
    return-void
.end method

.method public final setState(Lcom/google/androidgamesdk/gametextinput/State;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 246
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setState: \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/google/androidgamesdk/gametextinput/State;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', selection=("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/google/androidgamesdk/gametextinput/State;->selectionStart:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p1, Lcom/google/androidgamesdk/gametextinput/State;->selectionEnd:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "), composing region=("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p1, Lcom/google/androidgamesdk/gametextinput/State;->composingRegionStart:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/google/androidgamesdk/gametextinput/State;->composingRegionEnd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gti.InputConnection"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    iget-object v0, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->mEditable:Landroid/text/Editable;

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 251
    iget-object v0, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection;->mEditable:Landroid/text/Editable;

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/google/androidgamesdk/gametextinput/State;->text:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 252
    iget v0, p1, Lcom/google/androidgamesdk/gametextinput/State;->selectionStart:I

    iget v1, p1, Lcom/google/androidgamesdk/gametextinput/State;->selectionEnd:I

    invoke-direct {p0, v0, v1}, Lcom/google/androidgamesdk/gametextinput/InputConnection;->setSelectionInternal(II)V

    .line 253
    iget v0, p1, Lcom/google/androidgamesdk/gametextinput/State;->composingRegionStart:I

    iget p1, p1, Lcom/google/androidgamesdk/gametextinput/State;->composingRegionEnd:I

    invoke-direct {p0, v0, p1}, Lcom/google/androidgamesdk/gametextinput/InputConnection;->setComposingRegionInternal(II)V

    .line 254
    invoke-direct {p0}, Lcom/google/androidgamesdk/gametextinput/InputConnection;->informIMM()V

    return-void
.end method
