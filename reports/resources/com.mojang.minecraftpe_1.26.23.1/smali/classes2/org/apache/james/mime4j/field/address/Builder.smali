.class Lorg/apache/james/mime4j/field/address/Builder;
.super Ljava/lang/Object;
.source "Builder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;
    }
.end annotation


# static fields
.field private static singleton:Lorg/apache/james/mime4j/field/address/Builder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    new-instance v0, Lorg/apache/james/mime4j/field/address/Builder;

    invoke-direct {v0}, Lorg/apache/james/mime4j/field/address/Builder;-><init>()V

    sput-object v0, Lorg/apache/james/mime4j/field/address/Builder;->singleton:Lorg/apache/james/mime4j/field/address/Builder;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private addSpecials(Ljava/lang/StringBuilder;Lorg/apache/james/mime4j/field/address/parser/Token;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 194
    iget-object v0, p2, Lorg/apache/james/mime4j/field/address/parser/Token;->specialToken:Lorg/apache/james/mime4j/field/address/parser/Token;

    invoke-direct {p0, p1, v0}, Lorg/apache/james/mime4j/field/address/Builder;->addSpecials(Ljava/lang/StringBuilder;Lorg/apache/james/mime4j/field/address/parser/Token;)V

    .line 195
    iget-object p2, p2, Lorg/apache/james/mime4j/field/address/parser/Token;->image:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method private buildAddrSpec(Lorg/apache/james/mime4j/field/address/DomainList;Lorg/apache/james/mime4j/field/address/parser/ASTaddr_spec;)Lorg/apache/james/mime4j/field/address/Mailbox;
    .locals 2

    .line 170
    new-instance v0, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;

    invoke-direct {v0, p2}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;-><init>(Lorg/apache/james/mime4j/field/address/parser/SimpleNode;)V

    .line 171
    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->next()Lorg/apache/james/mime4j/field/address/parser/Node;

    move-result-object p2

    check-cast p2, Lorg/apache/james/mime4j/field/address/parser/ASTlocal_part;

    const/4 v1, 0x1

    invoke-direct {p0, p2, v1}, Lorg/apache/james/mime4j/field/address/Builder;->buildString(Lorg/apache/james/mime4j/field/address/parser/SimpleNode;Z)Ljava/lang/String;

    move-result-object p2

    .line 172
    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->next()Lorg/apache/james/mime4j/field/address/parser/Node;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/field/address/parser/ASTdomain;

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/address/Builder;->buildString(Lorg/apache/james/mime4j/field/address/parser/SimpleNode;Z)Ljava/lang/String;

    move-result-object v0

    .line 173
    new-instance v1, Lorg/apache/james/mime4j/field/address/Mailbox;

    invoke-direct {v1, p1, p2, v0}, Lorg/apache/james/mime4j/field/address/Mailbox;-><init>(Lorg/apache/james/mime4j/field/address/DomainList;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method private buildAddrSpec(Lorg/apache/james/mime4j/field/address/parser/ASTaddr_spec;)Lorg/apache/james/mime4j/field/address/Mailbox;
    .locals 1

    const/4 v0, 0x0

    .line 166
    invoke-direct {p0, v0, p1}, Lorg/apache/james/mime4j/field/address/Builder;->buildAddrSpec(Lorg/apache/james/mime4j/field/address/DomainList;Lorg/apache/james/mime4j/field/address/parser/ASTaddr_spec;)Lorg/apache/james/mime4j/field/address/Mailbox;

    move-result-object p1

    return-object p1
.end method

.method private buildAngleAddr(Lorg/apache/james/mime4j/field/address/parser/ASTangle_addr;)Lorg/apache/james/mime4j/field/address/Mailbox;
    .locals 3

    .line 134
    new-instance v0, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;

    invoke-direct {v0, p1}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;-><init>(Lorg/apache/james/mime4j/field/address/parser/SimpleNode;)V

    .line 136
    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->next()Lorg/apache/james/mime4j/field/address/parser/Node;

    move-result-object p1

    .line 137
    instance-of v1, p1, Lorg/apache/james/mime4j/field/address/parser/ASTroute;

    if-eqz v1, :cond_0

    .line 138
    check-cast p1, Lorg/apache/james/mime4j/field/address/parser/ASTroute;

    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/field/address/Builder;->buildRoute(Lorg/apache/james/mime4j/field/address/parser/ASTroute;)Lorg/apache/james/mime4j/field/address/DomainList;

    move-result-object p1

    .line 139
    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->next()Lorg/apache/james/mime4j/field/address/parser/Node;

    move-result-object v0

    move-object v2, v0

    move-object v0, p1

    move-object p1, v2

    goto :goto_0

    .line 140
    :cond_0
    instance-of v0, p1, Lorg/apache/james/mime4j/field/address/parser/ASTaddr_spec;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 146
    :goto_0
    instance-of v1, p1, Lorg/apache/james/mime4j/field/address/parser/ASTaddr_spec;

    if-eqz v1, :cond_1

    .line 147
    check-cast p1, Lorg/apache/james/mime4j/field/address/parser/ASTaddr_spec;

    invoke-direct {p0, v0, p1}, Lorg/apache/james/mime4j/field/address/Builder;->buildAddrSpec(Lorg/apache/james/mime4j/field/address/DomainList;Lorg/apache/james/mime4j/field/address/parser/ASTaddr_spec;)Lorg/apache/james/mime4j/field/address/Mailbox;

    move-result-object p1

    return-object p1

    .line 149
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 144
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method private buildGroupBody(Lorg/apache/james/mime4j/field/address/parser/ASTgroup_body;)Lorg/apache/james/mime4j/field/address/MailboxList;
    .locals 3

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 89
    new-instance v1, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;

    invoke-direct {v1, p1}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;-><init>(Lorg/apache/james/mime4j/field/address/parser/SimpleNode;)V

    .line 90
    :goto_0
    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 91
    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->next()Lorg/apache/james/mime4j/field/address/parser/Node;

    move-result-object p1

    .line 92
    instance-of v2, p1, Lorg/apache/james/mime4j/field/address/parser/ASTmailbox;

    if-eqz v2, :cond_0

    .line 93
    check-cast p1, Lorg/apache/james/mime4j/field/address/parser/ASTmailbox;

    invoke-virtual {p0, p1}, Lorg/apache/james/mime4j/field/address/Builder;->buildMailbox(Lorg/apache/james/mime4j/field/address/parser/ASTmailbox;)Lorg/apache/james/mime4j/field/address/Mailbox;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 95
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 97
    :cond_1
    new-instance p1, Lorg/apache/james/mime4j/field/address/MailboxList;

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1}, Lorg/apache/james/mime4j/field/address/MailboxList;-><init>(Ljava/util/List;Z)V

    return-object p1
.end method

.method private buildNameAddr(Lorg/apache/james/mime4j/field/address/parser/ASTname_addr;)Lorg/apache/james/mime4j/field/address/Mailbox;
    .locals 2

    .line 115
    new-instance v0, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;

    invoke-direct {v0, p1}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;-><init>(Lorg/apache/james/mime4j/field/address/parser/SimpleNode;)V

    .line 116
    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->next()Lorg/apache/james/mime4j/field/address/parser/Node;

    move-result-object p1

    .line 118
    instance-of v1, p1, Lorg/apache/james/mime4j/field/address/parser/ASTphrase;

    if-eqz v1, :cond_1

    .line 119
    check-cast p1, Lorg/apache/james/mime4j/field/address/parser/ASTphrase;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lorg/apache/james/mime4j/field/address/Builder;->buildString(Lorg/apache/james/mime4j/field/address/parser/SimpleNode;Z)Ljava/lang/String;

    move-result-object p1

    .line 124
    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->next()Lorg/apache/james/mime4j/field/address/parser/Node;

    move-result-object v0

    .line 125
    instance-of v1, v0, Lorg/apache/james/mime4j/field/address/parser/ASTangle_addr;

    if-eqz v1, :cond_0

    .line 126
    invoke-static {p1}, Lorg/apache/james/mime4j/codec/DecoderUtil;->decodeEncodedWords(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 127
    new-instance v1, Lorg/apache/james/mime4j/field/address/Mailbox;

    check-cast v0, Lorg/apache/james/mime4j/field/address/parser/ASTangle_addr;

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/Builder;->buildAngleAddr(Lorg/apache/james/mime4j/field/address/parser/ASTangle_addr;)Lorg/apache/james/mime4j/field/address/Mailbox;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Lorg/apache/james/mime4j/field/address/Mailbox;-><init>(Ljava/lang/String;Lorg/apache/james/mime4j/field/address/Mailbox;)V

    return-object v1

    .line 129
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 121
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method private buildRoute(Lorg/apache/james/mime4j/field/address/parser/ASTroute;)Lorg/apache/james/mime4j/field/address/DomainList;
    .locals 4

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lorg/apache/james/mime4j/field/address/parser/ASTroute;->jjtGetNumChildren()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 154
    new-instance v1, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;

    invoke-direct {v1, p1}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;-><init>(Lorg/apache/james/mime4j/field/address/parser/SimpleNode;)V

    .line 155
    :goto_0
    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->hasNext()Z

    move-result p1

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    .line 156
    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->next()Lorg/apache/james/mime4j/field/address/parser/Node;

    move-result-object p1

    .line 157
    instance-of v3, p1, Lorg/apache/james/mime4j/field/address/parser/ASTdomain;

    if-eqz v3, :cond_0

    .line 158
    check-cast p1, Lorg/apache/james/mime4j/field/address/parser/ASTdomain;

    invoke-direct {p0, p1, v2}, Lorg/apache/james/mime4j/field/address/Builder;->buildString(Lorg/apache/james/mime4j/field/address/parser/SimpleNode;Z)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 160
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 162
    :cond_1
    new-instance p1, Lorg/apache/james/mime4j/field/address/DomainList;

    invoke-direct {p1, v0, v2}, Lorg/apache/james/mime4j/field/address/DomainList;-><init>(Ljava/util/List;Z)V

    return-object p1
.end method

.method private buildString(Lorg/apache/james/mime4j/field/address/parser/SimpleNode;Z)Ljava/lang/String;
    .locals 3

    .line 177
    iget-object v0, p1, Lorg/apache/james/mime4j/field/address/parser/SimpleNode;->firstToken:Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 178
    iget-object p1, p1, Lorg/apache/james/mime4j/field/address/parser/SimpleNode;->lastToken:Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 179
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :cond_0
    :goto_0
    if-eq v0, p1, :cond_1

    .line 182
    iget-object v2, v0, Lorg/apache/james/mime4j/field/address/parser/Token;->image:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    iget-object v0, v0, Lorg/apache/james/mime4j/field/address/parser/Token;->next:Lorg/apache/james/mime4j/field/address/parser/Token;

    if-nez p2, :cond_0

    .line 185
    iget-object v2, v0, Lorg/apache/james/mime4j/field/address/parser/Token;->specialToken:Lorg/apache/james/mime4j/field/address/parser/Token;

    invoke-direct {p0, v1, v2}, Lorg/apache/james/mime4j/field/address/Builder;->addSpecials(Ljava/lang/StringBuilder;Lorg/apache/james/mime4j/field/address/parser/Token;)V

    goto :goto_0

    .line 187
    :cond_1
    iget-object p1, p1, Lorg/apache/james/mime4j/field/address/parser/Token;->image:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static getInstance()Lorg/apache/james/mime4j/field/address/Builder;
    .locals 1

    .line 51
    sget-object v0, Lorg/apache/james/mime4j/field/address/Builder;->singleton:Lorg/apache/james/mime4j/field/address/Builder;

    return-object v0
.end method


# virtual methods
.method public buildAddress(Lorg/apache/james/mime4j/field/address/parser/ASTaddress;)Lorg/apache/james/mime4j/field/address/Address;
    .locals 2

    .line 65
    new-instance v0, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;

    invoke-direct {v0, p1}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;-><init>(Lorg/apache/james/mime4j/field/address/parser/SimpleNode;)V

    .line 66
    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->next()Lorg/apache/james/mime4j/field/address/parser/Node;

    move-result-object p1

    .line 67
    instance-of v1, p1, Lorg/apache/james/mime4j/field/address/parser/ASTaddr_spec;

    if-eqz v1, :cond_0

    .line 68
    check-cast p1, Lorg/apache/james/mime4j/field/address/parser/ASTaddr_spec;

    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/field/address/Builder;->buildAddrSpec(Lorg/apache/james/mime4j/field/address/parser/ASTaddr_spec;)Lorg/apache/james/mime4j/field/address/Mailbox;

    move-result-object p1

    return-object p1

    .line 69
    :cond_0
    instance-of v1, p1, Lorg/apache/james/mime4j/field/address/parser/ASTangle_addr;

    if-eqz v1, :cond_1

    .line 70
    check-cast p1, Lorg/apache/james/mime4j/field/address/parser/ASTangle_addr;

    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/field/address/Builder;->buildAngleAddr(Lorg/apache/james/mime4j/field/address/parser/ASTangle_addr;)Lorg/apache/james/mime4j/field/address/Mailbox;

    move-result-object p1

    return-object p1

    .line 71
    :cond_1
    instance-of v1, p1, Lorg/apache/james/mime4j/field/address/parser/ASTphrase;

    if-eqz v1, :cond_4

    .line 72
    check-cast p1, Lorg/apache/james/mime4j/field/address/parser/ASTphrase;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lorg/apache/james/mime4j/field/address/Builder;->buildString(Lorg/apache/james/mime4j/field/address/parser/SimpleNode;Z)Ljava/lang/String;

    move-result-object p1

    .line 73
    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->next()Lorg/apache/james/mime4j/field/address/parser/Node;

    move-result-object v0

    .line 74
    instance-of v1, v0, Lorg/apache/james/mime4j/field/address/parser/ASTgroup_body;

    if-eqz v1, :cond_2

    .line 75
    new-instance v1, Lorg/apache/james/mime4j/field/address/Group;

    check-cast v0, Lorg/apache/james/mime4j/field/address/parser/ASTgroup_body;

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/Builder;->buildGroupBody(Lorg/apache/james/mime4j/field/address/parser/ASTgroup_body;)Lorg/apache/james/mime4j/field/address/MailboxList;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Lorg/apache/james/mime4j/field/address/Group;-><init>(Ljava/lang/String;Lorg/apache/james/mime4j/field/address/MailboxList;)V

    return-object v1

    .line 76
    :cond_2
    instance-of v1, v0, Lorg/apache/james/mime4j/field/address/parser/ASTangle_addr;

    if-eqz v1, :cond_3

    .line 77
    invoke-static {p1}, Lorg/apache/james/mime4j/codec/DecoderUtil;->decodeEncodedWords(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 78
    new-instance v1, Lorg/apache/james/mime4j/field/address/Mailbox;

    check-cast v0, Lorg/apache/james/mime4j/field/address/parser/ASTangle_addr;

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/Builder;->buildAngleAddr(Lorg/apache/james/mime4j/field/address/parser/ASTangle_addr;)Lorg/apache/james/mime4j/field/address/Mailbox;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Lorg/apache/james/mime4j/field/address/Mailbox;-><init>(Ljava/lang/String;Lorg/apache/james/mime4j/field/address/Mailbox;)V

    return-object v1

    .line 80
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 83
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public buildAddressList(Lorg/apache/james/mime4j/field/address/parser/ASTaddress_list;)Lorg/apache/james/mime4j/field/address/AddressList;
    .locals 3

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 56
    :goto_0
    invoke-virtual {p1}, Lorg/apache/james/mime4j/field/address/parser/ASTaddress_list;->jjtGetNumChildren()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 57
    invoke-virtual {p1, v1}, Lorg/apache/james/mime4j/field/address/parser/ASTaddress_list;->jjtGetChild(I)Lorg/apache/james/mime4j/field/address/parser/Node;

    move-result-object v2

    check-cast v2, Lorg/apache/james/mime4j/field/address/parser/ASTaddress;

    .line 58
    invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/address/Builder;->buildAddress(Lorg/apache/james/mime4j/field/address/parser/ASTaddress;)Lorg/apache/james/mime4j/field/address/Address;

    move-result-object v2

    .line 59
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 61
    :cond_0
    new-instance p1, Lorg/apache/james/mime4j/field/address/AddressList;

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1}, Lorg/apache/james/mime4j/field/address/AddressList;-><init>(Ljava/util/List;Z)V

    return-object p1
.end method

.method public buildMailbox(Lorg/apache/james/mime4j/field/address/parser/ASTmailbox;)Lorg/apache/james/mime4j/field/address/Mailbox;
    .locals 1

    .line 101
    new-instance v0, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;

    invoke-direct {v0, p1}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;-><init>(Lorg/apache/james/mime4j/field/address/parser/SimpleNode;)V

    .line 102
    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->next()Lorg/apache/james/mime4j/field/address/parser/Node;

    move-result-object p1

    .line 103
    instance-of v0, p1, Lorg/apache/james/mime4j/field/address/parser/ASTaddr_spec;

    if-eqz v0, :cond_0

    .line 104
    check-cast p1, Lorg/apache/james/mime4j/field/address/parser/ASTaddr_spec;

    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/field/address/Builder;->buildAddrSpec(Lorg/apache/james/mime4j/field/address/parser/ASTaddr_spec;)Lorg/apache/james/mime4j/field/address/Mailbox;

    move-result-object p1

    return-object p1

    .line 105
    :cond_0
    instance-of v0, p1, Lorg/apache/james/mime4j/field/address/parser/ASTangle_addr;

    if-eqz v0, :cond_1

    .line 106
    check-cast p1, Lorg/apache/james/mime4j/field/address/parser/ASTangle_addr;

    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/field/address/Builder;->buildAngleAddr(Lorg/apache/james/mime4j/field/address/parser/ASTangle_addr;)Lorg/apache/james/mime4j/field/address/Mailbox;

    move-result-object p1

    return-object p1

    .line 107
    :cond_1
    instance-of v0, p1, Lorg/apache/james/mime4j/field/address/parser/ASTname_addr;

    if-eqz v0, :cond_2

    .line 108
    check-cast p1, Lorg/apache/james/mime4j/field/address/parser/ASTname_addr;

    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/field/address/Builder;->buildNameAddr(Lorg/apache/james/mime4j/field/address/parser/ASTname_addr;)Lorg/apache/james/mime4j/field/address/Mailbox;

    move-result-object p1

    return-object p1

    .line 110
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method
