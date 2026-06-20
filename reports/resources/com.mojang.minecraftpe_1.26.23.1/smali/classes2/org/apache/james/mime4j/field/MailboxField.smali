.class public Lorg/apache/james/mime4j/field/MailboxField;
.super Lorg/apache/james/mime4j/field/AbstractField;
.source "MailboxField.java"


# static fields
.field static final PARSER:Lorg/apache/james/mime4j/field/FieldParser;

.field private static log:Lorg/apache/commons/logging/Log;


# instance fields
.field private mailbox:Lorg/apache/james/mime4j/field/address/Mailbox;

.field private parseException:Lorg/apache/james/mime4j/field/address/parser/ParseException;

.field private parsed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    const-class v0, Lorg/apache/james/mime4j/field/MailboxField;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/field/MailboxField;->log:Lorg/apache/commons/logging/Log;

    .line 78
    new-instance v0, Lorg/apache/james/mime4j/field/MailboxField$1;

    invoke-direct {v0}, Lorg/apache/james/mime4j/field/MailboxField$1;-><init>()V

    sput-object v0, Lorg/apache/james/mime4j/field/MailboxField;->PARSER:Lorg/apache/james/mime4j/field/FieldParser;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/james/mime4j/util/ByteSequence;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/james/mime4j/field/AbstractField;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/james/mime4j/util/ByteSequence;)V

    const/4 p1, 0x0

    .line 36
    iput-boolean p1, p0, Lorg/apache/james/mime4j/field/MailboxField;->parsed:Z

    return-void
.end method

.method private parse()V
    .locals 5

    .line 61
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/MailboxField;->getBody()Ljava/lang/String;

    move-result-object v0

    .line 64
    :try_start_0
    invoke-static {v0}, Lorg/apache/james/mime4j/field/address/AddressList;->parse(Ljava/lang/String;)Lorg/apache/james/mime4j/field/address/AddressList;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/address/AddressList;->flatten()Lorg/apache/james/mime4j/field/address/MailboxList;

    move-result-object v1

    .line 65
    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/address/MailboxList;->size()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v2, 0x0

    .line 66
    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/address/MailboxList;->get(I)Lorg/apache/james/mime4j/field/address/Mailbox;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/james/mime4j/field/MailboxField;->mailbox:Lorg/apache/james/mime4j/field/address/Mailbox;

    :try_end_0
    .catch Lorg/apache/james/mime4j/field/address/parser/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 69
    sget-object v2, Lorg/apache/james/mime4j/field/MailboxField;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 70
    sget-object v2, Lorg/apache/james/mime4j/field/MailboxField;->log:Lorg/apache/commons/logging/Log;

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

    .line 72
    :cond_0
    iput-object v1, p0, Lorg/apache/james/mime4j/field/MailboxField;->parseException:Lorg/apache/james/mime4j/field/address/parser/ParseException;

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 75
    iput-boolean v0, p0, Lorg/apache/james/mime4j/field/MailboxField;->parsed:Z

    return-void
.end method


# virtual methods
.method public getMailbox()Lorg/apache/james/mime4j/field/address/Mailbox;
    .locals 1

    .line 46
    iget-boolean v0, p0, Lorg/apache/james/mime4j/field/MailboxField;->parsed:Z

    if-nez v0, :cond_0

    .line 47
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/MailboxField;->parse()V

    .line 49
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/MailboxField;->mailbox:Lorg/apache/james/mime4j/field/address/Mailbox;

    return-object v0
.end method

.method public bridge synthetic getParseException()Lorg/apache/james/mime4j/field/ParseException;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/MailboxField;->getParseException()Lorg/apache/james/mime4j/field/address/parser/ParseException;

    move-result-object v0

    return-object v0
.end method

.method public getParseException()Lorg/apache/james/mime4j/field/address/parser/ParseException;
    .locals 1

    .line 54
    iget-boolean v0, p0, Lorg/apache/james/mime4j/field/MailboxField;->parsed:Z

    if-nez v0, :cond_0

    .line 55
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/MailboxField;->parse()V

    .line 57
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/MailboxField;->parseException:Lorg/apache/james/mime4j/field/address/parser/ParseException;

    return-object v0
.end method
