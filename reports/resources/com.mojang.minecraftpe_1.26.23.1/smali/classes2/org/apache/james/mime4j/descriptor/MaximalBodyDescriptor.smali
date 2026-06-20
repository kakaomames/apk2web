.class public Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;
.super Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;
.source "MaximalBodyDescriptor.java"


# static fields
.field private static final DEFAULT_MAJOR_VERSION:I = 0x1

.field private static final DEFAULT_MINOR_VERSION:I


# instance fields
.field private contentDescription:Ljava/lang/String;

.field private contentDispositionCreationDate:Lorg/apache/james/mime4j/field/datetime/DateTime;

.field private contentDispositionCreationDateParseException:Lorg/apache/james/mime4j/MimeException;

.field private contentDispositionModificationDate:Lorg/apache/james/mime4j/field/datetime/DateTime;

.field private contentDispositionModificationDateParseException:Lorg/apache/james/mime4j/MimeException;

.field private contentDispositionParameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private contentDispositionReadDate:Lorg/apache/james/mime4j/field/datetime/DateTime;

.field private contentDispositionReadDateParseException:Lorg/apache/james/mime4j/MimeException;

.field private contentDispositionSize:J

.field private contentDispositionSizeParseException:Lorg/apache/james/mime4j/MimeException;

.field private contentDispositionType:Ljava/lang/String;

.field private contentId:Ljava/lang/String;

.field private contentLanguage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private contentLanguageParseException:Lorg/apache/james/mime4j/MimeException;

.field private contentLocation:Ljava/lang/String;

.field private contentLocationParseException:Lorg/apache/james/mime4j/MimeException;

.field private contentMD5Raw:Ljava/lang/String;

.field private isContentDescriptionSet:Z

.field private isContentDispositionSet:Z

.field private isContentIdSet:Z

.field private isContentLanguageSet:Z

.field private isContentLocationSet:Z

.field private isContentMD5Set:Z

.field private isMimeVersionSet:Z

.field private mimeMajorVersion:I

.field private mimeMinorVersion:I

.field private mimeVersionException:Lorg/apache/james/mime4j/MimeException;


# direct methods
.method protected constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 74
    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;-><init>(Lorg/apache/james/mime4j/descriptor/BodyDescriptor;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/james/mime4j/descriptor/BodyDescriptor;)V
    .locals 3

    .line 78
    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;-><init>(Lorg/apache/james/mime4j/descriptor/BodyDescriptor;)V

    const/4 p1, 0x0

    .line 79
    iput-boolean p1, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->isMimeVersionSet:Z

    const/4 v0, 0x1

    .line 80
    iput v0, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->mimeMajorVersion:I

    .line 81
    iput p1, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->mimeMinorVersion:I

    const/4 v0, 0x0

    .line 82
    iput-object v0, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentId:Ljava/lang/String;

    .line 83
    iput-boolean p1, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->isContentIdSet:Z

    .line 84
    iput-object v0, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentDescription:Ljava/lang/String;

    .line 85
    iput-boolean p1, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->isContentDescriptionSet:Z

    .line 86
    iput-object v0, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentDispositionType:Ljava/lang/String;

    .line 87
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentDispositionParameters:Ljava/util/Map;

    .line 88
    iput-object v0, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentDispositionModificationDate:Lorg/apache/james/mime4j/field/datetime/DateTime;

    .line 89
    iput-object v0, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentDispositionModificationDateParseException:Lorg/apache/james/mime4j/MimeException;

    .line 90
    iput-object v0, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentDispositionCreationDate:Lorg/apache/james/mime4j/field/datetime/DateTime;

    .line 91
    iput-object v0, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentDispositionCreationDateParseException:Lorg/apache/james/mime4j/MimeException;

    .line 92
    iput-object v0, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentDispositionReadDate:Lorg/apache/james/mime4j/field/datetime/DateTime;

    .line 93
    iput-object v0, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentDispositionReadDateParseException:Lorg/apache/james/mime4j/MimeException;

    const-wide/16 v1, -0x1

    .line 94
    iput-wide v1, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentDispositionSize:J

    .line 95
    iput-object v0, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentDispositionSizeParseException:Lorg/apache/james/mime4j/MimeException;

    .line 96
    iput-boolean p1, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->isContentDispositionSet:Z

    .line 97
    iput-object v0, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentLanguage:Ljava/util/List;

    .line 98
    iput-object v0, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentLanguageParseException:Lorg/apache/james/mime4j/MimeException;

    .line 99
    iput-boolean p1, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->isContentIdSet:Z

    .line 100
    iput-object v0, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentLocation:Ljava/lang/String;

    .line 101
    iput-object v0, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentLocationParseException:Lorg/apache/james/mime4j/MimeException;

    .line 102
    iput-boolean p1, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->isContentLocationSet:Z

    .line 103
    iput-object v0, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentMD5Raw:Ljava/lang/String;

    .line 104
    iput-boolean p1, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->isContentMD5Set:Z

    return-void
.end method

.method private parseContentDescription(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    .line 219
    const-string p1, ""

    iput-object p1, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentDescription:Ljava/lang/String;

    goto :goto_0

    .line 221
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentDescription:Ljava/lang/String;

    :goto_0
    const/4 p1, 0x1

    .line 223
    iput-boolean p1, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->isContentDescriptionSet:Z

    return-void
.end method

.method private parseContentDisposition(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x1

    .line 165
    iput-boolean v0, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->isContentDispositionSet:Z

    .line 166
    invoke-static {p1}, Lorg/apache/james/mime4j/util/MimeUtil;->getHeaderParams(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentDispositionParameters:Ljava/util/Map;

    .line 167
    const-string v0, ""

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentDispositionType:Ljava/lang/String;

    .line 169
    iget-object p1, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentDispositionParameters:Ljava/util/Map;

    const-string v1, "modification-date"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 173
    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->parseDate(Ljava/lang/String;)Lorg/apache/james/mime4j/field/datetime/DateTime;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentDispositionModificationDate:Lorg/apache/james/mime4j/field/datetime/DateTime;

    :try_end_0
    .catch Lorg/apache/james/mime4j/field/datetime/parser/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 175
    iput-object p1, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentDispositionModificationDateParseException:Lorg/apache/james/mime4j/MimeException;

    .line 179
    :cond_0
    :goto_0
    iget-object p1, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentDispositionParameters:Ljava/util/Map;

    const-string v1, "creation-date"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 183
    :try_start_1
    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->parseDate(Ljava/lang/String;)Lorg/apache/james/mime4j/field/datetime/DateTime;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentDispositionCreationDate:Lorg/apache/james/mime4j/field/datetime/DateTime;

    :try_end_1
    .catch Lorg/apache/james/mime4j/field/datetime/parser/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 185
    iput-object p1, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentDispositionCreationDateParseException:Lorg/apache/james/mime4j/MimeException;

    .line 189
    :cond_1
    :goto_1
    iget-object p1, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentDispositionParameters:Ljava/util/Map;

    const-string v1, "read-date"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_2

    .line 193
    :try_start_2
    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->parseDate(Ljava/lang/String;)Lorg/apache/james/mime4j/field/datetime/DateTime;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentDispositionReadDate:Lorg/apache/james/mime4j/field/datetime/DateTime;

    :try_end_2
    .catch Lorg/apache/james/mime4j/field/datetime/parser/ParseException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    .line 195
    iput-object p1, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentDispositionReadDateParseException:Lorg/apache/james/mime4j/MimeException;

    .line 199
    :cond_2
    :goto_2
    iget-object p1, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentDispositionParameters:Ljava/util/Map;

    const-string v1, "size"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_3

    .line 202
    :try_start_3
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentDispositionSize:J

    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception p1

    .line 204
    new-instance v1, Lorg/apache/james/mime4j/MimeException;

    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lorg/apache/james/mime4j/MimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v1}, Lorg/apache/james/mime4j/MimeException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Lorg/apache/james/mime4j/MimeException;

    iput-object p1, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentDispositionSizeParseException:Lorg/apache/james/mime4j/MimeException;

    .line 207
    :cond_3
    :goto_3
    iget-object p1, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentDispositionParameters:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private parseContentId(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    .line 228
    const-string p1, ""

    iput-object p1, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentId:Ljava/lang/String;

    goto :goto_0

    .line 230
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentId:Ljava/lang/String;

    :goto_0
    const/4 p1, 0x1

    .line 232
    iput-boolean p1, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->isContentIdSet:Z

    return-void
.end method

.method private parseDate(Ljava/lang/String;)Lorg/apache/james/mime4j/field/datetime/DateTime;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/datetime/parser/ParseException;
        }
    .end annotation

    .line 211
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 212
    new-instance p1, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;

    invoke-direct {p1, v0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;-><init>(Ljava/io/Reader;)V

    .line 213
    invoke-virtual {p1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->date_time()Lorg/apache/james/mime4j/field/datetime/DateTime;

    move-result-object p1

    return-object p1
.end method

.method private parseLanguage(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    .line 153
    iput-boolean v0, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->isContentLanguageSet:Z

    if-eqz p1, :cond_0

    .line 156
    :try_start_0
    new-instance v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;-><init>(Ljava/io/Reader;)V

    .line 157
    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->parse()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentLanguage:Ljava/util/List;

    :try_end_0
    .catch Lorg/apache/james/mime4j/MimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 159
    iput-object p1, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentLanguageParseException:Lorg/apache/james/mime4j/MimeException;

    :cond_0
    :goto_0
    return-void
.end method

.method private parseLocation(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 139
    iput-boolean v0, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->isContentLocationSet:Z

    if-eqz p1, :cond_0

    .line 141
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 142
    new-instance p1, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParser;

    invoke-direct {p1, v0}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParser;-><init>(Ljava/io/Reader;)V

    const/4 v0, 0x0

    .line 143
    invoke-virtual {p1, v0}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParser;->setFoldingPreserved(Z)V

    .line 145
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParser;->parse()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentLocation:Ljava/lang/String;

    :try_end_0
    .catch Lorg/apache/james/mime4j/MimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 147
    iput-object p1, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentLocationParseException:Lorg/apache/james/mime4j/MimeException;

    :cond_0
    :goto_0
    return-void
.end method

.method private parseMD5(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 132
    iput-boolean v0, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->isContentMD5Set:Z

    if-eqz p1, :cond_0

    .line 134
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentMD5Raw:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private parseMimeVersion(Ljava/lang/String;)V
    .locals 2

    .line 236
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 237
    new-instance p1, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;

    invoke-direct {p1, v0}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;-><init>(Ljava/io/Reader;)V

    .line 239
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->parse()V

    .line 240
    invoke-virtual {p1}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->getMajorVersion()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 242
    iput v0, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->mimeMajorVersion:I

    .line 244
    :cond_0
    invoke-virtual {p1}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->getMinorVersion()I

    move-result p1

    if-eq p1, v1, :cond_1

    .line 246
    iput p1, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->mimeMinorVersion:I

    :try_end_0
    .catch Lorg/apache/james/mime4j/MimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 249
    iput-object p1, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->mimeVersionException:Lorg/apache/james/mime4j/MimeException;

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 251
    iput-boolean p1, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->isMimeVersionSet:Z

    return-void
.end method


# virtual methods
.method public addField(Lorg/apache/james/mime4j/parser/Field;)V
    .locals 3

    .line 109
    invoke-interface {p1}, Lorg/apache/james/mime4j/parser/Field;->getName()Ljava/lang/String;

    move-result-object v0

    .line 110
    invoke-interface {p1}, Lorg/apache/james/mime4j/parser/Field;->getBody()Ljava/lang/String;

    move-result-object v1

    .line 111
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 112
    const-string v2, "mime-version"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->isMimeVersionSet:Z

    if-nez v2, :cond_0

    .line 113
    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->parseMimeVersion(Ljava/lang/String;)V

    goto :goto_0

    .line 114
    :cond_0
    const-string v2, "content-id"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->isContentIdSet:Z

    if-nez v2, :cond_1

    .line 115
    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->parseContentId(Ljava/lang/String;)V

    goto :goto_0

    .line 116
    :cond_1
    const-string v2, "content-description"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->isContentDescriptionSet:Z

    if-nez v2, :cond_2

    .line 117
    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->parseContentDescription(Ljava/lang/String;)V

    goto :goto_0

    .line 118
    :cond_2
    const-string v2, "content-disposition"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->isContentDispositionSet:Z

    if-nez v2, :cond_3

    .line 119
    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->parseContentDisposition(Ljava/lang/String;)V

    goto :goto_0

    .line 120
    :cond_3
    const-string v2, "content-language"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->isContentLanguageSet:Z

    if-nez v2, :cond_4

    .line 121
    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->parseLanguage(Ljava/lang/String;)V

    goto :goto_0

    .line 122
    :cond_4
    const-string v2, "content-location"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->isContentLocationSet:Z

    if-nez v2, :cond_5

    .line 123
    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->parseLocation(Ljava/lang/String;)V

    goto :goto_0

    .line 124
    :cond_5
    const-string v2, "content-md5"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->isContentMD5Set:Z

    if-nez v0, :cond_6

    .line 125
    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->parseMD5(Ljava/lang/String;)V

    goto :goto_0

    .line 127
    :cond_6
    invoke-super {p0, p1}, Lorg/apache/james/mime4j/descriptor/DefaultBodyDescriptor;->addField(Lorg/apache/james/mime4j/parser/Field;)V

    :goto_0
    return-void
.end method

.method public getContentDescription()Ljava/lang/String;
    .locals 1

    .line 294
    iget-object v0, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getContentDispositionCreationDate()Lorg/apache/james/mime4j/field/datetime/DateTime;
    .locals 1

    .line 364
    iget-object v0, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentDispositionCreationDate:Lorg/apache/james/mime4j/field/datetime/DateTime;

    return-object v0
.end method

.method public getContentDispositionCreationDateParseException()Lorg/apache/james/mime4j/MimeException;
    .locals 1

    .line 373
    iget-object v0, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentDispositionCreationDateParseException:Lorg/apache/james/mime4j/MimeException;

    return-object v0
.end method

.method public getContentDispositionFilename()Ljava/lang/String;
    .locals 2

    .line 335
    iget-object v0, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentDispositionParameters:Ljava/util/Map;

    const-string v1, "filename"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getContentDispositionModificationDate()Lorg/apache/james/mime4j/field/datetime/DateTime;
    .locals 1

    .line 345
    iget-object v0, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentDispositionModificationDate:Lorg/apache/james/mime4j/field/datetime/DateTime;

    return-object v0
.end method

.method public getContentDispositionModificationDateParseException()Lorg/apache/james/mime4j/MimeException;
    .locals 1

    .line 354
    iget-object v0, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentDispositionModificationDateParseException:Lorg/apache/james/mime4j/MimeException;

    return-object v0
.end method

.method public getContentDispositionParameters()Ljava/util/Map;
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

    .line 325
    iget-object v0, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentDispositionParameters:Ljava/util/Map;

    return-object v0
.end method

.method public getContentDispositionReadDate()Lorg/apache/james/mime4j/field/datetime/DateTime;
    .locals 1

    .line 383
    iget-object v0, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentDispositionReadDate:Lorg/apache/james/mime4j/field/datetime/DateTime;

    return-object v0
.end method

.method public getContentDispositionReadDateParseException()Lorg/apache/james/mime4j/MimeException;
    .locals 1

    .line 392
    iget-object v0, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentDispositionReadDateParseException:Lorg/apache/james/mime4j/MimeException;

    return-object v0
.end method

.method public getContentDispositionSize()J
    .locals 2

    .line 402
    iget-wide v0, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentDispositionSize:J

    return-wide v0
.end method

.method public getContentDispositionSizeParseException()Lorg/apache/james/mime4j/MimeException;
    .locals 1

    .line 411
    iget-object v0, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentDispositionSizeParseException:Lorg/apache/james/mime4j/MimeException;

    return-object v0
.end method

.method public getContentDispositionType()Ljava/lang/String;
    .locals 1

    .line 315
    iget-object v0, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentDispositionType:Ljava/lang/String;

    return-object v0
.end method

.method public getContentId()Ljava/lang/String;
    .locals 1

    .line 304
    iget-object v0, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentId:Ljava/lang/String;

    return-object v0
.end method

.method public getContentLanguage()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 423
    iget-object v0, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentLanguage:Ljava/util/List;

    return-object v0
.end method

.method public getContentLanguageParseException()Lorg/apache/james/mime4j/MimeException;
    .locals 1

    .line 432
    iget-object v0, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentLanguageParseException:Lorg/apache/james/mime4j/MimeException;

    return-object v0
.end method

.method public getContentLocation()Ljava/lang/String;
    .locals 1

    .line 443
    iget-object v0, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getContentLocationParseException()Lorg/apache/james/mime4j/MimeException;
    .locals 1

    .line 452
    iget-object v0, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentLocationParseException:Lorg/apache/james/mime4j/MimeException;

    return-object v0
.end method

.method public getContentMD5Raw()Ljava/lang/String;
    .locals 1

    .line 463
    iget-object v0, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->contentMD5Raw:Ljava/lang/String;

    return-object v0
.end method

.method public getMimeMajorVersion()I
    .locals 1

    .line 262
    iget v0, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->mimeMajorVersion:I

    return v0
.end method

.method public getMimeMinorVersion()I
    .locals 1

    .line 273
    iget v0, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->mimeMinorVersion:I

    return v0
.end method

.method public getMimeVersionParseException()Lorg/apache/james/mime4j/MimeException;
    .locals 1

    .line 284
    iget-object v0, p0, Lorg/apache/james/mime4j/descriptor/MaximalBodyDescriptor;->mimeVersionException:Lorg/apache/james/mime4j/MimeException;

    return-object v0
.end method
