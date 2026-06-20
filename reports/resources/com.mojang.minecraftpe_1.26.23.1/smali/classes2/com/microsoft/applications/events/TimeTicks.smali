.class Lcom/microsoft/applications/events/TimeTicks;
.super Ljava/lang/Object;
.source "TimeTicks.java"


# instance fields
.field private final m_ticks:J


# direct methods
.method constructor <init>(Ljava/util/Date;)V
    .locals 4

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x2710

    .line 34
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    mul-long/2addr v2, v0

    const-wide v0, 0x89f7ff5f7b58000L

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/microsoft/applications/events/TimeTicks;->m_ticks:J

    return-void

    .line 29
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "date is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method getTicks()J
    .locals 2

    .line 13
    iget-wide v0, p0, Lcom/microsoft/applications/events/TimeTicks;->m_ticks:J

    return-wide v0
.end method
