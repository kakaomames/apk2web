.class public Lcom/microsoft/xbox/toolkit/network/XLEHttpStatusAndStream;
.super Ljava/lang/Object;
.source "XLEHttpStatusAndStream.java"


# instance fields
.field public headers:[Lorg/apache/http/Header;

.field public redirectUrl:Ljava/lang/String;

.field public statusCode:I

.field public statusLine:Ljava/lang/String;

.field public stream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/network/XLEHttpStatusAndStream;->stream:Ljava/io/InputStream;

    const/4 v1, -0x1

    .line 10
    iput v1, p0, Lcom/microsoft/xbox/toolkit/network/XLEHttpStatusAndStream;->statusCode:I

    .line 11
    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/network/XLEHttpStatusAndStream;->statusLine:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/network/XLEHttpStatusAndStream;->redirectUrl:Ljava/lang/String;

    const/4 v0, 0x0

    .line 13
    new-array v0, v0, [Lorg/apache/http/Header;

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/network/XLEHttpStatusAndStream;->headers:[Lorg/apache/http/Header;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/network/XLEHttpStatusAndStream;->stream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 25
    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/network/XLEHttpStatusAndStream;->stream:Ljava/io/InputStream;

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
