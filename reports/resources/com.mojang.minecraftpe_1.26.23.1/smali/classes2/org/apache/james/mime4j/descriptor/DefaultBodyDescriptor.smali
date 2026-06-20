.class public Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;
.super Ljava/lang/Object;
.source "DefaultBodyDescriptor.java"

# interfaces
.implements Lorg/apache/james/mime4j/descriptor/MutableBodyDescriptor;


# static fields
.field private static final DEFAULT_MEDIA_TYPE:Ljava/lang/String; = "text"

.field private static final DEFAULT_MIME_TYPE:Ljava/lang/String; = "text/plain"

.field private static final DEFAULT_SUB_TYPE:Ljava/lang/String; = "plain"

.field private static final EMAIL_MESSAGE_MIME_TYPE:Ljava/lang/String; = "message/rfc822"

.field private static final MEDIA_TYPE_MESSAGE:Ljava/lang/String; = "message"

.field private static final MEDIA_TYPE_TEXT:Ljava/lang/String; = "text"

.field private static final SUB_TYPE_EMAIL:Ljava/lang/String; = "rfc822"

.field private static final US_ASCII:Ljava/lang/String; = "us-ascii"

.field private static log:Lorg/apache/commons/logging/Log;


# instance fields
.field private boundary:Ljava/lang/String;

.field private charset:Ljava/lang/String;

.field private contentLength:J

.field private contentTransferEncSet:Z

.field private contentTypeSet:Z

.field private mediaType:Ljava/lang/String;

.field private mimeType:Ljava/lang/String;

.field private parameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private subType:Ljava/lang/String;

.field private transferEncoding:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    const-class v0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 68
    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;-><init>(Lorg/apache/james/mime4j/descriptor/BodyDescriptor;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/james/mime4j/descriptor/BodyDescriptor;)V
    .locals 5

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const-string/jumbo v0, "text"

    iput-object v0, p0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->mediaType:Ljava/lang/String;

    .line 54
    const-string v1, "plain"

    iput-object v1, p0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->subType:Ljava/lang/String;

    .line 55
    const-string/jumbo v2, "text/plain"

    iput-object v2, p0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->mimeType:Ljava/lang/String;

    const/4 v3, 0x0

    .line 56
    iput-object v3, p0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->boundary:Ljava/lang/String;

    .line 57
    const-string/jumbo v3, "us-ascii"

    iput-object v3, p0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->charset:Ljava/lang/String;

    .line 58
    const-string v3, "7bit"

    iput-object v3, p0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->transferEncoding:Ljava/lang/String;

    .line 59
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->parameters:Ljava/util/Map;

    const-wide/16 v3, -0x1

    .line 62
    iput-wide v3, p0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->contentLength:J

    if-eqz p1, :cond_0

    .line 78
    const-string v3, "multipart/digest"

    invoke-interface {p1}, Lorg/apache/james/mime4j/descriptor/BodyDescriptor;->getMimeType()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lorg/apache/james/mime4j/util/MimeUtil;->isSameMimeType(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 79
    const-string p1, "message/rfc822"

    iput-object p1, p0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->mimeType:Ljava/lang/String;

    .line 80
    const-string p1, "rfc822"

    iput-object p1, p0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->subType:Ljava/lang/String;

    .line 81
    const-string p1, "message"

    iput-object p1, p0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->mediaType:Ljava/lang/String;

    goto :goto_0

    .line 83
    :cond_0
    iput-object v2, p0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->mimeType:Ljava/lang/String;

    .line 84
    iput-object v1, p0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->subType:Ljava/lang/String;

    .line 85
    iput-object v0, p0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->mediaType:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method private parseContentType(Ljava/lang/String;)V
    .locals 9

    const/4 v0, 0x1

    .line 121
    iput-boolean v0, p0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->contentTypeSet:Z

    .line 123
    invoke-static {p1}, Lorg/apache/james/mime4j/util/MimeUtil;->getHeaderParams(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    .line 125
    const-string v1, ""

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 129
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x2f

    .line 130
    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    const/4 v6, 0x0

    if-eq v4, v5, :cond_0

    .line 133
    invoke-virtual {v2, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    add-int/2addr v4, v0

    .line 134
    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 135
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_1

    .line 136
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "/"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v4, v3

    move-object v5, v4

    :cond_1
    move v0, v6

    :goto_0
    if-nez v0, :cond_3

    move-object v2, v3

    move-object v4, v2

    goto :goto_1

    :cond_2
    move-object v4, v3

    :goto_1
    move-object v5, v4

    .line 147
    :cond_3
    const-string v0, "boundary"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 149
    const-string v7, "multipart/"

    invoke-virtual {v2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    if-nez v6, :cond_5

    :cond_4
    invoke-virtual {v2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 153
    :cond_5
    iput-object v2, p0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->mimeType:Ljava/lang/String;

    .line 154
    iput-object v4, p0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->subType:Ljava/lang/String;

    .line 155
    iput-object v5, p0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->mediaType:Ljava/lang/String;

    .line 158
    :cond_6
    iget-object v2, p0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->mimeType:Ljava/lang/String;

    invoke-static {v2}, Lorg/apache/james/mime4j/util/MimeUtil;->isMultipart(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 159
    iput-object v6, p0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->boundary:Ljava/lang/String;

    .line 162
    :cond_7
    const-string v2, "charset"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 163
    iput-object v3, p0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->charset:Ljava/lang/String;

    if-eqz v4, :cond_8

    .line 165
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 166
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_8

    .line 167
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->charset:Ljava/lang/String;

    .line 170
    :cond_8
    iget-object v3, p0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->charset:Ljava/lang/String;

    if-nez v3, :cond_9

    const-string/jumbo v3, "text"

    iget-object v4, p0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->mediaType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 171
    const-string/jumbo v3, "us-ascii"

    iput-object v3, p0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->charset:Ljava/lang/String;

    .line 177
    :cond_9
    iget-object v3, p0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->parameters:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 178
    iget-object p1, p0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->parameters:Ljava/util/Map;

    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    iget-object p1, p0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->parameters:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    iget-object p1, p0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->parameters:Ljava/util/Map;

    invoke-interface {p1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public addField(Lorg/apache/james/mime4j/parser/Field;)V
    .locals 5

    .line 96
    invoke-interface {p1}, Lorg/apache/james/mime4j/parser/Field;->getName()Ljava/lang/String;

    move-result-object v0

    .line 97
    invoke-interface {p1}, Lorg/apache/james/mime4j/parser/Field;->getBody()Ljava/lang/String;

    move-result-object p1

    .line 99
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 101
    const-string v1, "content-transfer-encoding"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->contentTransferEncSet:Z

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 102
    iput-boolean v0, p0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->contentTransferEncSet:Z

    .line 104
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 105
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 106
    iput-object p1, p0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->transferEncoding:Ljava/lang/String;

    goto :goto_0

    .line 109
    :cond_0
    const-string v1, "content-length"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-wide v1, p0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->contentLength:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 111
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->contentLength:J

    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 113
    :catch_0
    sget-object v0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->log:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid content-length: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;)V

    goto :goto_0

    .line 115
    :cond_1
    const-string v1, "content-type"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->contentTypeSet:Z

    if-nez v0, :cond_2

    .line 116
    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->parseContentType(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public getBoundary()Ljava/lang/String;
    .locals 1

    .line 198
    iget-object v0, p0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->boundary:Ljava/lang/String;

    return-object v0
.end method

.method public getCharset()Ljava/lang/String;
    .locals 1

    .line 207
    iget-object v0, p0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->charset:Ljava/lang/String;

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    .line 234
    iget-wide v0, p0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->contentLength:J

    return-wide v0
.end method

.method public getContentTypeParameters()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 216
    iget-object v0, p0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->parameters:Ljava/util/Map;

    return-object v0
.end method

.method public getMediaType()Ljava/lang/String;
    .locals 1

    .line 238
    iget-object v0, p0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->mediaType:Ljava/lang/String;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .line 189
    iget-object v0, p0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getSubType()Ljava/lang/String;
    .locals 1

    .line 242
    iget-object v0, p0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->subType:Ljava/lang/String;

    return-object v0
.end method

.method public getTransferEncoding()Ljava/lang/String;
    .locals 1

    .line 225
    iget-object v0, p0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->transferEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 230
    iget-object v0, p0, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->mimeType:Ljava/lang/String;

    return-object v0
.end method
