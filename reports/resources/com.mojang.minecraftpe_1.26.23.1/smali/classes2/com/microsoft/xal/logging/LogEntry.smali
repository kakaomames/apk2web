.class public Lcom/microsoft/xal/logging/LogEntry;
.super Ljava/lang/Object;
.source "LogEntry.java"


# instance fields
.field private final m_level:Lcom/microsoft/xal/logging/XalLogger$LogLevel;

.field private final m_message:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/microsoft/xal/logging/XalLogger$LogLevel;Ljava/lang/String;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/microsoft/xal/logging/LogEntry;->m_level:Lcom/microsoft/xal/logging/XalLogger$LogLevel;

    .line 14
    iput-object p2, p0, Lcom/microsoft/xal/logging/LogEntry;->m_message:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public Level()I
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/microsoft/xal/logging/LogEntry;->m_level:Lcom/microsoft/xal/logging/XalLogger$LogLevel;

    invoke-virtual {v0}, Lcom/microsoft/xal/logging/XalLogger$LogLevel;->ToInt()I

    move-result v0

    return v0
.end method

.method public Message()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/microsoft/xal/logging/LogEntry;->m_message:Ljava/lang/String;

    return-object v0
.end method
