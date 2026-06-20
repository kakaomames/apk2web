.class Lcom/microsoft/xbox/toolkit/XLEAsyncTask$1;
.super Ljava/lang/Object;
.source "XLEAsyncTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/xbox/toolkit/XLEAsyncTask;-><init>(Lcom/microsoft/xbox/toolkit/network/XLEThreadPool;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/xbox/toolkit/XLEAsyncTask;


# direct methods
.method constructor <init>(Lcom/microsoft/xbox/toolkit/XLEAsyncTask;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/XLEAsyncTask$1;->this$0:Lcom/microsoft/xbox/toolkit/XLEAsyncTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 20
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/XLEAsyncTask$1;->this$0:Lcom/microsoft/xbox/toolkit/XLEAsyncTask;

    iget-boolean v0, v0, Lcom/microsoft/xbox/toolkit/XLEAsyncTask;->cancelled:Z

    if-nez v0, :cond_0

    .line 21
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/XLEAsyncTask$1;->this$0:Lcom/microsoft/xbox/toolkit/XLEAsyncTask;

    invoke-virtual {v0}, Lcom/microsoft/xbox/toolkit/XLEAsyncTask;->doInBackground()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 25
    :goto_0
    new-instance v1, Lcom/microsoft/xbox/toolkit/XLEAsyncTask$1$1;

    invoke-direct {v1, p0, v0}, Lcom/microsoft/xbox/toolkit/XLEAsyncTask$1$1;-><init>(Lcom/microsoft/xbox/toolkit/XLEAsyncTask$1;Ljava/lang/Object;)V

    invoke-static {v1}, Lcom/microsoft/xbox/toolkit/ThreadManager;->UIThreadPost(Ljava/lang/Runnable;)V

    return-void
.end method
