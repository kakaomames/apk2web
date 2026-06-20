.class public Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;
.super Landroidx/appcompat/widget/AppCompatEditText;
.source "TextInputProxyEditTextbox.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mojang/minecraftpe/TextInputProxyEditTextbox$MCPEKeyWatcher;,
        Lcom/mojang/minecraftpe/TextInputProxyEditTextbox$LogicalLineMovementMethod;,
        Lcom/mojang/minecraftpe/TextInputProxyEditTextbox$MCPEInputConnection;
    }
.end annotation


# instance fields
.field public _mcpeKeyWatcher:Lcom/mojang/minecraftpe/TextInputProxyEditTextbox$MCPEKeyWatcher;

.field public allowedLength:I


# direct methods
.method public static bridge synthetic -$$Nest$fget_mcpeKeyWatcher(Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;)Lcom/mojang/minecraftpe/TextInputProxyEditTextbox$MCPEKeyWatcher;
    .locals 0

    iget-object p0, p0, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;->_mcpeKeyWatcher:Lcom/mojang/minecraftpe/TextInputProxyEditTextbox$MCPEKeyWatcher;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 134
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatEditText;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 21
    iput-object p1, p0, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;->_mcpeKeyWatcher:Lcom/mojang/minecraftpe/TextInputProxyEditTextbox$MCPEKeyWatcher;

    .line 135
    new-instance v0, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox$LogicalLineMovementMethod;

    invoke-direct {v0, p0, p1}, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox$LogicalLineMovementMethod;-><init>(Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;Lcom/mojang/minecraftpe/TextInputProxyEditTextbox-IA;)V

    invoke-virtual {p0, v0}, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return-void
.end method

.method private createSingleLineFilter()Landroid/text/InputFilter;
    .locals 1

    .line 198
    new-instance v0, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox$1;

    invoke-direct {v0, p0}, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox$1;-><init>(Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;)V

    return-object v0
.end method

.method private createUnicodeFilter()Landroid/text/InputFilter;
    .locals 1

    .line 216
    new-instance v0, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox$2;

    invoke-direct {v0, p0}, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox$2;-><init>(Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;)V

    return-object v0
.end method


# virtual methods
.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 2

    .line 165
    new-instance v0, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox$MCPEInputConnection;

    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatEditText;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1, p0}, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox$MCPEInputConnection;-><init>(Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;Landroid/view/inputmethod/InputConnection;ZLcom/mojang/minecraftpe/TextInputProxyEditTextbox;)V

    return-object v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 172
    invoke-virtual {p0, p1, p2}, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 176
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatEditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 181
    iget-object v0, p0, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;->_mcpeKeyWatcher:Lcom/mojang/minecraftpe/TextInputProxyEditTextbox$MCPEKeyWatcher;

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 182
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 183
    iget-object p1, p0, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;->_mcpeKeyWatcher:Lcom/mojang/minecraftpe/TextInputProxyEditTextbox$MCPEKeyWatcher;

    invoke-interface {p1}, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox$MCPEKeyWatcher;->onBackKeyPressed()Z

    move-result p1

    return p1

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;->_mcpeKeyWatcher:Lcom/mojang/minecraftpe/TextInputProxyEditTextbox$MCPEKeyWatcher;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox$MCPEKeyWatcher;->updateShiftKeyState(I)V

    .line 190
    :cond_1
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatEditText;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onSelectionChanged(II)V
    .locals 0

    .line 140
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatEditText;->onSelectionChanged(II)V

    .line 141
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object p1

    instance-of p1, p1, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox$LogicalLineMovementMethod;

    if-eqz p1, :cond_0

    .line 142
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object p1

    check-cast p1, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox$LogicalLineMovementMethod;

    invoke-virtual {p1}, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox$LogicalLineMovementMethod;->onSelectionChanged()V

    :cond_0
    return-void
.end method

.method public setOnMCPEKeyWatcher(Lcom/mojang/minecraftpe/TextInputProxyEditTextbox$MCPEKeyWatcher;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;->_mcpeKeyWatcher:Lcom/mojang/minecraftpe/TextInputProxyEditTextbox$MCPEKeyWatcher;

    return-void
.end method

.method public updateFilters(IZ)V
    .locals 2

    .line 147
    iput p1, p0, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;->allowedLength:I

    .line 148
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    .line 150
    new-instance p1, Landroid/text/InputFilter$LengthFilter;

    iget v1, p0, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;->allowedLength:I

    invoke-direct {p1, v1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    if-eqz p2, :cond_1

    .line 154
    invoke-direct {p0}, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;->createSingleLineFilter()Landroid/text/InputFilter;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    :cond_1
    invoke-direct {p0}, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;->createUnicodeFilter()Landroid/text/InputFilter;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Landroid/text/InputFilter;

    .line 159
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/text/InputFilter;

    .line 160
    invoke-virtual {p0, p1}, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;->setFilters([Landroid/text/InputFilter;)V

    return-void
.end method
