.class Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog$7;
.super Ljava/lang/Object;
.source "ChangeFriendshipDialog.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->updateView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;


# direct methods
.method constructor <init>(Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;)V
    .locals 0

    .line 226
    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog$7;->this$0:Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 229
    iget-object p1, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog$7;->this$0:Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;

    invoke-static {p1}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->access$000(Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;)Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->setIsSharingRealNameEnd(Z)V

    const/4 p1, 0x1

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 231
    iget-object p2, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog$7;->this$0:Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;

    invoke-static {p2}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->access$000(Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;)Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;

    move-result-object p2

    invoke-virtual {p2}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->getCallerMarkedTargetAsIdentityShared()Z

    move-result p2

    if-nez p2, :cond_0

    .line 232
    iget-object p2, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog$7;->this$0:Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;

    invoke-static {p2}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->access$000(Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;)Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->setShouldAddUserToShareIdentityList(Z)V

    .line 234
    :cond_0
    iget-object p1, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog$7;->this$0:Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;

    invoke-static {p1}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->access$000(Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;)Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->setShouldRemoveUserFroShareIdentityList(Z)V

    goto :goto_0

    .line 236
    :cond_1
    iget-object p2, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog$7;->this$0:Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;

    invoke-static {p2}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->access$000(Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;)Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;

    move-result-object p2

    invoke-virtual {p2}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->getCallerMarkedTargetAsIdentityShared()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 237
    iget-object p2, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog$7;->this$0:Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;

    invoke-static {p2}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->access$000(Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;)Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->setShouldRemoveUserFroShareIdentityList(Z)V

    .line 239
    :cond_2
    iget-object p1, p0, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog$7;->this$0:Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;

    invoke-static {p1}, Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;->access$000(Lcom/microsoft/xbox/xle/app/dialog/ChangeFriendshipDialog;)Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/microsoft/xbox/xle/viewmodel/ChangeFriendshipDialogViewModel;->setShouldAddUserToShareIdentityList(Z)V

    :goto_0
    return-void
.end method
