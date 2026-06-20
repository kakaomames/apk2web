.class Lcom/microsoft/xbox/service/model/ProfileModel$SubmitFeedbackForUserRunner;
.super Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;
.source "ProfileModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/service/model/ProfileModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SubmitFeedbackForUserRunner"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private caller:Lcom/microsoft/xbox/service/model/ProfileModel;

.field private feedbackType:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

.field private textReason:Ljava/lang/String;

.field final synthetic this$0:Lcom/microsoft/xbox/service/model/ProfileModel;

.field private xuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/microsoft/xbox/service/model/ProfileModel;Lcom/microsoft/xbox/service/model/ProfileModel;Ljava/lang/String;Lcom/microsoft/xbox/service/model/sls/FeedbackType;Ljava/lang/String;)V
    .locals 0

    .line 1443
    iput-object p1, p0, Lcom/microsoft/xbox/service/model/ProfileModel$SubmitFeedbackForUserRunner;->this$0:Lcom/microsoft/xbox/service/model/ProfileModel;

    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;-><init>()V

    .line 1444
    iput-object p2, p0, Lcom/microsoft/xbox/service/model/ProfileModel$SubmitFeedbackForUserRunner;->caller:Lcom/microsoft/xbox/service/model/ProfileModel;

    .line 1445
    iput-object p3, p0, Lcom/microsoft/xbox/service/model/ProfileModel$SubmitFeedbackForUserRunner;->xuid:Ljava/lang/String;

    .line 1446
    iput-object p4, p0, Lcom/microsoft/xbox/service/model/ProfileModel$SubmitFeedbackForUserRunner;->feedbackType:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    .line 1447
    iput-object p5, p0, Lcom/microsoft/xbox/service/model/ProfileModel$SubmitFeedbackForUserRunner;->textReason:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public buildData()Ljava/lang/Boolean;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    .line 1452
    new-instance v8, Lcom/microsoft/xbox/service/model/sls/SubmitFeedbackRequest;

    iget-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel$SubmitFeedbackForUserRunner;->xuid:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iget-object v4, p0, Lcom/microsoft/xbox/service/model/ProfileModel$SubmitFeedbackForUserRunner;->feedbackType:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    iget-object v5, p0, Lcom/microsoft/xbox/service/model/ProfileModel$SubmitFeedbackForUserRunner;->textReason:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/microsoft/xbox/service/model/sls/SubmitFeedbackRequest;-><init>(JLjava/lang/String;Lcom/microsoft/xbox/service/model/sls/FeedbackType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1453
    invoke-static {}, Lcom/microsoft/xbox/service/network/managers/ServiceManagerFactory;->getInstance()Lcom/microsoft/xbox/service/network/managers/ServiceManagerFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/service/network/managers/ServiceManagerFactory;->getSLSServiceManager()Lcom/microsoft/xbox/service/network/managers/xblshared/ISLSServiceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/xbox/service/model/ProfileModel$SubmitFeedbackForUserRunner;->xuid:Ljava/lang/String;

    invoke-static {v8}, Lcom/microsoft/xbox/service/model/sls/SubmitFeedbackRequest;->getSubmitFeedbackRequestBody(Lcom/microsoft/xbox/service/model/sls/SubmitFeedbackRequest;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/microsoft/xbox/service/network/managers/xblshared/ISLSServiceManager;->submitFeedback(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildData()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    .line 1436
    invoke-virtual {p0}, Lcom/microsoft/xbox/service/model/ProfileModel$SubmitFeedbackForUserRunner;->buildData()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultErrorCode()J
    .locals 2

    const-wide/32 v0, 0x9c69

    return-wide v0
.end method

.method public onPostExcute(Lcom/microsoft/xbox/toolkit/AsyncResult;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/xbox/toolkit/AsyncResult<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1462
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel$SubmitFeedbackForUserRunner;->caller:Lcom/microsoft/xbox/service/model/ProfileModel;

    invoke-static {v0, p1}, Lcom/microsoft/xbox/service/model/ProfileModel;->access$1800(Lcom/microsoft/xbox/service/model/ProfileModel;Lcom/microsoft/xbox/toolkit/AsyncResult;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 0

    return-void
.end method
