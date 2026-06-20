.class Lcom/microsoft/xbox/toolkit/ui/SwitchPanel$1;
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

    .line 31
    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel$1;->this$0:Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 35
    iget-object p1, p0, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel$1;->this$0:Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;

    invoke-static {p1}, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;->access$000(Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 41
    iget-object p1, p0, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel$1;->this$0:Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;

    invoke-static {p1}, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;->access$000(Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 47
    iget-object p1, p0, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel$1;->this$0:Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;

    invoke-static {p1}, Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;->access$100(Lcom/microsoft/xbox/toolkit/ui/SwitchPanel;)V

    return-void
.end method
