.class public Lorg/apache/james/mime4j/field/AddressListField;
.super Lorg/apache/james/mime4j/field/AbstractField;
.source "AddressListField.java"


# static fields
.field static final PARSER:Lorg/apache/james/mime4j/field/FieldParser;

.field private static log:Lorg/apache/commons/logging/Log;


# instance fields
.field private addressList:Lorg/apache/james/mime4j/field/address/AddressList;

.field private parseException:Lorg/apache/james/mime4j/field/address/parser/ParseException;

.field private parsed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    const-class v0, Lorg/apache/james/mime4j/field/AddressListField;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/field/AddressListField;->log:Lorg/apache/commons/logging/Log;

    .line 73
    new-instance v0, Lorg/apache/james/mime4j/field/AddressListField$1;

    invoke-direct {v0}, Lorg/apache/james/mime4j/field/AddressListField$1;-><init>()V

    sput-object v0, Lorg/apache/james/mime4j/field/AddressListField;->PARSER:Lorg/apache/james/mime4j/field/FieldParser;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/james/mime4j/util/ByteSequence;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/james/mime4j/field/AbstractField;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/james/mime4j/util/ByteSequence;)V

    const/4 p1, 0x0

    .line 34
    iput-boolean p1, p0, Lorg/apache/james/mime4j/field/AddressListField;->parsed:Z

    return-void
.end method

.method private parse()V
    .locals 5

    .line 59
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/AddressListField;->getBody()Ljava/lang/String;

    move-result-object v0

    .line 62
    :try_start_0
    invoke-static {v0}, Lorg/apache/james/mime4j/field/address/AddressList;->parse(Ljava/lang/String;)Lorg/apache/james/mime4j/field/address/AddressList;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/james/mime4j/field/AddressListField;->addressList:Lorg/apache/james/mime4j/field/address/AddressList;

    :try_end_0
    .catch Lorg/apache/james/mime4j/field/address/parser/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 64
    sget-object v2, Lorg/apache/james/mime4j/field/AddressListField;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 65
    sget-object v2, Lorg/apache/james/mime4j/field/AddressListField;->log:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Parsing value \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\': "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/address/parser/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 67
    :cond_0
    iput-object v1, p0, Lorg/apache/james/mime4j/field/AddressListField;->parseException:Lorg/apache/james/mime4j/field/address/parser/ParseException;

    :goto_0
    const/4 v0, 0x1

    .line 70
    iput-boolean v0, p0, Lorg/apache/james/mime4j/field/AddressListField;->parsed:Z

    return-void
.end method


# virtual methods
.method public getAddressList()Lorg/apache/james/mime4j/field/address/AddressList;
    .locals 1

    .line 44
    iget-boolean v0, p0, Lorg/apache/james/mime4j/field/AddressListField;->parsed:Z

    if-nez v0, :cond_0

    .line 45
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/AddressListField;->parse()V

    .line 47
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/AddressListField;->addressList:Lorg/apache/james/mime4j/field/address/AddressList;

    return-object v0
.end method

.method public bridge synthetic getParseException()Lorg/apache/james/mime4j/field/ParseException;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/AddressListField;->getParseException()Lorg/apache/james/mime4j/field/address/parser/ParseException;

    move-result-object v0

    return-object v0
.end method

.method public getParseException()Lorg/apache/james/mime4j/field/address/parser/ParseException;
    .locals 1

    .line 52
    iget-boolean v0, p0, Lorg/apache/james/mime4j/field/AddressListField;->parsed:Z

    if-nez v0, :cond_0

    .line 53
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/AddressListField;->parse()V

    .line 55
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/AddressListField;->parseException:Lorg/apache/james/mime4j/field/address/parser/ParseException;

    return-object v0
.end method
