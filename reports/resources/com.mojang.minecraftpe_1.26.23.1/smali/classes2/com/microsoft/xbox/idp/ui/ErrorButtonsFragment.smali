.class public Lcom/microsoft/xbox/idp/ui/ErrorButtonsFragment;
.super Lcom/microsoft/xbox/idp/compat/BaseFragment;
.source "ErrorButtonsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xbox/idp/ui/ErrorButtonsFragment$Callbacks;
    }
.end annotation


# static fields
.field public static final ARG_LEFT_ERROR_BUTTON_STRING_ID:Ljava/lang/String; = "ARG_LEFT_ERROR_BUTTON_STRING_ID"

.field private static final NO_OP_CALLBACKS:Lcom/microsoft/xbox/idp/ui/ErrorButtonsFragment$Callbacks;


# instance fields
.field private callbacks:Lcom/microsoft/xbox/idp/ui/ErrorButtonsFragment$Callbacks;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 67
    new-instance v0, Lcom/microsoft/xbox/idp/ui/ErrorButtonsFragment$1;

    invoke-direct {v0}, Lcom/microsoft/xbox/idp/ui/ErrorButtonsFragment$1;-><init>()V

    sput-object v0, Lcom/microsoft/xbox/idp/ui/ErrorButtonsFragment;->NO_OP_CALLBACKS:Lcom/microsoft/xbox/idp/ui/ErrorButtonsFragment$Callbacks;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Lcom/microsoft/xbox/idp/compat/BaseFragment;-><init>()V

    .line 21
    sget-object v0, Lcom/microsoft/xbox/idp/ui/ErrorButtonsFragment;->NO_OP_CALLBACKS:Lcom/microsoft/xbox/idp/ui/ErrorButtonsFragment$Callbacks;

    iput-object v0, p0, Lcom/microsoft/xbox/idp/ui/ErrorButtonsFragment;->callbacks:Lcom/microsoft/xbox/idp/ui/ErrorButtonsFragment$Callbacks;

    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .line 25
    invoke-super {p0, p1}, Lcom/microsoft/xbox/idp/compat/BaseFragment;->onAttach(Landroid/app/Activity;)V

    .line 26
    check-cast p1, Lcom/microsoft/xbox/idp/ui/ErrorButtonsFragment$Callbacks;

    iput-object p1, p0, Lcom/microsoft/xbox/idp/ui/ErrorButtonsFragment;->callbacks:Lcom/microsoft/xbox/idp/ui/ErrorButtonsFragment$Callbacks;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 54
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 55
    sget v0, Lcom/microsoft/xboxtcui/R$id;->xbid_error_left_button:I

    if-ne p1, v0, :cond_0

    .line 56
    iget-object p1, p0, Lcom/microsoft/xbox/idp/ui/ErrorButtonsFragment;->callbacks:Lcom/microsoft/xbox/idp/ui/ErrorButtonsFragment$Callbacks;

    invoke-interface {p1}, Lcom/microsoft/xbox/idp/ui/ErrorButtonsFragment$Callbacks;->onClickedLeftButton()V

    goto :goto_0

    .line 57
    :cond_0
    sget v0, Lcom/microsoft/xboxtcui/R$id;->xbid_error_right_button:I

    if-ne p1, v0, :cond_1

    .line 58
    iget-object p1, p0, Lcom/microsoft/xbox/idp/ui/ErrorButtonsFragment;->callbacks:Lcom/microsoft/xbox/idp/ui/ErrorButtonsFragment$Callbacks;

    invoke-interface {p1}, Lcom/microsoft/xbox/idp/ui/ErrorButtonsFragment$Callbacks;->onClickedRightButton()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 37
    sget p3, Lcom/microsoft/xboxtcui/R$layout;->xbid_fragment_error_buttons:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDetach()V
    .locals 1

    .line 31
    invoke-super {p0}, Lcom/microsoft/xbox/idp/compat/BaseFragment;->onDetach()V

    .line 32
    sget-object v0, Lcom/microsoft/xbox/idp/ui/ErrorButtonsFragment;->NO_OP_CALLBACKS:Lcom/microsoft/xbox/idp/ui/ErrorButtonsFragment$Callbacks;

    iput-object v0, p0, Lcom/microsoft/xbox/idp/ui/ErrorButtonsFragment;->callbacks:Lcom/microsoft/xbox/idp/ui/ErrorButtonsFragment$Callbacks;

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 42
    invoke-super {p0, p1, p2}, Lcom/microsoft/xbox/idp/compat/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 43
    sget p2, Lcom/microsoft/xboxtcui/R$id;->xbid_error_left_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    .line 44
    invoke-virtual {p2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    sget v0, Lcom/microsoft/xboxtcui/R$id;->xbid_error_right_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    invoke-virtual {p0}, Lcom/microsoft/xbox/idp/ui/ErrorButtonsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 47
    const-string v0, "ARG_LEFT_ERROR_BUTTON_STRING_ID"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 48
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/Button;->setText(I)V

    :cond_0
    return-void
.end method
