.class Lcom/microsoft/xbox/toolkit/TcuiHttpUtil$1;
.super Ljava/lang/Object;
.source "TcuiHttpUtil.java"

# interfaces
.implements Lcom/microsoft/xbox/idp/util/HttpCall$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->getResponseSync(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/lang/Class;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$notifier:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic val$returnClass:Ljava/lang/Class;


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil$1;->val$returnClass:Ljava/lang/Class;

    iput-object p2, p0, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil$1;->val$notifier:Ljava/util/concurrent/atomic/AtomicReference;

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

    const/16 p3, 0xc8

    if-ge p1, p3, :cond_1

    const/16 p3, 0x12b

    if-gt p1, p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    .line 22
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil$1;->val$returnClass:Ljava/lang/Class;

    invoke-static {p2, p1}, Lcom/microsoft/xbox/toolkit/GsonUtil;->deserializeJson(Ljava/io/InputStream;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    .line 24
    :goto_1
    iget-object p2, p0, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil$1;->val$notifier:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter p2

    .line 25
    :try_start_0
    iget-object p3, p0, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil$1;->val$notifier:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Landroid/util/Pair;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p3, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 26
    iget-object p1, p0, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil$1;->val$notifier:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/lang/Object;->notify()V

    .line 27
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
