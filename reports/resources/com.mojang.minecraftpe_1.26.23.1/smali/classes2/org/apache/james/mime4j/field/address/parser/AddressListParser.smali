.class public Lorg/apache/james/mime4j/field/address/parser/AddressListParser;
.super Ljava/lang/Object;
.source "AddressListParser.java"

# interfaces
.implements Lorg/apache/james/mime4j/field/address/parser/AddressListParserTreeConstants;
.implements Lorg/apache/james/mime4j/field/address/parser/AddressListParserConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;,
        Lorg/apache/james/mime4j/field/address/parser/AddressListParser$LookaheadSuccess;
    }
.end annotation


# static fields
.field private static jj_la1_0:[I

.field private static jj_la1_1:[I


# instance fields
.field private final jj_2_rtns:[Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

.field private jj_endpos:I

.field private jj_expentries:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "[I>;"
        }
    .end annotation
.end field

.field private jj_expentry:[I

.field private jj_gc:I

.field private jj_gen:I

.field jj_input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

.field private jj_kind:I

.field private jj_la:I

.field private final jj_la1:[I

.field private jj_lastpos:Lorg/apache/james/mime4j/field/address/parser/Token;

.field private jj_lasttokens:[I

.field private final jj_ls:Lorg/apache/james/mime4j/field/address/parser/AddressListParser$LookaheadSuccess;

.field public jj_nt:Lorg/apache/james/mime4j/field/address/parser/Token;

.field private jj_ntk:I

.field private jj_rescan:Z

.field private jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

.field private jj_semLA:Z

.field protected jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

.field public lookingAhead:Z

.field public token:Lorg/apache/james/mime4j/field/address/parser/Token;

.field public token_source:Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 737
    invoke-static {}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1_0()V

    .line 738
    invoke-static {}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1_1()V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    const/4 v0, 0x0

    .line 751
    invoke-direct {p0, p1, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 5

    .line 753
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-direct {v0}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    const/4 v0, 0x0

    .line 730
    iput-boolean v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->lookingAhead:Z

    const/16 v1, 0x16

    .line 733
    new-array v2, v1, [I

    iput-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/4 v2, 0x2

    .line 746
    new-array v2, v2, [Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    iput-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_2_rtns:[Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    .line 747
    iput-boolean v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_rescan:Z

    .line 748
    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gc:I

    .line 842
    new-instance v2, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$LookaheadSuccess;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$LookaheadSuccess;-><init>(Lorg/apache/james/mime4j/field/address/parser/AddressListParser$1;)V

    iput-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ls:Lorg/apache/james/mime4j/field/address/parser/AddressListParser$LookaheadSuccess;

    .line 888
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentries:Ljava/util/Vector;

    const/4 v2, -0x1

    .line 890
    iput v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_kind:I

    const/16 v3, 0x64

    .line 891
    new-array v3, v3, [I

    iput-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_lasttokens:[I

    .line 754
    :try_start_0
    new-instance v3, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    const/4 v4, 0x1

    invoke-direct {v3, p1, p2, v4, v4}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;II)V

    iput-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    .line 755
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance p1, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;

    iget-object p2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    invoke-direct {p1, p2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;-><init>(Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;)V

    iput-object p1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token_source:Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;

    .line 756
    new-instance p1, Lorg/apache/james/mime4j/field/address/parser/Token;

    invoke-direct {p1}, Lorg/apache/james/mime4j/field/address/parser/Token;-><init>()V

    iput-object p1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 757
    iput v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    .line 758
    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    move p1, v0

    :goto_0
    if-ge p1, v1, :cond_0

    .line 759
    iget-object p2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    aput v2, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 760
    :cond_0
    :goto_1
    iget-object p1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_2_rtns:[Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    array-length p2, p1

    if-ge v0, p2, :cond_1

    new-instance p2, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    invoke-direct {p2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;-><init>()V

    aput-object p2, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void

    :catch_0
    move-exception p1

    .line 754
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 5

    .line 777
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-direct {v0}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    const/4 v0, 0x0

    .line 730
    iput-boolean v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->lookingAhead:Z

    const/16 v1, 0x16

    .line 733
    new-array v2, v1, [I

    iput-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/4 v2, 0x2

    .line 746
    new-array v2, v2, [Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    iput-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_2_rtns:[Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    .line 747
    iput-boolean v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_rescan:Z

    .line 748
    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gc:I

    .line 842
    new-instance v2, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$LookaheadSuccess;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$LookaheadSuccess;-><init>(Lorg/apache/james/mime4j/field/address/parser/AddressListParser$1;)V

    iput-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ls:Lorg/apache/james/mime4j/field/address/parser/AddressListParser$LookaheadSuccess;

    .line 888
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentries:Ljava/util/Vector;

    const/4 v2, -0x1

    .line 890
    iput v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_kind:I

    const/16 v3, 0x64

    .line 891
    new-array v3, v3, [I

    iput-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_lasttokens:[I

    .line 778
    new-instance v3, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    const/4 v4, 0x1

    invoke-direct {v3, p1, v4, v4}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;-><init>(Ljava/io/Reader;II)V

    iput-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    .line 779
    new-instance p1, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;

    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    invoke-direct {p1, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;-><init>(Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;)V

    iput-object p1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token_source:Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;

    .line 780
    new-instance p1, Lorg/apache/james/mime4j/field/address/parser/Token;

    invoke-direct {p1}, Lorg/apache/james/mime4j/field/address/parser/Token;-><init>()V

    iput-object p1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 781
    iput v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    .line 782
    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    move p1, v0

    :goto_0
    if-ge p1, v1, :cond_0

    .line 783
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    aput v2, v3, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 784
    :cond_0
    :goto_1
    iget-object p1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_2_rtns:[Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    array-length v1, p1

    if-ge v0, v1, :cond_1

    new-instance v1, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    invoke-direct {v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;-><init>()V

    aput-object v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public constructor <init>(Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;)V
    .locals 4

    .line 798
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-direct {v0}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    const/4 v0, 0x0

    .line 730
    iput-boolean v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->lookingAhead:Z

    const/16 v1, 0x16

    .line 733
    new-array v2, v1, [I

    iput-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/4 v2, 0x2

    .line 746
    new-array v2, v2, [Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    iput-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_2_rtns:[Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    .line 747
    iput-boolean v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_rescan:Z

    .line 748
    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gc:I

    .line 842
    new-instance v2, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$LookaheadSuccess;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$LookaheadSuccess;-><init>(Lorg/apache/james/mime4j/field/address/parser/AddressListParser$1;)V

    iput-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ls:Lorg/apache/james/mime4j/field/address/parser/AddressListParser$LookaheadSuccess;

    .line 888
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentries:Ljava/util/Vector;

    const/4 v2, -0x1

    .line 890
    iput v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_kind:I

    const/16 v3, 0x64

    .line 891
    new-array v3, v3, [I

    iput-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_lasttokens:[I

    .line 799
    iput-object p1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token_source:Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;

    .line 800
    new-instance p1, Lorg/apache/james/mime4j/field/address/parser/Token;

    invoke-direct {p1}, Lorg/apache/james/mime4j/field/address/parser/Token;-><init>()V

    iput-object p1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 801
    iput v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    .line 802
    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    move p1, v0

    :goto_0
    if-ge p1, v1, :cond_0

    .line 803
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    aput v2, v3, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 804
    :cond_0
    :goto_1
    iget-object p1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_2_rtns:[Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    array-length v1, p1

    if-ge v0, v1, :cond_1

    new-instance v1, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    invoke-direct {v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;-><init>()V

    aput-object v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private final jj_2_1(I)Z
    .locals 3

    .line 640
    iput p1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la:I

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;

    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_lastpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 641
    :try_start_0
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_3_1()Z

    move-result v2

    :try_end_0
    .catch Lorg/apache/james/mime4j/field/address/parser/AddressListParser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/2addr v0, v2

    .line 643
    invoke-direct {p0, v1, p1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_save(II)V

    return v0

    :catchall_0
    move-exception v0

    invoke-direct {p0, v1, p1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_save(II)V

    throw v0

    :catch_0
    invoke-direct {p0, v1, p1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_save(II)V

    return v0
.end method

.method private final jj_2_2(I)Z
    .locals 2

    .line 647
    iput p1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la:I

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;

    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_lastpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    const/4 v0, 0x1

    .line 648
    :try_start_0
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_3_2()Z

    move-result v1

    :try_end_0
    .catch Lorg/apache/james/mime4j/field/address/parser/AddressListParser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/2addr v1, v0

    .line 650
    invoke-direct {p0, v0, p1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_save(II)V

    return v1

    :catchall_0
    move-exception v1

    invoke-direct {p0, v0, p1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_save(II)V

    throw v1

    :catch_0
    invoke-direct {p0, v0, p1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_save(II)V

    return v0
.end method

.method private final jj_3R_10()Z
    .locals 2

    .line 665
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 666
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_3R_12()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 667
    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    const/16 v0, 0x12

    .line 668
    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final jj_3R_11()Z
    .locals 2

    .line 694
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    const/16 v1, 0x9

    .line 695
    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 696
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    const/16 v1, 0xe

    .line 697
    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 698
    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    const/16 v0, 0x1f

    .line 699
    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private final jj_3R_12()Z
    .locals 2

    const/16 v0, 0xe

    .line 654
    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 657
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 658
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_3R_13()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    const/4 v0, 0x0

    return v0
.end method

.method private final jj_3R_13()Z
    .locals 2

    .line 706
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    const/16 v1, 0x9

    .line 707
    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    :cond_0
    const/16 v0, 0xe

    .line 708
    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private final jj_3R_8()Z
    .locals 2

    .line 713
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_3R_9()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x8

    .line 714
    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 715
    :cond_1
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_3R_10()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private final jj_3R_9()Z
    .locals 2

    .line 680
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    const/16 v1, 0xe

    .line 681
    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 682
    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    const/16 v0, 0x1f

    .line 683
    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 686
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 687
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_3R_11()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    const/4 v0, 0x0

    return v0
.end method

.method private final jj_3_1()Z
    .locals 1

    .line 720
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_3R_8()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final jj_3_2()Z
    .locals 1

    .line 674
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_3R_8()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private jj_add_error_token(II)V
    .locals 7

    const/16 v0, 0x64

    if-lt p2, v0, :cond_0

    return-void

    .line 896
    :cond_0
    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_endpos:I

    add-int/lit8 v1, v0, 0x1

    if-ne p2, v1, :cond_1

    .line 897
    iget-object p2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_lasttokens:[I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_endpos:I

    aput p1, p2, v0

    goto :goto_3

    :cond_1
    if-eqz v0, :cond_8

    .line 899
    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentry:[I

    const/4 v0, 0x0

    move v1, v0

    .line 900
    :goto_0
    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_endpos:I

    if-ge v1, v2, :cond_2

    .line 901
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentry:[I

    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_lasttokens:[I

    aget v3, v3, v1

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 904
    :cond_2
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentries:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    move v2, v0

    :cond_3
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_6

    .line 905
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    check-cast v3, [I

    .line 906
    array-length v5, v3

    iget-object v6, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentry:[I

    array-length v6, v6

    if-ne v5, v6, :cond_3

    move v2, v0

    .line 908
    :goto_1
    iget-object v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentry:[I

    array-length v6, v5

    if-ge v2, v6, :cond_5

    .line 909
    aget v6, v3, v2

    aget v5, v5, v2

    if-eq v6, v5, :cond_4

    move v2, v0

    goto :goto_2

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    move v2, v4

    :goto_2
    if-eqz v2, :cond_3

    :cond_6
    if-nez v2, :cond_7

    .line 917
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentries:Ljava/util/Vector;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentry:[I

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_7
    if-eqz p2, :cond_8

    .line 918
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_lasttokens:[I

    iput p2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_endpos:I

    sub-int/2addr p2, v4

    aput p1, v0, p2

    :cond_8
    :goto_3
    return-void
.end method

.method private final jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/address/parser/ParseException;
        }
    .end annotation

    .line 819
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;

    iget-object v1, v0, Lorg/apache/james/mime4j/field/address/parser/Token;->next:Lorg/apache/james/mime4j/field/address/parser/Token;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;

    iget-object v1, v1, Lorg/apache/james/mime4j/field/address/parser/Token;->next:Lorg/apache/james/mime4j/field/address/parser/Token;

    iput-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;

    goto :goto_0

    .line 820
    :cond_0
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;

    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token_source:Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->getNextToken()Lorg/apache/james/mime4j/field/address/parser/Token;

    move-result-object v2

    iput-object v2, v1, Lorg/apache/james/mime4j/field/address/parser/Token;->next:Lorg/apache/james/mime4j/field/address/parser/Token;

    iput-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;

    :goto_0
    const/4 v1, -0x1

    .line 821
    iput v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    .line 822
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;

    iget v1, v1, Lorg/apache/james/mime4j/field/address/parser/Token;->kind:I

    if-ne v1, p1, :cond_4

    .line 823
    iget p1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    .line 824
    iget p1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gc:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gc:I

    const/16 v0, 0x64

    if-le p1, v0, :cond_3

    const/4 p1, 0x0

    .line 825
    iput p1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gc:I

    .line 826
    :goto_1
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_2_rtns:[Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    array-length v1, v0

    if-ge p1, v1, :cond_3

    .line 827
    aget-object v0, v0, p1

    :goto_2
    if-eqz v0, :cond_2

    .line 829
    iget v1, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;->gen:I

    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    if-ge v1, v2, :cond_1

    const/4 v1, 0x0

    iput-object v1, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;->first:Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 830
    :cond_1
    iget-object v0, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;->next:Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    goto :goto_2

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 834
    :cond_3
    iget-object p1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;

    return-object p1

    .line 836
    :cond_4
    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 837
    iput p1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_kind:I

    .line 838
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->generateParseException()Lorg/apache/james/mime4j/field/address/parser/ParseException;

    move-result-object p1

    throw p1
.end method

.method private static jj_la1_0()V
    .locals 1

    const/16 v0, 0x16

    .line 741
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1_0:[I

    return-void

    :array_0
    .array-data 4
        0x2
        -0x7fffbfc0
        0x8
        -0x7fffbfc0
        0x50
        -0x7fffbfc0
        -0x7fffbfc0
        -0x7fffbfc0
        0x8
        -0x7fffbfc0
        0x100
        0x108
        0x8
        -0x7fffc000
        -0x7fffc000
        -0x7fffc000
        -0x7fffbe00
        0x200
        -0x7fffc000
        0x4200
        0x200
        0x44000
    .end array-data
.end method

.method private static jj_la1_1()V
    .locals 1

    const/16 v0, 0x16

    .line 744
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1_1:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private final jj_ntk()I
    .locals 2

    .line 882
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;

    iget-object v0, v0, Lorg/apache/james/mime4j/field/address/parser/Token;->next:Lorg/apache/james/mime4j/field/address/parser/Token;

    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_nt:Lorg/apache/james/mime4j/field/address/parser/Token;

    if-nez v0, :cond_0

    .line 883
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token_source:Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->getNextToken()Lorg/apache/james/mime4j/field/address/parser/Token;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/james/mime4j/field/address/parser/Token;->next:Lorg/apache/james/mime4j/field/address/parser/Token;

    iget v0, v1, Lorg/apache/james/mime4j/field/address/parser/Token;->kind:I

    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    return v0

    .line 885
    :cond_0
    iget v0, v0, Lorg/apache/james/mime4j/field/address/parser/Token;->kind:I

    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    return v0
.end method

.method private final jj_rescan_token()V
    .locals 6

    const/4 v0, 0x1

    .line 968
    iput-boolean v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_rescan:Z

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x2

    if-ge v2, v3, :cond_4

    .line 971
    :try_start_0
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_2_rtns:[Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    aget-object v3, v3, v2

    .line 973
    :cond_0
    iget v4, v3, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;->gen:I

    iget v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    if-le v4, v5, :cond_3

    .line 974
    iget v4, v3, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;->arg:I

    iput v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la:I

    iget-object v4, v3, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;->first:Lorg/apache/james/mime4j/field/address/parser/Token;

    iput-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    iput-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_lastpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    if-eqz v2, :cond_2

    if-eq v2, v0, :cond_1

    goto :goto_1

    .line 977
    :cond_1
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_3_2()Z

    goto :goto_1

    .line 976
    :cond_2
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_3_1()Z

    .line 980
    :cond_3
    :goto_1
    iget-object v3, v3, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;->next:Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    :try_end_0
    .catch Lorg/apache/james/mime4j/field/address/parser/AddressListParser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v3, :cond_0

    :catch_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 984
    :cond_4
    iput-boolean v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_rescan:Z

    return-void
.end method

.method private final jj_save(II)V
    .locals 2

    .line 988
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_2_rtns:[Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    aget-object p1, v0, p1

    .line 989
    :goto_0
    iget v0, p1, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;->gen:I

    iget v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    if-le v0, v1, :cond_1

    .line 990
    iget-object v0, p1, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;->next:Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    invoke-direct {v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;-><init>()V

    iput-object v0, p1, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;->next:Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    move-object p1, v0

    goto :goto_1

    .line 991
    :cond_0
    iget-object p1, p1, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;->next:Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    goto :goto_0

    .line 993
    :cond_1
    :goto_1
    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    add-int/2addr v0, p2

    iget v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la:I

    sub-int/2addr v0, v1

    iput v0, p1, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;->gen:I

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;

    iput-object v0, p1, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;->first:Lorg/apache/james/mime4j/field/address/parser/Token;

    iput p2, p1, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;->arg:I

    return-void
.end method

.method private final jj_scan_token(I)Z
    .locals 5

    .line 844
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_lastpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    .line 845
    iget v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la:I

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la:I

    .line 846
    iget-object v0, v0, Lorg/apache/james/mime4j/field/address/parser/Token;->next:Lorg/apache/james/mime4j/field/address/parser/Token;

    if-nez v0, :cond_0

    .line 847
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token_source:Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->getNextToken()Lorg/apache/james/mime4j/field/address/parser/Token;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/james/mime4j/field/address/parser/Token;->next:Lorg/apache/james/mime4j/field/address/parser/Token;

    iput-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    iput-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_lastpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    goto :goto_0

    .line 849
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    iget-object v0, v0, Lorg/apache/james/mime4j/field/address/parser/Token;->next:Lorg/apache/james/mime4j/field/address/parser/Token;

    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_lastpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    goto :goto_0

    .line 852
    :cond_1
    iget-object v0, v0, Lorg/apache/james/mime4j/field/address/parser/Token;->next:Lorg/apache/james/mime4j/field/address/parser/Token;

    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 854
    :goto_0
    iget-boolean v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_rescan:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 855
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;

    move v3, v1

    :goto_1
    if-eqz v0, :cond_2

    .line 856
    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    if-eq v0, v4, :cond_2

    add-int/lit8 v3, v3, 0x1

    iget-object v0, v0, Lorg/apache/james/mime4j/field/address/parser/Token;->next:Lorg/apache/james/mime4j/field/address/parser/Token;

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    .line 857
    invoke-direct {p0, p1, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_add_error_token(II)V

    .line 859
    :cond_3
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    iget v0, v0, Lorg/apache/james/mime4j/field/address/parser/Token;->kind:I

    if-eq v0, p1, :cond_4

    return v2

    .line 860
    :cond_4
    iget p1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la:I

    if-nez p1, :cond_6

    iget-object p1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_lastpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    if-eq p1, v0, :cond_5

    goto :goto_2

    :cond_5
    iget-object p1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ls:Lorg/apache/james/mime4j/field/address/parser/AddressListParser$LookaheadSuccess;

    throw p1

    :cond_6
    :goto_2
    return v1
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/address/parser/ParseException;
        }
    .end annotation

    .line 26
    :goto_0
    :try_start_0
    new-instance p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;

    sget-object v0, Ljava/lang/System;->in:Ljava/io/InputStream;

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;-><init>(Ljava/io/InputStream;)V

    .line 27
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->parseLine()V

    .line 28
    iget-object p0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->rootNode()Lorg/apache/james/mime4j/field/address/parser/Node;

    move-result-object p0

    check-cast p0, Lorg/apache/james/mime4j/field/address/parser/SimpleNode;

    const-string v0, "> "

    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/SimpleNode;->dump(Ljava/lang/String;)V

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 30
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method


# virtual methods
.method public ReInit(Ljava/io/InputStream;)V
    .locals 1

    const/4 v0, 0x0

    .line 764
    invoke-virtual {p0, p1, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->ReInit(Ljava/io/InputStream;Ljava/lang/String;)V

    return-void
.end method

.method public ReInit(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 2

    .line 767
    :try_start_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1, v1}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->ReInit(Ljava/io/InputStream;Ljava/lang/String;II)V

    .line 768
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token_source:Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;

    iget-object p2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    invoke-virtual {p1, p2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->ReInit(Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;)V

    .line 769
    new-instance p1, Lorg/apache/james/mime4j/field/address/parser/Token;

    invoke-direct {p1}, Lorg/apache/james/mime4j/field/address/parser/Token;-><init>()V

    iput-object p1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;

    const/4 p1, -0x1

    .line 770
    iput p1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    .line 771
    iget-object p2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {p2}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->reset()V

    const/4 p2, 0x0

    .line 772
    iput p2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    move v0, p2

    :goto_0
    const/16 v1, 0x16

    if-ge v0, v1, :cond_0

    .line 773
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    aput p1, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 774
    :cond_0
    :goto_1
    iget-object p1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_2_rtns:[Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    array-length v0, p1

    if-ge p2, v0, :cond_1

    new-instance v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    invoke-direct {v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;-><init>()V

    aput-object v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_1
    return-void

    :catch_0
    move-exception p1

    .line 767
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public ReInit(Ljava/io/Reader;)V
    .locals 3

    .line 788
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, v1}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->ReInit(Ljava/io/Reader;II)V

    .line 789
    iget-object p1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token_source:Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    invoke-virtual {p1, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->ReInit(Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;)V

    .line 790
    new-instance p1, Lorg/apache/james/mime4j/field/address/parser/Token;

    invoke-direct {p1}, Lorg/apache/james/mime4j/field/address/parser/Token;-><init>()V

    iput-object p1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;

    const/4 p1, -0x1

    .line 791
    iput p1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    .line 792
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->reset()V

    const/4 v0, 0x0

    .line 793
    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    move v1, v0

    :goto_0
    const/16 v2, 0x16

    if-ge v1, v2, :cond_0

    .line 794
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    aput p1, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 795
    :cond_0
    :goto_1
    iget-object p1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_2_rtns:[Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    array-length v1, p1

    if-ge v0, v1, :cond_1

    new-instance v1, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    invoke-direct {v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;-><init>()V

    aput-object v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public ReInit(Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;)V
    .locals 3

    .line 808
    iput-object p1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token_source:Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;

    .line 809
    new-instance p1, Lorg/apache/james/mime4j/field/address/parser/Token;

    invoke-direct {p1}, Lorg/apache/james/mime4j/field/address/parser/Token;-><init>()V

    iput-object p1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;

    const/4 p1, -0x1

    .line 810
    iput p1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    .line 811
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->reset()V

    const/4 v0, 0x0

    .line 812
    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    move v1, v0

    :goto_0
    const/16 v2, 0x16

    if-ge v1, v2, :cond_0

    .line 813
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    aput p1, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 814
    :cond_0
    :goto_1
    iget-object p1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_2_rtns:[Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    array-length v1, p1

    if-ge v0, v1, :cond_1

    new-instance v1, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    invoke-direct {v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;-><init>()V

    aput-object v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final addr_spec()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/address/parser/ParseException;
        }
    .end annotation

    .line 497
    new-instance v0, Lorg/apache/james/mime4j/field/address/parser/ASTaddr_spec;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lorg/apache/james/mime4j/field/address/parser/ASTaddr_spec;-><init>(I)V

    .line 499
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v1, v0}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->openNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    .line 500
    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeOpenNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    const/4 v1, 0x1

    .line 502
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->local_part()V

    const/16 v2, 0x8

    .line 503
    invoke-direct {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 504
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->domain()V

    .line 521
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v2, v0, v1}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;Z)V

    .line 522
    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    return-void

    :catchall_0
    move-exception v2

    .line 507
    :try_start_1
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v0}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->clearNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/4 v3, 0x0

    .line 512
    :try_start_2
    instance-of v4, v2, Ljava/lang/RuntimeException;

    if-nez v4, :cond_1

    .line 515
    instance-of v4, v2, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    if-eqz v4, :cond_0

    .line 516
    check-cast v2, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    throw v2

    .line 518
    :cond_0
    check-cast v2, Ljava/lang/Error;

    throw v2

    .line 513
    :cond_1
    check-cast v2, Ljava/lang/RuntimeException;

    throw v2

    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v2

    goto :goto_0

    :catchall_2
    move-exception v2

    move v3, v1

    :goto_0
    if-eqz v3, :cond_2

    .line 521
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v0, v1}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;Z)V

    .line 522
    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    :cond_2
    throw v2
.end method

.method public final address()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/address/parser/ParseException;
        }
    .end annotation

    .line 162
    new-instance v0, Lorg/apache/james/mime4j/field/address/parser/ASTaddress;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/apache/james/mime4j/field/address/parser/ASTaddress;-><init>(I)V

    .line 164
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v1, v0}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->openNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    .line 165
    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeOpenNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    const v1, 0x7fffffff

    const/4 v2, 0x1

    .line 167
    :try_start_0
    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_2_1(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 168
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->addr_spec()V

    goto :goto_1

    .line 170
    :cond_0
    iget v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v1

    :cond_1
    const/4 v4, 0x6

    if-eq v1, v4, :cond_7

    const/16 v5, 0xe

    if-eq v1, v5, :cond_3

    const/16 v5, 0x1f

    if-ne v1, v5, :cond_2

    goto :goto_0

    .line 191
    :cond_2
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    iget v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    const/4 v5, 0x5

    aput v4, v1, v5

    .line 192
    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 193
    new-instance v1, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    invoke-direct {v1}, Lorg/apache/james/mime4j/field/address/parser/ParseException;-><init>()V

    throw v1

    .line 176
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->phrase()V

    .line 177
    iget v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v1, v3, :cond_4

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v1

    :cond_4
    const/4 v5, 0x4

    if-eq v1, v5, :cond_6

    if-ne v1, v4, :cond_5

    .line 182
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->angle_addr()V

    goto :goto_1

    .line 185
    :cond_5
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    iget v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v4, v1, v5

    .line 186
    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 187
    new-instance v1, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    invoke-direct {v1}, Lorg/apache/james/mime4j/field/address/parser/ParseException;-><init>()V

    throw v1

    .line 179
    :cond_6
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->group_body()V

    goto :goto_1

    .line 172
    :cond_7
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->angle_addr()V

    .line 212
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v1, v0, v2}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;Z)V

    .line 213
    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    return-void

    :catchall_0
    move-exception v1

    .line 198
    :try_start_1
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v0}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->clearNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/4 v3, 0x0

    .line 203
    :try_start_2
    instance-of v4, v1, Ljava/lang/RuntimeException;

    if-nez v4, :cond_9

    .line 206
    instance-of v4, v1, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    if-eqz v4, :cond_8

    .line 207
    check-cast v1, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    throw v1

    .line 209
    :cond_8
    check-cast v1, Ljava/lang/Error;

    throw v1

    .line 204
    :cond_9
    check-cast v1, Ljava/lang/RuntimeException;

    throw v1

    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v1

    goto :goto_2

    :catchall_2
    move-exception v1

    move v3, v2

    :goto_2
    if-eqz v3, :cond_a

    .line 212
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v0, v2}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;Z)V

    .line 213
    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    :cond_a
    throw v1
.end method

.method public final address_list()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/address/parser/ParseException;
        }
    .end annotation

    .line 101
    new-instance v0, Lorg/apache/james/mime4j/field/address/parser/ASTaddress_list;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/apache/james/mime4j/field/address/parser/ASTaddress_list;-><init>(I)V

    .line 103
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v2, v0}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->openNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    .line 104
    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeOpenNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    .line 106
    :try_start_0
    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v2

    :cond_0
    const/16 v4, 0x1f

    const/16 v5, 0xe

    const/4 v6, 0x6

    if-eq v2, v6, :cond_1

    if-eq v2, v5, :cond_1

    if-eq v2, v4, :cond_1

    .line 113
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    iget v7, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v7, v2, v1

    goto :goto_0

    .line 110
    :cond_1
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->address()V

    .line 118
    :goto_0
    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v2, v3, :cond_2

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v2

    :cond_2
    const/4 v7, 0x3

    if-eq v2, v7, :cond_3

    .line 123
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    const/4 v4, 0x2

    aput v3, v2, v4

    .line 154
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v2, v0, v1}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;Z)V

    .line 155
    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    return-void

    .line 126
    :cond_3
    :try_start_1
    invoke-direct {p0, v7}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 127
    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v2, v3, :cond_4

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v2

    :cond_4
    if-eq v2, v6, :cond_5

    if-eq v2, v5, :cond_5

    if-eq v2, v4, :cond_5

    .line 134
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    iget v8, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v8, v2, v7

    goto :goto_0

    .line 131
    :cond_5
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->address()V

    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 140
    :try_start_2
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v0}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->clearNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/4 v3, 0x0

    .line 145
    :try_start_3
    instance-of v4, v2, Ljava/lang/RuntimeException;

    if-nez v4, :cond_7

    .line 148
    instance-of v4, v2, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    if-eqz v4, :cond_6

    .line 149
    check-cast v2, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    throw v2

    .line 151
    :cond_6
    check-cast v2, Ljava/lang/Error;

    throw v2

    .line 146
    :cond_7
    check-cast v2, Ljava/lang/RuntimeException;

    throw v2

    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    goto :goto_1

    :catchall_2
    move-exception v2

    move v3, v1

    :goto_1
    if-eqz v3, :cond_8

    .line 154
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v0, v1}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;Z)V

    .line 155
    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    :cond_8
    throw v2
.end method

.method public final angle_addr()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/address/parser/ParseException;
        }
    .end annotation

    .line 360
    new-instance v0, Lorg/apache/james/mime4j/field/address/parser/ASTangle_addr;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lorg/apache/james/mime4j/field/address/parser/ASTangle_addr;-><init>(I)V

    .line 362
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v2, v0}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->openNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    .line 363
    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeOpenNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    const/4 v2, 0x1

    .line 365
    :try_start_0
    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 366
    iget v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v1

    :cond_0
    const/16 v3, 0x8

    if-eq v1, v3, :cond_1

    .line 371
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    const/16 v4, 0xa

    aput v3, v1, v4

    goto :goto_0

    .line 368
    :cond_1
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->route()V

    .line 374
    :goto_0
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->addr_spec()V

    const/4 v1, 0x7

    .line 375
    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 392
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v1, v0, v2}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;Z)V

    .line 393
    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    return-void

    :catchall_0
    move-exception v1

    .line 378
    :try_start_1
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v0}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->clearNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/4 v3, 0x0

    .line 383
    :try_start_2
    instance-of v4, v1, Ljava/lang/RuntimeException;

    if-nez v4, :cond_3

    .line 386
    instance-of v4, v1, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    if-eqz v4, :cond_2

    .line 387
    check-cast v1, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    throw v1

    .line 389
    :cond_2
    check-cast v1, Ljava/lang/Error;

    throw v1

    .line 384
    :cond_3
    check-cast v1, Ljava/lang/RuntimeException;

    throw v1

    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v1

    goto :goto_1

    :catchall_2
    move-exception v1

    move v3, v2

    :goto_1
    if-eqz v3, :cond_4

    .line 392
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v0, v2}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;Z)V

    .line 393
    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    :cond_4
    throw v1
.end method

.method public final disable_tracing()V
    .locals 0

    return-void
.end method

.method public final domain()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/address/parser/ParseException;
        }
    .end annotation

    .line 591
    new-instance v0, Lorg/apache/james/mime4j/field/address/parser/ASTdomain;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lorg/apache/james/mime4j/field/address/parser/ASTdomain;-><init>(I)V

    .line 593
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v1, v0}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->openNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    .line 594
    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeOpenNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    const/4 v1, 0x1

    .line 596
    :try_start_0
    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v2

    :cond_0
    const/16 v4, 0xe

    if-eq v2, v4, :cond_2

    const/16 v4, 0x12

    if-ne v2, v4, :cond_1

    .line 624
    invoke-direct {p0, v4}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    goto :goto_1

    .line 627
    :cond_1
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    iget v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    const/16 v5, 0x15

    aput v4, v2, v5

    .line 628
    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 629
    new-instance v2, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    invoke-direct {v2}, Lorg/apache/james/mime4j/field/address/parser/ParseException;-><init>()V

    throw v2

    .line 598
    :cond_2
    invoke-direct {p0, v4}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    move-result-object v2

    .line 601
    :goto_0
    iget v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v5, v3, :cond_3

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v5

    :cond_3
    const/16 v6, 0x9

    if-eq v5, v6, :cond_4

    if-eq v5, v4, :cond_4

    .line 607
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    const/16 v4, 0x13

    aput v3, v2, v4

    .line 633
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v2, v0, v1}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;Z)V

    .line 634
    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    return-void

    .line 610
    :cond_4
    :try_start_1
    iget v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v5, v3, :cond_5

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v5

    :cond_5
    if-eq v5, v6, :cond_6

    .line 615
    iget-object v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    iget v6, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    const/16 v7, 0x14

    aput v6, v5, v7

    goto :goto_2

    .line 612
    :cond_6
    invoke-direct {p0, v6}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    move-result-object v2

    .line 618
    :goto_2
    iget-object v5, v2, Lorg/apache/james/mime4j/field/address/parser/Token;->image:Ljava/lang/String;

    iget-object v2, v2, Lorg/apache/james/mime4j/field/address/parser/Token;->image:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v5, 0x2e

    if-ne v2, v5, :cond_7

    .line 620
    invoke-direct {p0, v4}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    move-result-object v2

    goto :goto_0

    .line 619
    :cond_7
    new-instance v2, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    const-string v3, "Atoms in domain names must be separated by \'.\'"

    invoke-direct {v2, v3}, Lorg/apache/james/mime4j/field/address/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v2

    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v2

    .line 633
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v0, v1}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;Z)V

    .line 634
    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    throw v2
.end method

.method public final enable_tracing()V
    .locals 0

    return-void
.end method

.method public generateParseException()Lorg/apache/james/mime4j/field/address/parser/ParseException;
    .locals 8

    .line 923
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentries:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    const/16 v0, 0x22

    .line 924
    new-array v1, v0, [Z

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    .line 926
    aput-boolean v2, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 928
    :cond_0
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_kind:I

    const/4 v4, 0x1

    if-ltz v3, :cond_1

    .line 929
    aput-boolean v4, v1, v3

    const/4 v3, -0x1

    .line 930
    iput v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_kind:I

    :cond_1
    move v3, v2

    :goto_1
    const/16 v5, 0x16

    if-ge v3, v5, :cond_5

    .line 933
    iget-object v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    aget v5, v5, v3

    iget v6, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    if-ne v5, v6, :cond_4

    move v5, v2

    :goto_2
    const/16 v6, 0x20

    if-ge v5, v6, :cond_4

    .line 935
    sget-object v6, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1_0:[I

    aget v6, v6, v3

    shl-int v7, v4, v5

    and-int/2addr v6, v7

    if-eqz v6, :cond_2

    .line 936
    aput-boolean v4, v1, v5

    .line 938
    :cond_2
    sget-object v6, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1_1:[I

    aget v6, v6, v3

    and-int/2addr v6, v7

    if-eqz v6, :cond_3

    add-int/lit8 v6, v5, 0x20

    .line 939
    aput-boolean v4, v1, v6

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    move v3, v2

    :goto_3
    if-ge v3, v0, :cond_7

    .line 945
    aget-boolean v5, v1, v3

    if-eqz v5, :cond_6

    .line 946
    new-array v5, v4, [I

    iput-object v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentry:[I

    .line 947
    aput v3, v5, v2

    .line 948
    iget-object v6, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentries:Ljava/util/Vector;

    invoke-virtual {v6, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 951
    :cond_7
    iput v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_endpos:I

    .line 952
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_rescan_token()V

    .line 953
    invoke-direct {p0, v2, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_add_error_token(II)V

    .line 954
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentries:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [[I

    .line 955
    :goto_4
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentries:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v2, v1, :cond_8

    .line 956
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentries:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    check-cast v1, [I

    aput-object v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 958
    :cond_8
    new-instance v1, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;

    sget-object v3, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->tokenImage:[Ljava/lang/String;

    invoke-direct {v1, v2, v0, v3}, Lorg/apache/james/mime4j/field/address/parser/ParseException;-><init>(Lorg/apache/james/mime4j/field/address/parser/Token;[[I[Ljava/lang/String;)V

    return-object v1
.end method

.method public final getNextToken()Lorg/apache/james/mime4j/field/address/parser/Token;
    .locals 2

    .line 865
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;

    iget-object v0, v0, Lorg/apache/james/mime4j/field/address/parser/Token;->next:Lorg/apache/james/mime4j/field/address/parser/Token;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;

    iget-object v0, v0, Lorg/apache/james/mime4j/field/address/parser/Token;->next:Lorg/apache/james/mime4j/field/address/parser/Token;

    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;

    goto :goto_0

    .line 866
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token_source:Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->getNextToken()Lorg/apache/james/mime4j/field/address/parser/Token;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/james/mime4j/field/address/parser/Token;->next:Lorg/apache/james/mime4j/field/address/parser/Token;

    iput-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;

    :goto_0
    const/4 v0, -0x1

    .line 867
    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    .line 868
    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    .line 869
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;

    return-object v0
.end method

.method public final getToken(I)Lorg/apache/james/mime4j/field/address/parser/Token;
    .locals 3

    .line 873
    iget-boolean v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->lookingAhead:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;

    :goto_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, p1, :cond_2

    .line 875
    iget-object v2, v0, Lorg/apache/james/mime4j/field/address/parser/Token;->next:Lorg/apache/james/mime4j/field/address/parser/Token;

    if-eqz v2, :cond_1

    iget-object v0, v0, Lorg/apache/james/mime4j/field/address/parser/Token;->next:Lorg/apache/james/mime4j/field/address/parser/Token;

    goto :goto_2

    .line 876
    :cond_1
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token_source:Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->getNextToken()Lorg/apache/james/mime4j/field/address/parser/Token;

    move-result-object v2

    iput-object v2, v0, Lorg/apache/james/mime4j/field/address/parser/Token;->next:Lorg/apache/james/mime4j/field/address/parser/Token;

    move-object v0, v2

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method public final group_body()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/address/parser/ParseException;
        }
    .end annotation

    .line 297
    new-instance v0, Lorg/apache/james/mime4j/field/address/parser/ASTgroup_body;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lorg/apache/james/mime4j/field/address/parser/ASTgroup_body;-><init>(I)V

    .line 299
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v2, v0}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->openNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    .line 300
    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeOpenNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    const/4 v2, 0x4

    const/4 v3, 0x1

    .line 302
    :try_start_0
    invoke-direct {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 303
    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_0

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v2

    :cond_0
    const/16 v5, 0x1f

    const/16 v6, 0xe

    const/4 v7, 0x6

    if-eq v2, v7, :cond_1

    if-eq v2, v6, :cond_1

    if-eq v2, v5, :cond_1

    .line 310
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    iget v8, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    const/4 v9, 0x7

    aput v8, v2, v9

    goto :goto_0

    .line 307
    :cond_1
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->mailbox()V

    .line 315
    :goto_0
    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v2, v4, :cond_2

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v2

    :cond_2
    const/4 v8, 0x3

    if-eq v2, v8, :cond_3

    .line 320
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    iget v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    const/16 v5, 0x8

    aput v4, v2, v5

    .line 335
    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 352
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v1, v0, v3}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;Z)V

    .line 353
    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    return-void

    .line 323
    :cond_3
    :try_start_1
    invoke-direct {p0, v8}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 324
    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v2, v4, :cond_4

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v2

    :cond_4
    if-eq v2, v7, :cond_5

    if-eq v2, v6, :cond_5

    if-eq v2, v5, :cond_5

    .line 331
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    iget v8, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    const/16 v9, 0x9

    aput v8, v2, v9

    goto :goto_0

    .line 328
    :cond_5
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->mailbox()V

    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 338
    :try_start_2
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v2, v0}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->clearNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/4 v2, 0x0

    .line 343
    :try_start_3
    instance-of v4, v1, Ljava/lang/RuntimeException;

    if-nez v4, :cond_7

    .line 346
    instance-of v4, v1, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    if-eqz v4, :cond_6

    .line 347
    check-cast v1, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    throw v1

    .line 349
    :cond_6
    check-cast v1, Ljava/lang/Error;

    throw v1

    .line 344
    :cond_7
    check-cast v1, Ljava/lang/RuntimeException;

    throw v1

    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    goto :goto_1

    :catchall_2
    move-exception v1

    move v2, v3

    :goto_1
    if-eqz v2, :cond_8

    .line 352
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v2, v0, v3}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;Z)V

    .line 353
    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    :cond_8
    throw v1
.end method

.method jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V
    .locals 1

    .line 68
    check-cast p1, Lorg/apache/james/mime4j/field/address/parser/SimpleNode;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->getToken(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    move-result-object v0

    iput-object v0, p1, Lorg/apache/james/mime4j/field/address/parser/SimpleNode;->lastToken:Lorg/apache/james/mime4j/field/address/parser/Token;

    return-void
.end method

.method jjtreeOpenNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V
    .locals 1

    .line 64
    check-cast p1, Lorg/apache/james/mime4j/field/address/parser/SimpleNode;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->getToken(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    move-result-object v0

    iput-object v0, p1, Lorg/apache/james/mime4j/field/address/parser/SimpleNode;->firstToken:Lorg/apache/james/mime4j/field/address/parser/Token;

    return-void
.end method

.method public final local_part()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/address/parser/ParseException;
        }
    .end annotation

    .line 529
    new-instance v0, Lorg/apache/james/mime4j/field/address/parser/ASTlocal_part;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lorg/apache/james/mime4j/field/address/parser/ASTlocal_part;-><init>(I)V

    .line 531
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v1, v0}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->openNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    .line 532
    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeOpenNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    const/4 v1, 0x1

    .line 534
    :try_start_0
    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v2

    :cond_0
    const/16 v4, 0xe

    const/16 v5, 0x1f

    if-eq v2, v4, :cond_2

    if-ne v2, v5, :cond_1

    .line 539
    invoke-direct {p0, v5}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    move-result-object v2

    goto :goto_0

    .line 542
    :cond_1
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    iget v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    const/16 v5, 0xf

    aput v4, v2, v5

    .line 543
    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 544
    new-instance v2, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    invoke-direct {v2}, Lorg/apache/james/mime4j/field/address/parser/ParseException;-><init>()V

    throw v2

    .line 536
    :cond_2
    invoke-direct {p0, v4}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    move-result-object v2

    .line 548
    :goto_0
    iget v6, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v6, v3, :cond_3

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v6

    :cond_3
    const/16 v7, 0x9

    if-eq v6, v7, :cond_4

    if-eq v6, v4, :cond_4

    if-eq v6, v5, :cond_4

    .line 555
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    const/16 v4, 0x10

    aput v3, v2, v4

    .line 583
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v2, v0, v1}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;Z)V

    .line 584
    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    return-void

    .line 558
    :cond_4
    :try_start_1
    iget v6, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v6, v3, :cond_5

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v6

    :cond_5
    if-eq v6, v7, :cond_6

    .line 563
    iget-object v6, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    iget v7, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    const/16 v8, 0x11

    aput v7, v6, v8

    goto :goto_1

    .line 560
    :cond_6
    invoke-direct {p0, v7}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    move-result-object v2

    .line 566
    :goto_1
    iget v6, v2, Lorg/apache/james/mime4j/field/address/parser/Token;->kind:I

    if-eq v6, v5, :cond_a

    iget-object v6, v2, Lorg/apache/james/mime4j/field/address/parser/Token;->image:Ljava/lang/String;

    iget-object v2, v2, Lorg/apache/james/mime4j/field/address/parser/Token;->image:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v6, 0x2e

    if-ne v2, v6, :cond_a

    .line 568
    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v2, v3, :cond_7

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v2

    :cond_7
    if-eq v2, v4, :cond_9

    if-ne v2, v5, :cond_8

    .line 573
    invoke-direct {p0, v5}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    move-result-object v2

    goto :goto_0

    .line 576
    :cond_8
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    iget v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    const/16 v5, 0x12

    aput v4, v2, v5

    .line 577
    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 578
    new-instance v2, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    invoke-direct {v2}, Lorg/apache/james/mime4j/field/address/parser/ParseException;-><init>()V

    throw v2

    .line 570
    :cond_9
    invoke-direct {p0, v4}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    move-result-object v2

    goto :goto_0

    .line 567
    :cond_a
    new-instance v2, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    const-string v3, "Words in local part must be separated by \'.\'"

    invoke-direct {v2, v3}, Lorg/apache/james/mime4j/field/address/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v2

    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v2

    .line 583
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v0, v1}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;Z)V

    .line 584
    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    throw v2
.end method

.method public final mailbox()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/address/parser/ParseException;
        }
    .end annotation

    .line 220
    new-instance v0, Lorg/apache/james/mime4j/field/address/parser/ASTmailbox;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/apache/james/mime4j/field/address/parser/ASTmailbox;-><init>(I)V

    .line 222
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v1, v0}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->openNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    .line 223
    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeOpenNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    const v1, 0x7fffffff

    const/4 v2, 0x1

    .line 225
    :try_start_0
    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_2_2(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 226
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->addr_spec()V

    goto :goto_1

    .line 228
    :cond_0
    iget v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v1

    :cond_1
    const/4 v4, 0x6

    if-eq v1, v4, :cond_4

    const/16 v5, 0xe

    if-eq v1, v5, :cond_3

    const/16 v5, 0x1f

    if-ne v1, v5, :cond_2

    goto :goto_0

    .line 237
    :cond_2
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    iget v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v5, v1, v4

    .line 238
    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 239
    new-instance v1, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    invoke-direct {v1}, Lorg/apache/james/mime4j/field/address/parser/ParseException;-><init>()V

    throw v1

    .line 234
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->name_addr()V

    goto :goto_1

    .line 230
    :cond_4
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->angle_addr()V

    .line 258
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v1, v0, v2}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;Z)V

    .line 259
    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    return-void

    :catchall_0
    move-exception v1

    .line 244
    :try_start_1
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v0}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->clearNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/4 v3, 0x0

    .line 249
    :try_start_2
    instance-of v4, v1, Ljava/lang/RuntimeException;

    if-nez v4, :cond_6

    .line 252
    instance-of v4, v1, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    if-eqz v4, :cond_5

    .line 253
    check-cast v1, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    throw v1

    .line 255
    :cond_5
    check-cast v1, Ljava/lang/Error;

    throw v1

    .line 250
    :cond_6
    check-cast v1, Ljava/lang/RuntimeException;

    throw v1

    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v1

    goto :goto_2

    :catchall_2
    move-exception v1

    move v3, v2

    :goto_2
    if-eqz v3, :cond_7

    .line 258
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v0, v2}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;Z)V

    .line 259
    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    :cond_7
    throw v1
.end method

.method public final name_addr()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/address/parser/ParseException;
        }
    .end annotation

    .line 266
    new-instance v0, Lorg/apache/james/mime4j/field/address/parser/ASTname_addr;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lorg/apache/james/mime4j/field/address/parser/ASTname_addr;-><init>(I)V

    .line 268
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v1, v0}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->openNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    .line 269
    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeOpenNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    const/4 v1, 0x1

    .line 271
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->phrase()V

    .line 272
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->angle_addr()V

    .line 289
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v2, v0, v1}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;Z)V

    .line 290
    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    return-void

    :catchall_0
    move-exception v2

    .line 275
    :try_start_1
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v0}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->clearNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/4 v3, 0x0

    .line 280
    :try_start_2
    instance-of v4, v2, Ljava/lang/RuntimeException;

    if-nez v4, :cond_1

    .line 283
    instance-of v4, v2, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    if-eqz v4, :cond_0

    .line 284
    check-cast v2, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    throw v2

    .line 286
    :cond_0
    check-cast v2, Ljava/lang/Error;

    throw v2

    .line 281
    :cond_1
    check-cast v2, Ljava/lang/RuntimeException;

    throw v2

    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v2

    goto :goto_0

    :catchall_2
    move-exception v2

    move v3, v1

    :goto_0
    if-eqz v3, :cond_2

    .line 289
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v0, v1}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;Z)V

    .line 290
    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    :cond_2
    throw v2
.end method

.method public parseAddress()Lorg/apache/james/mime4j/field/address/parser/ASTaddress;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/address/parser/ParseException;
        }
    .end annotation

    .line 47
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->parseAddress0()V

    .line 48
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->rootNode()Lorg/apache/james/mime4j/field/address/parser/Node;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/field/address/parser/ASTaddress;

    :try_end_0
    .catch Lorg/apache/james/mime4j/field/address/parser/TokenMgrError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 50
    new-instance v1, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/parser/TokenMgrError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/james/mime4j/field/address/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final parseAddress0()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/address/parser/ParseException;
        }
    .end annotation

    .line 90
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->address()V

    const/4 v0, 0x0

    .line 91
    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    return-void
.end method

.method public parseAddressList()Lorg/apache/james/mime4j/field/address/parser/ASTaddress_list;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/address/parser/ParseException;
        }
    .end annotation

    .line 38
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->parseAddressList0()V

    .line 39
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->rootNode()Lorg/apache/james/mime4j/field/address/parser/Node;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/field/address/parser/ASTaddress_list;

    :try_end_0
    .catch Lorg/apache/james/mime4j/field/address/parser/TokenMgrError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 41
    new-instance v1, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/parser/TokenMgrError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/james/mime4j/field/address/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final parseAddressList0()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/address/parser/ParseException;
        }
    .end annotation

    .line 85
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->address_list()V

    const/4 v0, 0x0

    .line 86
    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    return-void
.end method

.method public final parseLine()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/address/parser/ParseException;
        }
    .end annotation

    .line 72
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->address_list()V

    .line 73
    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v0

    :cond_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 78
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/4 v1, 0x0

    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v2, v0, v1

    goto :goto_0

    .line 75
    :cond_1
    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    :goto_0
    const/4 v0, 0x2

    .line 81
    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    return-void
.end method

.method public parseMailbox()Lorg/apache/james/mime4j/field/address/parser/ASTmailbox;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/address/parser/ParseException;
        }
    .end annotation

    .line 56
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->parseMailbox0()V

    .line 57
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->rootNode()Lorg/apache/james/mime4j/field/address/parser/Node;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/field/address/parser/ASTmailbox;

    :try_end_0
    .catch Lorg/apache/james/mime4j/field/address/parser/TokenMgrError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 59
    new-instance v1, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/parser/TokenMgrError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/james/mime4j/field/address/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final parseMailbox0()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/address/parser/ParseException;
        }
    .end annotation

    .line 95
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->mailbox()V

    const/4 v0, 0x0

    .line 96
    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    return-void
.end method

.method public final phrase()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/address/parser/ParseException;
        }
    .end annotation

    .line 458
    new-instance v0, Lorg/apache/james/mime4j/field/address/parser/ASTphrase;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lorg/apache/james/mime4j/field/address/parser/ASTphrase;-><init>(I)V

    .line 460
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v1, v0}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->openNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    .line 461
    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeOpenNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    :cond_0
    const/4 v1, 0x1

    .line 465
    :try_start_0
    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v2

    :cond_1
    const/16 v4, 0x1f

    const/16 v5, 0xe

    if-eq v2, v5, :cond_3

    if-ne v2, v4, :cond_2

    .line 470
    invoke-direct {p0, v4}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    goto :goto_0

    .line 473
    :cond_2
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    iget v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    const/16 v5, 0xd

    aput v4, v2, v5

    .line 474
    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 475
    new-instance v2, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    invoke-direct {v2}, Lorg/apache/james/mime4j/field/address/parser/ParseException;-><init>()V

    throw v2

    .line 467
    :cond_3
    invoke-direct {p0, v5}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 477
    :goto_0
    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v2, v3, :cond_4

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v2

    :cond_4
    if-eq v2, v5, :cond_0

    if-eq v2, v4, :cond_0

    .line 483
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v3, v2, v5

    .line 489
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v2, v0, v1}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;Z)V

    .line 490
    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    return-void

    :catchall_0
    move-exception v2

    .line 489
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v0, v1}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;Z)V

    .line 490
    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    throw v2
.end method

.method public final route()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/address/parser/ParseException;
        }
    .end annotation

    .line 400
    new-instance v0, Lorg/apache/james/mime4j/field/address/parser/ASTroute;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lorg/apache/james/mime4j/field/address/parser/ASTroute;-><init>(I)V

    .line 402
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v1, v0}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->openNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    .line 403
    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeOpenNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    const/16 v1, 0x8

    const/4 v2, 0x1

    .line 405
    :try_start_0
    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 406
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->domain()V

    .line 409
    :goto_0
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v3

    :cond_0
    const/4 v5, 0x3

    if-eq v3, v5, :cond_1

    if-eq v3, v1, :cond_1

    .line 415
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    const/16 v4, 0xb

    aput v3, v1, v4

    const/4 v1, 0x4

    .line 433
    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 450
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v1, v0, v2}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;Z)V

    .line 451
    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    return-void

    .line 420
    :cond_1
    :goto_1
    :try_start_1
    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v3, v4, :cond_2

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v3

    :cond_2
    if-eq v3, v5, :cond_3

    .line 425
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    iget v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    const/16 v5, 0xc

    aput v4, v3, v5

    .line 430
    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    .line 431
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->domain()V

    goto :goto_0

    .line 428
    :cond_3
    invoke-direct {p0, v5}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 436
    :try_start_2
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v0}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->clearNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/4 v3, 0x0

    .line 441
    :try_start_3
    instance-of v4, v1, Ljava/lang/RuntimeException;

    if-nez v4, :cond_5

    .line 444
    instance-of v4, v1, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    if-eqz v4, :cond_4

    .line 445
    check-cast v1, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    throw v1

    .line 447
    :cond_4
    check-cast v1, Ljava/lang/Error;

    throw v1

    .line 442
    :cond_5
    check-cast v1, Ljava/lang/RuntimeException;

    throw v1

    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    goto :goto_2

    :catchall_2
    move-exception v1

    move v3, v2

    :goto_2
    if-eqz v3, :cond_6

    .line 450
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v3, v0, v2}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;Z)V

    .line 451
    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    :cond_6
    throw v1
.end method
