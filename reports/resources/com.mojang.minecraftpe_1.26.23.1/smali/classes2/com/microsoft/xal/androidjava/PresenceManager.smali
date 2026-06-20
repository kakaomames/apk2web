.class public Lcom/microsoft/xal/androidjava/PresenceManager;
.super Ljava/lang/Object;
.source "PresenceManager.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;


# static fields
.field private static isAttached:Z = false


# instance fields
.field private final m_logger:Lcom/microsoft/xal/logging/XalLogger;

.field private m_paused:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lcom/microsoft/xal/logging/XalLogger;

    const-string v1, "PresenceManager"

    invoke-direct {v0, v1}, Lcom/microsoft/xal/logging/XalLogger;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/microsoft/xal/androidjava/PresenceManager;->m_logger:Lcom/microsoft/xal/logging/XalLogger;

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lcom/microsoft/xal/androidjava/PresenceManager;->m_paused:Z

    return-void
.end method

.method static attach()V
    .locals 2

    .line 23
    sget-boolean v0, Lcom/microsoft/xal/androidjava/PresenceManager;->isAttached:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 25
    sput-boolean v0, Lcom/microsoft/xal/androidjava/PresenceManager;->isAttached:Z

    .line 28
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/microsoft/xal/androidjava/PresenceManager$1;

    invoke-direct {v1}, Lcom/microsoft/xal/androidjava/PresenceManager$1;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private static native pausePresence()V
.end method

.method private static native resumePresence()V
.end method


# virtual methods
.method declared-synchronized onBackground()V
    .locals 4
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    const-string v0, "Failed to pause presence: "

    monitor-enter p0

    .line 76
    :try_start_0
    iget-boolean v1, p0, Lcom/microsoft/xal/androidjava/PresenceManager;->m_paused:Z

    if-eqz v1, :cond_0

    .line 78
    iget-object v0, p0, Lcom/microsoft/xal/androidjava/PresenceManager;->m_logger:Lcom/microsoft/xal/logging/XalLogger;

    const-string v1, "Ignoring pause, already paused"

    invoke-virtual {v0, v1}, Lcom/microsoft/xal/logging/XalLogger;->Important(Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/microsoft/xal/androidjava/PresenceManager;->m_logger:Lcom/microsoft/xal/logging/XalLogger;

    invoke-virtual {v0}, Lcom/microsoft/xal/logging/XalLogger;->Flush()V

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 85
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/microsoft/xal/androidjava/PresenceManager;->m_logger:Lcom/microsoft/xal/logging/XalLogger;

    const-string v2, "Pausing presence on app pause"

    invoke-virtual {v1, v2}, Lcom/microsoft/xal/logging/XalLogger;->Important(Ljava/lang/String;)V

    .line 86
    iget-object v1, p0, Lcom/microsoft/xal/androidjava/PresenceManager;->m_logger:Lcom/microsoft/xal/logging/XalLogger;

    invoke-virtual {v1}, Lcom/microsoft/xal/logging/XalLogger;->Flush()V

    .line 88
    invoke-static {}, Lcom/microsoft/xal/androidjava/PresenceManager;->pausePresence()V

    const/4 v1, 0x1

    .line 89
    iput-boolean v1, p0, Lcom/microsoft/xal/androidjava/PresenceManager;->m_paused:Z

    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 93
    :try_start_2
    iget-object v2, p0, Lcom/microsoft/xal/androidjava/PresenceManager;->m_logger:Lcom/microsoft/xal/logging/XalLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/microsoft/xal/logging/XalLogger;->Error(Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/microsoft/xal/androidjava/PresenceManager;->m_logger:Lcom/microsoft/xal/logging/XalLogger;

    invoke-virtual {v0}, Lcom/microsoft/xal/logging/XalLogger;->Flush()V

    .line 98
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0

    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method declared-synchronized onForeground()V
    .locals 4
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    const-string v0, "Failed to resume presence: "

    monitor-enter p0

    .line 49
    :try_start_0
    iget-boolean v1, p0, Lcom/microsoft/xal/androidjava/PresenceManager;->m_paused:Z

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 53
    :try_start_1
    iget-object v1, p0, Lcom/microsoft/xal/androidjava/PresenceManager;->m_logger:Lcom/microsoft/xal/logging/XalLogger;

    const-string v2, "Resuming presence on paused app resume"

    invoke-virtual {v1, v2}, Lcom/microsoft/xal/logging/XalLogger;->Important(Ljava/lang/String;)V

    .line 54
    iget-object v1, p0, Lcom/microsoft/xal/androidjava/PresenceManager;->m_logger:Lcom/microsoft/xal/logging/XalLogger;

    invoke-virtual {v1}, Lcom/microsoft/xal/logging/XalLogger;->Flush()V

    .line 56
    invoke-static {}, Lcom/microsoft/xal/androidjava/PresenceManager;->resumePresence()V

    const/4 v1, 0x0

    .line 57
    iput-boolean v1, p0, Lcom/microsoft/xal/androidjava/PresenceManager;->m_paused:Z

    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 61
    :try_start_2
    iget-object v2, p0, Lcom/microsoft/xal/androidjava/PresenceManager;->m_logger:Lcom/microsoft/xal/logging/XalLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/microsoft/xal/logging/XalLogger;->Error(Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/microsoft/xal/androidjava/PresenceManager;->m_logger:Lcom/microsoft/xal/logging/XalLogger;

    invoke-virtual {v0}, Lcom/microsoft/xal/logging/XalLogger;->Flush()V

    goto :goto_0

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/microsoft/xal/androidjava/PresenceManager;->m_logger:Lcom/microsoft/xal/logging/XalLogger;

    const-string v1, "Ignoring resume, not currently paused"

    invoke-virtual {v0, v1}, Lcom/microsoft/xal/logging/XalLogger;->Important(Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/microsoft/xal/androidjava/PresenceManager;->m_logger:Lcom/microsoft/xal/logging/XalLogger;

    invoke-virtual {v0}, Lcom/microsoft/xal/logging/XalLogger;->Flush()V

    .line 71
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0

    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method
