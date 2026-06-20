.class Lcom/microsoft/xbox/xle/app/adapter/ReportUserScreenAdapter$1;
.super Ljava/lang/Object;
.source "ReportUserScreenAdapter.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/xbox/xle/app/adapter/ReportUserScreenAdapter;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/xbox/xle/app/adapter/ReportUserScreenAdapter;


# direct methods
.method constructor <init>(Lcom/microsoft/xbox/xle/app/adapter/ReportUserScreenAdapter;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/ReportUserScreenAdapter$1;->this$0:Lcom/microsoft/xbox/xle/app/adapter/ReportUserScreenAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 67
    iget-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/ReportUserScreenAdapter$1;->this$0:Lcom/microsoft/xbox/xle/app/adapter/ReportUserScreenAdapter;

    invoke-static {p1}, Lcom/microsoft/xbox/xle/app/adapter/ReportUserScreenAdapter;->access$000(Lcom/microsoft/xbox/xle/app/adapter/ReportUserScreenAdapter;)Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel;->setReason(I)V

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
