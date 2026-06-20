.class Lcom/microsoft/xbox/service/network/managers/xblshared/SLSXsapiServiceManager$1;
.super Ljava/lang/Object;
.source "SLSXsapiServiceManager.java"

# interfaces
.implements Lcom/microsoft/xbox/idp/util/HttpCall$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/xbox/service/network/managers/xblshared/SLSXsapiServiceManager;->addUserToFollowingList(Ljava/lang/String;)Lcom/microsoft/xbox/service/network/managers/AddFollowingUserResponseContainer$AddFollowingUserResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/xbox/service/network/managers/xblshared/SLSXsapiServiceManager;

.field final synthetic val$notifier:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic val$result:Lcom/microsoft/xbox/service/network/managers/AddFollowingUserResponseContainer$AddFollowingUserResponse;


# direct methods
.method constructor <init>(Lcom/microsoft/xbox/service/network/managers/xblshared/SLSXsapiServiceManager;Ljava/util/concurrent/atomic/AtomicReference;Lcom/microsoft/xbox/service/network/managers/AddFollowingUserResponseContainer$AddFollowingUserResponse;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/microsoft/xbox/service/network/managers/xblshared/SLSXsapiServiceManager$1;->this$0:Lcom/microsoft/xbox/service/network/managers/xblshared/SLSXsapiServiceManager;

    iput-object p2, p0, Lcom/microsoft/xbox/service/network/managers/xblshared/SLSXsapiServiceManager$1;->val$notifier:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Lcom/microsoft/xbox/service/network/managers/xblshared/SLSXsapiServiceManager$1;->val$result:Lcom/microsoft/xbox/service/network/managers/AddFollowingUserResponseContainer$AddFollowingUserResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processResponse(ILjava/io/InputStream;Lcom/microsoft/xbox/idp/util/HttpHeaders;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 117
    iget-object p3, p0, Lcom/microsoft/xbox/service/network/managers/xblshared/SLSXsapiServiceManager$1;->val$notifier:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter p3

    const/16 v0, 0xc8

    const/4 v1, 0x1

    if-ge p1, v0, :cond_1

    const/16 v0, 0x12b

    if-gt p1, v0, :cond_0

    goto :goto_0

    .line 122
    :cond_0
    :try_start_0
    const-class p1, Lcom/microsoft/xbox/service/network/managers/AddFollowingUserResponseContainer$AddFollowingUserResponse;

    invoke-static {p2, p1}, Lcom/microsoft/xbox/toolkit/GsonUtil;->deserializeJson(Ljava/io/InputStream;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/microsoft/xbox/service/network/managers/AddFollowingUserResponseContainer$AddFollowingUserResponse;

    .line 123
    iget-object p2, p0, Lcom/microsoft/xbox/service/network/managers/xblshared/SLSXsapiServiceManager$1;->val$notifier:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto :goto_1

    .line 119
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/microsoft/xbox/service/network/managers/xblshared/SLSXsapiServiceManager$1;->val$result:Lcom/microsoft/xbox/service/network/managers/AddFollowingUserResponseContainer$AddFollowingUserResponse;

    invoke-virtual {p1, v1}, Lcom/microsoft/xbox/service/network/managers/AddFollowingUserResponseContainer$AddFollowingUserResponse;->setAddFollowingRequestStatus(Z)V

    .line 120
    iget-object p1, p0, Lcom/microsoft/xbox/service/network/managers/xblshared/SLSXsapiServiceManager$1;->val$notifier:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance p2, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/xbox/service/network/managers/xblshared/SLSXsapiServiceManager$1;->val$result:Lcom/microsoft/xbox/service/network/managers/AddFollowingUserResponseContainer$AddFollowingUserResponse;

    invoke-direct {p2, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 126
    :goto_1
    iget-object p1, p0, Lcom/microsoft/xbox/service/network/managers/xblshared/SLSXsapiServiceManager$1;->val$notifier:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/lang/Object;->notify()V

    .line 127
    monitor-exit p3

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p3

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
