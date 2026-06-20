.class Lcom/microsoft/xbox/xle/model/SystemSettingsModel$GetSmartglassSettingsRunner;
.super Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;
.source "SystemSettingsModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/xle/model/SystemSettingsModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetSmartglassSettingsRunner"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable<",
        "Lcom/microsoft/xbox/xle/app/SmartglassSettings;",
        ">;"
    }
.end annotation


# instance fields
.field private final caller:Lcom/microsoft/xbox/xle/model/SystemSettingsModel;

.field final synthetic this$0:Lcom/microsoft/xbox/xle/model/SystemSettingsModel;


# direct methods
.method public constructor <init>(Lcom/microsoft/xbox/xle/model/SystemSettingsModel;Lcom/microsoft/xbox/xle/model/SystemSettingsModel;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/microsoft/xbox/xle/model/SystemSettingsModel$GetSmartglassSettingsRunner;->this$0:Lcom/microsoft/xbox/xle/model/SystemSettingsModel;

    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/network/IDataLoaderRunnable;-><init>()V

    .line 153
    iput-object p2, p0, Lcom/microsoft/xbox/xle/model/SystemSettingsModel$GetSmartglassSettingsRunner;->caller:Lcom/microsoft/xbox/xle/model/SystemSettingsModel;

    return-void
.end method


# virtual methods
.method public buildData()Lcom/microsoft/xbox/xle/app/SmartglassSettings;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic buildData()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    .line 148
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/model/SystemSettingsModel$GetSmartglassSettingsRunner;->buildData()Lcom/microsoft/xbox/xle/app/SmartglassSettings;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultErrorCode()J
    .locals 2

    const-wide/16 v0, 0x1389

    return-wide v0
.end method

.method public onPostExcute(Lcom/microsoft/xbox/toolkit/AsyncResult;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/microsoft/xbox/toolkit/AsyncResult<",
            "Lcom/microsoft/xbox/xle/app/SmartglassSettings;",
            ">;)V"
        }
    .end annotation

    .line 168
    iget-object v0, p0, Lcom/microsoft/xbox/xle/model/SystemSettingsModel$GetSmartglassSettingsRunner;->caller:Lcom/microsoft/xbox/xle/model/SystemSettingsModel;

    invoke-static {v0, p1}, Lcom/microsoft/xbox/xle/model/SystemSettingsModel;->access$200(Lcom/microsoft/xbox/xle/model/SystemSettingsModel;Lcom/microsoft/xbox/toolkit/AsyncResult;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 0

    return-void
.end method
