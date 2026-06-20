.class Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$1;
.super Ljava/lang/Object;
.source "XLEUniversalImageView.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;


# direct methods
.method constructor <init>(Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;)V
    .locals 0

    .line 313
    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$1;->this$0:Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    sub-int/2addr p8, p6

    if-ne p4, p8, :cond_0

    sub-int/2addr p9, p7

    if-eq p5, p9, :cond_1

    .line 319
    :cond_0
    iget-object p1, p0, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$1;->this$0:Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;

    invoke-static {p1}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->access$100(Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;)Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;

    move-result-object p1

    invoke-virtual {p1}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;->hasText()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 320
    new-instance p1, Lcom/microsoft/xbox/toolkit/ui/XLETextTask;

    iget-object p2, p0, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$1;->this$0:Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;

    invoke-direct {p1, p2}, Lcom/microsoft/xbox/toolkit/ui/XLETextTask;-><init>(Landroid/widget/ImageView;)V

    const/4 p2, 0x1

    .line 321
    new-array p2, p2, [Lcom/microsoft/xbox/toolkit/ui/XLETextArg;

    iget-object p3, p0, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$1;->this$0:Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;

    invoke-static {p3}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;->access$100(Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView;)Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;

    move-result-object p3

    invoke-virtual {p3}, Lcom/microsoft/xbox/toolkit/ui/XLEUniversalImageView$Params;->getArgText()Lcom/microsoft/xbox/toolkit/ui/XLETextArg;

    move-result-object p3

    const/4 p4, 0x0

    aput-object p3, p2, p4

    invoke-virtual {p1, p2}, Lcom/microsoft/xbox/toolkit/ui/XLETextTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_1
    return-void
.end method
