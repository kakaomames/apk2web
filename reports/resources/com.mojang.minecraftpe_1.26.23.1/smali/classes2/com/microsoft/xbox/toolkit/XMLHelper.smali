.class public Lcom/microsoft/xbox/toolkit/XMLHelper;
.super Ljava/lang/Object;
.source "XMLHelper.java"


# static fields
.field private static final XML_WAIT_TIMEOUT_MS:I = 0x3e8

.field private static instance:Lcom/microsoft/xbox/toolkit/XMLHelper;


# instance fields
.field private serializer:Lorg/simpleframework/xml/Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    new-instance v0, Lcom/microsoft/xbox/toolkit/XMLHelper;

    invoke-direct {v0}, Lcom/microsoft/xbox/toolkit/XMLHelper;-><init>()V

    sput-object v0, Lcom/microsoft/xbox/toolkit/XMLHelper;->instance:Lcom/microsoft/xbox/toolkit/XMLHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/XMLHelper;->serializer:Lorg/simpleframework/xml/Serializer;

    .line 23
    new-instance v0, Lorg/simpleframework/xml/convert/AnnotationStrategy;

    invoke-direct {v0}, Lorg/simpleframework/xml/convert/AnnotationStrategy;-><init>()V

    .line 24
    new-instance v1, Lorg/simpleframework/xml/core/Persister;

    invoke-direct {v1, v0}, Lorg/simpleframework/xml/core/Persister;-><init>(Lorg/simpleframework/xml/strategy/Strategy;)V

    iput-object v1, p0, Lcom/microsoft/xbox/toolkit/XMLHelper;->serializer:Lorg/simpleframework/xml/Serializer;

    return-void
.end method

.method public static instance()Lcom/microsoft/xbox/toolkit/XMLHelper;
    .locals 1

    .line 19
    sget-object v0, Lcom/microsoft/xbox/toolkit/XMLHelper;->instance:Lcom/microsoft/xbox/toolkit/XMLHelper;

    return-object v0
.end method


# virtual methods
.method public load(Ljava/io/InputStream;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/InputStream;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    .line 28
    sget-object v0, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 30
    invoke-static {}, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;->getInstance()Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/microsoft/xbox/toolkit/BackgroundThreadWaitor;->waitForReady(I)V

    .line 34
    :cond_0
    new-instance v0, Lcom/microsoft/xbox/toolkit/TimeMonitor;

    invoke-direct {v0}, Lcom/microsoft/xbox/toolkit/TimeMonitor;-><init>()V

    .line 39
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 41
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 42
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/XMLHelper;->serializer:Lorg/simpleframework/xml/Serializer;

    const/4 v2, 0x0

    invoke-interface {v1, p2, p1, v2}, Lorg/simpleframework/xml/Serializer;->read(Ljava/lang/Class;Ljava/io/InputStream;Z)Ljava/lang/Object;

    move-result-object p1

    .line 44
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 45
    throw p1

    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    .line 48
    new-instance p2, Lcom/microsoft/xbox/toolkit/XLEException;

    const-wide/16 v0, 0x9

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v0, v1, p1}, Lcom/microsoft/xbox/toolkit/XLEException;-><init>(JLjava/lang/String;)V

    throw p2
.end method

.method public save(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    .line 55
    new-instance v0, Lcom/microsoft/xbox/toolkit/TimeMonitor;

    invoke-direct {v0}, Lcom/microsoft/xbox/toolkit/TimeMonitor;-><init>()V

    .line 57
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 60
    :try_start_0
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/XMLHelper;->serializer:Lorg/simpleframework/xml/Serializer;

    invoke-interface {v1, p1, v0}, Lorg/simpleframework/xml/Serializer;->write(Ljava/lang/Object;Ljava/io/Writer;)V

    .line 65
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 62
    new-instance v0, Lcom/microsoft/xbox/toolkit/XLEException;

    const-wide/16 v1, 0x9

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lcom/microsoft/xbox/toolkit/XLEException;-><init>(JLjava/lang/String;)V

    throw v0
.end method

.method public save(Ljava/lang/Object;Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/io/OutputStream;",
            ")V"
        }
    .end annotation
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/xbox/toolkit/XLEException;
        }
    .end annotation

    .line 69
    new-instance v0, Lcom/microsoft/xbox/toolkit/TimeMonitor;

    invoke-direct {v0}, Lcom/microsoft/xbox/toolkit/TimeMonitor;-><init>()V

    .line 72
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/XMLHelper;->serializer:Lorg/simpleframework/xml/Serializer;

    invoke-interface {v0, p1, p2}, Lorg/simpleframework/xml/Serializer;->write(Ljava/lang/Object;Ljava/io/OutputStream;)V

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 74
    new-instance p2, Lcom/microsoft/xbox/toolkit/XLEException;

    const-wide/16 v0, 0x9

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v0, v1, p1}, Lcom/microsoft/xbox/toolkit/XLEException;-><init>(JLjava/lang/String;)V

    throw p2
.end method
