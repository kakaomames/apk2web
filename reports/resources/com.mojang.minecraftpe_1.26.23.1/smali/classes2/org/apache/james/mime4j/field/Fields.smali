.class public Lorg/apache/james/mime4j/field/Fields;
.super Ljava/lang/Object;
.source "Fields.java"


# static fields
.field private static final FIELD_NAME_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    const-string v0, "[\\x21-\\x39\\x3b-\\x7e]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/field/Fields;->FIELD_NAME_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addressList(Ljava/lang/String;Ljava/lang/Iterable;)Lorg/apache/james/mime4j/field/AddressListField;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable<",
            "Lorg/apache/james/mime4j/field/address/Address;",
            ">;)",
            "Lorg/apache/james/mime4j/field/AddressListField;"
        }
    .end annotation

    .line 553
    invoke-static {p0}, Lorg/apache/james/mime4j/field/Fields;->checkValidFieldName(Ljava/lang/String;)V

    .line 554
    invoke-static {p0, p1}, Lorg/apache/james/mime4j/field/Fields;->addressList0(Ljava/lang/String;Ljava/lang/Iterable;)Lorg/apache/james/mime4j/field/AddressListField;

    move-result-object p0

    return-object p0
.end method

.method private static addressList0(Ljava/lang/String;Ljava/lang/Iterable;)Lorg/apache/james/mime4j/field/AddressListField;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable<",
            "Lorg/apache/james/mime4j/field/address/Address;",
            ">;)",
            "Lorg/apache/james/mime4j/field/AddressListField;"
        }
    .end annotation

    .line 576
    invoke-static {p1}, Lorg/apache/james/mime4j/field/Fields;->encodeAddresses(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    .line 577
    sget-object v0, Lorg/apache/james/mime4j/field/AddressListField;->PARSER:Lorg/apache/james/mime4j/field/FieldParser;

    invoke-static {v0, p0, p1}, Lorg/apache/james/mime4j/field/Fields;->parse(Lorg/apache/james/mime4j/field/FieldParser;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/james/mime4j/parser/Field;

    move-result-object p0

    check-cast p0, Lorg/apache/james/mime4j/field/AddressListField;

    return-object p0
.end method

.method public static bcc(Ljava/lang/Iterable;)Lorg/apache/james/mime4j/field/AddressListField;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lorg/apache/james/mime4j/field/address/Address;",
            ">;)",
            "Lorg/apache/james/mime4j/field/AddressListField;"
        }
    .end annotation

    .line 461
    const-string v0, "Bcc"

    invoke-static {v0, p0}, Lorg/apache/james/mime4j/field/Fields;->addressList0(Ljava/lang/String;Ljava/lang/Iterable;)Lorg/apache/james/mime4j/field/AddressListField;

    move-result-object p0

    return-object p0
.end method

.method public static bcc(Lorg/apache/james/mime4j/field/address/Address;)Lorg/apache/james/mime4j/field/AddressListField;
    .locals 1

    .line 439
    const-string v0, "Bcc"

    invoke-static {p0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    invoke-static {v0, p0}, Lorg/apache/james/mime4j/field/Fields;->addressList0(Ljava/lang/String;Ljava/lang/Iterable;)Lorg/apache/james/mime4j/field/AddressListField;

    move-result-object p0

    return-object p0
.end method

.method public static varargs bcc([Lorg/apache/james/mime4j/field/address/Address;)Lorg/apache/james/mime4j/field/AddressListField;
    .locals 1

    .line 450
    const-string v0, "Bcc"

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {v0, p0}, Lorg/apache/james/mime4j/field/Fields;->addressList0(Ljava/lang/String;Ljava/lang/Iterable;)Lorg/apache/james/mime4j/field/AddressListField;

    move-result-object p0

    return-object p0
.end method

.method public static cc(Ljava/lang/Iterable;)Lorg/apache/james/mime4j/field/AddressListField;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lorg/apache/james/mime4j/field/address/Address;",
            ">;)",
            "Lorg/apache/james/mime4j/field/AddressListField;"
        }
    .end annotation

    .line 428
    const-string v0, "Cc"

    invoke-static {v0, p0}, Lorg/apache/james/mime4j/field/Fields;->addressList0(Ljava/lang/String;Ljava/lang/Iterable;)Lorg/apache/james/mime4j/field/AddressListField;

    move-result-object p0

    return-object p0
.end method

.method public static cc(Lorg/apache/james/mime4j/field/address/Address;)Lorg/apache/james/mime4j/field/AddressListField;
    .locals 1

    .line 406
    const-string v0, "Cc"

    invoke-static {p0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    invoke-static {v0, p0}, Lorg/apache/james/mime4j/field/Fields;->addressList0(Ljava/lang/String;Ljava/lang/Iterable;)Lorg/apache/james/mime4j/field/AddressListField;

    move-result-object p0

    return-object p0
.end method

.method public static varargs cc([Lorg/apache/james/mime4j/field/address/Address;)Lorg/apache/james/mime4j/field/AddressListField;
    .locals 1

    .line 417
    const-string v0, "Cc"

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {v0, p0}, Lorg/apache/james/mime4j/field/Fields;->addressList0(Ljava/lang/String;Ljava/lang/Iterable;)Lorg/apache/james/mime4j/field/AddressListField;

    move-result-object p0

    return-object p0
.end method

.method private static checkValidFieldName(Ljava/lang/String;)V
    .locals 1

    .line 581
    sget-object v0, Lorg/apache/james/mime4j/field/Fields;->FIELD_NAME_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 582
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid field name"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static contentDisposition(Ljava/lang/String;)Lorg/apache/james/mime4j/field/ContentDispositionField;
    .locals 2

    .line 123
    sget-object v0, Lorg/apache/james/mime4j/field/ContentDispositionField;->PARSER:Lorg/apache/james/mime4j/field/FieldParser;

    const-string v1, "Content-Disposition"

    invoke-static {v0, v1, p0}, Lorg/apache/james/mime4j/field/Fields;->parse(Lorg/apache/james/mime4j/field/FieldParser;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/james/mime4j/parser/Field;

    move-result-object p0

    check-cast p0, Lorg/apache/james/mime4j/field/ContentDispositionField;

    return-object p0
.end method

.method public static contentDisposition(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/james/mime4j/field/ContentDispositionField;
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v2, -0x1

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 173
    invoke-static/range {v0 .. v6}, Lorg/apache/james/mime4j/field/Fields;->contentDisposition(Ljava/lang/String;Ljava/lang/String;JLjava/util/Date;Ljava/util/Date;Ljava/util/Date;)Lorg/apache/james/mime4j/field/ContentDispositionField;

    move-result-object p0

    return-object p0
.end method

.method public static contentDisposition(Ljava/lang/String;Ljava/lang/String;J)Lorg/apache/james/mime4j/field/ContentDispositionField;
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    .line 193
    invoke-static/range {v0 .. v6}, Lorg/apache/james/mime4j/field/Fields;->contentDisposition(Ljava/lang/String;Ljava/lang/String;JLjava/util/Date;Ljava/util/Date;Ljava/util/Date;)Lorg/apache/james/mime4j/field/ContentDispositionField;

    move-result-object p0

    return-object p0
.end method

.method public static contentDisposition(Ljava/lang/String;Ljava/lang/String;JLjava/util/Date;Ljava/util/Date;Ljava/util/Date;)Lorg/apache/james/mime4j/field/ContentDispositionField;
    .locals 3

    .line 223
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_0

    .line 225
    const-string v1, "filename"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-wide/16 v1, 0x0

    cmp-long p1, p2, v1

    if-ltz p1, :cond_1

    .line 228
    const-string p1, "size"

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const/4 p1, 0x0

    if-eqz p4, :cond_2

    .line 232
    const-string p2, "creation-date"

    invoke-static {p4, p1}, Lorg/apache/james/mime4j/util/MimeUtil;->formatDate(Ljava/util/Date;Ljava/util/TimeZone;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-eqz p5, :cond_3

    .line 236
    const/4 p2, 0x0

    sget-object p2, Lorg/spongycastle/asn1/util/GKS/lAxclkLY;->mUzGfAoiPv:Ljava/lang/String;

    invoke-static {p5, p1}, Lorg/apache/james/mime4j/util/MimeUtil;->formatDate(Ljava/util/Date;Ljava/util/TimeZone;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    if-eqz p6, :cond_4

    .line 240
    const-string p2, "read-date"

    invoke-static {p6, p1}, Lorg/apache/james/mime4j/util/MimeUtil;->formatDate(Ljava/util/Date;Ljava/util/TimeZone;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    :cond_4
    invoke-static {p0, v0}, Lorg/apache/james/mime4j/field/Fields;->contentDisposition(Ljava/lang/String;Ljava/util/Map;)Lorg/apache/james/mime4j/field/ContentDispositionField;

    move-result-object p0

    return-object p0
.end method

.method public static contentDisposition(Ljava/lang/String;Ljava/util/Map;)Lorg/apache/james/mime4j/field/ContentDispositionField;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/james/mime4j/field/ContentDispositionField;"
        }
    .end annotation

    .line 141
    invoke-static {p0}, Lorg/apache/james/mime4j/field/Fields;->isValidDispositionType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    .line 144
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 148
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 149
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 150
    const-string v1, "; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {v1, p1}, Lorg/apache/james/mime4j/codec/EncoderUtil;->encodeHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 154
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 155
    invoke-static {p0}, Lorg/apache/james/mime4j/field/Fields;->contentDisposition(Ljava/lang/String;)Lorg/apache/james/mime4j/field/ContentDispositionField;

    move-result-object p0

    return-object p0

    .line 145
    :cond_2
    :goto_1
    sget-object p1, Lorg/apache/james/mime4j/field/ContentDispositionField;->PARSER:Lorg/apache/james/mime4j/field/FieldParser;

    const-string v0, "Content-Disposition"

    invoke-static {p1, v0, p0}, Lorg/apache/james/mime4j/field/Fields;->parse(Lorg/apache/james/mime4j/field/FieldParser;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/james/mime4j/parser/Field;

    move-result-object p0

    check-cast p0, Lorg/apache/james/mime4j/field/ContentDispositionField;

    return-object p0

    .line 142
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static contentTransferEncoding(Ljava/lang/String;)Lorg/apache/james/mime4j/field/ContentTransferEncodingField;
    .locals 2

    .line 107
    sget-object v0, Lorg/apache/james/mime4j/field/ContentTransferEncodingField;->PARSER:Lorg/apache/james/mime4j/field/FieldParser;

    const-string v1, "Content-Transfer-Encoding"

    invoke-static {v0, v1, p0}, Lorg/apache/james/mime4j/field/Fields;->parse(Lorg/apache/james/mime4j/field/FieldParser;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/james/mime4j/parser/Field;

    move-result-object p0

    check-cast p0, Lorg/apache/james/mime4j/field/ContentTransferEncodingField;

    return-object p0
.end method

.method public static contentType(Ljava/lang/String;)Lorg/apache/james/mime4j/field/ContentTypeField;
    .locals 2

    .line 60
    sget-object v0, Lorg/apache/james/mime4j/field/ContentTypeField;->PARSER:Lorg/apache/james/mime4j/field/FieldParser;

    const-string v1, "Content-Type"

    invoke-static {v0, v1, p0}, Lorg/apache/james/mime4j/field/Fields;->parse(Lorg/apache/james/mime4j/field/FieldParser;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/james/mime4j/parser/Field;

    move-result-object p0

    check-cast p0, Lorg/apache/james/mime4j/field/ContentTypeField;

    return-object p0
.end method

.method public static contentType(Ljava/lang/String;Ljava/util/Map;)Lorg/apache/james/mime4j/field/ContentTypeField;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/james/mime4j/field/ContentTypeField;"
        }
    .end annotation

    .line 78
    invoke-static {p0}, Lorg/apache/james/mime4j/field/Fields;->isValidMimeType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    .line 81
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 85
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 86
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 87
    const-string v1, "; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {v1, p1}, Lorg/apache/james/mime4j/codec/EncoderUtil;->encodeHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 91
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 92
    invoke-static {p0}, Lorg/apache/james/mime4j/field/Fields;->contentType(Ljava/lang/String;)Lorg/apache/james/mime4j/field/ContentTypeField;

    move-result-object p0

    return-object p0

    .line 82
    :cond_2
    :goto_1
    sget-object p1, Lorg/apache/james/mime4j/field/ContentTypeField;->PARSER:Lorg/apache/james/mime4j/field/FieldParser;

    const-string v0, "Content-Type"

    invoke-static {p1, v0, p0}, Lorg/apache/james/mime4j/field/Fields;->parse(Lorg/apache/james/mime4j/field/FieldParser;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/james/mime4j/parser/Field;

    move-result-object p0

    check-cast p0, Lorg/apache/james/mime4j/field/ContentTypeField;

    return-object p0

    .line 79
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static date(Ljava/lang/String;Ljava/util/Date;)Lorg/apache/james/mime4j/field/DateTimeField;
    .locals 1

    .line 270
    invoke-static {p0}, Lorg/apache/james/mime4j/field/Fields;->checkValidFieldName(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 271
    invoke-static {p0, p1, v0}, Lorg/apache/james/mime4j/field/Fields;->date0(Ljava/lang/String;Ljava/util/Date;Ljava/util/TimeZone;)Lorg/apache/james/mime4j/field/DateTimeField;

    move-result-object p0

    return-object p0
.end method

.method public static date(Ljava/lang/String;Ljava/util/Date;Ljava/util/TimeZone;)Lorg/apache/james/mime4j/field/DateTimeField;
    .locals 0

    .line 288
    invoke-static {p0}, Lorg/apache/james/mime4j/field/Fields;->checkValidFieldName(Ljava/lang/String;)V

    .line 289
    invoke-static {p0, p1, p2}, Lorg/apache/james/mime4j/field/Fields;->date0(Ljava/lang/String;Ljava/util/Date;Ljava/util/TimeZone;)Lorg/apache/james/mime4j/field/DateTimeField;

    move-result-object p0

    return-object p0
.end method

.method public static date(Ljava/util/Date;)Lorg/apache/james/mime4j/field/DateTimeField;
    .locals 2

    .line 255
    const-string v0, "Date"

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lorg/apache/james/mime4j/field/Fields;->date0(Ljava/lang/String;Ljava/util/Date;Ljava/util/TimeZone;)Lorg/apache/james/mime4j/field/DateTimeField;

    move-result-object p0

    return-object p0
.end method

.method private static date0(Ljava/lang/String;Ljava/util/Date;Ljava/util/TimeZone;)Lorg/apache/james/mime4j/field/DateTimeField;
    .locals 0

    .line 559
    invoke-static {p1, p2}, Lorg/apache/james/mime4j/util/MimeUtil;->formatDate(Ljava/util/Date;Ljava/util/TimeZone;)Ljava/lang/String;

    move-result-object p1

    .line 560
    sget-object p2, Lorg/apache/james/mime4j/field/DateTimeField;->PARSER:Lorg/apache/james/mime4j/field/FieldParser;

    invoke-static {p2, p0, p1}, Lorg/apache/james/mime4j/field/Fields;->parse(Lorg/apache/james/mime4j/field/FieldParser;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/james/mime4j/parser/Field;

    move-result-object p0

    check-cast p0, Lorg/apache/james/mime4j/field/DateTimeField;

    return-object p0
.end method

.method private static encodeAddresses(Ljava/lang/Iterable;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/apache/james/mime4j/field/address/Address;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 618
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 620
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/james/mime4j/field/address/Address;

    .line 621
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 622
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 624
    :cond_0
    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/address/Address;->getEncodedString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 627
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static from(Ljava/lang/Iterable;)Lorg/apache/james/mime4j/field/MailboxListField;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lorg/apache/james/mime4j/field/address/Mailbox;",
            ">;)",
            "Lorg/apache/james/mime4j/field/MailboxListField;"
        }
    .end annotation

    .line 362
    const-string v0, "From"

    invoke-static {v0, p0}, Lorg/apache/james/mime4j/field/Fields;->mailboxList0(Ljava/lang/String;Ljava/lang/Iterable;)Lorg/apache/james/mime4j/field/MailboxListField;

    move-result-object p0

    return-object p0
.end method

.method public static from(Lorg/apache/james/mime4j/field/address/Mailbox;)Lorg/apache/james/mime4j/field/MailboxListField;
    .locals 1

    .line 340
    const-string v0, "From"

    invoke-static {p0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    invoke-static {v0, p0}, Lorg/apache/james/mime4j/field/Fields;->mailboxList0(Ljava/lang/String;Ljava/lang/Iterable;)Lorg/apache/james/mime4j/field/MailboxListField;

    move-result-object p0

    return-object p0
.end method

.method public static varargs from([Lorg/apache/james/mime4j/field/address/Mailbox;)Lorg/apache/james/mime4j/field/MailboxListField;
    .locals 1

    .line 351
    const-string v0, "From"

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {v0, p0}, Lorg/apache/james/mime4j/field/Fields;->mailboxList0(Ljava/lang/String;Ljava/lang/Iterable;)Lorg/apache/james/mime4j/field/MailboxListField;

    move-result-object p0

    return-object p0
.end method

.method private static isValidDispositionType(Ljava/lang/String;)Z
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 602
    :cond_0
    invoke-static {p0}, Lorg/apache/james/mime4j/codec/EncoderUtil;->isToken(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static isValidMimeType(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/16 v1, 0x2f

    .line 589
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    return v0

    .line 593
    :cond_1
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    add-int/2addr v1, v3

    .line 594
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 595
    invoke-static {v2}, Lorg/apache/james/mime4j/codec/EncoderUtil;->isToken(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p0}, Lorg/apache/james/mime4j/codec/EncoderUtil;->isToken(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    move v0, v3

    :cond_2
    return v0
.end method

.method public static mailbox(Ljava/lang/String;Lorg/apache/james/mime4j/field/address/Mailbox;)Lorg/apache/james/mime4j/field/MailboxField;
    .locals 0

    .line 513
    invoke-static {p0}, Lorg/apache/james/mime4j/field/Fields;->checkValidFieldName(Ljava/lang/String;)V

    .line 514
    invoke-static {p0, p1}, Lorg/apache/james/mime4j/field/Fields;->mailbox0(Ljava/lang/String;Lorg/apache/james/mime4j/field/address/Mailbox;)Lorg/apache/james/mime4j/field/MailboxField;

    move-result-object p0

    return-object p0
.end method

.method private static mailbox0(Ljava/lang/String;Lorg/apache/james/mime4j/field/address/Mailbox;)Lorg/apache/james/mime4j/field/MailboxField;
    .locals 1

    .line 564
    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/james/mime4j/field/Fields;->encodeAddresses(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    .line 565
    sget-object v0, Lorg/apache/james/mime4j/field/MailboxField;->PARSER:Lorg/apache/james/mime4j/field/FieldParser;

    invoke-static {v0, p0, p1}, Lorg/apache/james/mime4j/field/Fields;->parse(Lorg/apache/james/mime4j/field/FieldParser;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/james/mime4j/parser/Field;

    move-result-object p0

    check-cast p0, Lorg/apache/james/mime4j/field/MailboxField;

    return-object p0
.end method

.method public static mailboxList(Ljava/lang/String;Ljava/lang/Iterable;)Lorg/apache/james/mime4j/field/MailboxListField;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable<",
            "Lorg/apache/james/mime4j/field/address/Mailbox;",
            ">;)",
            "Lorg/apache/james/mime4j/field/MailboxListField;"
        }
    .end annotation

    .line 531
    invoke-static {p0}, Lorg/apache/james/mime4j/field/Fields;->checkValidFieldName(Ljava/lang/String;)V

    .line 532
    invoke-static {p0, p1}, Lorg/apache/james/mime4j/field/Fields;->mailboxList0(Ljava/lang/String;Ljava/lang/Iterable;)Lorg/apache/james/mime4j/field/MailboxListField;

    move-result-object p0

    return-object p0
.end method

.method private static mailboxList0(Ljava/lang/String;Ljava/lang/Iterable;)Lorg/apache/james/mime4j/field/MailboxListField;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable<",
            "Lorg/apache/james/mime4j/field/address/Mailbox;",
            ">;)",
            "Lorg/apache/james/mime4j/field/MailboxListField;"
        }
    .end annotation

    .line 570
    invoke-static {p1}, Lorg/apache/james/mime4j/field/Fields;->encodeAddresses(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    .line 571
    sget-object v0, Lorg/apache/james/mime4j/field/MailboxListField;->PARSER:Lorg/apache/james/mime4j/field/FieldParser;

    invoke-static {v0, p0, p1}, Lorg/apache/james/mime4j/field/Fields;->parse(Lorg/apache/james/mime4j/field/FieldParser;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/james/mime4j/parser/Field;

    move-result-object p0

    check-cast p0, Lorg/apache/james/mime4j/field/MailboxListField;

    return-object p0
.end method

.method public static messageId(Ljava/lang/String;)Lorg/apache/james/mime4j/parser/Field;
    .locals 2

    .line 301
    invoke-static {p0}, Lorg/apache/james/mime4j/util/MimeUtil;->createUniqueMessageId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 302
    sget-object v0, Lorg/apache/james/mime4j/field/UnstructuredField;->PARSER:Lorg/apache/james/mime4j/field/FieldParser;

    const-string v1, "Message-ID"

    invoke-static {v0, v1, p0}, Lorg/apache/james/mime4j/field/Fields;->parse(Lorg/apache/james/mime4j/field/FieldParser;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/james/mime4j/parser/Field;

    move-result-object p0

    return-object p0
.end method

.method private static parse(Lorg/apache/james/mime4j/field/FieldParser;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/james/mime4j/parser/Field;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F::",
            "Lorg/apache/james/mime4j/parser/Field;",
            ">(",
            "Lorg/apache/james/mime4j/field/FieldParser;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TF;"
        }
    .end annotation

    .line 607
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/james/mime4j/util/MimeUtil;->fold(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 608
    invoke-static {v0}, Lorg/apache/james/mime4j/util/ContentUtil;->encode(Ljava/lang/String;)Lorg/apache/james/mime4j/util/ByteSequence;

    move-result-object v0

    .line 610
    invoke-interface {p0, p1, p2, v0}, Lorg/apache/james/mime4j/field/FieldParser;->parse(Ljava/lang/String;Ljava/lang/String;Lorg/apache/james/mime4j/util/ByteSequence;)Lorg/apache/james/mime4j/field/ParsedField;

    move-result-object p0

    return-object p0
.end method

.method public static replyTo(Ljava/lang/Iterable;)Lorg/apache/james/mime4j/field/AddressListField;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lorg/apache/james/mime4j/field/address/Address;",
            ">;)",
            "Lorg/apache/james/mime4j/field/AddressListField;"
        }
    .end annotation

    .line 497
    const-string v0, "Reply-To"

    invoke-static {v0, p0}, Lorg/apache/james/mime4j/field/Fields;->addressList0(Ljava/lang/String;Ljava/lang/Iterable;)Lorg/apache/james/mime4j/field/AddressListField;

    move-result-object p0

    return-object p0
.end method

.method public static replyTo(Lorg/apache/james/mime4j/field/address/Address;)Lorg/apache/james/mime4j/field/AddressListField;
    .locals 1

    .line 473
    const-string v0, "Reply-To"

    invoke-static {p0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    invoke-static {v0, p0}, Lorg/apache/james/mime4j/field/Fields;->addressList0(Ljava/lang/String;Ljava/lang/Iterable;)Lorg/apache/james/mime4j/field/AddressListField;

    move-result-object p0

    return-object p0
.end method

.method public static varargs replyTo([Lorg/apache/james/mime4j/field/address/Address;)Lorg/apache/james/mime4j/field/AddressListField;
    .locals 1

    .line 485
    const-string v0, "Reply-To"

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {v0, p0}, Lorg/apache/james/mime4j/field/Fields;->addressList0(Ljava/lang/String;Ljava/lang/Iterable;)Lorg/apache/james/mime4j/field/AddressListField;

    move-result-object p0

    return-object p0
.end method

.method public static sender(Lorg/apache/james/mime4j/field/address/Mailbox;)Lorg/apache/james/mime4j/field/MailboxField;
    .locals 1

    .line 329
    const-string v0, "Sender"

    invoke-static {v0, p0}, Lorg/apache/james/mime4j/field/Fields;->mailbox0(Ljava/lang/String;Lorg/apache/james/mime4j/field/address/Mailbox;)Lorg/apache/james/mime4j/field/MailboxField;

    move-result-object p0

    return-object p0
.end method

.method public static subject(Ljava/lang/String;)Lorg/apache/james/mime4j/field/UnstructuredField;
    .locals 3

    .line 314
    const-string v0, "Subject"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    .line 315
    sget-object v2, Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;->TEXT_TOKEN:Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;

    invoke-static {p0, v2, v1}, Lorg/apache/james/mime4j/codec/EncoderUtil;->encodeIfNecessary(Ljava/lang/String;Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;I)Ljava/lang/String;

    move-result-object p0

    .line 318
    sget-object v1, Lorg/apache/james/mime4j/field/UnstructuredField;->PARSER:Lorg/apache/james/mime4j/field/FieldParser;

    invoke-static {v1, v0, p0}, Lorg/apache/james/mime4j/field/Fields;->parse(Lorg/apache/james/mime4j/field/FieldParser;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/james/mime4j/parser/Field;

    move-result-object p0

    check-cast p0, Lorg/apache/james/mime4j/field/UnstructuredField;

    return-object p0
.end method

.method public static to(Ljava/lang/Iterable;)Lorg/apache/james/mime4j/field/AddressListField;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lorg/apache/james/mime4j/field/address/Address;",
            ">;)",
            "Lorg/apache/james/mime4j/field/AddressListField;"
        }
    .end annotation

    .line 395
    const-string v0, "To"

    invoke-static {v0, p0}, Lorg/apache/james/mime4j/field/Fields;->addressList0(Ljava/lang/String;Ljava/lang/Iterable;)Lorg/apache/james/mime4j/field/AddressListField;

    move-result-object p0

    return-object p0
.end method

.method public static to(Lorg/apache/james/mime4j/field/address/Address;)Lorg/apache/james/mime4j/field/AddressListField;
    .locals 1

    .line 373
    const-string v0, "To"

    invoke-static {p0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    invoke-static {v0, p0}, Lorg/apache/james/mime4j/field/Fields;->addressList0(Ljava/lang/String;Ljava/lang/Iterable;)Lorg/apache/james/mime4j/field/AddressListField;

    move-result-object p0

    return-object p0
.end method

.method public static varargs to([Lorg/apache/james/mime4j/field/address/Address;)Lorg/apache/james/mime4j/field/AddressListField;
    .locals 1

    .line 384
    const-string v0, "To"

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {v0, p0}, Lorg/apache/james/mime4j/field/Fields;->addressList0(Ljava/lang/String;Ljava/lang/Iterable;)Lorg/apache/james/mime4j/field/AddressListField;

    move-result-object p0

    return-object p0
.end method
