.class public Lorg/jose4j/json/internal/json_simple/parser/JSONParser;
.super Ljava/lang/Object;
.source "JSONParser.java"


# static fields
.field public static final S_END:I = 0x6

.field public static final S_INIT:I = 0x0

.field public static final S_IN_ARRAY:I = 0x3

.field public static final S_IN_ERROR:I = -0x1

.field public static final S_IN_FINISHED_VALUE:I = 0x1

.field public static final S_IN_OBJECT:I = 0x2

.field public static final S_IN_PAIR_VALUE:I = 0x5

.field public static final S_PASSED_PAIR_KEY:I = 0x4


# instance fields
.field private handlerStatusStack:Ljava/util/LinkedList;

.field private lexer:Lorg/jose4j/json/internal/json_simple/parser/Yylex;

.field private status:I

.field private token:Lorg/jose4j/json/internal/json_simple/parser/Yytoken;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lorg/jose4j/json/internal/json_simple/parser/Yylex;

    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Ljava/io/Reader;

    invoke-direct {v0, v1}, Lorg/jose4j/json/internal/json_simple/parser/Yylex;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->lexer:Lorg/jose4j/json/internal/json_simple/parser/Yylex;

    .line 35
    iput-object v1, p0, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->token:Lorg/jose4j/json/internal/json_simple/parser/Yytoken;

    const/4 v0, 0x0

    .line 36
    iput v0, p0, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->status:I

    return-void
.end method

.method private createArrayContainer(Lorg/jose4j/json/internal/json_simple/parser/ContainerFactory;)Ljava/util/List;
    .locals 0

    if-nez p1, :cond_0

    .line 284
    new-instance p1, Lorg/jose4j/json/internal/json_simple/JSONArray;

    invoke-direct {p1}, Lorg/jose4j/json/internal/json_simple/JSONArray;-><init>()V

    return-object p1

    .line 285
    :cond_0
    invoke-interface {p1}, Lorg/jose4j/json/internal/json_simple/parser/ContainerFactory;->creatArrayContainer()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_1

    .line 288
    new-instance p1, Lorg/jose4j/json/internal/json_simple/JSONArray;

    invoke-direct {p1}, Lorg/jose4j/json/internal/json_simple/JSONArray;-><init>()V

    :cond_1
    return-object p1
.end method

.method private createObjectContainer(Lorg/jose4j/json/internal/json_simple/parser/ContainerFactory;)Ljava/util/Map;
    .locals 0

    if-nez p1, :cond_0

    .line 274
    new-instance p1, Lorg/jose4j/json/internal/json_simple/JSONObject;

    invoke-direct {p1}, Lorg/jose4j/json/internal/json_simple/JSONObject;-><init>()V

    return-object p1

    .line 275
    :cond_0
    invoke-interface {p1}, Lorg/jose4j/json/internal/json_simple/parser/ContainerFactory;->createObjectContainer()Ljava/util/Map;

    move-result-object p1

    if-nez p1, :cond_1

    .line 278
    new-instance p1, Lorg/jose4j/json/internal/json_simple/JSONObject;

    invoke-direct {p1}, Lorg/jose4j/json/internal/json_simple/JSONObject;-><init>()V

    :cond_1
    return-object p1
.end method

.method private nextToken()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/json/internal/json_simple/parser/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 267
    iget-object v0, p0, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->lexer:Lorg/jose4j/json/internal/json_simple/parser/Yylex;

    invoke-virtual {v0}, Lorg/jose4j/json/internal/json_simple/parser/Yylex;->yylex()Lorg/jose4j/json/internal/json_simple/parser/Yytoken;

    move-result-object v0

    iput-object v0, p0, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->token:Lorg/jose4j/json/internal/json_simple/parser/Yytoken;

    if-nez v0, :cond_0

    .line 269
    new-instance v0, Lorg/jose4j/json/internal/json_simple/parser/Yytoken;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/jose4j/json/internal/json_simple/parser/Yytoken;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->token:Lorg/jose4j/json/internal/json_simple/parser/Yytoken;

    :cond_0
    return-void
.end method

.method private peekStatus(Ljava/util/LinkedList;)I
    .locals 1

    .line 39
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 41
    :cond_0
    invoke-virtual {p1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 42
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method


# virtual methods
.method public getPosition()I
    .locals 1

    .line 69
    iget-object v0, p0, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->lexer:Lorg/jose4j/json/internal/json_simple/parser/Yylex;

    invoke-virtual {v0}, Lorg/jose4j/json/internal/json_simple/parser/Yylex;->getPosition()I

    move-result v0

    return v0
.end method

.method public parse(Ljava/io/Reader;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/jose4j/json/internal/json_simple/parser/ParseException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 90
    move-object v1, v0

    check-cast v1, Lorg/jose4j/json/internal/json_simple/parser/ContainerFactory;

    invoke-virtual {p0, p1, v0}, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->parse(Ljava/io/Reader;Lorg/jose4j/json/internal/json_simple/parser/ContainerFactory;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public parse(Ljava/io/Reader;Lorg/jose4j/json/internal/json_simple/parser/ContainerFactory;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/jose4j/json/internal/json_simple/parser/ParseException;
        }
    .end annotation

    .line 110
    invoke-virtual {p0, p1}, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->reset(Ljava/io/Reader;)V

    .line 111
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    .line 112
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 116
    :goto_0
    invoke-direct {p0}, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->nextToken()V

    .line 117
    iget v1, p0, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->status:I

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq v1, v2, :cond_18

    const/4 v4, 0x2

    const/4 v5, 0x3

    if-eqz v1, :cond_11

    if-eq v1, v3, :cond_f

    const/4 v6, 0x5

    const/4 v7, 0x4

    if-eq v1, v4, :cond_a

    if-eq v1, v5, :cond_4

    if-eq v1, v7, :cond_0

    goto/16 :goto_1

    .line 178
    :cond_0
    iget-object v1, p0, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->token:Lorg/jose4j/json/internal/json_simple/parser/Yytoken;

    iget v1, v1, Lorg/jose4j/json/internal/json_simple/parser/Yytoken;->type:I

    if-eqz v1, :cond_3

    if-eq v1, v3, :cond_2

    if-eq v1, v5, :cond_1

    const/4 v4, 0x6

    if-eq v1, v4, :cond_15

    .line 209
    iput v2, p0, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->status:I

    goto/16 :goto_1

    .line 189
    :cond_1
    invoke-virtual {p1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 190
    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 191
    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 192
    invoke-direct {p0, p2}, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->createArrayContainer(Lorg/jose4j/json/internal/json_simple/parser/ContainerFactory;)Ljava/util/List;

    move-result-object v6

    .line 193
    invoke-interface {v4, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    iput v5, p0, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->status:I

    .line 195
    new-instance v1, Ljava/lang/Integer;

    iget v4, p0, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->status:I

    invoke-direct {v1, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p1, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 196
    invoke-virtual {v0, v6}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 199
    :cond_2
    invoke-virtual {p1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 200
    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 201
    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    .line 202
    invoke-direct {p0, p2}, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->createObjectContainer(Lorg/jose4j/json/internal/json_simple/parser/ContainerFactory;)Ljava/util/Map;

    move-result-object v6

    .line 203
    invoke-interface {v5, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    iput v4, p0, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->status:I

    .line 205
    new-instance v1, Ljava/lang/Integer;

    iget v4, p0, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->status:I

    invoke-direct {v1, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p1, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 206
    invoke-virtual {v0, v6}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 182
    :cond_3
    invoke-virtual {p1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 183
    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 184
    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 185
    iget-object v5, p0, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->token:Lorg/jose4j/json/internal/json_simple/parser/Yytoken;

    iget-object v5, v5, Lorg/jose4j/json/internal/json_simple/parser/Yytoken;->value:Ljava/lang/Object;

    invoke-interface {v4, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    invoke-direct {p0, p1}, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->peekStatus(Ljava/util/LinkedList;)I

    move-result v1

    iput v1, p0, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->status:I

    goto/16 :goto_1

    .line 214
    :cond_4
    iget-object v1, p0, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->token:Lorg/jose4j/json/internal/json_simple/parser/Yytoken;

    iget v1, v1, Lorg/jose4j/json/internal/json_simple/parser/Yytoken;->type:I

    if-eqz v1, :cond_9

    if-eq v1, v3, :cond_8

    if-eq v1, v5, :cond_7

    if-eq v1, v7, :cond_5

    if-eq v1, v6, :cond_15

    .line 248
    iput v2, p0, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->status:I

    goto/16 :goto_1

    .line 222
    :cond_5
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-le v1, v3, :cond_6

    .line 223
    invoke-virtual {p1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 224
    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 225
    invoke-direct {p0, p1}, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->peekStatus(Ljava/util/LinkedList;)I

    move-result v1

    iput v1, p0, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->status:I

    goto/16 :goto_1

    .line 228
    :cond_6
    iput v3, p0, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->status:I

    goto/16 :goto_1

    .line 240
    :cond_7
    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 241
    invoke-direct {p0, p2}, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->createArrayContainer(Lorg/jose4j/json/internal/json_simple/parser/ContainerFactory;)Ljava/util/List;

    move-result-object v4

    .line 242
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    iput v5, p0, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->status:I

    .line 244
    new-instance v1, Ljava/lang/Integer;

    iget v5, p0, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->status:I

    invoke-direct {v1, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p1, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 245
    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 232
    :cond_8
    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 233
    invoke-direct {p0, p2}, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->createObjectContainer(Lorg/jose4j/json/internal/json_simple/parser/ContainerFactory;)Ljava/util/Map;

    move-result-object v5

    .line 234
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    iput v4, p0, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->status:I

    .line 236
    new-instance v1, Ljava/lang/Integer;

    iget v4, p0, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->status:I

    invoke-direct {v1, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p1, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 237
    invoke-virtual {v0, v5}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 218
    :cond_9
    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 219
    iget-object v4, p0, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->token:Lorg/jose4j/json/internal/json_simple/parser/Yytoken;

    iget-object v4, v4, Lorg/jose4j/json/internal/json_simple/parser/Yytoken;->value:Ljava/lang/Object;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 147
    :cond_a
    iget-object v1, p0, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->token:Lorg/jose4j/json/internal/json_simple/parser/Yytoken;

    iget v1, v1, Lorg/jose4j/json/internal/json_simple/parser/Yytoken;->type:I

    if-eqz v1, :cond_d

    if-eq v1, v4, :cond_b

    if-eq v1, v6, :cond_15

    .line 172
    iput v2, p0, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->status:I

    goto/16 :goto_1

    .line 162
    :cond_b
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-le v1, v3, :cond_c

    .line 163
    invoke-virtual {p1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 164
    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 165
    invoke-direct {p0, p1}, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->peekStatus(Ljava/util/LinkedList;)I

    move-result v1

    iput v1, p0, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->status:I

    goto/16 :goto_1

    .line 168
    :cond_c
    iput v3, p0, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->status:I

    goto/16 :goto_1

    .line 151
    :cond_d
    iget-object v1, p0, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->token:Lorg/jose4j/json/internal/json_simple/parser/Yytoken;

    iget-object v1, v1, Lorg/jose4j/json/internal/json_simple/parser/Yytoken;->value:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_e

    .line 152
    iget-object v1, p0, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->token:Lorg/jose4j/json/internal/json_simple/parser/Yytoken;

    iget-object v1, v1, Lorg/jose4j/json/internal/json_simple/parser/Yytoken;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 153
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 154
    iput v7, p0, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->status:I

    .line 155
    new-instance v1, Ljava/lang/Integer;

    iget v4, p0, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->status:I

    invoke-direct {v1, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p1, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_1

    .line 158
    :cond_e
    iput v2, p0, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->status:I

    goto :goto_1

    .line 141
    :cond_f
    iget-object p1, p0, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->token:Lorg/jose4j/json/internal/json_simple/parser/Yytoken;

    iget p1, p1, Lorg/jose4j/json/internal/json_simple/parser/Yytoken;->type:I

    if-ne p1, v2, :cond_10

    .line 142
    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 144
    :cond_10
    new-instance p1, Lorg/jose4j/json/internal/json_simple/parser/ParseException;

    invoke-virtual {p0}, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->getPosition()I

    move-result p2

    iget-object v0, p0, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->token:Lorg/jose4j/json/internal/json_simple/parser/Yytoken;

    invoke-direct {p1, p2, v3, v0}, Lorg/jose4j/json/internal/json_simple/parser/ParseException;-><init>(IILjava/lang/Object;)V

    throw p1

    .line 119
    :cond_11
    iget-object v1, p0, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->token:Lorg/jose4j/json/internal/json_simple/parser/Yytoken;

    iget v1, v1, Lorg/jose4j/json/internal/json_simple/parser/Yytoken;->type:I

    if-eqz v1, :cond_14

    if-eq v1, v3, :cond_13

    if-eq v1, v5, :cond_12

    .line 136
    iput v2, p0, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->status:I

    goto :goto_1

    .line 131
    :cond_12
    iput v5, p0, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->status:I

    .line 132
    new-instance v1, Ljava/lang/Integer;

    iget v4, p0, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->status:I

    invoke-direct {v1, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p1, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 133
    invoke-direct {p0, p2}, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->createArrayContainer(Lorg/jose4j/json/internal/json_simple/parser/ContainerFactory;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_1

    .line 126
    :cond_13
    iput v4, p0, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->status:I

    .line 127
    new-instance v1, Ljava/lang/Integer;

    iget v4, p0, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->status:I

    invoke-direct {v1, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p1, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 128
    invoke-direct {p0, p2}, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->createObjectContainer(Lorg/jose4j/json/internal/json_simple/parser/ContainerFactory;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_1

    .line 121
    :cond_14
    iput v3, p0, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->status:I

    .line 122
    new-instance v1, Ljava/lang/Integer;

    iget v4, p0, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->status:I

    invoke-direct {v1, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p1, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 123
    iget-object v1, p0, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->token:Lorg/jose4j/json/internal/json_simple/parser/Yytoken;

    iget-object v1, v1, Lorg/jose4j/json/internal/json_simple/parser/Yytoken;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 254
    :cond_15
    :goto_1
    iget v1, p0, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->status:I

    if-eq v1, v2, :cond_17

    .line 257
    iget-object v1, p0, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->token:Lorg/jose4j/json/internal/json_simple/parser/Yytoken;

    iget v1, v1, Lorg/jose4j/json/internal/json_simple/parser/Yytoken;->type:I

    if-eq v1, v2, :cond_16

    goto/16 :goto_0

    .line 263
    :cond_16
    new-instance p1, Lorg/jose4j/json/internal/json_simple/parser/ParseException;

    invoke-virtual {p0}, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->getPosition()I

    move-result p2

    iget-object v0, p0, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->token:Lorg/jose4j/json/internal/json_simple/parser/Yytoken;

    invoke-direct {p1, p2, v3, v0}, Lorg/jose4j/json/internal/json_simple/parser/ParseException;-><init>(IILjava/lang/Object;)V

    throw p1

    .line 255
    :cond_17
    new-instance p1, Lorg/jose4j/json/internal/json_simple/parser/ParseException;

    invoke-virtual {p0}, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->getPosition()I

    move-result p2

    iget-object v0, p0, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->token:Lorg/jose4j/json/internal/json_simple/parser/Yytoken;

    invoke-direct {p1, p2, v3, v0}, Lorg/jose4j/json/internal/json_simple/parser/ParseException;-><init>(IILjava/lang/Object;)V

    throw p1

    .line 252
    :cond_18
    new-instance p1, Lorg/jose4j/json/internal/json_simple/parser/ParseException;

    invoke-virtual {p0}, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->getPosition()I

    move-result p2

    iget-object v0, p0, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->token:Lorg/jose4j/json/internal/json_simple/parser/Yytoken;

    invoke-direct {p1, p2, v3, v0}, Lorg/jose4j/json/internal/json_simple/parser/ParseException;-><init>(IILjava/lang/Object;)V

    throw p1
.end method

.method public parse(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/json/internal/json_simple/parser/ParseException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 73
    move-object v1, v0

    check-cast v1, Lorg/jose4j/json/internal/json_simple/parser/ContainerFactory;

    invoke-virtual {p0, p1, v0}, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->parse(Ljava/lang/String;Lorg/jose4j/json/internal/json_simple/parser/ContainerFactory;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public parse(Ljava/lang/String;Lorg/jose4j/json/internal/json_simple/parser/ContainerFactory;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/json/internal/json_simple/parser/ParseException;
        }
    .end annotation

    .line 77
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 79
    :try_start_0
    invoke-virtual {p0, v0, p2}, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->parse(Ljava/io/Reader;Lorg/jose4j/json/internal/json_simple/parser/ContainerFactory;)Ljava/lang/Object;

    move-result-object p1

    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 85
    new-instance p2, Lorg/jose4j/json/internal/json_simple/parser/ParseException;

    const/4 v0, -0x1

    const/4 v1, 0x2

    invoke-direct {p2, v0, v1, p1}, Lorg/jose4j/json/internal/json_simple/parser/ParseException;-><init>(IILjava/lang/Object;)V

    throw p2
.end method

.method public parse(Ljava/io/Reader;Lorg/jose4j/json/internal/json_simple/parser/ContentHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/jose4j/json/internal/json_simple/parser/ParseException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 310
    invoke-virtual {p0, p1, p2, v0}, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->parse(Ljava/io/Reader;Lorg/jose4j/json/internal/json_simple/parser/ContentHandler;Z)V

    return-void
.end method

.method public parse(Ljava/io/Reader;Lorg/jose4j/json/internal/json_simple/parser/ContentHandler;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/jose4j/json/internal/json_simple/parser/ParseException;
        }
    .end annotation

    if-nez p3, :cond_0

    .line 329
    invoke-virtual {p0, p1}, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->reset(Ljava/io/Reader;)V

    .line 330
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->handlerStatusStack:Ljava/util/LinkedList;

    goto :goto_0

    .line 333
    :cond_0
    iget-object p3, p0, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->handlerStatusStack:Ljava/util/LinkedList;

    if-nez p3, :cond_1

    .line 335
    invoke-virtual {p0, p1}, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->reset(Ljava/io/Reader;)V

    .line 336
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->handlerStatusStack:Ljava/util/LinkedList;

    .line 340
    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->handlerStatusStack:Ljava/util/LinkedList;

    :goto_1
    const/4 p3, -0x1

    .line 344
    :try_start_0
    iget v0, p0, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->status:I

    const/4 v1, 0x6

    const/4 v2, 0x4

    const/4 v3, 0x5

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/4 v6, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0    # 0x6
    return-void

    .line 457
    :pswitch_1    # 0x5
    invoke-virtual {p1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 458
    invoke-direct {p0, p1}, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->peekStatus(Ljava/util/LinkedList;)I

    move-result v0

    iput v0, p0, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->status:I

    .line 459
    invoke-interface {p2}, Lorg/jose4j/json/internal/json_simple/parser/ContentHandler;->endObjectEntry()Z

    move-result v0

    if-nez v0, :cond_13

    return-void

    .line 419
    :pswitch_2    # 0x4
    invoke-direct {p0}, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->nextToken()V

    .line 420
    iget-object v0, p0, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->token:Lorg/jose4j/json/internal/json_simple/parser/Yytoken;

    iget v0, v0, Lorg/jose4j/json/internal/json_simple/parser/Yytoken;->type:I

    if-eqz v0, :cond_4

    if-eq v0, v6, :cond_3

    if-eq v0, v5, :cond_2

    if-eq v0, v1, :cond_13

    .line 448
    iput p3, p0, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->status:I

    goto/16 :goto_4

    .line 432
    :cond_2
    invoke-virtual {p1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 433
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 434
    iput v5, p0, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->status:I

    .line 435
    new-instance v0, Ljava/lang/Integer;

    iget v1, p0, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->status:I

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 436
    invoke-interface {p2}, Lorg/jose4j/json/internal/json_simple/parser/ContentHandler;->startArray()Z

    move-result v0

    if-nez v0, :cond_13

    return-void

    .line 440
    :cond_3
    invoke-virtual {p1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 441
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 442
    iput v4, p0, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->status:I

    .line 443
    new-instance v0, Ljava/lang/Integer;

    iget v1, p0, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->status:I

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 444
    invoke-interface {p2}, Lorg/jose4j/json/internal/json_simple/parser/ContentHandler;->startObject()Z

    move-result v0

    if-nez v0, :cond_13

    return-void

    .line 424
    :cond_4
    invoke-virtual {p1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 425
    invoke-direct {p0, p1}, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->peekStatus(Ljava/util/LinkedList;)I

    move-result v0

    iput v0, p0, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->status:I

    .line 426
    iget-object v0, p0, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->token:Lorg/jose4j/json/internal/json_simple/parser/Yytoken;

    iget-object v0, v0, Lorg/jose4j/json/internal/json_simple/parser/Yytoken;->value:Ljava/lang/Object;

    invoke-interface {p2, v0}, Lorg/jose4j/json/internal/json_simple/parser/ContentHandler;->primitive(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    return-void

    .line 428
    :cond_5
    invoke-interface {p2}, Lorg/jose4j/json/internal/json_simple/parser/ContentHandler;->endObjectEntry()Z

    move-result v0

    if-nez v0, :cond_13

    return-void

    .line 464
    :pswitch_3    # 0x3
    invoke-direct {p0}, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->nextToken()V

    .line 465
    iget-object v0, p0, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->token:Lorg/jose4j/json/internal/json_simple/parser/Yytoken;

    iget v0, v0, Lorg/jose4j/json/internal/json_simple/parser/Yytoken;->type:I

    if-eqz v0, :cond_a

    if-eq v0, v6, :cond_9

    if-eq v0, v5, :cond_8

    if-eq v0, v2, :cond_6

    if-eq v0, v3, :cond_13

    .line 496
    iput p3, p0, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->status:I

    goto/16 :goto_4

    .line 473
    :cond_6
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-le v0, v6, :cond_7

    .line 474
    invoke-virtual {p1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 475
    invoke-direct {p0, p1}, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->peekStatus(Ljava/util/LinkedList;)I

    move-result v0

    iput v0, p0, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->status:I

    goto :goto_2

    .line 478
    :cond_7
    iput v6, p0, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->status:I

    .line 480
    :goto_2
    invoke-interface {p2}, Lorg/jose4j/json/internal/json_simple/parser/ContentHandler;->endArray()Z

    move-result v0

    if-nez v0, :cond_13

    return-void

    .line 490
    :cond_8
    iput v5, p0, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->status:I

    .line 491
    new-instance v0, Ljava/lang/Integer;

    iget v1, p0, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->status:I

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 492
    invoke-interface {p2}, Lorg/jose4j/json/internal/json_simple/parser/ContentHandler;->startArray()Z

    move-result v0

    if-nez v0, :cond_13

    return-void

    .line 484
    :cond_9
    iput v4, p0, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->status:I

    .line 485
    new-instance v0, Ljava/lang/Integer;

    iget v1, p0, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->status:I

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 486
    invoke-interface {p2}, Lorg/jose4j/json/internal/json_simple/parser/ContentHandler;->startObject()Z

    move-result v0

    if-nez v0, :cond_13

    return-void

    .line 469
    :cond_a
    iget-object v0, p0, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->token:Lorg/jose4j/json/internal/json_simple/parser/Yytoken;

    iget-object v0, v0, Lorg/jose4j/json/internal/json_simple/parser/Yytoken;->value:Ljava/lang/Object;

    invoke-interface {p2, v0}, Lorg/jose4j/json/internal/json_simple/parser/ContentHandler;->primitive(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    return-void

    .line 385
    :pswitch_4    # 0x2
    invoke-direct {p0}, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->nextToken()V

    .line 386
    iget-object v0, p0, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->token:Lorg/jose4j/json/internal/json_simple/parser/Yytoken;

    iget v0, v0, Lorg/jose4j/json/internal/json_simple/parser/Yytoken;->type:I

    if-eqz v0, :cond_d

    if-eq v0, v4, :cond_b

    if-eq v0, v3, :cond_13

    .line 413
    iput p3, p0, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->status:I

    goto/16 :goto_4

    .line 402
    :cond_b
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-le v0, v6, :cond_c

    .line 403
    invoke-virtual {p1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 404
    invoke-direct {p0, p1}, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->peekStatus(Ljava/util/LinkedList;)I

    move-result v0

    iput v0, p0, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->status:I

    goto :goto_3

    .line 407
    :cond_c
    iput v6, p0, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->status:I

    .line 409
    :goto_3
    invoke-interface {p2}, Lorg/jose4j/json/internal/json_simple/parser/ContentHandler;->endObject()Z

    move-result v0

    if-nez v0, :cond_13

    return-void

    .line 390
    :cond_d
    iget-object v0, p0, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->token:Lorg/jose4j/json/internal/json_simple/parser/Yytoken;

    iget-object v0, v0, Lorg/jose4j/json/internal/json_simple/parser/Yytoken;->value:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_e

    .line 391
    iget-object v0, p0, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->token:Lorg/jose4j/json/internal/json_simple/parser/Yytoken;

    iget-object v0, v0, Lorg/jose4j/json/internal/json_simple/parser/Yytoken;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 392
    iput v2, p0, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->status:I

    .line 393
    new-instance v1, Ljava/lang/Integer;

    iget v2, p0, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->status:I

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p1, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 394
    invoke-interface {p2, v0}, Lorg/jose4j/json/internal/json_simple/parser/ContentHandler;->startObjectEntry(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    return-void

    .line 398
    :cond_e
    iput p3, p0, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->status:I

    goto/16 :goto_4

    .line 373
    :pswitch_5    # 0x1
    invoke-direct {p0}, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->nextToken()V

    .line 374
    iget-object p1, p0, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->token:Lorg/jose4j/json/internal/json_simple/parser/Yytoken;

    iget p1, p1, Lorg/jose4j/json/internal/json_simple/parser/Yytoken;->type:I

    if-ne p1, p3, :cond_f

    .line 375
    invoke-interface {p2}, Lorg/jose4j/json/internal/json_simple/parser/ContentHandler;->endJSON()V

    .line 376
    iput v1, p0, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->status:I

    return-void

    .line 380
    :cond_f
    iput p3, p0, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->status:I

    .line 381
    new-instance p1, Lorg/jose4j/json/internal/json_simple/parser/ParseException;

    invoke-virtual {p0}, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->getPosition()I

    move-result p2

    iget-object v0, p0, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->token:Lorg/jose4j/json/internal/json_simple/parser/Yytoken;

    invoke-direct {p1, p2, v6, v0}, Lorg/jose4j/json/internal/json_simple/parser/ParseException;-><init>(IILjava/lang/Object;)V

    throw p1

    .line 346
    :pswitch_6    # 0x0
    invoke-interface {p2}, Lorg/jose4j/json/internal/json_simple/parser/ContentHandler;->startJSON()V

    .line 347
    invoke-direct {p0}, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->nextToken()V

    .line 348
    iget-object v0, p0, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->token:Lorg/jose4j/json/internal/json_simple/parser/Yytoken;

    iget v0, v0, Lorg/jose4j/json/internal/json_simple/parser/Yytoken;->type:I

    if-eqz v0, :cond_12

    if-eq v0, v6, :cond_11

    if-eq v0, v5, :cond_10

    .line 368
    iput p3, p0, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->status:I

    goto :goto_4

    .line 362
    :cond_10
    iput v5, p0, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->status:I

    .line 363
    new-instance v0, Ljava/lang/Integer;

    iget v1, p0, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->status:I

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 364
    invoke-interface {p2}, Lorg/jose4j/json/internal/json_simple/parser/ContentHandler;->startArray()Z

    move-result v0

    if-nez v0, :cond_13

    return-void

    .line 356
    :cond_11
    iput v4, p0, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->status:I

    .line 357
    new-instance v0, Ljava/lang/Integer;

    iget v1, p0, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->status:I

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 358
    invoke-interface {p2}, Lorg/jose4j/json/internal/json_simple/parser/ContentHandler;->startObject()Z

    move-result v0

    if-nez v0, :cond_13

    return-void

    .line 350
    :cond_12
    iput v6, p0, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->status:I

    .line 351
    new-instance v0, Ljava/lang/Integer;

    iget v1, p0, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->status:I

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 352
    iget-object v0, p0, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->token:Lorg/jose4j/json/internal/json_simple/parser/Yytoken;

    iget-object v0, v0, Lorg/jose4j/json/internal/json_simple/parser/Yytoken;->value:Ljava/lang/Object;

    invoke-interface {p2, v0}, Lorg/jose4j/json/internal/json_simple/parser/ContentHandler;->primitive(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    return-void

    .line 504
    :pswitch_7    # -0x1
    new-instance p1, Lorg/jose4j/json/internal/json_simple/parser/ParseException;

    invoke-virtual {p0}, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->getPosition()I

    move-result p2

    iget-object v0, p0, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->token:Lorg/jose4j/json/internal/json_simple/parser/Yytoken;

    invoke-direct {p1, p2, v6, v0}, Lorg/jose4j/json/internal/json_simple/parser/ParseException;-><init>(IILjava/lang/Object;)V

    throw p1

    .line 506
    :cond_13
    :goto_4
    iget v0, p0, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->status:I

    if-eq v0, p3, :cond_15

    .line 509
    iget-object v0, p0, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->token:Lorg/jose4j/json/internal/json_simple/parser/Yytoken;

    iget v0, v0, Lorg/jose4j/json/internal/json_simple/parser/Yytoken;->type:I

    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/jose4j/json/internal/json_simple/parser/ParseException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v0, p3, :cond_14

    goto/16 :goto_1

    .line 528
    :cond_14
    iput p3, p0, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->status:I

    .line 529
    new-instance p1, Lorg/jose4j/json/internal/json_simple/parser/ParseException;

    invoke-virtual {p0}, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->getPosition()I

    move-result p2

    iget-object p3, p0, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->token:Lorg/jose4j/json/internal/json_simple/parser/Yytoken;

    invoke-direct {p1, p2, v6, p3}, Lorg/jose4j/json/internal/json_simple/parser/ParseException;-><init>(IILjava/lang/Object;)V

    throw p1

    .line 507
    :cond_15
    :try_start_1
    new-instance p1, Lorg/jose4j/json/internal/json_simple/parser/ParseException;

    invoke-virtual {p0}, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->getPosition()I

    move-result p2

    iget-object v0, p0, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->token:Lorg/jose4j/json/internal/json_simple/parser/Yytoken;

    invoke-direct {p1, p2, v6, v0}, Lorg/jose4j/json/internal/json_simple/parser/ParseException;-><init>(IILjava/lang/Object;)V

    throw p1

    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/jose4j/json/internal/json_simple/parser/ParseException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p1

    .line 524
    iput p3, p0, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->status:I

    .line 525
    throw p1

    :catch_1
    move-exception p1

    .line 520
    iput p3, p0, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->status:I

    .line 521
    throw p1

    :catch_2
    move-exception p1

    .line 516
    iput p3, p0, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->status:I

    .line 517
    throw p1

    :catch_3
    move-exception p1

    .line 512
    iput p3, p0, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->status:I

    .line 513
    throw p1

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_7    # -0x1
        :pswitch_6    # 0x0
        :pswitch_5    # 0x1
        :pswitch_4    # 0x2
        :pswitch_3    # 0x3
        :pswitch_2    # 0x4
        :pswitch_1    # 0x5
        :pswitch_0    # 0x6
    .end packed-switch
.end method

.method public parse(Ljava/lang/String;Lorg/jose4j/json/internal/json_simple/parser/ContentHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/json/internal/json_simple/parser/ParseException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 293
    invoke-virtual {p0, p1, p2, v0}, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->parse(Ljava/lang/String;Lorg/jose4j/json/internal/json_simple/parser/ContentHandler;Z)V

    return-void
.end method

.method public parse(Ljava/lang/String;Lorg/jose4j/json/internal/json_simple/parser/ContentHandler;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/json/internal/json_simple/parser/ParseException;
        }
    .end annotation

    .line 297
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 299
    :try_start_0
    invoke-virtual {p0, v0, p2, p3}, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->parse(Ljava/io/Reader;Lorg/jose4j/json/internal/json_simple/parser/ContentHandler;Z)V

    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 305
    new-instance p2, Lorg/jose4j/json/internal/json_simple/parser/ParseException;

    const/4 p3, -0x1

    const/4 v0, 0x2

    invoke-direct {p2, p3, v0, p1}, Lorg/jose4j/json/internal/json_simple/parser/ParseException;-><init>(IILjava/lang/Object;)V

    throw p2
.end method

.method public reset()V
    .locals 2

    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->token:Lorg/jose4j/json/internal/json_simple/parser/Yytoken;

    const/4 v1, 0x0

    .line 51
    iput v1, p0, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->status:I

    .line 52
    iput-object v0, p0, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->handlerStatusStack:Ljava/util/LinkedList;

    return-void
.end method

.method public reset(Ljava/io/Reader;)V
    .locals 1

    .line 61
    iget-object v0, p0, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->lexer:Lorg/jose4j/json/internal/json_simple/parser/Yylex;

    invoke-virtual {v0, p1}, Lorg/jose4j/json/internal/json_simple/parser/Yylex;->yyreset(Ljava/io/Reader;)V

    .line 62
    invoke-virtual {p0}, Lorg/jose4j/json/internal/json_simple/parser/JSONParser;->reset()V

    return-void
.end method
