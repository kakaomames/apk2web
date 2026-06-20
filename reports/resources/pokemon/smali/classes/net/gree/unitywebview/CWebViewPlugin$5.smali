.class Lnet/gree/unitywebview/CWebViewPlugin$5;
.super Ljava/lang/Object;
.source "CWebViewPlugin.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/gree/unitywebview/CWebViewPlugin;->Init(Ljava/lang/String;ZZILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/gree/unitywebview/CWebViewPlugin;

.field final synthetic val$a:Landroid/app/Activity;

.field final synthetic val$activityRootView:Landroid/view/View;

.field final synthetic val$gameObject:Ljava/lang/String;


# direct methods
.method constructor <init>(Lnet/gree/unitywebview/CWebViewPlugin;Landroid/view/View;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    .line 699
    iput-object p1, p0, Lnet/gree/unitywebview/CWebViewPlugin$5;->this$0:Lnet/gree/unitywebview/CWebViewPlugin;

    iput-object p2, p0, Lnet/gree/unitywebview/CWebViewPlugin$5;->val$activityRootView:Landroid/view/View;

    iput-object p3, p0, Lnet/gree/unitywebview/CWebViewPlugin$5;->val$a:Landroid/app/Activity;

    iput-object p4, p0, Lnet/gree/unitywebview/CWebViewPlugin$5;->val$gameObject:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 7

    .line 702
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 704
    iget-object v1, p0, Lnet/gree/unitywebview/CWebViewPlugin$5;->val$activityRootView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 705
    iget-object v1, p0, Lnet/gree/unitywebview/CWebViewPlugin$5;->val$a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 709
    :try_start_0
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 710
    invoke-virtual {v1, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 711
    iget v2, v2, Landroid/graphics/Point;->y:I

    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 713
    :catch_0
    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v2

    .line 716
    :goto_0
    iget-object v3, p0, Lnet/gree/unitywebview/CWebViewPlugin$5;->val$activityRootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    .line 718
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x11

    if-lt v5, v6, :cond_0

    .line 719
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 720
    invoke-virtual {v1, v4}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 722
    invoke-virtual {v3, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 723
    iget v4, v4, Landroid/graphics/Point;->y:I

    const/4 v5, 0x1

    aget v1, v1, v5

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v1, v5

    sub-int/2addr v4, v1

    .line 725
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v1

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v0

    sub-int/2addr v1, v3

    const-string v0, "SetKeyboardVisible"

    if-lez v1, :cond_1

    add-int/2addr v1, v4

    add-int/2addr v2, v4

    .line 726
    div-int/lit8 v2, v2, 0x3

    if-le v1, v2, :cond_1

    .line 727
    iget-object v1, p0, Lnet/gree/unitywebview/CWebViewPlugin$5;->val$gameObject:Ljava/lang/String;

    const-string v2, "true"

    invoke-static {v1, v0, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 729
    :cond_1
    iget-object v1, p0, Lnet/gree/unitywebview/CWebViewPlugin$5;->val$gameObject:Ljava/lang/String;

    const-string v2, "false"

    invoke-static {v1, v0, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method
