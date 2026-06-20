.class Lcom/microsoft/xbox/xle/app/adapter/ReportUserScreenAdapter$3;
.super Ljava/lang/Object;
.source "ReportUserScreenAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 82
    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/ReportUserScreenAdapter$3;->this$0:Lcom/microsoft/xbox/xle/app/adapter/ReportUserScreenAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 85
    iget-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/ReportUserScreenAdapter$3;->this$0:Lcom/microsoft/xbox/xle/app/adapter/ReportUserScreenAdapter;

    invoke-static {p1}, Lcom/microsoft/xbox/xle/app/adapter/ReportUserScreenAdapter;->access$000(Lcom/microsoft/xbox/xle/app/adapter/ReportUserScreenAdapter;)Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel;->getReason()Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "Unknown"

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/ReportUserScreenAdapter$3;->this$0:Lcom/microsoft/xbox/xle/app/adapter/ReportUserScreenAdapter;

    invoke-static {p1}, Lcom/microsoft/xbox/xle/app/adapter/ReportUserScreenAdapter;->access$000(Lcom/microsoft/xbox/xle/app/adapter/ReportUserScreenAdapter;)Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel;->getReason()Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/microsoft/xbox/service/model/sls/FeedbackType;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Lcom/microsoft/xbox/telemetry/helpers/UTCReportUser;->trackReportDialogOK(Ljava/lang/String;)V

    .line 86
    iget-object p1, p0, Lcom/microsoft/xbox/xle/app/adapter/ReportUserScreenAdapter$3;->this$0:Lcom/microsoft/xbox/xle/app/adapter/ReportUserScreenAdapter;

    invoke-static {p1}, Lcom/microsoft/xbox/xle/app/adapter/ReportUserScreenAdapter;->access$000(Lcom/microsoft/xbox/xle/app/adapter/ReportUserScreenAdapter;)Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel;

    move-result-object p1

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/adapter/ReportUserScreenAdapter$3;->this$0:Lcom/microsoft/xbox/xle/app/adapter/ReportUserScreenAdapter;

    invoke-static {v0}, Lcom/microsoft/xbox/xle/app/adapter/ReportUserScreenAdapter;->access$100(Lcom/microsoft/xbox/xle/app/adapter/ReportUserScreenAdapter;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/microsoft/xbox/xle/viewmodel/ReportUserScreenViewModel;->submitReport(Ljava/lang/String;)V

    return-void
.end method
