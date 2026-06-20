.class Lcom/microsoft/xbox/toolkit/TcuiHttpUtil$2;
.super Ljava/lang/Object;
.source "TcuiHttpUtil.java"

# interfaces
.implements Lcom/microsoft/xbox/idp/util/HttpCall$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/xbox/toolkit/TcuiHttpUtil;->getResponseSyncSucceeded(Lcom/microsoft/xbox/idp/util/HttpCall;Ljava/util/List;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$acceptableStatusCodes:Ljava/util/List;

.field final synthetic val$notifier:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method constructor <init>(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/List;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil$2;->val$notifier:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p2, p0, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil$2;->val$acceptableStatusCodes:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processResponse(ILjava/io/InputStream;Lcom/microsoft/xbox/idp/util/HttpHeaders;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 49
    iget-object p2, p0, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil$2;->val$notifier:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter p2

    .line 50
    :try_start_0
    iget-object p3, p0, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil$2;->val$notifier:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil$2;->val$acceptableStatusCodes:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 51
    iget-object p1, p0, Lcom/microsoft/xbox/toolkit/TcuiHttpUtil$2;->val$notifier:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/lang/Object;->notify()V

    .line 52
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
