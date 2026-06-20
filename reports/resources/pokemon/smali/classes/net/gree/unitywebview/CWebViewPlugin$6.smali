.class Lnet/gree/unitywebview/CWebViewPlugin$6;
.super Ljava/lang/Object;
.source "CWebViewPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/gree/unitywebview/CWebViewPlugin;->Destroy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/gree/unitywebview/CWebViewPlugin;

.field final synthetic val$a:Landroid/app/Activity;

.field final synthetic val$self:Lnet/gree/unitywebview/CWebViewPlugin;


# direct methods
.method constructor <init>(Lnet/gree/unitywebview/CWebViewPlugin;Landroid/app/Activity;Lnet/gree/unitywebview/CWebViewPlugin;)V
    .locals 0

    .line 794
    iput-object p1, p0, Lnet/gree/unitywebview/CWebViewPlugin$6;->this$0:Lnet/gree/unitywebview/CWebViewPlugin;

    iput-object p2, p0, Lnet/gree/unitywebview/CWebViewPlugin$6;->val$a:Landroid/app/Activity;

    iput-object p3, p0, Lnet/gree/unitywebview/CWebViewPlugin$6;->val$self:Lnet/gree/unitywebview/CWebViewPlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 795
    iget-object v0, p0, Lnet/gree/unitywebview/CWebViewPlugin$6;->this$0:Lnet/gree/unitywebview/CWebViewPlugin;

    invoke-static {v0}, Lnet/gree/unitywebview/CWebViewPlugin;->access$000(Lnet/gree/unitywebview/CWebViewPlugin;)Landroid/webkit/WebView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 798
    :cond_0
    iget-object v0, p0, Lnet/gree/unitywebview/CWebViewPlugin$6;->this$0:Lnet/gree/unitywebview/CWebViewPlugin;

    invoke-static {v0}, Lnet/gree/unitywebview/CWebViewPlugin;->access$2300(Lnet/gree/unitywebview/CWebViewPlugin;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 799
    iget-object v0, p0, Lnet/gree/unitywebview/CWebViewPlugin$6;->val$a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 800
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v2, p0, Lnet/gree/unitywebview/CWebViewPlugin$6;->this$0:Lnet/gree/unitywebview/CWebViewPlugin;

    invoke-static {v2}, Lnet/gree/unitywebview/CWebViewPlugin;->access$2300(Lnet/gree/unitywebview/CWebViewPlugin;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 801
    iget-object v0, p0, Lnet/gree/unitywebview/CWebViewPlugin$6;->this$0:Lnet/gree/unitywebview/CWebViewPlugin;

    invoke-static {v0, v1}, Lnet/gree/unitywebview/CWebViewPlugin;->access$2302(Lnet/gree/unitywebview/CWebViewPlugin;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 803
    :cond_1
    iget-object v0, p0, Lnet/gree/unitywebview/CWebViewPlugin$6;->this$0:Lnet/gree/unitywebview/CWebViewPlugin;

    invoke-static {v0}, Lnet/gree/unitywebview/CWebViewPlugin;->access$000(Lnet/gree/unitywebview/CWebViewPlugin;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 804
    iget-object v0, p0, Lnet/gree/unitywebview/CWebViewPlugin$6;->this$0:Lnet/gree/unitywebview/CWebViewPlugin;

    invoke-static {v0}, Lnet/gree/unitywebview/CWebViewPlugin;->access$1000(Lnet/gree/unitywebview/CWebViewPlugin;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 805
    invoke-static {}, Lnet/gree/unitywebview/CWebViewPlugin;->access$900()Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v2, p0, Lnet/gree/unitywebview/CWebViewPlugin$6;->this$0:Lnet/gree/unitywebview/CWebViewPlugin;

    invoke-static {v2}, Lnet/gree/unitywebview/CWebViewPlugin;->access$1000(Lnet/gree/unitywebview/CWebViewPlugin;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 806
    invoke-static {}, Lnet/gree/unitywebview/CWebViewPlugin;->access$900()Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 807
    iget-object v0, p0, Lnet/gree/unitywebview/CWebViewPlugin$6;->this$0:Lnet/gree/unitywebview/CWebViewPlugin;

    invoke-static {v0, v1}, Lnet/gree/unitywebview/CWebViewPlugin;->access$1002(Lnet/gree/unitywebview/CWebViewPlugin;Landroid/view/View;)Landroid/view/View;

    .line 809
    :cond_2
    invoke-static {}, Lnet/gree/unitywebview/CWebViewPlugin;->access$900()Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v2, p0, Lnet/gree/unitywebview/CWebViewPlugin$6;->this$0:Lnet/gree/unitywebview/CWebViewPlugin;

    invoke-static {v2}, Lnet/gree/unitywebview/CWebViewPlugin;->access$000(Lnet/gree/unitywebview/CWebViewPlugin;)Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 810
    iget-object v0, p0, Lnet/gree/unitywebview/CWebViewPlugin$6;->this$0:Lnet/gree/unitywebview/CWebViewPlugin;

    invoke-static {v0}, Lnet/gree/unitywebview/CWebViewPlugin;->access$000(Lnet/gree/unitywebview/CWebViewPlugin;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 811
    iget-object v0, p0, Lnet/gree/unitywebview/CWebViewPlugin$6;->this$0:Lnet/gree/unitywebview/CWebViewPlugin;

    invoke-static {v0, v1}, Lnet/gree/unitywebview/CWebViewPlugin;->access$002(Lnet/gree/unitywebview/CWebViewPlugin;Landroid/webkit/WebView;)Landroid/webkit/WebView;

    .line 813
    iget-object v0, p0, Lnet/gree/unitywebview/CWebViewPlugin$6;->this$0:Lnet/gree/unitywebview/CWebViewPlugin;

    invoke-static {v0}, Lnet/gree/unitywebview/CWebViewPlugin;->access$100(Lnet/gree/unitywebview/CWebViewPlugin;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 814
    iget-object v0, p0, Lnet/gree/unitywebview/CWebViewPlugin$6;->this$0:Lnet/gree/unitywebview/CWebViewPlugin;

    invoke-static {v0}, Lnet/gree/unitywebview/CWebViewPlugin;->access$200(Lnet/gree/unitywebview/CWebViewPlugin;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_3

    .line 815
    iget-object v0, p0, Lnet/gree/unitywebview/CWebViewPlugin$6;->this$0:Lnet/gree/unitywebview/CWebViewPlugin;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lnet/gree/unitywebview/CWebViewPlugin;->access$202(Lnet/gree/unitywebview/CWebViewPlugin;Ljava/util/List;)Ljava/util/List;

    .line 817
    :cond_3
    iget-object v0, p0, Lnet/gree/unitywebview/CWebViewPlugin$6;->this$0:Lnet/gree/unitywebview/CWebViewPlugin;

    invoke-static {v0}, Lnet/gree/unitywebview/CWebViewPlugin;->access$200(Lnet/gree/unitywebview/CWebViewPlugin;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lnet/gree/unitywebview/CWebViewPlugin$6;->val$self:Lnet/gree/unitywebview/CWebViewPlugin;

    const-string v2, "remove"

    invoke-static {v2, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 819
    :cond_4
    iget-object v0, p0, Lnet/gree/unitywebview/CWebViewPlugin$6;->val$a:Landroid/app/Activity;

    .line 820
    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 821
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lnet/gree/unitywebview/CWebViewPlugin$6;->val$self:Lnet/gree/unitywebview/CWebViewPlugin;

    .line 822
    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 823
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    :goto_0
    return-void
.end method
