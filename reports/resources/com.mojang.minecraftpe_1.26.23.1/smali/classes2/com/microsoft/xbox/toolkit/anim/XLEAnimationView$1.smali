.class Lcom/microsoft/xbox/toolkit/anim/XLEAnimationView$1;
.super Ljava/lang/Object;
.source "XLEAnimationView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/xbox/toolkit/anim/XLEAnimationView;-><init>(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/xbox/toolkit/anim/XLEAnimationView;


# direct methods
.method constructor <init>(Lcom/microsoft/xbox/toolkit/anim/XLEAnimationView;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationView$1;->this$0:Lcom/microsoft/xbox/toolkit/anim/XLEAnimationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    .line 34
    iget-object p1, p0, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationView$1;->this$0:Lcom/microsoft/xbox/toolkit/anim/XLEAnimationView;

    invoke-static {p1}, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationView;->access$100(Lcom/microsoft/xbox/toolkit/anim/XLEAnimationView;)V

    .line 35
    iget-object p1, p0, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationView$1;->this$0:Lcom/microsoft/xbox/toolkit/anim/XLEAnimationView;

    iget-object p1, p1, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationView;->endRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 36
    iget-object p1, p0, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationView$1;->this$0:Lcom/microsoft/xbox/toolkit/anim/XLEAnimationView;

    iget-object p1, p1, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationView;->endRunnable:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .line 24
    iget-object p1, p0, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationView$1;->this$0:Lcom/microsoft/xbox/toolkit/anim/XLEAnimationView;

    invoke-static {p1}, Lcom/microsoft/xbox/toolkit/anim/XLEAnimationView;->access$000(Lcom/microsoft/xbox/toolkit/anim/XLEAnimationView;)V

    return-void
.end method
