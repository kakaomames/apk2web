.class Lcom/microsoft/xbox/toolkit/ui/SwitchPanel$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SwitchPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;


# direct methods
.method constructor <init>(Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel$2;->this$0:Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 56
    iget-object p1, p0, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel$2;->this$0:Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;

    invoke-static {p1}, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;->access$200(Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 62
    iget-object p1, p0, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel$2;->this$0:Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;

    invoke-static {p1}, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;->access$200(Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 68
    iget-object p1, p0, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel$2;->this$0:Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;

    invoke-static {p1}, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;->access$300(Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;)V

    return-void
.end method
