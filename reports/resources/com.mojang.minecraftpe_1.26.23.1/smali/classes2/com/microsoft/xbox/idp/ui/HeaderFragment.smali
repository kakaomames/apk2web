.class public Lcom/microsoft/xbox/idp/ui/HeaderFragment;
.super Lcom/microsoft/xbox/idp/compat/BaseFragment;
.source "HeaderFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xbox/idp/ui/HeaderFragment$Callbacks;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final LOADER_GET_PROFILE:I = 0x1

.field private static final LOADER_USER_IMAGE_URL:I = 0x2

.field private static final NO_OP_CALLBACKS:Lcom/microsoft/xbox/idp/ui/HeaderFragment$Callbacks;

.field private static final TAG:Ljava/lang/String; = "HeaderFragment"


# instance fields
.field private callbacks:Lcom/microsoft/xbox/idp/ui/HeaderFragment$Callbacks;

.field private final imageCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks<",
            "Lcom/microsoft/xbox/idp/toolkit/BitmapLoader$Result;",
            ">;"
        }
    .end annotation
.end field

.field private userAccount:Lcom/microsoft/xbox/idp/model/UserAccount;

.field userAccountCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks<",
            "Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result<",
            "Lcom/microsoft/xbox/idp/model/UserAccount;",
            ">;>;"
        }
    .end annotation
.end field

.field private userEmail:Landroid/widget/TextView;

.field private userImageView:Landroid/widget/ImageView;

.field private userName:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 174
    new-instance v0, Lcom/microsoft/xbox/idp/ui/HeaderFragment$3;

    invoke-direct {v0}, Lcom/microsoft/xbox/idp/ui/HeaderFragment$3;-><init>()V

    sput-object v0, Lcom/microsoft/xbox/idp/ui/HeaderFragment;->NO_OP_CALLBACKS:Lcom/microsoft/xbox/idp/ui/HeaderFragment$Callbacks;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Lcom/microsoft/xbox/idp/compat/BaseFragment;-><init>()V

    .line 39
    sget-object v0, Lcom/microsoft/xbox/idp/ui/HeaderFragment;->NO_OP_CALLBACKS:Lcom/microsoft/xbox/idp/ui/HeaderFragment$Callbacks;

    iput-object v0, p0, Lcom/microsoft/xbox/idp/ui/HeaderFragment;->callbacks:Lcom/microsoft/xbox/idp/ui/HeaderFragment$Callbacks;

    .line 107
    new-instance v0, Lcom/microsoft/xbox/idp/ui/HeaderFragment$1;

    invoke-direct {v0, p0}, Lcom/microsoft/xbox/idp/ui/HeaderFragment$1;-><init>(Lcom/microsoft/xbox/idp/ui/HeaderFragment;)V

    iput-object v0, p0, Lcom/microsoft/xbox/idp/ui/HeaderFragment;->userAccountCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 144
    new-instance v0, Lcom/microsoft/xbox/idp/ui/HeaderFragment$2;

    invoke-direct {v0, p0}, Lcom/microsoft/xbox/idp/ui/HeaderFragment$2;-><init>(Lcom/microsoft/xbox/idp/ui/HeaderFragment;)V

    iput-object v0, p0, Lcom/microsoft/xbox/idp/ui/HeaderFragment;->imageCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 34
    sget-object v0, Lcom/microsoft/xbox/idp/ui/HeaderFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/microsoft/xbox/idp/ui/HeaderFragment;)Lcom/microsoft/xbox/idp/model/UserAccount;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/microsoft/xbox/idp/ui/HeaderFragment;->userAccount:Lcom/microsoft/xbox/idp/model/UserAccount;

    return-object p0
.end method

.method static synthetic access$102(Lcom/microsoft/xbox/idp/ui/HeaderFragment;Lcom/microsoft/xbox/idp/model/UserAccount;)Lcom/microsoft/xbox/idp/model/UserAccount;
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/microsoft/xbox/idp/ui/HeaderFragment;->userAccount:Lcom/microsoft/xbox/idp/model/UserAccount;

    return-object p1
.end method

.method static synthetic access$200(Lcom/microsoft/xbox/idp/ui/HeaderFragment;)Landroid/widget/TextView;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/microsoft/xbox/idp/ui/HeaderFragment;->userEmail:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/microsoft/xbox/idp/ui/HeaderFragment;)Landroid/widget/TextView;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/microsoft/xbox/idp/ui/HeaderFragment;->userName:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/microsoft/xbox/idp/ui/HeaderFragment;)Landroid/app/LoaderManager$LoaderCallbacks;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/microsoft/xbox/idp/ui/HeaderFragment;->imageCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    return-object p0
.end method

.method static synthetic access$500(Lcom/microsoft/xbox/idp/ui/HeaderFragment;)Landroid/widget/ImageView;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/microsoft/xbox/idp/ui/HeaderFragment;->userImageView:Landroid/widget/ImageView;

    return-object p0
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .line 56
    invoke-super {p0, p1}, Lcom/microsoft/xbox/idp/compat/BaseFragment;->onAttach(Landroid/app/Activity;)V

    .line 58
    check-cast p1, Lcom/microsoft/xbox/idp/ui/HeaderFragment$Callbacks;

    iput-object p1, p0, Lcom/microsoft/xbox/idp/ui/HeaderFragment;->callbacks:Lcom/microsoft/xbox/idp/ui/HeaderFragment$Callbacks;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 101
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 102
    sget v0, Lcom/microsoft/xboxtcui/R$id;->xbid_close:I

    if-ne p1, v0, :cond_0

    .line 103
    iget-object p1, p0, Lcom/microsoft/xbox/idp/ui/HeaderFragment;->callbacks:Lcom/microsoft/xbox/idp/ui/HeaderFragment$Callbacks;

    invoke-interface {p1}, Lcom/microsoft/xbox/idp/ui/HeaderFragment$Callbacks;->onClickCloseHeader()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 69
    invoke-super {p0, p1}, Lcom/microsoft/xbox/idp/compat/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 76
    sget p3, Lcom/microsoft/xboxtcui/R$layout;->xbid_fragment_header:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDetach()V
    .locals 1

    .line 63
    invoke-super {p0}, Lcom/microsoft/xbox/idp/compat/BaseFragment;->onDetach()V

    .line 64
    sget-object v0, Lcom/microsoft/xbox/idp/ui/HeaderFragment;->NO_OP_CALLBACKS:Lcom/microsoft/xbox/idp/ui/HeaderFragment$Callbacks;

    iput-object v0, p0, Lcom/microsoft/xbox/idp/ui/HeaderFragment;->callbacks:Lcom/microsoft/xbox/idp/ui/HeaderFragment$Callbacks;

    return-void
.end method

.method public onResume()V
    .locals 4

    .line 90
    invoke-super {p0}, Lcom/microsoft/xbox/idp/compat/BaseFragment;->onResume()V

    .line 91
    invoke-virtual {p0}, Lcom/microsoft/xbox/idp/ui/HeaderFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {p0}, Lcom/microsoft/xbox/idp/ui/HeaderFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/microsoft/xbox/idp/ui/HeaderFragment;->userAccountCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v1, v2, v0, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_0

    .line 95
    :cond_0
    sget-object v0, Lcom/microsoft/xbox/idp/ui/HeaderFragment;->TAG:Ljava/lang/String;

    const-string v1, "No arguments provided"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 81
    invoke-super {p0, p1, p2}, Lcom/microsoft/xbox/idp/compat/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 82
    sget p2, Lcom/microsoft/xboxtcui/R$id;->xbid_close:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    sget p2, Lcom/microsoft/xboxtcui/R$id;->xbid_user_image:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/microsoft/xbox/idp/ui/HeaderFragment;->userImageView:Landroid/widget/ImageView;

    .line 84
    sget p2, Lcom/microsoft/xboxtcui/R$id;->xbid_user_name:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/microsoft/xbox/idp/ui/HeaderFragment;->userName:Landroid/widget/TextView;

    .line 85
    sget p2, Lcom/microsoft/xboxtcui/R$id;->xbid_user_email:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/microsoft/xbox/idp/ui/HeaderFragment;->userEmail:Landroid/widget/TextView;

    return-void
.end method
