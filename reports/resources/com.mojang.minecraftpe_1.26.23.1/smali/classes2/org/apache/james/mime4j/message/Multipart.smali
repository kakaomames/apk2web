.class public Lorg/apache/james/mime4j/message/Multipart;
.super Ljava/lang/Object;
.source "Multipart.java"

# interfaces
.implements Lorg/apache/james/mime4j/message/Body;


# instance fields
.field private bodyParts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/james/mime4j/message/BodyPart;",
            ">;"
        }
    .end annotation
.end field

.field private epilogue:Lorg/apache/james/mime4j/util/ByteSequence;

.field private transient epilogueStrCache:Ljava/lang/String;

.field private parent:Lorg/apache/james/mime4j/message/Entity;

.field private preamble:Lorg/apache/james/mime4j/util/ByteSequence;

.field private transient preambleStrCache:Ljava/lang/String;

.field private subType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/message/Multipart;->bodyParts:Ljava/util/List;

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lorg/apache/james/mime4j/message/Multipart;->parent:Lorg/apache/james/mime4j/message/Entity;

    .line 52
    sget-object v0, Lorg/apache/james/mime4j/util/ByteSequence;->EMPTY:Lorg/apache/james/mime4j/util/ByteSequence;

    iput-object v0, p0, Lorg/apache/james/mime4j/message/Multipart;->preamble:Lorg/apache/james/mime4j/util/ByteSequence;

    .line 53
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/james/mime4j/message/Multipart;->preambleStrCache:Ljava/lang/String;

    .line 54
    sget-object v1, Lorg/apache/james/mime4j/util/ByteSequence;->EMPTY:Lorg/apache/james/mime4j/util/ByteSequence;

    iput-object v1, p0, Lorg/apache/james/mime4j/message/Multipart;->epilogue:Lorg/apache/james/mime4j/util/ByteSequence;

    .line 55
    iput-object v0, p0, Lorg/apache/james/mime4j/message/Multipart;->epilogueStrCache:Ljava/lang/String;

    .line 57
    iput-object p1, p0, Lorg/apache/james/mime4j/message/Multipart;->subType:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/apache/james/mime4j/message/Multipart;)V
    .locals 3

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/message/Multipart;->bodyParts:Ljava/util/List;

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lorg/apache/james/mime4j/message/Multipart;->parent:Lorg/apache/james/mime4j/message/Entity;

    .line 79
    iget-object v0, p1, Lorg/apache/james/mime4j/message/Multipart;->preamble:Lorg/apache/james/mime4j/util/ByteSequence;

    iput-object v0, p0, Lorg/apache/james/mime4j/message/Multipart;->preamble:Lorg/apache/james/mime4j/util/ByteSequence;

    .line 80
    iget-object v0, p1, Lorg/apache/james/mime4j/message/Multipart;->preambleStrCache:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/james/mime4j/message/Multipart;->preambleStrCache:Ljava/lang/String;

    .line 81
    iget-object v0, p1, Lorg/apache/james/mime4j/message/Multipart;->epilogue:Lorg/apache/james/mime4j/util/ByteSequence;

    iput-object v0, p0, Lorg/apache/james/mime4j/message/Multipart;->epilogue:Lorg/apache/james/mime4j/util/ByteSequence;

    .line 82
    iget-object v0, p1, Lorg/apache/james/mime4j/message/Multipart;->epilogueStrCache:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/james/mime4j/message/Multipart;->epilogueStrCache:Ljava/lang/String;

    .line 84
    iget-object v0, p1, Lorg/apache/james/mime4j/message/Multipart;->bodyParts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/james/mime4j/message/BodyPart;

    .line 85
    new-instance v2, Lorg/apache/james/mime4j/message/BodyPart;

    invoke-direct {v2, v1}, Lorg/apache/james/mime4j/message/BodyPart;-><init>(Lorg/apache/james/mime4j/message/BodyPart;)V

    .line 86
    invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/message/Multipart;->addBodyPart(Lorg/apache/james/mime4j/message/BodyPart;)V

    goto :goto_0

    .line 89
    :cond_0
    iget-object p1, p1, Lorg/apache/james/mime4j/message/Multipart;->subType:Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/james/mime4j/message/Multipart;->subType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addBodyPart(Lorg/apache/james/mime4j/message/BodyPart;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 173
    iget-object v0, p0, Lorg/apache/james/mime4j/message/Multipart;->bodyParts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    iget-object v0, p0, Lorg/apache/james/mime4j/message/Multipart;->parent:Lorg/apache/james/mime4j/message/Entity;

    invoke-virtual {p1, v0}, Lorg/apache/james/mime4j/message/BodyPart;->setParent(Lorg/apache/james/mime4j/message/Entity;)V

    return-void

    .line 171
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public addBodyPart(Lorg/apache/james/mime4j/message/BodyPart;I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 192
    iget-object v0, p0, Lorg/apache/james/mime4j/message/Multipart;->bodyParts:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 193
    iget-object p2, p0, Lorg/apache/james/mime4j/message/Multipart;->parent:Lorg/apache/james/mime4j/message/Entity;

    invoke-virtual {p1, p2}, Lorg/apache/james/mime4j/message/BodyPart;->setParent(Lorg/apache/james/mime4j/message/Entity;)V

    return-void

    .line 190
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public dispose()V
    .locals 2

    .line 314
    iget-object v0, p0, Lorg/apache/james/mime4j/message/Multipart;->bodyParts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/james/mime4j/message/BodyPart;

    .line 315
    invoke-virtual {v1}, Lorg/apache/james/mime4j/message/BodyPart;->dispose()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getBodyParts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/james/mime4j/message/BodyPart;",
            ">;"
        }
    .end annotation

    .line 147
    iget-object v0, p0, Lorg/apache/james/mime4j/message/Multipart;->bodyParts:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 138
    iget-object v0, p0, Lorg/apache/james/mime4j/message/Multipart;->bodyParts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getEpilogue()Ljava/lang/String;
    .locals 1

    .line 290
    iget-object v0, p0, Lorg/apache/james/mime4j/message/Multipart;->epilogueStrCache:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 291
    iget-object v0, p0, Lorg/apache/james/mime4j/message/Multipart;->epilogue:Lorg/apache/james/mime4j/util/ByteSequence;

    invoke-static {v0}, Lorg/apache/james/mime4j/util/ContentUtil;->decode(Lorg/apache/james/mime4j/util/ByteSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/james/mime4j/message/Multipart;->epilogueStrCache:Ljava/lang/String;

    .line 293
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/message/Multipart;->epilogueStrCache:Ljava/lang/String;

    return-object v0
.end method

.method getEpilogueRaw()Lorg/apache/james/mime4j/util/ByteSequence;
    .locals 1

    .line 276
    iget-object v0, p0, Lorg/apache/james/mime4j/message/Multipart;->epilogue:Lorg/apache/james/mime4j/util/ByteSequence;

    return-object v0
.end method

.method public getParent()Lorg/apache/james/mime4j/message/Entity;
    .locals 1

    .line 119
    iget-object v0, p0, Lorg/apache/james/mime4j/message/Multipart;->parent:Lorg/apache/james/mime4j/message/Entity;

    return-object v0
.end method

.method public getPreamble()Ljava/lang/String;
    .locals 1

    .line 257
    iget-object v0, p0, Lorg/apache/james/mime4j/message/Multipart;->preambleStrCache:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 258
    iget-object v0, p0, Lorg/apache/james/mime4j/message/Multipart;->preamble:Lorg/apache/james/mime4j/util/ByteSequence;

    invoke-static {v0}, Lorg/apache/james/mime4j/util/ContentUtil;->decode(Lorg/apache/james/mime4j/util/ByteSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/james/mime4j/message/Multipart;->preambleStrCache:Ljava/lang/String;

    .line 260
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/message/Multipart;->preambleStrCache:Ljava/lang/String;

    return-object v0
.end method

.method getPreambleRaw()Lorg/apache/james/mime4j/util/ByteSequence;
    .locals 1

    .line 243
    iget-object v0, p0, Lorg/apache/james/mime4j/message/Multipart;->preamble:Lorg/apache/james/mime4j/util/ByteSequence;

    return-object v0
.end method

.method public getSubType()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lorg/apache/james/mime4j/message/Multipart;->subType:Ljava/lang/String;

    return-object v0
.end method

.method public removeBodyPart(I)Lorg/apache/james/mime4j/message/BodyPart;
    .locals 1

    .line 208
    iget-object v0, p0, Lorg/apache/james/mime4j/message/Multipart;->bodyParts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/james/mime4j/message/BodyPart;

    const/4 v0, 0x0

    .line 209
    invoke-virtual {p1, v0}, Lorg/apache/james/mime4j/message/BodyPart;->setParent(Lorg/apache/james/mime4j/message/Entity;)V

    return-object p1
.end method

.method public replaceBodyPart(Lorg/apache/james/mime4j/message/BodyPart;I)Lorg/apache/james/mime4j/message/BodyPart;
    .locals 1

    if-eqz p1, :cond_1

    .line 230
    iget-object v0, p0, Lorg/apache/james/mime4j/message/Multipart;->bodyParts:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/james/mime4j/message/BodyPart;

    if-eq p1, p2, :cond_0

    .line 235
    iget-object v0, p0, Lorg/apache/james/mime4j/message/Multipart;->parent:Lorg/apache/james/mime4j/message/Entity;

    invoke-virtual {p1, v0}, Lorg/apache/james/mime4j/message/BodyPart;->setParent(Lorg/apache/james/mime4j/message/Entity;)V

    const/4 p1, 0x0

    .line 236
    invoke-virtual {p2, p1}, Lorg/apache/james/mime4j/message/BodyPart;->setParent(Lorg/apache/james/mime4j/message/Entity;)V

    return-object p2

    .line 232
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot replace body part with itself"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 228
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public setBodyParts(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/james/mime4j/message/BodyPart;",
            ">;)V"
        }
    .end annotation

    .line 157
    iput-object p1, p0, Lorg/apache/james/mime4j/message/Multipart;->bodyParts:Ljava/util/List;

    .line 158
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/message/BodyPart;

    .line 159
    iget-object v1, p0, Lorg/apache/james/mime4j/message/Multipart;->parent:Lorg/apache/james/mime4j/message/Entity;

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/message/BodyPart;->setParent(Lorg/apache/james/mime4j/message/Entity;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setEpilogue(Ljava/lang/String;)V
    .locals 1

    .line 303
    invoke-static {p1}, Lorg/apache/james/mime4j/util/ContentUtil;->encode(Ljava/lang/String;)Lorg/apache/james/mime4j/util/ByteSequence;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/james/mime4j/message/Multipart;->epilogue:Lorg/apache/james/mime4j/util/ByteSequence;

    .line 304
    iput-object p1, p0, Lorg/apache/james/mime4j/message/Multipart;->epilogueStrCache:Ljava/lang/String;

    return-void
.end method

.method setEpilogueRaw(Lorg/apache/james/mime4j/util/ByteSequence;)V
    .locals 0

    .line 280
    iput-object p1, p0, Lorg/apache/james/mime4j/message/Multipart;->epilogue:Lorg/apache/james/mime4j/util/ByteSequence;

    const/4 p1, 0x0

    .line 281
    iput-object p1, p0, Lorg/apache/james/mime4j/message/Multipart;->epilogueStrCache:Ljava/lang/String;

    return-void
.end method

.method public setParent(Lorg/apache/james/mime4j/message/Entity;)V
    .locals 2

    .line 126
    iput-object p1, p0, Lorg/apache/james/mime4j/message/Multipart;->parent:Lorg/apache/james/mime4j/message/Entity;

    .line 127
    iget-object v0, p0, Lorg/apache/james/mime4j/message/Multipart;->bodyParts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/james/mime4j/message/BodyPart;

    .line 128
    invoke-virtual {v1, p1}, Lorg/apache/james/mime4j/message/BodyPart;->setParent(Lorg/apache/james/mime4j/message/Entity;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setPreamble(Ljava/lang/String;)V
    .locals 1

    .line 270
    invoke-static {p1}, Lorg/apache/james/mime4j/util/ContentUtil;->encode(Ljava/lang/String;)Lorg/apache/james/mime4j/util/ByteSequence;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/james/mime4j/message/Multipart;->preamble:Lorg/apache/james/mime4j/util/ByteSequence;

    .line 271
    iput-object p1, p0, Lorg/apache/james/mime4j/message/Multipart;->preambleStrCache:Ljava/lang/String;

    return-void
.end method

.method setPreambleRaw(Lorg/apache/james/mime4j/util/ByteSequence;)V
    .locals 0

    .line 247
    iput-object p1, p0, Lorg/apache/james/mime4j/message/Multipart;->preamble:Lorg/apache/james/mime4j/util/ByteSequence;

    const/4 p1, 0x0

    .line 248
    iput-object p1, p0, Lorg/apache/james/mime4j/message/Multipart;->preambleStrCache:Ljava/lang/String;

    return-void
.end method

.method public setSubType(Ljava/lang/String;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lorg/apache/james/mime4j/message/Multipart;->subType:Ljava/lang/String;

    return-void
.end method
