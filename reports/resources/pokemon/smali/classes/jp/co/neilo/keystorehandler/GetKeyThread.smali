.class Ljp/co/neilo/keystorehandler/GetKeyThread;
.super Ljava/lang/Thread;
.source "KeyHandler.java"


# instance fields
.field private m_BaseKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 298
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 299
    iput-object p1, p0, Ljp/co/neilo/keystorehandler/GetKeyThread;->m_BaseKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "KeyHandler.GetKeyThread"

    const-string v1, "Start GetKeyThread"

    .line 304
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    :try_start_0
    iget-object v0, p0, Ljp/co/neilo/keystorehandler/GetKeyThread;->m_BaseKey:Ljava/lang/String;

    invoke-static {v0}, Ljp/co/neilo/keystorehandler/KeyHandler;->GetKeyImpl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 310
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    const-string v1, "KeyHandler.GetKeyThread"

    const-string v2, "GetResult"

    .line 313
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    sget-object v1, Ljp/co/neilo/keystorehandler/KeyHandler;->s_LockObject:Ljava/lang/Object;

    monitor-enter v1

    .line 316
    :try_start_1
    sput-object v0, Ljp/co/neilo/keystorehandler/KeyHandler;->s_ReqeustedKey:Ljava/lang/String;

    .line 317
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
