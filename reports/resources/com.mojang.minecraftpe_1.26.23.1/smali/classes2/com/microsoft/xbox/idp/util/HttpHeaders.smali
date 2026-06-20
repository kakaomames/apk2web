.class public Lcom/microsoft/xbox/idp/util/HttpHeaders;
.super Ljava/lang/Object;
.source "HttpHeaders.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xbox/idp/util/HttpHeaders$Header;
    }
.end annotation


# instance fields
.field private final headers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/microsoft/xbox/idp/util/HttpHeaders$Header;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/microsoft/xbox/idp/util/HttpHeaders;->headers:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 14
    iget-object v0, p0, Lcom/microsoft/xbox/idp/util/HttpHeaders;->headers:Ljava/util/List;

    new-instance v1, Lcom/microsoft/xbox/idp/util/HttpHeaders$Header;

    invoke-direct {v1, p1, p2}, Lcom/microsoft/xbox/idp/util/HttpHeaders$Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getAllHeaders()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/microsoft/xbox/idp/util/HttpHeaders$Header;",
            ">;"
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lcom/microsoft/xbox/idp/util/HttpHeaders;->headers:Ljava/util/List;

    return-object v0
.end method

.method public getFirstHeader(Ljava/lang/String;)Lcom/microsoft/xbox/idp/util/HttpHeaders$Header;
    .locals 3

    if-eqz p1, :cond_1

    .line 23
    iget-object v0, p0, Lcom/microsoft/xbox/idp/util/HttpHeaders;->headers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/xbox/idp/util/HttpHeaders$Header;

    .line 24
    invoke-static {v1}, Lcom/microsoft/xbox/idp/util/HttpHeaders$Header;->access$000(Lcom/microsoft/xbox/idp/util/HttpHeaders$Header;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getLastHeader(Ljava/lang/String;)Lcom/microsoft/xbox/idp/util/HttpHeaders$Header;
    .locals 3

    if-eqz p1, :cond_1

    .line 34
    iget-object v0, p0, Lcom/microsoft/xbox/idp/util/HttpHeaders;->headers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 35
    iget-object v1, p0, Lcom/microsoft/xbox/idp/util/HttpHeaders;->headers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/microsoft/xbox/idp/util/HttpHeaders$Header;

    .line 36
    invoke-static {v1}, Lcom/microsoft/xbox/idp/util/HttpHeaders$Header;->access$000(Lcom/microsoft/xbox/idp/util/HttpHeaders$Header;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[ "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    iget-object v1, p0, Lcom/microsoft/xbox/idp/util/HttpHeaders;->headers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/microsoft/xbox/idp/util/HttpHeaders$Header;

    .line 49
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 51
    :cond_0
    const-string v1, " ]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
