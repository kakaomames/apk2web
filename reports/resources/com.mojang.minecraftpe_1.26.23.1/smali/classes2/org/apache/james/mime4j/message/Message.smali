.class public Lorg/apache/james/mime4j/message/Message;
.super Lorg/apache/james/mime4j/message/Entity;
.source "Message.java"

# interfaces
.implements Lorg/apache/james/mime4j/message/Body;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Lorg/apache/james/mime4j/message/Entity;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/james/mime4j/MimeIOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 100
    invoke-static {}, Lorg/apache/james/mime4j/storage/DefaultStorageProvider;->getInstance()Lorg/apache/james/mime4j/storage/StorageProvider;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/james/mime4j/message/Message;-><init>(Ljava/io/InputStream;Lorg/apache/james/mime4j/parser/MimeEntityConfig;Lorg/apache/james/mime4j/storage/StorageProvider;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lorg/apache/james/mime4j/parser/MimeEntityConfig;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/james/mime4j/MimeIOException;
        }
    .end annotation

    .line 116
    invoke-static {}, Lorg/apache/james/mime4j/storage/DefaultStorageProvider;->getInstance()Lorg/apache/james/mime4j/storage/StorageProvider;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/james/mime4j/message/Message;-><init>(Ljava/io/InputStream;Lorg/apache/james/mime4j/parser/MimeEntityConfig;Lorg/apache/james/mime4j/storage/StorageProvider;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lorg/apache/james/mime4j/parser/MimeEntityConfig;Lorg/apache/james/mime4j/storage/StorageProvider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/james/mime4j/MimeIOException;
        }
    .end annotation

    .line 137
    invoke-direct {p0}, Lorg/apache/james/mime4j/message/Entity;-><init>()V

    .line 139
    :try_start_0
    new-instance v0, Lorg/apache/james/mime4j/parser/MimeStreamParser;

    invoke-direct {v0, p2}, Lorg/apache/james/mime4j/parser/MimeStreamParser;-><init>(Lorg/apache/james/mime4j/parser/MimeEntityConfig;)V

    .line 140
    new-instance p2, Lorg/apache/james/mime4j/message/MessageBuilder;

    invoke-direct {p2, p0, p3}, Lorg/apache/james/mime4j/message/MessageBuilder;-><init>(Lorg/apache/james/mime4j/message/Entity;Lorg/apache/james/mime4j/storage/StorageProvider;)V

    invoke-virtual {v0, p2}, Lorg/apache/james/mime4j/parser/MimeStreamParser;->setContentHandler(Lorg/apache/james/mime4j/parser/ContentHandler;)V

    .line 141
    invoke-virtual {v0, p1}, Lorg/apache/james/mime4j/parser/MimeStreamParser;->parse(Ljava/io/InputStream;)V

    :try_end_0
    .catch Lorg/apache/james/mime4j/MimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 143
    new-instance p2, Lorg/apache/james/mime4j/MimeIOException;

    invoke-direct {p2, p1}, Lorg/apache/james/mime4j/MimeIOException;-><init>(Lorg/apache/james/mime4j/MimeException;)V

    throw p2
.end method

.method public constructor <init>(Lorg/apache/james/mime4j/message/Message;)V
    .locals 0

    .line 85
    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/message/Entity;-><init>(Lorg/apache/james/mime4j/message/Entity;)V

    return-void
.end method

.method private getAddressList(Ljava/lang/String;)Lorg/apache/james/mime4j/field/address/AddressList;
    .locals 0

    .line 577
    invoke-virtual {p0, p1}, Lorg/apache/james/mime4j/message/Message;->obtainField(Ljava/lang/String;)Lorg/apache/james/mime4j/parser/Field;

    move-result-object p1

    check-cast p1, Lorg/apache/james/mime4j/field/AddressListField;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 581
    :cond_0
    invoke-virtual {p1}, Lorg/apache/james/mime4j/field/AddressListField;->getAddressList()Lorg/apache/james/mime4j/field/address/AddressList;

    move-result-object p1

    return-object p1
.end method

.method private getMailbox(Ljava/lang/String;)Lorg/apache/james/mime4j/field/address/Mailbox;
    .locals 0

    .line 531
    invoke-virtual {p0, p1}, Lorg/apache/james/mime4j/message/Message;->obtainField(Ljava/lang/String;)Lorg/apache/james/mime4j/parser/Field;

    move-result-object p1

    check-cast p1, Lorg/apache/james/mime4j/field/MailboxField;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 535
    :cond_0
    invoke-virtual {p1}, Lorg/apache/james/mime4j/field/MailboxField;->getMailbox()Lorg/apache/james/mime4j/field/address/Mailbox;

    move-result-object p1

    return-object p1
.end method

.method private getMailboxList(Ljava/lang/String;)Lorg/apache/james/mime4j/field/address/MailboxList;
    .locals 0

    .line 549
    invoke-virtual {p0, p1}, Lorg/apache/james/mime4j/message/Message;->obtainField(Ljava/lang/String;)Lorg/apache/james/mime4j/parser/Field;

    move-result-object p1

    check-cast p1, Lorg/apache/james/mime4j/field/MailboxListField;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 553
    :cond_0
    invoke-virtual {p1}, Lorg/apache/james/mime4j/field/MailboxListField;->getMailboxList()Lorg/apache/james/mime4j/field/address/MailboxList;

    move-result-object p1

    return-object p1
.end method

.method private setAddressList(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Lorg/apache/james/mime4j/field/address/Address;",
            ">;)V"
        }
    .end annotation

    .line 595
    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/Message;->obtainHeader()Lorg/apache/james/mime4j/message/Header;

    move-result-object v0

    if-eqz p2, :cond_1

    .line 597
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 600
    :cond_0
    invoke-static {p1, p2}, Lorg/apache/james/mime4j/field/Fields;->addressList(Ljava/lang/String;Ljava/lang/Iterable;)Lorg/apache/james/mime4j/field/AddressListField;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/james/mime4j/message/Header;->setField(Lorg/apache/james/mime4j/parser/Field;)V

    goto :goto_1

    .line 598
    :cond_1
    :goto_0
    invoke-virtual {v0, p1}, Lorg/apache/james/mime4j/message/Header;->removeFields(Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private setAddressList(Ljava/lang/String;Lorg/apache/james/mime4j/field/address/Address;)V
    .locals 0

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 585
    :cond_0
    invoke-static {p2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p2

    :goto_0
    invoke-direct {p0, p1, p2}, Lorg/apache/james/mime4j/message/Message;->setAddressList(Ljava/lang/String;Ljava/util/Collection;)V

    return-void
.end method

.method private varargs setAddressList(Ljava/lang/String;[Lorg/apache/james/mime4j/field/address/Address;)V
    .locals 0

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 590
    :cond_0
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    :goto_0
    invoke-direct {p0, p1, p2}, Lorg/apache/james/mime4j/message/Message;->setAddressList(Ljava/lang/String;Ljava/util/Collection;)V

    return-void
.end method

.method private setMailbox(Ljava/lang/String;Lorg/apache/james/mime4j/field/address/Mailbox;)V
    .locals 1

    .line 539
    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/Message;->obtainHeader()Lorg/apache/james/mime4j/message/Header;

    move-result-object v0

    if-nez p2, :cond_0

    .line 542
    invoke-virtual {v0, p1}, Lorg/apache/james/mime4j/message/Header;->removeFields(Ljava/lang/String;)I

    goto :goto_0

    .line 544
    :cond_0
    invoke-static {p1, p2}, Lorg/apache/james/mime4j/field/Fields;->mailbox(Ljava/lang/String;Lorg/apache/james/mime4j/field/address/Mailbox;)Lorg/apache/james/mime4j/field/MailboxField;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/james/mime4j/message/Header;->setField(Lorg/apache/james/mime4j/parser/Field;)V

    :goto_0
    return-void
.end method

.method private setMailboxList(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Lorg/apache/james/mime4j/field/address/Mailbox;",
            ">;)V"
        }
    .end annotation

    .line 567
    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/Message;->obtainHeader()Lorg/apache/james/mime4j/message/Header;

    move-result-object v0

    if-eqz p2, :cond_1

    .line 569
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 572
    :cond_0
    invoke-static {p1, p2}, Lorg/apache/james/mime4j/field/Fields;->mailboxList(Ljava/lang/String;Ljava/lang/Iterable;)Lorg/apache/james/mime4j/field/MailboxListField;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/james/mime4j/message/Header;->setField(Lorg/apache/james/mime4j/parser/Field;)V

    goto :goto_1

    .line 570
    :cond_1
    :goto_0
    invoke-virtual {v0, p1}, Lorg/apache/james/mime4j/message/Header;->removeFields(Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private setMailboxList(Ljava/lang/String;Lorg/apache/james/mime4j/field/address/Mailbox;)V
    .locals 0

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 557
    :cond_0
    invoke-static {p2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p2

    :goto_0
    invoke-direct {p0, p1, p2}, Lorg/apache/james/mime4j/message/Message;->setMailboxList(Ljava/lang/String;Ljava/util/Collection;)V

    return-void
.end method

.method private varargs setMailboxList(Ljava/lang/String;[Lorg/apache/james/mime4j/field/address/Mailbox;)V
    .locals 0

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 562
    :cond_0
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    :goto_0
    invoke-direct {p0, p1, p2}, Lorg/apache/james/mime4j/message/Message;->setMailboxList(Ljava/lang/String;Ljava/util/Collection;)V

    return-void
.end method


# virtual methods
.method public createMessageId(Ljava/lang/String;)V
    .locals 1

    .line 185
    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/Message;->obtainHeader()Lorg/apache/james/mime4j/message/Header;

    move-result-object v0

    .line 187
    invoke-static {p1}, Lorg/apache/james/mime4j/field/Fields;->messageId(Ljava/lang/String;)Lorg/apache/james/mime4j/parser/Field;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/james/mime4j/message/Header;->setField(Lorg/apache/james/mime4j/parser/Field;)V

    return-void
.end method

.method public getBcc()Lorg/apache/james/mime4j/field/address/AddressList;
    .locals 1

    .line 444
    const-string v0, "Bcc"

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/message/Message;->getAddressList(Ljava/lang/String;)Lorg/apache/james/mime4j/field/address/AddressList;

    move-result-object v0

    return-object v0
.end method

.method public getCc()Lorg/apache/james/mime4j/field/address/AddressList;
    .locals 1

    .line 397
    const-string v0, "Cc"

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/message/Message;->getAddressList(Ljava/lang/String;)Lorg/apache/james/mime4j/field/address/AddressList;

    move-result-object v0

    return-object v0
.end method

.method public getDate()Ljava/util/Date;
    .locals 1

    .line 231
    const-string v0, "Date"

    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/message/Message;->obtainField(Ljava/lang/String;)Lorg/apache/james/mime4j/parser/Field;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/field/DateTimeField;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 235
    :cond_0
    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/DateTimeField;->getDate()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getFrom()Lorg/apache/james/mime4j/field/address/MailboxList;
    .locals 1

    .line 303
    const-string v0, "From"

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/message/Message;->getMailboxList(Ljava/lang/String;)Lorg/apache/james/mime4j/field/address/MailboxList;

    move-result-object v0

    return-object v0
.end method

.method public getMessageId()Ljava/lang/String;
    .locals 1

    .line 168
    const-string v0, "Message-ID"

    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/message/Message;->obtainField(Ljava/lang/String;)Lorg/apache/james/mime4j/parser/Field;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 172
    :cond_0
    invoke-interface {v0}, Lorg/apache/james/mime4j/parser/Field;->getBody()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReplyTo()Lorg/apache/james/mime4j/field/address/AddressList;
    .locals 1

    .line 491
    const-string v0, "Reply-To"

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/message/Message;->getAddressList(Ljava/lang/String;)Lorg/apache/james/mime4j/field/address/AddressList;

    move-result-object v0

    return-object v0
.end method

.method public getSender()Lorg/apache/james/mime4j/field/address/Mailbox;
    .locals 1

    .line 280
    const-string v0, "Sender"

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/message/Message;->getMailbox(Ljava/lang/String;)Lorg/apache/james/mime4j/field/address/Mailbox;

    move-result-object v0

    return-object v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .line 197
    const-string v0, "Subject"

    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/message/Message;->obtainField(Ljava/lang/String;)Lorg/apache/james/mime4j/parser/Field;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/field/UnstructuredField;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 201
    :cond_0
    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/UnstructuredField;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTo()Lorg/apache/james/mime4j/field/address/AddressList;
    .locals 1

    .line 350
    const-string v0, "To"

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/message/Message;->getAddressList(Ljava/lang/String;)Lorg/apache/james/mime4j/field/address/AddressList;

    move-result-object v0

    return-object v0
.end method

.method public setBcc(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/apache/james/mime4j/field/address/Address;",
            ">;)V"
        }
    .end annotation

    .line 480
    const-string v0, "Bcc"

    invoke-direct {p0, v0, p1}, Lorg/apache/james/mime4j/message/Message;->setAddressList(Ljava/lang/String;Ljava/util/Collection;)V

    return-void
.end method

.method public setBcc(Lorg/apache/james/mime4j/field/address/Address;)V
    .locals 1

    .line 456
    const-string v0, "Bcc"

    invoke-direct {p0, v0, p1}, Lorg/apache/james/mime4j/message/Message;->setAddressList(Ljava/lang/String;Lorg/apache/james/mime4j/field/address/Address;)V

    return-void
.end method

.method public varargs setBcc([Lorg/apache/james/mime4j/field/address/Address;)V
    .locals 1

    .line 468
    const-string v0, "Bcc"

    invoke-direct {p0, v0, p1}, Lorg/apache/james/mime4j/message/Message;->setAddressList(Ljava/lang/String;[Lorg/apache/james/mime4j/field/address/Address;)V

    return-void
.end method

.method public setCc(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/apache/james/mime4j/field/address/Address;",
            ">;)V"
        }
    .end annotation

    .line 433
    const-string v0, "Cc"

    invoke-direct {p0, v0, p1}, Lorg/apache/james/mime4j/message/Message;->setAddressList(Ljava/lang/String;Ljava/util/Collection;)V

    return-void
.end method

.method public setCc(Lorg/apache/james/mime4j/field/address/Address;)V
    .locals 1

    .line 409
    const-string v0, "Cc"

    invoke-direct {p0, v0, p1}, Lorg/apache/james/mime4j/message/Message;->setAddressList(Ljava/lang/String;Lorg/apache/james/mime4j/field/address/Address;)V

    return-void
.end method

.method public varargs setCc([Lorg/apache/james/mime4j/field/address/Address;)V
    .locals 1

    .line 421
    const-string v0, "Cc"

    invoke-direct {p0, v0, p1}, Lorg/apache/james/mime4j/message/Message;->setAddressList(Ljava/lang/String;[Lorg/apache/james/mime4j/field/address/Address;)V

    return-void
.end method

.method public setDate(Ljava/util/Date;)V
    .locals 1

    const/4 v0, 0x0

    .line 248
    invoke-virtual {p0, p1, v0}, Lorg/apache/james/mime4j/message/Message;->setDate(Ljava/util/Date;Ljava/util/TimeZone;)V

    return-void
.end method

.method public setDate(Ljava/util/Date;Ljava/util/TimeZone;)V
    .locals 2

    .line 263
    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/Message;->obtainHeader()Lorg/apache/james/mime4j/message/Header;

    move-result-object v0

    .line 265
    const-string v1, "Date"

    if-nez p1, :cond_0

    .line 266
    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/message/Header;->removeFields(Ljava/lang/String;)I

    goto :goto_0

    .line 268
    :cond_0
    invoke-static {v1, p1, p2}, Lorg/apache/james/mime4j/field/Fields;->date(Ljava/lang/String;Ljava/util/Date;Ljava/util/TimeZone;)Lorg/apache/james/mime4j/field/DateTimeField;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/james/mime4j/message/Header;->setField(Lorg/apache/james/mime4j/parser/Field;)V

    :goto_0
    return-void
.end method

.method public setFrom(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/apache/james/mime4j/field/address/Mailbox;",
            ">;)V"
        }
    .end annotation

    .line 339
    const-string v0, "From"

    invoke-direct {p0, v0, p1}, Lorg/apache/james/mime4j/message/Message;->setMailboxList(Ljava/lang/String;Ljava/util/Collection;)V

    return-void
.end method

.method public setFrom(Lorg/apache/james/mime4j/field/address/Mailbox;)V
    .locals 1

    .line 315
    const-string v0, "From"

    invoke-direct {p0, v0, p1}, Lorg/apache/james/mime4j/message/Message;->setMailboxList(Ljava/lang/String;Lorg/apache/james/mime4j/field/address/Mailbox;)V

    return-void
.end method

.method public varargs setFrom([Lorg/apache/james/mime4j/field/address/Mailbox;)V
    .locals 1

    .line 327
    const-string v0, "From"

    invoke-direct {p0, v0, p1}, Lorg/apache/james/mime4j/message/Message;->setMailboxList(Ljava/lang/String;[Lorg/apache/james/mime4j/field/address/Mailbox;)V

    return-void
.end method

.method public setReplyTo(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/apache/james/mime4j/field/address/Address;",
            ">;)V"
        }
    .end annotation

    .line 527
    const-string v0, "Reply-To"

    invoke-direct {p0, v0, p1}, Lorg/apache/james/mime4j/message/Message;->setAddressList(Ljava/lang/String;Ljava/util/Collection;)V

    return-void
.end method

.method public setReplyTo(Lorg/apache/james/mime4j/field/address/Address;)V
    .locals 1

    .line 503
    const-string v0, "Reply-To"

    invoke-direct {p0, v0, p1}, Lorg/apache/james/mime4j/message/Message;->setAddressList(Ljava/lang/String;Lorg/apache/james/mime4j/field/address/Address;)V

    return-void
.end method

.method public varargs setReplyTo([Lorg/apache/james/mime4j/field/address/Address;)V
    .locals 1

    .line 515
    const-string v0, "Reply-To"

    invoke-direct {p0, v0, p1}, Lorg/apache/james/mime4j/message/Message;->setAddressList(Ljava/lang/String;[Lorg/apache/james/mime4j/field/address/Address;)V

    return-void
.end method

.method public setSender(Lorg/apache/james/mime4j/field/address/Mailbox;)V
    .locals 1

    .line 292
    const-string v0, "Sender"

    invoke-direct {p0, v0, p1}, Lorg/apache/james/mime4j/message/Message;->setMailbox(Ljava/lang/String;Lorg/apache/james/mime4j/field/address/Mailbox;)V

    return-void
.end method

.method public setSubject(Ljava/lang/String;)V
    .locals 1

    .line 215
    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/Message;->obtainHeader()Lorg/apache/james/mime4j/message/Header;

    move-result-object v0

    if-nez p1, :cond_0

    .line 218
    const-string p1, "Subject"

    invoke-virtual {v0, p1}, Lorg/apache/james/mime4j/message/Header;->removeFields(Ljava/lang/String;)I

    goto :goto_0

    .line 220
    :cond_0
    invoke-static {p1}, Lorg/apache/james/mime4j/field/Fields;->subject(Ljava/lang/String;)Lorg/apache/james/mime4j/field/UnstructuredField;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/james/mime4j/message/Header;->setField(Lorg/apache/james/mime4j/parser/Field;)V

    :goto_0
    return-void
.end method

.method public setTo(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/apache/james/mime4j/field/address/Address;",
            ">;)V"
        }
    .end annotation

    .line 386
    const-string v0, "To"

    invoke-direct {p0, v0, p1}, Lorg/apache/james/mime4j/message/Message;->setAddressList(Ljava/lang/String;Ljava/util/Collection;)V

    return-void
.end method

.method public setTo(Lorg/apache/james/mime4j/field/address/Address;)V
    .locals 1

    .line 362
    const-string v0, "To"

    invoke-direct {p0, v0, p1}, Lorg/apache/james/mime4j/message/Message;->setAddressList(Ljava/lang/String;Lorg/apache/james/mime4j/field/address/Address;)V

    return-void
.end method

.method public varargs setTo([Lorg/apache/james/mime4j/field/address/Address;)V
    .locals 1

    .line 374
    const-string v0, "To"

    invoke-direct {p0, v0, p1}, Lorg/apache/james/mime4j/message/Message;->setAddressList(Ljava/lang/String;[Lorg/apache/james/mime4j/field/address/Address;)V

    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 158
    sget-object v0, Lorg/apache/james/mime4j/message/MessageWriter;->DEFAULT:Lorg/apache/james/mime4j/message/MessageWriter;

    invoke-virtual {v0, p0, p1}, Lorg/apache/james/mime4j/message/MessageWriter;->writeEntity(Lorg/apache/james/mime4j/message/Entity;Ljava/io/OutputStream;)V

    return-void
.end method
