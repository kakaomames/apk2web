.class public Lcom/microsoft/xbox/idp/ui/CreationErrorFragment;
.super Lcom/microsoft/xbox/idp/compat/BaseFragment;
.source "CreationErrorFragment.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "CreationErrorFragment"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/microsoft/xbox/idp/compat/BaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 25
    sget p3, Lcom/microsoft/xboxtcui/R$layout;->xbid_fragment_error_creation:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 30
    invoke-super {p0, p1, p2}, Lcom/microsoft/xbox/idp/compat/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 31
    sget p2, Lcom/microsoft/xboxtcui/R$id;->xbid_error_message:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    sget p2, Lcom/microsoft/xboxtcui/R$string;->xbid_creation_error_android:I

    new-instance v0, Lcom/microsoft/xbox/idp/ui/CreationErrorFragment$1;

    invoke-direct {v0, p0}, Lcom/microsoft/xbox/idp/ui/CreationErrorFragment$1;-><init>(Lcom/microsoft/xbox/idp/ui/CreationErrorFragment;)V

    invoke-static {p1, p2, v0}, Lcom/microsoft/xbox/idp/ui/UiUtil;->ensureClickableSpanOnUnderlineSpan(Landroid/widget/TextView;ILandroid/text/style/ClickableSpan;)V

    return-void
.end method
