.class public Lorg/apache/james/mime4j/field/DateTimeField;
.super Lorg/apache/james/mime4j/field/AbstractField;
.source "DateTimeField.java"


# static fields
.field static final PARSER:Lorg/apache/james/mime4j/field/FieldParser;

.field private static log:Lorg/apache/commons/logging/Log;


# instance fields
.field private date:Ljava/util/Date;

.field private parseException:Lorg/apache/james/mime4j/field/datetime/parser/ParseException;

.field private parsed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    const-class v0, Lorg/apache/james/mime4j/field/DateTimeField;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/field/DateTimeField;->log:Lorg/apache/commons/logging/Log;

    .line 83
    new-instance v0, Lorg/apache/james/mime4j/field/DateTimeField$1;

    invoke-direct {v0}, Lorg/apache/james/mime4j/field/DateTimeField$1;-><init>()V

    sput-object v0, Lorg/apache/james/mime4j/field/DateTimeField;->PARSER:Lorg/apache/james/mime4j/field/FieldParser;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/james/mime4j/util/ByteSequence;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/james/mime4j/field/AbstractField;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/james/mime4j/util/ByteSequence;)V

    const/4 p1, 0x0

    .line 38
    iput-boolean p1, p0, Lorg/apache/james/mime4j/field/DateTimeField;->parsed:Z

    return-void
.end method

.method private parse()V
    .locals 6

    .line 63
    const-string v0, "\': "

    const-string v1, "Parsing value \'"

    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/DateTimeField;->getBody()Ljava/lang/String;

    move-result-object v2

    .line 66
    :try_start_0
    new-instance v3, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;

    new-instance v4, Ljava/io/StringReader;

    invoke-direct {v4, v2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v3}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParser;->parseAll()Lorg/apache/james/mime4j/field/datetime/DateTime;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/james/mime4j/field/datetime/DateTime;->getDate()Ljava/util/Date;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/james/mime4j/field/DateTimeField;->date:Ljava/util/Date;

    :try_end_0
    .catch Lorg/apache/james/mime4j/field/datetime/parser/ParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/apache/james/mime4j/field/datetime/parser/TokenMgrError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 74
    sget-object v4, Lorg/apache/james/mime4j/field/DateTimeField;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v4}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 75
    sget-object v4, Lorg/apache/james/mime4j/field/DateTimeField;->log:Lorg/apache/commons/logging/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Lorg/apache/james/mime4j/field/datetime/parser/TokenMgrError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 77
    :cond_0
    new-instance v0, Lorg/apache/james/mime4j/field/datetime/parser/ParseException;

    invoke-virtual {v3}, Lorg/apache/james/mime4j/field/datetime/parser/TokenMgrError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/ParseException;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/DateTimeField;->parseException:Lorg/apache/james/mime4j/field/datetime/parser/ParseException;

    goto :goto_0

    :catch_1
    move-exception v3

    .line 69
    sget-object v4, Lorg/apache/james/mime4j/field/DateTimeField;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v4}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 70
    sget-object v4, Lorg/apache/james/mime4j/field/DateTimeField;->log:Lorg/apache/commons/logging/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Lorg/apache/james/mime4j/field/datetime/parser/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 72
    :cond_1
    iput-object v3, p0, Lorg/apache/james/mime4j/field/DateTimeField;->parseException:Lorg/apache/james/mime4j/field/datetime/parser/ParseException;

    :goto_0
    const/4 v0, 0x1

    .line 80
    iput-boolean v0, p0, Lorg/apache/james/mime4j/field/DateTimeField;->parsed:Z

    return-void
.end method


# virtual methods
.method public getDate()Ljava/util/Date;
    .locals 1

    .line 48
    iget-boolean v0, p0, Lorg/apache/james/mime4j/field/DateTimeField;->parsed:Z

    if-nez v0, :cond_0

    .line 49
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/DateTimeField;->parse()V

    .line 51
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/DateTimeField;->date:Ljava/util/Date;

    return-object v0
.end method

.method public bridge synthetic getParseException()Lorg/apache/james/mime4j/field/ParseException;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/DateTimeField;->getParseException()Lorg/apache/james/mime4j/field/datetime/parser/ParseException;

    move-result-object v0

    return-object v0
.end method

.method public getParseException()Lorg/apache/james/mime4j/field/datetime/parser/ParseException;
    .locals 1

    .line 56
    iget-boolean v0, p0, Lorg/apache/james/mime4j/field/DateTimeField;->parsed:Z

    if-nez v0, :cond_0

    .line 57
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/DateTimeField;->parse()V

    .line 59
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/DateTimeField;->parseException:Lorg/apache/james/mime4j/field/datetime/parser/ParseException;

    return-object v0
.end method
