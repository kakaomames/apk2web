.class public abstract Lorg/apache/james/mime4j/message/Entity;
.super Ljava/lang/Object;
.source "Entity.java"

# interfaces
.implements Lorg/apache/james/mime4j/message/Disposable;


# instance fields
.field private body:Lorg/apache/james/mime4j/message/Body;

.field private header:Lorg/apache/james/mime4j/message/Header;

.field private parent:Lorg/apache/james/mime4j/message/Entity;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lorg/apache/james/mime4j/message/Entity;->header:Lorg/apache/james/mime4j/message/Header;

    .line 40
    iput-object v0, p0, Lorg/apache/james/mime4j/message/Entity;->body:Lorg/apache/james/mime4j/message/Body;

    .line 41
    iput-object v0, p0, Lorg/apache/james/mime4j/message/Entity;->parent:Lorg/apache/james/mime4j/message/Entity;

    return-void
.end method

.method protected constructor <init>(Lorg/apache/james/mime4j/message/Entity;)V
    .locals 2

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lorg/apache/james/mime4j/message/Entity;->header:Lorg/apache/james/mime4j/message/Header;

    .line 40
    iput-object v0, p0, Lorg/apache/james/mime4j/message/Entity;->body:Lorg/apache/james/mime4j/message/Body;

    .line 41
    iput-object v0, p0, Lorg/apache/james/mime4j/message/Entity;->parent:Lorg/apache/james/mime4j/message/Entity;

    .line 68
    iget-object v0, p1, Lorg/apache/james/mime4j/message/Entity;->header:Lorg/apache/james/mime4j/message/Header;

    if-eqz v0, :cond_0

    .line 69
    new-instance v0, Lorg/apache/james/mime4j/message/Header;

    iget-object v1, p1, Lorg/apache/james/mime4j/message/Entity;->header:Lorg/apache/james/mime4j/message/Header;

    invoke-direct {v0, v1}, Lorg/apache/james/mime4j/message/Header;-><init>(Lorg/apache/james/mime4j/message/Header;)V

    iput-object v0, p0, Lorg/apache/james/mime4j/message/Entity;->header:Lorg/apache/james/mime4j/message/Header;

    .line 72
    :cond_0
    iget-object p1, p1, Lorg/apache/james/mime4j/message/Entity;->body:Lorg/apache/james/mime4j/message/Body;

    if-eqz p1, :cond_1

    .line 73
    invoke-static {p1}, Lorg/apache/james/mime4j/message/BodyCopier;->copy(Lorg/apache/james/mime4j/message/Body;)Lorg/apache/james/mime4j/message/Body;

    move-result-object p1

    .line 74
    invoke-virtual {p0, p1}, Lorg/apache/james/mime4j/message/Entity;->setBody(Lorg/apache/james/mime4j/message/Body;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 519
    iget-object v0, p0, Lorg/apache/james/mime4j/message/Entity;->body:Lorg/apache/james/mime4j/message/Body;

    if-eqz v0, :cond_0

    .line 520
    invoke-interface {v0}, Lorg/apache/james/mime4j/message/Body;->dispose()V

    :cond_0
    return-void
.end method

.method public getBody()Lorg/apache/james/mime4j/message/Body;
    .locals 1

    .line 122
    iget-object v0, p0, Lorg/apache/james/mime4j/message/Entity;->body:Lorg/apache/james/mime4j/message/Body;

    return-object v0
.end method

.method public getCharset()Ljava/lang/String;
    .locals 2

    .line 305
    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/Entity;->getHeader()Lorg/apache/james/mime4j/message/Header;

    move-result-object v0

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/message/Header;->getField(Ljava/lang/String;)Lorg/apache/james/mime4j/parser/Field;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/field/ContentTypeField;

    invoke-static {v0}, Lorg/apache/james/mime4j/field/ContentTypeField;->getCharset(Lorg/apache/james/mime4j/field/ContentTypeField;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentTransferEncoding()Ljava/lang/String;
    .locals 2

    .line 315
    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/Entity;->getHeader()Lorg/apache/james/mime4j/message/Header;

    move-result-object v0

    const-string v1, "Content-Transfer-Encoding"

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/message/Header;->getField(Ljava/lang/String;)Lorg/apache/james/mime4j/parser/Field;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/field/ContentTransferEncodingField;

    .line 318
    invoke-static {v0}, Lorg/apache/james/mime4j/field/ContentTransferEncodingField;->getEncoding(Lorg/apache/james/mime4j/field/ContentTransferEncodingField;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDispositionType()Ljava/lang/String;
    .locals 1

    .line 341
    const-string v0, "Content-Disposition"

    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/message/Entity;->obtainField(Ljava/lang/String;)Lorg/apache/james/mime4j/parser/Field;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/field/ContentDispositionField;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 345
    :cond_0
    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/ContentDispositionField;->getDispositionType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFilename()Ljava/lang/String;
    .locals 1

    .line 441
    const-string v0, "Content-Disposition"

    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/message/Entity;->obtainField(Ljava/lang/String;)Lorg/apache/james/mime4j/parser/Field;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/field/ContentDispositionField;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 445
    :cond_0
    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/ContentDispositionField;->getFilename()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeader()Lorg/apache/james/mime4j/message/Header;
    .locals 1

    .line 104
    iget-object v0, p0, Lorg/apache/james/mime4j/message/Entity;->header:Lorg/apache/james/mime4j/message/Header;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 3

    .line 289
    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/Entity;->getHeader()Lorg/apache/james/mime4j/message/Header;

    move-result-object v0

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/message/Header;->getField(Ljava/lang/String;)Lorg/apache/james/mime4j/parser/Field;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/field/ContentTypeField;

    .line 291
    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/Entity;->getParent()Lorg/apache/james/mime4j/message/Entity;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/Entity;->getParent()Lorg/apache/james/mime4j/message/Entity;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/james/mime4j/message/Entity;->getHeader()Lorg/apache/james/mime4j/message/Header;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/apache/james/mime4j/message/Header;->getField(Ljava/lang/String;)Lorg/apache/james/mime4j/parser/Field;

    move-result-object v1

    check-cast v1, Lorg/apache/james/mime4j/field/ContentTypeField;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 296
    :goto_0
    invoke-static {v0, v1}, Lorg/apache/james/mime4j/field/ContentTypeField;->getMimeType(Lorg/apache/james/mime4j/field/ContentTypeField;Lorg/apache/james/mime4j/field/ContentTypeField;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParent()Lorg/apache/james/mime4j/message/Entity;
    .locals 1

    .line 85
    iget-object v0, p0, Lorg/apache/james/mime4j/message/Entity;->parent:Lorg/apache/james/mime4j/message/Entity;

    return-object v0
.end method

.method public isMimeType(Ljava/lang/String;)Z
    .locals 1

    .line 491
    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/Entity;->getMimeType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isMultipart()Z
    .locals 2

    .line 503
    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/Entity;->getHeader()Lorg/apache/james/mime4j/message/Header;

    move-result-object v0

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/message/Header;->getField(Ljava/lang/String;)Lorg/apache/james/mime4j/parser/Field;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/field/ContentTypeField;

    if-eqz v0, :cond_0

    .line 505
    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/ContentTypeField;->getBoundary()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/Entity;->getMimeType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "multipart/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method obtainField(Ljava/lang/String;)Lorg/apache/james/mime4j/parser/Field;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F::",
            "Lorg/apache/james/mime4j/parser/Field;",
            ">(",
            "Ljava/lang/String;",
            ")TF;"
        }
    .end annotation

    .line 548
    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/Entity;->getHeader()Lorg/apache/james/mime4j/message/Header;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 553
    :cond_0
    invoke-virtual {v0, p1}, Lorg/apache/james/mime4j/message/Header;->getField(Ljava/lang/String;)Lorg/apache/james/mime4j/parser/Field;

    move-result-object p1

    return-object p1
.end method

.method obtainHeader()Lorg/apache/james/mime4j/message/Header;
    .locals 1

    .line 531
    iget-object v0, p0, Lorg/apache/james/mime4j/message/Entity;->header:Lorg/apache/james/mime4j/message/Header;

    if-nez v0, :cond_0

    .line 532
    new-instance v0, Lorg/apache/james/mime4j/message/Header;

    invoke-direct {v0}, Lorg/apache/james/mime4j/message/Header;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/message/Entity;->header:Lorg/apache/james/mime4j/message/Header;

    .line 534
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/message/Entity;->header:Lorg/apache/james/mime4j/message/Header;

    return-object v0
.end method

.method public removeBody()Lorg/apache/james/mime4j/message/Body;
    .locals 2

    .line 147
    iget-object v0, p0, Lorg/apache/james/mime4j/message/Entity;->body:Lorg/apache/james/mime4j/message/Body;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 151
    :cond_0
    iput-object v1, p0, Lorg/apache/james/mime4j/message/Entity;->body:Lorg/apache/james/mime4j/message/Body;

    .line 152
    invoke-interface {v0, v1}, Lorg/apache/james/mime4j/message/Body;->setParent(Lorg/apache/james/mime4j/message/Entity;)V

    return-object v0
.end method

.method public setBody(Lorg/apache/james/mime4j/message/Body;)V
    .locals 1

    .line 132
    iget-object v0, p0, Lorg/apache/james/mime4j/message/Entity;->body:Lorg/apache/james/mime4j/message/Body;

    if-nez v0, :cond_0

    .line 135
    iput-object p1, p0, Lorg/apache/james/mime4j/message/Entity;->body:Lorg/apache/james/mime4j/message/Body;

    .line 136
    invoke-interface {p1, p0}, Lorg/apache/james/mime4j/message/Body;->setParent(Lorg/apache/james/mime4j/message/Entity;)V

    return-void

    .line 133
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "body already set"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setBody(Lorg/apache/james/mime4j/message/Body;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 257
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/james/mime4j/message/Entity;->setBody(Lorg/apache/james/mime4j/message/Body;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public setBody(Lorg/apache/james/mime4j/message/Body;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/james/mime4j/message/Body;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 275
    invoke-virtual {p0, p1}, Lorg/apache/james/mime4j/message/Entity;->setBody(Lorg/apache/james/mime4j/message/Body;)V

    .line 277
    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/Entity;->obtainHeader()Lorg/apache/james/mime4j/message/Header;

    move-result-object p1

    .line 278
    invoke-static {p2, p3}, Lorg/apache/james/mime4j/field/Fields;->contentType(Ljava/lang/String;Ljava/util/Map;)Lorg/apache/james/mime4j/field/ContentTypeField;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/apache/james/mime4j/message/Header;->setField(Lorg/apache/james/mime4j/parser/Field;)V

    return-void
.end method

.method public setContentDisposition(Ljava/lang/String;)V
    .locals 8

    .line 358
    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/Entity;->obtainHeader()Lorg/apache/james/mime4j/message/Header;

    move-result-object v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    move-object v1, p1

    .line 359
    invoke-static/range {v1 .. v7}, Lorg/apache/james/mime4j/field/Fields;->contentDisposition(Ljava/lang/String;Ljava/lang/String;JLjava/util/Date;Ljava/util/Date;Ljava/util/Date;)Lorg/apache/james/mime4j/field/ContentDispositionField;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/james/mime4j/message/Header;->setField(Lorg/apache/james/mime4j/parser/Field;)V

    return-void
.end method

.method public setContentDisposition(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 376
    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/Entity;->obtainHeader()Lorg/apache/james/mime4j/message/Header;

    move-result-object v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    .line 377
    invoke-static/range {v1 .. v7}, Lorg/apache/james/mime4j/field/Fields;->contentDisposition(Ljava/lang/String;Ljava/lang/String;JLjava/util/Date;Ljava/util/Date;Ljava/util/Date;)Lorg/apache/james/mime4j/field/ContentDispositionField;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/james/mime4j/message/Header;->setField(Lorg/apache/james/mime4j/parser/Field;)V

    return-void
.end method

.method public setContentDisposition(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 8

    .line 398
    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/Entity;->obtainHeader()Lorg/apache/james/mime4j/message/Header;

    move-result-object v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    .line 399
    invoke-static/range {v1 .. v7}, Lorg/apache/james/mime4j/field/Fields;->contentDisposition(Ljava/lang/String;Ljava/lang/String;JLjava/util/Date;Ljava/util/Date;Ljava/util/Date;)Lorg/apache/james/mime4j/field/ContentDispositionField;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/james/mime4j/message/Header;->setField(Lorg/apache/james/mime4j/parser/Field;)V

    return-void
.end method

.method public setContentDisposition(Ljava/lang/String;Ljava/lang/String;JLjava/util/Date;Ljava/util/Date;Ljava/util/Date;)V
    .locals 1

    .line 428
    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/Entity;->obtainHeader()Lorg/apache/james/mime4j/message/Header;

    move-result-object v0

    .line 429
    invoke-static/range {p1 .. p7}, Lorg/apache/james/mime4j/field/Fields;->contentDisposition(Ljava/lang/String;Ljava/lang/String;JLjava/util/Date;Ljava/util/Date;Ljava/util/Date;)Lorg/apache/james/mime4j/field/ContentDispositionField;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/james/mime4j/message/Header;->setField(Lorg/apache/james/mime4j/parser/Field;)V

    return-void
.end method

.method public setContentTransferEncoding(Ljava/lang/String;)V
    .locals 1

    .line 329
    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/Entity;->obtainHeader()Lorg/apache/james/mime4j/message/Header;

    move-result-object v0

    .line 330
    invoke-static {p1}, Lorg/apache/james/mime4j/field/Fields;->contentTransferEncoding(Ljava/lang/String;)Lorg/apache/james/mime4j/field/ContentTransferEncodingField;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/james/mime4j/message/Header;->setField(Lorg/apache/james/mime4j/parser/Field;)V

    return-void
.end method

.method public setFilename(Ljava/lang/String;)V
    .locals 9

    .line 459
    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/Entity;->obtainHeader()Lorg/apache/james/mime4j/message/Header;

    move-result-object v0

    .line 460
    const/4 v1, 0x0

    sget-object v1, Lcom/google/android/datatransport/runtime/dagger/internal/TVW/fhjtYMsniW;->daZKZpHiDUQGAq:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/message/Header;->getField(Ljava/lang/String;)Lorg/apache/james/mime4j/parser/Field;

    move-result-object v1

    check-cast v1, Lorg/apache/james/mime4j/field/ContentDispositionField;

    if-nez v1, :cond_0

    if-eqz p1, :cond_2

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 464
    const-string v2, "attachment"

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    move-object v3, p1

    invoke-static/range {v2 .. v8}, Lorg/apache/james/mime4j/field/Fields;->contentDisposition(Ljava/lang/String;Ljava/lang/String;JLjava/util/Date;Ljava/util/Date;Ljava/util/Date;)Lorg/apache/james/mime4j/field/ContentDispositionField;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/james/mime4j/message/Header;->setField(Lorg/apache/james/mime4j/parser/Field;)V

    goto :goto_1

    .line 469
    :cond_0
    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/ContentDispositionField;->getDispositionType()Ljava/lang/String;

    move-result-object v2

    .line 470
    new-instance v3, Ljava/util/HashMap;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/ContentDispositionField;->getParameters()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 472
    const-string v1, "filename"

    if-nez p1, :cond_1

    .line 473
    invoke-interface {v3, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 475
    :cond_1
    invoke-interface {v3, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    :goto_0
    invoke-static {v2, v3}, Lorg/apache/james/mime4j/field/Fields;->contentDisposition(Ljava/lang/String;Ljava/util/Map;)Lorg/apache/james/mime4j/field/ContentDispositionField;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/james/mime4j/message/Header;->setField(Lorg/apache/james/mime4j/parser/Field;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public setHeader(Lorg/apache/james/mime4j/message/Header;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lorg/apache/james/mime4j/message/Entity;->header:Lorg/apache/james/mime4j/message/Header;

    return-void
.end method

.method public setMessage(Lorg/apache/james/mime4j/message/Message;)V
    .locals 2

    .line 166
    const-string v0, "message/rfc822"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/james/mime4j/message/Entity;->setBody(Lorg/apache/james/mime4j/message/Body;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public setMultipart(Lorg/apache/james/mime4j/message/Multipart;)V
    .locals 3

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "multipart/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/james/mime4j/message/Multipart;->getSubType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 180
    const-string v1, "boundary"

    invoke-static {}, Lorg/apache/james/mime4j/util/MimeUtil;->createUniqueBoundary()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    .line 183
    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/james/mime4j/message/Entity;->setBody(Lorg/apache/james/mime4j/message/Body;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public setMultipart(Lorg/apache/james/mime4j/message/Multipart;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/james/mime4j/message/Multipart;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "multipart/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/apache/james/mime4j/message/Multipart;->getSubType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 199
    const-string v1, "boundary"

    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 200
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 201
    invoke-static {}, Lorg/apache/james/mime4j/util/MimeUtil;->createUniqueBoundary()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v2, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p2, v2

    .line 204
    :cond_0
    invoke-virtual {p0, p1, v0, p2}, Lorg/apache/james/mime4j/message/Entity;->setBody(Lorg/apache/james/mime4j/message/Body;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public setParent(Lorg/apache/james/mime4j/message/Entity;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lorg/apache/james/mime4j/message/Entity;->parent:Lorg/apache/james/mime4j/message/Entity;

    return-void
.end method

.method public setText(Lorg/apache/james/mime4j/message/TextBody;)V
    .locals 1

    .line 217
    const-string v0, "plain"

    invoke-virtual {p0, p1, v0}, Lorg/apache/james/mime4j/message/Entity;->setText(Lorg/apache/james/mime4j/message/TextBody;Ljava/lang/String;)V

    return-void
.end method

.method public setText(Lorg/apache/james/mime4j/message/TextBody;Ljava/lang/String;)V
    .locals 2

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "text/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 237
    invoke-virtual {p1}, Lorg/apache/james/mime4j/message/TextBody;->getMimeCharset()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 238
    const-string/jumbo v1, "us-ascii"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 239
    const-string v1, "charset"

    invoke-static {v1, v0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 242
    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/james/mime4j/message/Entity;->setBody(Lorg/apache/james/mime4j/message/Body;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
