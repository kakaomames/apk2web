.class Lcom/deploygate/sdk/DeployGate$LogCatTransportWorker;
.super Ljava/lang/Object;
.source "DeployGate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/deploygate/sdk/DeployGate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LogCatTransportWorker"
.end annotation


# instance fields
.field private mIsOneShot:Z

.field private final mPackageName:Ljava/lang/String;

.field private mProcess:Ljava/lang/Process;

.field private final mService:Lcom/deploygate/service/IDeployGateSdkService;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/deploygate/service/IDeployGateSdkService;Z)V
    .locals 0

    .line 806
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 807
    iput-object p1, p0, Lcom/deploygate/sdk/DeployGate$LogCatTransportWorker;->mPackageName:Ljava/lang/String;

    .line 808
    iput-object p2, p0, Lcom/deploygate/sdk/DeployGate$LogCatTransportWorker;->mService:Lcom/deploygate/service/IDeployGateSdkService;

    .line 809
    iput-boolean p3, p0, Lcom/deploygate/sdk/DeployGate$LogCatTransportWorker;->mIsOneShot:Z

    return-void
.end method

.method private send(Ljava/util/ArrayList;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 880
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "log"

    .line 881
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 883
    :try_start_0
    iget-object p1, p0, Lcom/deploygate/sdk/DeployGate$LogCatTransportWorker;->mService:Lcom/deploygate/service/IDeployGateSdkService;

    iget-object v1, p0, Lcom/deploygate/sdk/DeployGate$LogCatTransportWorker;->mPackageName:Ljava/lang/String;

    const-string v2, "sendLogcat"

    invoke-interface {p1, v1, v2, v0}, Lcom/deploygate/service/IDeployGateSdkService;->sendEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public run()V
    .locals 8

    const-string v0, "DeployGate"

    const/4 v1, 0x0

    .line 814
    iput-object v1, p0, Lcom/deploygate/sdk/DeployGate$LogCatTransportWorker;->mProcess:Ljava/lang/Process;

    .line 819
    :try_start_0
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    const-string v3, "logcat"

    .line 820
    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 821
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/16 v4, 0x1f4

    .line 824
    iget-boolean v5, p0, Lcom/deploygate/sdk/DeployGate$LogCatTransportWorker;->mIsOneShot:Z

    if-eqz v5, :cond_0

    const-string v5, "-d"

    .line 825
    invoke-virtual {v2, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 826
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x8

    if-lt v5, v6, :cond_0

    const-string v5, "-t"

    .line 827
    invoke-virtual {v2, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 828
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string v5, "-v"

    .line 831
    invoke-virtual {v2, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const-string v5, "threadtime"

    .line 832
    invoke-virtual {v2, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const-string v5, "*:V"

    .line 833
    invoke-virtual {v2, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 835
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    .line 836
    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 835
    invoke-virtual {v5, v2}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    iput-object v2, p0, Lcom/deploygate/sdk/DeployGate$LogCatTransportWorker;->mProcess:Ljava/lang/Process;

    .line 837
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    iget-object v6, p0, Lcom/deploygate/sdk/DeployGate$LogCatTransportWorker;->mProcess:Ljava/lang/Process;

    .line 838
    invoke-virtual {v6}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v6, 0x2000

    invoke-direct {v2, v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v1, "Start retrieving logcat"

    .line 840
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    :cond_1
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 843
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 844
    iget-boolean v1, p0, Lcom/deploygate/sdk/DeployGate$LogCatTransportWorker;->mIsOneShot:Z

    if-eqz v1, :cond_2

    .line 845
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v4, :cond_1

    const/4 v1, 0x0

    .line 846
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 848
    :cond_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->ready()Z

    move-result v1

    if-nez v1, :cond_1

    .line 849
    invoke-direct {p0, v3}, Lcom/deploygate/sdk/DeployGate$LogCatTransportWorker;->send(Ljava/util/ArrayList;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 850
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 865
    :cond_3
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 870
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    invoke-virtual {p0}, Lcom/deploygate/sdk/DeployGate$LogCatTransportWorker;->stop()V

    return-void

    .line 857
    :cond_4
    :try_start_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 858
    invoke-direct {p0, v3}, Lcom/deploygate/sdk/DeployGate$LogCatTransportWorker;->send(Ljava/util/ArrayList;)Z

    .line 865
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_5
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v2

    goto :goto_3

    :catch_1
    move-exception v1

    move-object v7, v2

    move-object v2, v1

    move-object v1, v7

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v2

    .line 861
    :goto_1
    :try_start_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Logcat stopped: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v1, :cond_6

    .line 865
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 870
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :catch_3
    :cond_6
    :goto_2
    invoke-virtual {p0}, Lcom/deploygate/sdk/DeployGate$LogCatTransportWorker;->stop()V

    return-void

    :goto_3
    if-eqz v1, :cond_7

    .line 865
    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 870
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    :catch_4
    :cond_7
    invoke-virtual {p0}, Lcom/deploygate/sdk/DeployGate$LogCatTransportWorker;->stop()V

    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4
.end method

.method public stop()V
    .locals 1

    .line 875
    iget-object v0, p0, Lcom/deploygate/sdk/DeployGate$LogCatTransportWorker;->mProcess:Ljava/lang/Process;

    if-eqz v0, :cond_0

    .line 876
    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    :cond_0
    return-void
.end method
