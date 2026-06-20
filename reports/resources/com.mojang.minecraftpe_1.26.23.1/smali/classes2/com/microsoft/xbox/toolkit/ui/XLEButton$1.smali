.class Lcom/microsoft/xbox/toolkit/ui/XLEButton$1;
.super Ljava/lang/Object;
.source "XLEButton.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/xbox/toolkit/ui/XLEButton;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/xbox/toolkit/ui/XLEButton;


# direct methods
.method constructor <init>(Lcom/microsoft/xbox/toolkit/ui/XLEButton;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/ui/XLEButton$1;->this$0:Lcom/microsoft/xbox/toolkit/ui/XLEButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 109
    iget-object p1, p0, Lcom/microsoft/xbox/toolkit/ui/XLEButton$1;->this$0:Lcom/microsoft/xbox/toolkit/ui/XLEButton;

    iget-object p1, p1, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->stateHandler:Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler;

    invoke-virtual {p1, p2}, Lcom/microsoft/xbox/toolkit/ui/ButtonStateHandler;->onTouch(Landroid/view/MotionEvent;)Z

    move-result p1

    .line 111
    iget-object p2, p0, Lcom/microsoft/xbox/toolkit/ui/XLEButton$1;->this$0:Lcom/microsoft/xbox/toolkit/ui/XLEButton;

    invoke-virtual {p2}, Lcom/microsoft/xbox/toolkit/ui/XLEButton;->updateImage()V

    return p1
.end method
