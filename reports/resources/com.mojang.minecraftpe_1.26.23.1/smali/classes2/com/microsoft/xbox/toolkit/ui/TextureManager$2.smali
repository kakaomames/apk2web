.class Lcom/microsoft/xbox/toolkit/ui/TextureManager$2;
.super Ljava/lang/Object;
.source "TextureManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/xbox/toolkit/ui/TextureManager;->setXLEImageView(Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;Lcom/microsoft/xbox/toolkit/ui/XLEImageView;Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/xbox/toolkit/ui/TextureManager;

.field final synthetic val$bitmap:Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;

.field final synthetic val$key:Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;

.field final synthetic val$view:Lcom/microsoft/xbox/toolkit/ui/XLEImageView;


# direct methods
.method constructor <init>(Lcom/microsoft/xbox/toolkit/ui/TextureManager;Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;Lcom/microsoft/xbox/toolkit/ui/XLEImageView;Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;)V
    .locals 0

    .line 504
    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager$2;->this$0:Lcom/microsoft/xbox/toolkit/ui/TextureManager;

    iput-object p2, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager$2;->val$key:Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;

    iput-object p3, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager$2;->val$view:Lcom/microsoft/xbox/toolkit/ui/XLEImageView;

    iput-object p4, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager$2;->val$bitmap:Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 506
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Z)V

    .line 510
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager$2;->this$0:Lcom/microsoft/xbox/toolkit/ui/TextureManager;

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->access$500(Lcom/microsoft/xbox/toolkit/ui/TextureManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 514
    :try_start_0
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager$2;->this$0:Lcom/microsoft/xbox/toolkit/ui/TextureManager;

    invoke-static {v1}, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->access$1000(Lcom/microsoft/xbox/toolkit/ui/TextureManager;)Lcom/microsoft/xbox/toolkit/MultiMap;

    move-result-object v1

    iget-object v2, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager$2;->val$key:Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledNetworkBitmapRequest;

    iget-object v3, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager$2;->val$view:Lcom/microsoft/xbox/toolkit/ui/XLEImageView;

    invoke-virtual {v1, v2, v3}, Lcom/microsoft/xbox/toolkit/MultiMap;->keyValueMatches(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .line 515
    monitor-exit v0

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_2

    .line 518
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager$2;->val$view:Lcom/microsoft/xbox/toolkit/ui/XLEImageView;

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/ui/XLEImageView;->getAlpha()F

    move-result v0

    .line 519
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager$2;->val$view:Lcom/microsoft/xbox/toolkit/ui/XLEImageView;

    invoke-virtual {v1}, Lcom/microsoft/xbox/toolkit/ui/XLEImageView;->getShouldAnimate()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 521
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager$2;->val$view:Lcom/microsoft/xbox/toolkit/ui/XLEImageView;

    invoke-virtual {v1}, Lcom/microsoft/xbox/toolkit/ui/XLEImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/microsoft/xbox/toolkit/ui/TextureManager$2$1;

    invoke-direct {v2, p0, v0}, Lcom/microsoft/xbox/toolkit/ui/TextureManager$2$1;-><init>(Lcom/microsoft/xbox/toolkit/ui/TextureManager$2;F)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_1

    .line 531
    :cond_1
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager$2;->this$0:Lcom/microsoft/xbox/toolkit/ui/TextureManager;

    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager$2;->val$view:Lcom/microsoft/xbox/toolkit/ui/XLEImageView;

    iget-object v2, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager$2;->val$bitmap:Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;

    invoke-static {v0, v1, v2}, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->access$1100(Lcom/microsoft/xbox/toolkit/ui/TextureManager;Landroid/widget/ImageView;Lcom/microsoft/xbox/toolkit/ui/XLEBitmap;)V

    .line 540
    :goto_1
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager$2;->this$0:Lcom/microsoft/xbox/toolkit/ui/TextureManager;

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->access$500(Lcom/microsoft/xbox/toolkit/ui/TextureManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 541
    :try_start_1
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager$2;->this$0:Lcom/microsoft/xbox/toolkit/ui/TextureManager;

    invoke-static {v1}, Lcom/microsoft/xbox/toolkit/ui/TextureManager;->access$1000(Lcom/microsoft/xbox/toolkit/ui/TextureManager;)Lcom/microsoft/xbox/toolkit/MultiMap;

    move-result-object v1

    iget-object v2, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManager$2;->val$view:Lcom/microsoft/xbox/toolkit/ui/XLEImageView;

    invoke-virtual {v1, v2}, Lcom/microsoft/xbox/toolkit/MultiMap;->removeValue(Ljava/lang/Object;)V

    .line 542
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception v1

    monitor-exit v0

    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_2
    :goto_2
    return-void

    :catchall_1
    move-exception v1

    .line 515
    :try_start_2
    monitor-exit v0

    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method
