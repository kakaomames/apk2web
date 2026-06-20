.class public Lcom/microsoft/xbox/idp/toolkit/HttpError;
.super Ljava/lang/Object;
.source "HttpError.java"


# static fields
.field private static final INPUT_START_TOKEN:Ljava/lang/String; = "\\A"


# instance fields
.field private final errorCode:I

.field private final errorMessage:Ljava/lang/String;

.field private final httpStatus:I


# direct methods
.method public constructor <init>(IILjava/io/InputStream;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Lcom/microsoft/xbox/idp/toolkit/HttpError;->errorCode:I

    .line 21
    iput p2, p0, Lcom/microsoft/xbox/idp/toolkit/HttpError;->httpStatus:I

    .line 23
    new-instance p1, Ljava/util/Scanner;

    invoke-direct {p1, p3}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    const-string p2, "\\A"

    invoke-virtual {p1, p2}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    move-result-object p1

    .line 24
    invoke-virtual {p1}, Ljava/util/Scanner;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    iput-object p1, p0, Lcom/microsoft/xbox/idp/toolkit/HttpError;->errorMessage:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput p1, p0, Lcom/microsoft/xbox/idp/toolkit/HttpError;->errorCode:I

    .line 15
    iput p2, p0, Lcom/microsoft/xbox/idp/toolkit/HttpError;->httpStatus:I

    .line 16
    iput-object p3, p0, Lcom/microsoft/xbox/idp/toolkit/HttpError;->errorMessage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .line 28
    iget v0, p0, Lcom/microsoft/xbox/idp/toolkit/HttpError;->errorCode:I

    return v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/microsoft/xbox/idp/toolkit/HttpError;->errorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getHttpStatus()I
    .locals 1

    .line 32
    iget v0, p0, Lcom/microsoft/xbox/idp/toolkit/HttpError;->httpStatus:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 41
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "errorCode: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 42
    iget v1, p0, Lcom/microsoft/xbox/idp/toolkit/HttpError;->errorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", httpStatus: "

    .line 43
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/microsoft/xbox/idp/toolkit/HttpError;->httpStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", errorMessage: "

    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/microsoft/xbox/idp/toolkit/HttpError;->errorMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
