.class public Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;
.super Ljava/lang/Object;
.source "ContentLanguageParser.java"

# interfaces
.implements Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserConstants;


# static fields
.field private static jj_la1_0:[I


# instance fields
.field private jj_expentries:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "[I>;"
        }
    .end annotation
.end field

.field private jj_expentry:[I

.field private jj_gen:I

.field jj_input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

.field private jj_kind:I

.field private final jj_la1:[I

.field public jj_nt:Lorg/apache/james/mime4j/field/language/parser/Token;

.field private jj_ntk:I

.field private languages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public token:Lorg/apache/james/mime4j/field/language/parser/Token;

.field public token_source:Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 112
    invoke-static {}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_la1_0()V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    const/4 v0, 0x0

    .line 119
    invoke-direct {p0, p1, v0}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 4

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->languages:Ljava/util/List;

    const/4 v0, 0x3

    .line 109
    new-array v1, v0, [I

    iput-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_la1:[I

    .line 214
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_expentries:Ljava/util/Vector;

    const/4 v1, -0x1

    .line 216
    iput v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_kind:I

    .line 122
    :try_start_0
    new-instance v2, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    const/4 v3, 0x1

    invoke-direct {v2, p1, p2, v3, v3}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;II)V

    iput-object v2, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    .line 123
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance p1, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;

    iget-object p2, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    invoke-direct {p1, p2}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;-><init>(Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;)V

    iput-object p1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->token_source:Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;

    .line 124
    new-instance p1, Lorg/apache/james/mime4j/field/language/parser/Token;

    invoke-direct {p1}, Lorg/apache/james/mime4j/field/language/parser/Token;-><init>()V

    iput-object p1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->token:Lorg/apache/james/mime4j/field/language/parser/Token;

    .line 125
    iput v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_ntk:I

    const/4 p1, 0x0

    .line 126
    iput p1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_gen:I

    :goto_0
    if-ge p1, v0, :cond_0

    .line 127
    iget-object p2, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_la1:[I

    aput v1, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    .line 122
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 4

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->languages:Ljava/util/List;

    const/4 v0, 0x3

    .line 109
    new-array v1, v0, [I

    iput-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_la1:[I

    .line 214
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_expentries:Ljava/util/Vector;

    const/4 v1, -0x1

    .line 216
    iput v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_kind:I

    .line 143
    new-instance v2, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    const/4 v3, 0x1

    invoke-direct {v2, p1, v3, v3}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;-><init>(Ljava/io/Reader;II)V

    iput-object v2, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    .line 144
    new-instance p1, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;

    iget-object v2, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    invoke-direct {p1, v2}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;-><init>(Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;)V

    iput-object p1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->token_source:Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;

    .line 145
    new-instance p1, Lorg/apache/james/mime4j/field/language/parser/Token;

    invoke-direct {p1}, Lorg/apache/james/mime4j/field/language/parser/Token;-><init>()V

    iput-object p1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->token:Lorg/apache/james/mime4j/field/language/parser/Token;

    .line 146
    iput v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_ntk:I

    const/4 p1, 0x0

    .line 147
    iput p1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_gen:I

    :goto_0
    if-ge p1, v0, :cond_0

    .line 148
    iget-object v2, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_la1:[I

    aput v1, v2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;)V
    .locals 3

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->languages:Ljava/util/List;

    const/4 v0, 0x3

    .line 109
    new-array v1, v0, [I

    iput-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_la1:[I

    .line 214
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_expentries:Ljava/util/Vector;

    const/4 v1, -0x1

    .line 216
    iput v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_kind:I

    .line 161
    iput-object p1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->token_source:Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;

    .line 162
    new-instance p1, Lorg/apache/james/mime4j/field/language/parser/Token;

    invoke-direct {p1}, Lorg/apache/james/mime4j/field/language/parser/Token;-><init>()V

    iput-object p1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->token:Lorg/apache/james/mime4j/field/language/parser/Token;

    .line 163
    iput v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_ntk:I

    const/4 p1, 0x0

    .line 164
    iput p1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_gen:I

    :goto_0
    if-ge p1, v0, :cond_0

    .line 165
    iget-object v2, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_la1:[I

    aput v1, v2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final doParse()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/language/parser/ParseException;
        }
    .end annotation

    .line 44
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->language()Ljava/lang/String;

    .line 47
    :goto_0
    iget v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_ntk:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_ntk()I

    move-result v0

    :cond_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 52
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_la1:[I

    const/4 v1, 0x0

    iget v2, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_gen:I

    aput v2, v0, v1

    .line 58
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->languages:Ljava/util/List;

    return-object v0

    .line 55
    :cond_1
    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/language/parser/Token;

    .line 56
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->language()Ljava/lang/String;

    goto :goto_0
.end method

.method private final jj_consume_token(I)Lorg/apache/james/mime4j/field/language/parser/Token;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/language/parser/ParseException;
        }
    .end annotation

    .line 178
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->token:Lorg/apache/james/mime4j/field/language/parser/Token;

    iget-object v1, v0, Lorg/apache/james/mime4j/field/language/parser/Token;->next:Lorg/apache/james/mime4j/field/language/parser/Token;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->token:Lorg/apache/james/mime4j/field/language/parser/Token;

    iget-object v1, v1, Lorg/apache/james/mime4j/field/language/parser/Token;->next:Lorg/apache/james/mime4j/field/language/parser/Token;

    iput-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->token:Lorg/apache/james/mime4j/field/language/parser/Token;

    goto :goto_0

    .line 179
    :cond_0
    iget-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->token:Lorg/apache/james/mime4j/field/language/parser/Token;

    iget-object v2, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->token_source:Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->getNextToken()Lorg/apache/james/mime4j/field/language/parser/Token;

    move-result-object v2

    iput-object v2, v1, Lorg/apache/james/mime4j/field/language/parser/Token;->next:Lorg/apache/james/mime4j/field/language/parser/Token;

    iput-object v2, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->token:Lorg/apache/james/mime4j/field/language/parser/Token;

    :goto_0
    const/4 v1, -0x1

    .line 180
    iput v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_ntk:I

    .line 181
    iget-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->token:Lorg/apache/james/mime4j/field/language/parser/Token;

    iget v1, v1, Lorg/apache/james/mime4j/field/language/parser/Token;->kind:I

    if-ne v1, p1, :cond_1

    .line 182
    iget p1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_gen:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_gen:I

    .line 183
    iget-object p1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->token:Lorg/apache/james/mime4j/field/language/parser/Token;

    return-object p1

    .line 185
    :cond_1
    iput-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->token:Lorg/apache/james/mime4j/field/language/parser/Token;

    .line 186
    iput p1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_kind:I

    .line 187
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->generateParseException()Lorg/apache/james/mime4j/field/language/parser/ParseException;

    move-result-object p1

    throw p1
.end method

.method private static jj_la1_0()V
    .locals 2

    const/4 v0, 0x2

    const v1, 0x80004

    .line 115
    filled-new-array {v0, v1, v1}, [I

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_la1_0:[I

    return-void
.end method

.method private final jj_ntk()I
    .locals 2

    .line 208
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->token:Lorg/apache/james/mime4j/field/language/parser/Token;

    iget-object v0, v0, Lorg/apache/james/mime4j/field/language/parser/Token;->next:Lorg/apache/james/mime4j/field/language/parser/Token;

    iput-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_nt:Lorg/apache/james/mime4j/field/language/parser/Token;

    if-nez v0, :cond_0

    .line 209
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->token:Lorg/apache/james/mime4j/field/language/parser/Token;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->token_source:Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->getNextToken()Lorg/apache/james/mime4j/field/language/parser/Token;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/james/mime4j/field/language/parser/Token;->next:Lorg/apache/james/mime4j/field/language/parser/Token;

    iget v0, v1, Lorg/apache/james/mime4j/field/language/parser/Token;->kind:I

    iput v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_ntk:I

    return v0

    .line 211
    :cond_0
    iget v0, v0, Lorg/apache/james/mime4j/field/language/parser/Token;->kind:I

    iput v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_ntk:I

    return v0
.end method


# virtual methods
.method public ReInit(Ljava/io/InputStream;)V
    .locals 1

    const/4 v0, 0x0

    .line 131
    invoke-virtual {p0, p1, v0}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->ReInit(Ljava/io/InputStream;Ljava/lang/String;)V

    return-void
.end method

.method public ReInit(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 2

    .line 134
    :try_start_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1, v1}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->ReInit(Ljava/io/InputStream;Ljava/lang/String;II)V

    .line 135
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->token_source:Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;

    iget-object p2, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    invoke-virtual {p1, p2}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->ReInit(Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;)V

    .line 136
    new-instance p1, Lorg/apache/james/mime4j/field/language/parser/Token;

    invoke-direct {p1}, Lorg/apache/james/mime4j/field/language/parser/Token;-><init>()V

    iput-object p1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->token:Lorg/apache/james/mime4j/field/language/parser/Token;

    const/4 p1, -0x1

    .line 137
    iput p1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_ntk:I

    const/4 p2, 0x0

    .line 138
    iput p2, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_gen:I

    :goto_0
    const/4 v0, 0x3

    if-ge p2, v0, :cond_0

    .line 139
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_la1:[I

    aput p1, v0, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    .line 134
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public ReInit(Ljava/io/Reader;)V
    .locals 2

    .line 152
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, v1}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->ReInit(Ljava/io/Reader;II)V

    .line 153
    iget-object p1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->token_source:Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;

    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    invoke-virtual {p1, v0}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->ReInit(Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;)V

    .line 154
    new-instance p1, Lorg/apache/james/mime4j/field/language/parser/Token;

    invoke-direct {p1}, Lorg/apache/james/mime4j/field/language/parser/Token;-><init>()V

    iput-object p1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->token:Lorg/apache/james/mime4j/field/language/parser/Token;

    const/4 p1, -0x1

    .line 155
    iput p1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_ntk:I

    const/4 v0, 0x0

    .line 156
    iput v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_gen:I

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 157
    iget-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_la1:[I

    aput p1, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public ReInit(Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;)V
    .locals 2

    .line 169
    iput-object p1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->token_source:Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;

    .line 170
    new-instance p1, Lorg/apache/james/mime4j/field/language/parser/Token;

    invoke-direct {p1}, Lorg/apache/james/mime4j/field/language/parser/Token;-><init>()V

    iput-object p1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->token:Lorg/apache/james/mime4j/field/language/parser/Token;

    const/4 p1, -0x1

    .line 171
    iput p1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_ntk:I

    const/4 v0, 0x0

    .line 172
    iput v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_gen:I

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 173
    iget-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_la1:[I

    aput p1, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final disable_tracing()V
    .locals 0

    return-void
.end method

.method public final enable_tracing()V
    .locals 0

    return-void
.end method

.method public generateParseException()Lorg/apache/james/mime4j/field/language/parser/ParseException;
    .locals 8

    .line 219
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_expentries:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    const/16 v0, 0x17

    .line 220
    new-array v1, v0, [Z

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    .line 222
    aput-boolean v2, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 224
    :cond_0
    iget v3, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_kind:I

    const/4 v4, 0x1

    if-ltz v3, :cond_1

    .line 225
    aput-boolean v4, v1, v3

    const/4 v3, -0x1

    .line 226
    iput v3, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_kind:I

    :cond_1
    move v3, v2

    :goto_1
    const/4 v5, 0x3

    if-ge v3, v5, :cond_4

    .line 229
    iget-object v5, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_la1:[I

    aget v5, v5, v3

    iget v6, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_gen:I

    if-ne v5, v6, :cond_3

    move v5, v2

    :goto_2
    const/16 v6, 0x20

    if-ge v5, v6, :cond_3

    .line 231
    sget-object v6, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_la1_0:[I

    aget v6, v6, v3

    shl-int v7, v4, v5

    and-int/2addr v6, v7

    if-eqz v6, :cond_2

    .line 232
    aput-boolean v4, v1, v5

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    move v3, v2

    :goto_3
    if-ge v3, v0, :cond_6

    .line 238
    aget-boolean v5, v1, v3

    if-eqz v5, :cond_5

    .line 239
    new-array v5, v4, [I

    iput-object v5, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_expentry:[I

    .line 240
    aput v3, v5, v2

    .line 241
    iget-object v6, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_expentries:Ljava/util/Vector;

    invoke-virtual {v6, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 244
    :cond_6
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_expentries:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [[I

    .line 245
    :goto_4
    iget-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_expentries:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v2, v1, :cond_7

    .line 246
    iget-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_expentries:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    check-cast v1, [I

    aput-object v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 248
    :cond_7
    new-instance v1, Lorg/apache/james/mime4j/field/language/parser/ParseException;

    iget-object v2, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->token:Lorg/apache/james/mime4j/field/language/parser/Token;

    sget-object v3, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->tokenImage:[Ljava/lang/String;

    invoke-direct {v1, v2, v0, v3}, Lorg/apache/james/mime4j/field/language/parser/ParseException;-><init>(Lorg/apache/james/mime4j/field/language/parser/Token;[[I[Ljava/lang/String;)V

    return-object v1
.end method

.method public final getNextToken()Lorg/apache/james/mime4j/field/language/parser/Token;
    .locals 2

    .line 191
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->token:Lorg/apache/james/mime4j/field/language/parser/Token;

    iget-object v0, v0, Lorg/apache/james/mime4j/field/language/parser/Token;->next:Lorg/apache/james/mime4j/field/language/parser/Token;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->token:Lorg/apache/james/mime4j/field/language/parser/Token;

    iget-object v0, v0, Lorg/apache/james/mime4j/field/language/parser/Token;->next:Lorg/apache/james/mime4j/field/language/parser/Token;

    iput-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->token:Lorg/apache/james/mime4j/field/language/parser/Token;

    goto :goto_0

    .line 192
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->token:Lorg/apache/james/mime4j/field/language/parser/Token;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->token_source:Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->getNextToken()Lorg/apache/james/mime4j/field/language/parser/Token;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/james/mime4j/field/language/parser/Token;->next:Lorg/apache/james/mime4j/field/language/parser/Token;

    iput-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->token:Lorg/apache/james/mime4j/field/language/parser/Token;

    :goto_0
    const/4 v0, -0x1

    .line 193
    iput v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_ntk:I

    .line 194
    iget v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_gen:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_gen:I

    .line 195
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->token:Lorg/apache/james/mime4j/field/language/parser/Token;

    return-object v0
.end method

.method public final getToken(I)Lorg/apache/james/mime4j/field/language/parser/Token;
    .locals 3

    .line 199
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->token:Lorg/apache/james/mime4j/field/language/parser/Token;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    .line 201
    iget-object v2, v0, Lorg/apache/james/mime4j/field/language/parser/Token;->next:Lorg/apache/james/mime4j/field/language/parser/Token;

    if-eqz v2, :cond_0

    iget-object v0, v0, Lorg/apache/james/mime4j/field/language/parser/Token;->next:Lorg/apache/james/mime4j/field/language/parser/Token;

    goto :goto_1

    .line 202
    :cond_0
    iget-object v2, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->token_source:Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->getNextToken()Lorg/apache/james/mime4j/field/language/parser/Token;

    move-result-object v2

    iput-object v2, v0, Lorg/apache/james/mime4j/field/language/parser/Token;->next:Lorg/apache/james/mime4j/field/language/parser/Token;

    move-object v0, v2

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final language()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/language/parser/ParseException;
        }
    .end annotation

    .line 64
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v1, 0x12

    .line 66
    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/language/parser/Token;

    move-result-object v2

    .line 67
    iget-object v2, v2, Lorg/apache/james/mime4j/field/language/parser/Token;->image:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 70
    :goto_0
    iget v2, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_ntk:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_ntk()I

    move-result v2

    :cond_0
    const/16 v4, 0x13

    const/4 v5, 0x2

    if-eq v2, v5, :cond_1

    if-eq v2, v4, :cond_1

    .line 76
    iget-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_la1:[I

    const/4 v2, 0x1

    iget v3, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_gen:I

    aput v3, v1, v2

    .line 98
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 99
    iget-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->languages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 79
    :cond_1
    iget v2, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_ntk:I

    if-ne v2, v3, :cond_2

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_ntk()I

    move-result v2

    :cond_2
    const/16 v6, 0x2d

    if-eq v2, v5, :cond_4

    if-ne v2, v4, :cond_3

    .line 88
    invoke-direct {p0, v4}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/language/parser/Token;

    move-result-object v2

    .line 89
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 90
    iget-object v2, v2, Lorg/apache/james/mime4j/field/language/parser/Token;->image:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 93
    :cond_3
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_la1:[I

    iget v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_gen:I

    aput v1, v0, v5

    .line 94
    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/language/parser/Token;

    .line 95
    new-instance v0, Lorg/apache/james/mime4j/field/language/parser/ParseException;

    invoke-direct {v0}, Lorg/apache/james/mime4j/field/language/parser/ParseException;-><init>()V

    throw v0

    .line 81
    :cond_4
    invoke-direct {p0, v5}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/language/parser/Token;

    .line 83
    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/language/parser/Token;

    move-result-object v2

    .line 84
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 85
    iget-object v2, v2, Lorg/apache/james/mime4j/field/language/parser/Token;->image:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public parse()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/language/parser/ParseException;
        }
    .end annotation

    .line 34
    :try_start_0
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->doParse()Ljava/util/List;

    move-result-object v0

    :try_end_0
    .catch Lorg/apache/james/mime4j/field/language/parser/TokenMgrError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 39
    new-instance v1, Lorg/apache/james/mime4j/field/language/parser/ParseException;

    invoke-direct {v1, v0}, Lorg/apache/james/mime4j/field/language/parser/ParseException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
