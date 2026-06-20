.class Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker$1;
.super Ljava/lang/Object;
.source "ObjectLoader.java"

# interfaces
.implements Lcom/microsoft/xbox/idp/util/HttpCall$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;->start(Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;

.field final synthetic val$listener:Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;


# direct methods
.method constructor <init>(Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker$1;->this$0:Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;

    iput-object p2, p0, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker$1;->val$listener:Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processResponse(ILjava/io/InputStream;Lcom/microsoft/xbox/idp/util/HttpHeaders;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/16 p3, 0xc8

    if-lt p1, p3, :cond_3

    const/16 p3, 0x12b

    if-le p1, p3, :cond_0

    goto :goto_1

    .line 110
    :cond_0
    iget-object p1, p0, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker$1;->this$0:Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;

    invoke-static {p1}, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;->access$400(Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;)Ljava/lang/Class;

    move-result-object p1

    const-class p3, Ljava/lang/Void;

    if-ne p1, p3, :cond_1

    .line 112
    iget-object p1, p0, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker$1;->val$listener:Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;

    new-instance p2, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;-><init>(Ljava/lang/Object;)V

    invoke-interface {p1, p2}, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;->onResult(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 116
    :cond_1
    new-instance p1, Ljava/io/StringWriter;

    invoke-direct {p1}, Ljava/io/StringWriter;-><init>()V

    .line 118
    :try_start_0
    new-instance p3, Ljava/io/InputStreamReader;

    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p3, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 120
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    new-instance p2, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;

    iget-object v0, p0, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker$1;->this$0:Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;

    invoke-static {v0}, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;->access$500(Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;)Lcom/google/gson/Gson;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker$1;->this$0:Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;

    invoke-static {v1}, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;->access$400(Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;-><init>(Ljava/lang/Object;)V

    .line 121
    iget-object v0, p0, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker$1;->this$0:Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;

    invoke-static {v0}, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;->access$100(Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 122
    iget-object v0, p0, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker$1;->this$0:Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;

    invoke-static {v0}, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;->access$200(Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;)Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Cache;

    move-result-object v0

    monitor-enter v0

    .line 123
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v1, p0, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker$1;->this$0:Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;

    invoke-static {v1}, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;->access$200(Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;)Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Cache;

    move-result-object v1

    iget-object v2, p0, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker$1;->this$0:Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;

    invoke-static {v2}, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;->access$300(Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Cache;->put(Ljava/lang/Object;Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;)Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;

    .line 124
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit v0

    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p2

    .line 126
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker$1;->val$listener:Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;

    invoke-interface {v0, p2}, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;->onResult(Ljava/lang/Object;)V

    .line 128
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {p3}, Ljava/io/InputStreamReader;->close()V

    .line 131
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    invoke-virtual {p1}, Ljava/io/StringWriter;->close()V

    goto :goto_3

    :catchall_1
    move-exception p2

    .line 128
    :try_start_5
    invoke-virtual {p3}, Ljava/io/InputStreamReader;->close()V

    .line 129
    throw p2

    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception p2

    .line 131
    invoke-virtual {p1}, Ljava/io/StringWriter;->close()V

    .line 132
    throw p2

    .line 100
    :cond_3
    :goto_1
    new-instance p3, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;

    new-instance v0, Lcom/microsoft/xbox/idp/toolkit/HttpError;

    invoke-direct {v0, p1, p1, p2}, Lcom/microsoft/xbox/idp/toolkit/HttpError;-><init>(IILjava/io/InputStream;)V

    invoke-direct {p3, v0}, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;-><init>(Lcom/microsoft/xbox/idp/toolkit/HttpError;)V

    .line 102
    iget-object p1, p0, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker$1;->this$0:Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;

    invoke-static {p1}, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;->access$100(Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 103
    iget-object p1, p0, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker$1;->this$0:Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;

    invoke-static {p1}, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;->access$200(Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;)Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Cache;

    move-result-object p1

    monitor-enter p1

    .line 104
    :try_start_6
    iget-object p2, p0, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker$1;->this$0:Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;

    invoke-static {p2}, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;->access$200(Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;)Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Cache;

    move-result-object p2

    iget-object v0, p0, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker$1;->this$0:Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;

    invoke-static {v0}, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;->access$300(Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0, p3}, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Cache;->put(Ljava/lang/Object;Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;)Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$Result;

    .line 105
    monitor-exit p1

    goto :goto_2

    :catchall_3
    move-exception p2

    monitor-exit p1

    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw p2

    .line 108
    :cond_4
    :goto_2
    iget-object p1, p0, Lcom/microsoft/xbox/idp/toolkit/ObjectLoader$MyWorker$1;->val$listener:Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;

    invoke-interface {p1, p3}, Lcom/microsoft/xbox/idp/toolkit/WorkerLoader$ResultListener;->onResult(Ljava/lang/Object;)V

    :goto_3
    return-void
.end method
