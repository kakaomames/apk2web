.class public Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;
.super Ljava/lang/Object;
.source "MimeVersionParserTokenManager.java"

# interfaces
.implements Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserConstants;


# static fields
.field static final jjbitVec0:[J

.field public static final jjnewLexState:[I

.field static final jjnextStates:[I

.field public static final jjstrLiteralImages:[Ljava/lang/String;

.field static final jjtoMore:[J

.field static final jjtoSkip:[J

.field static final jjtoSpecial:[J

.field static final jjtoToken:[J

.field public static final lexStateNames:[Ljava/lang/String;


# instance fields
.field commentNest:I

.field protected curChar:C

.field curLexState:I

.field public debugStream:Ljava/io/PrintStream;

.field defaultLexState:I

.field image:Ljava/lang/StringBuffer;

.field protected input_stream:Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;

.field jjimageLen:I

.field jjmatchedKind:I

.field jjmatchedPos:I

.field jjnewStateCnt:I

.field jjround:I

.field private final jjrounds:[I

.field private final jjstateSet:[I

.field lengthOfMatch:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v0, 0x4

    .line 224
    new-array v1, v0, [J

    fill-array-data v1, :array_0

    sput-object v1, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjbitVec0:[J

    const/4 v1, 0x0

    .line 571
    new-array v2, v1, [I

    sput-object v2, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjnextStates:[I

    const/16 v2, 0x15

    .line 573
    new-array v3, v2, [Ljava/lang/String;

    const-string v4, ""

    aput-object v4, v3, v1

    const-string v4, "\r"

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const-string v4, "\n"

    const/4 v6, 0x2

    aput-object v4, v3, v6

    const/4 v4, 0x3

    const/4 v7, 0x0

    aput-object v7, v3, v4

    aput-object v7, v3, v0

    const/4 v8, 0x5

    aput-object v7, v3, v8

    const/4 v8, 0x6

    aput-object v7, v3, v8

    const/4 v8, 0x7

    aput-object v7, v3, v8

    const/16 v8, 0x8

    aput-object v7, v3, v8

    const/16 v8, 0x9

    aput-object v7, v3, v8

    const/16 v8, 0xa

    aput-object v7, v3, v8

    const/16 v8, 0xb

    aput-object v7, v3, v8

    const/16 v8, 0xc

    aput-object v7, v3, v8

    const/16 v8, 0xd

    aput-object v7, v3, v8

    const/16 v8, 0xe

    aput-object v7, v3, v8

    const/16 v8, 0xf

    aput-object v7, v3, v8

    const/16 v8, 0x10

    aput-object v7, v3, v8

    const/16 v8, 0x11

    aput-object v7, v3, v8

    const/16 v8, 0x12

    const-string v9, "."

    aput-object v9, v3, v8

    const/16 v8, 0x13

    aput-object v7, v3, v8

    const/16 v8, 0x14

    aput-object v7, v3, v8

    sput-object v3, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

    .line 576
    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "DEFAULT"

    aput-object v3, v0, v1

    const-string v3, "INCOMMENT"

    aput-object v3, v0, v5

    const-string v3, "NESTED_COMMENT"

    aput-object v3, v0, v6

    const-string v3, "INQUOTEDSTRING"

    aput-object v3, v0, v4

    sput-object v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->lexStateNames:[Ljava/lang/String;

    .line 582
    new-array v0, v2, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjnewLexState:[I

    .line 585
    new-array v0, v5, [J

    const-wide/32 v2, 0x70007

    aput-wide v2, v0, v1

    sput-object v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjtoToken:[J

    .line 588
    new-array v0, v5, [J

    const-wide/16 v2, 0x28

    aput-wide v2, v0, v1

    sput-object v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjtoSkip:[J

    .line 591
    new-array v0, v5, [J

    const-wide/16 v2, 0x8

    aput-wide v2, v0, v1

    sput-object v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjtoSpecial:[J

    .line 594
    new-array v0, v5, [J

    const-wide/32 v2, 0xffd0

    aput-wide v2, v0, v1

    sput-object v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjtoMore:[J

    return-void

    :array_0
    .array-data 8
        0x0
        0x0
        -0x1L
        -0x1L
    .end array-data

    :array_1
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        0x1
        0x0
        -0x1
        0x2
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x3
        -0x1
        -0x1
        0x0
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method public constructor <init>(Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;)V
    .locals 1

    .line 604
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iput-object v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->debugStream:Ljava/io/PrintStream;

    const/4 v0, 0x3

    .line 598
    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjrounds:[I

    const/4 v0, 0x6

    .line 599
    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjstateSet:[I

    const/4 v0, 0x0

    .line 653
    iput v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->curLexState:I

    .line 654
    iput v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->defaultLexState:I

    .line 607
    iput-object p1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;

    return-void
.end method

.method public constructor <init>(Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;I)V
    .locals 0

    .line 610
    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;-><init>(Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;)V

    .line 611
    invoke-virtual {p0, p2}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->SwitchTo(I)V

    return-void
.end method

.method private final ReInitRounds()V
    .locals 3

    const v0, -0x7fffffff

    .line 623
    iput v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjround:I

    const/4 v0, 0x3

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_0

    .line 625
    iget-object v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjrounds:[I

    const/high16 v2, -0x80000000

    aput v2, v0, v1

    move v0, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final jjAddStates(II)V
    .locals 3

    .line 88
    :goto_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjstateSet:[I

    iget v1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjnewStateCnt:I

    sget-object v2, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjnextStates:[I

    aget v2, v2, p1

    aput v2, v0, v1

    add-int/lit8 v0, p1, 0x1

    if-ne p1, p2, :cond_0

    return-void

    :cond_0
    move p1, v0

    goto :goto_0
.end method

.method private final jjCheckNAdd(I)V
    .locals 5

    .line 79
    iget-object v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjrounds:[I

    aget v1, v0, p1

    iget v2, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjround:I

    if-eq v1, v2, :cond_0

    .line 81
    iget-object v1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjstateSet:[I

    iget v3, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjnewStateCnt:I

    aput p1, v1, v3

    .line 82
    aput v2, v0, p1

    :cond_0
    return-void
.end method

.method private final jjCheckNAddStates(I)V
    .locals 2

    .line 104
    sget-object v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjnextStates:[I

    aget v1, v0, p1

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjCheckNAdd(I)V

    add-int/lit8 p1, p1, 0x1

    .line 105
    aget p1, v0, p1

    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjCheckNAdd(I)V

    return-void
.end method

.method private final jjCheckNAddStates(II)V
    .locals 1

    .line 99
    :goto_0
    sget-object v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjnextStates:[I

    aget v0, v0, p1

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjCheckNAdd(I)V

    add-int/lit8 v0, p1, 0x1

    if-ne p1, p2, :cond_0

    return-void

    :cond_0
    move p1, v0

    goto :goto_0
.end method

.method private final jjCheckNAddTwoStates(II)V
    .locals 0

    .line 93
    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjCheckNAdd(I)V

    .line 94
    invoke-direct {p0, p2}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjCheckNAdd(I)V

    return-void
.end method

.method private final jjMoveNfa_0(II)I
    .locals 19

    move-object/from16 v0, p0

    const/4 v1, 0x2

    .line 111
    iput v1, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjnewStateCnt:I

    .line 113
    iget-object v2, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjstateSet:[I

    const/4 v3, 0x0

    aput p1, v2, v3

    const/4 v2, 0x1

    const v4, 0x7fffffff

    move/from16 v5, p2

    move v6, v2

    move v8, v3

    move v7, v4

    .line 117
    :goto_0
    iget v9, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjround:I

    add-int/2addr v9, v2

    iput v9, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjround:I

    if-ne v9, v4, :cond_0

    .line 118
    invoke-direct/range {p0 .. p0}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->ReInitRounds()V

    .line 119
    :cond_0
    iget-char v9, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->curChar:C

    const/16 v10, 0x40

    if-ge v9, v10, :cond_b

    const-wide/16 v10, 0x1

    shl-long/2addr v10, v9

    .line 124
    :goto_1
    iget-object v9, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjstateSet:[I

    add-int/lit8 v6, v6, -0x1

    aget v9, v9, v6

    const-wide v12, 0x100002600L

    const/4 v14, 0x3

    const-wide/16 v15, 0x0

    if-eqz v9, :cond_7

    const-wide/high16 v17, 0x3ff000000000000L

    const/16 v4, 0x11

    if-eq v9, v2, :cond_5

    if-eq v9, v1, :cond_1

    goto :goto_2

    :cond_1
    and-long v17, v10, v17

    cmp-long v9, v17, v15

    if-eqz v9, :cond_3

    if-le v7, v4, :cond_2

    move v7, v4

    .line 131
    :cond_2
    invoke-direct {v0, v2}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_2

    :cond_3
    and-long/2addr v12, v10

    cmp-long v4, v12, v15

    if-eqz v4, :cond_9

    if-le v7, v14, :cond_4

    move v7, v14

    .line 137
    :cond_4
    invoke-direct {v0, v3}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_2

    :cond_5
    and-long v12, v10, v17

    cmp-long v9, v12, v15

    if-nez v9, :cond_6

    goto :goto_2

    .line 150
    :cond_6
    invoke-direct {v0, v2}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjCheckNAdd(I)V

    move v7, v4

    goto :goto_2

    :cond_7
    and-long/2addr v12, v10

    cmp-long v4, v12, v15

    if-nez v4, :cond_8

    goto :goto_2

    .line 144
    :cond_8
    invoke-direct {v0, v3}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjCheckNAdd(I)V

    move v7, v14

    :cond_9
    :goto_2
    if-ne v6, v8, :cond_a

    goto :goto_3

    :cond_a
    const v4, 0x7fffffff

    goto :goto_1

    :cond_b
    const/16 v4, 0x80

    if-ge v9, v4, :cond_d

    .line 161
    :cond_c
    iget-object v4, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjstateSet:[I

    add-int/lit8 v6, v6, -0x1

    aget v4, v4, v6

    if-ne v6, v8, :cond_c

    goto :goto_3

    .line 173
    :cond_d
    iget-object v4, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjstateSet:[I

    add-int/lit8 v6, v6, -0x1

    aget v4, v4, v6

    if-ne v6, v8, :cond_d

    :goto_3
    const v4, 0x7fffffff

    if-eq v7, v4, :cond_e

    .line 181
    iput v7, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjmatchedKind:I

    .line 182
    iput v5, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjmatchedPos:I

    move v7, v4

    :cond_e
    add-int/lit8 v5, v5, 0x1

    .line 186
    iget v6, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjnewStateCnt:I

    iput v8, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v8, v8, 0x2

    if-ne v6, v8, :cond_f

    return v5

    .line 188
    :cond_f
    :try_start_0
    iget-object v9, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;

    invoke-virtual {v9}, Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;->readChar()C

    move-result v9

    iput-char v9, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->curChar:C

    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    return v5
.end method

.method private final jjMoveNfa_1(II)I
    .locals 17

    move-object/from16 v0, p0

    const/4 v1, 0x3

    .line 231
    iput v1, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjnewStateCnt:I

    .line 233
    iget-object v1, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjstateSet:[I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v1, 0x1

    const v3, 0x7fffffff

    move v5, v1

    move v4, v2

    move v6, v3

    move/from16 v2, p2

    .line 237
    :goto_0
    iget v7, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjround:I

    add-int/2addr v7, v1

    iput v7, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjround:I

    if-ne v7, v3, :cond_0

    .line 238
    invoke-direct/range {p0 .. p0}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->ReInitRounds()V

    .line 239
    :cond_0
    iget-char v7, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->curChar:C

    const/16 v8, 0x40

    const/4 v9, 0x6

    const/16 v10, 0x8

    if-ge v7, v8, :cond_5

    .line 244
    :cond_1
    iget-object v7, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjstateSet:[I

    add-int/lit8 v5, v5, -0x1

    aget v7, v7, v5

    if-eqz v7, :cond_3

    if-eq v7, v1, :cond_2

    goto :goto_1

    :cond_2
    if-le v6, v9, :cond_4

    move v6, v9

    goto :goto_1

    :cond_3
    if-le v6, v10, :cond_4

    move v6, v10

    :cond_4
    :goto_1
    if-ne v5, v4, :cond_1

    goto/16 :goto_4

    :cond_5
    const/16 v8, 0x80

    if-ge v7, v8, :cond_c

    .line 263
    :cond_6
    iget-object v7, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjstateSet:[I

    add-int/lit8 v5, v5, -0x1

    aget v8, v7, v5

    if-eqz v8, :cond_9

    if-eq v8, v1, :cond_8

    const/4 v7, 0x2

    if-eq v8, v7, :cond_7

    goto :goto_2

    :cond_7
    if-le v6, v10, :cond_b

    move v6, v10

    goto :goto_2

    :cond_8
    if-le v6, v9, :cond_b

    move v6, v9

    goto :goto_2

    :cond_9
    if-le v6, v10, :cond_a

    move v6, v10

    .line 268
    :cond_a
    iget-char v8, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->curChar:C

    const/16 v11, 0x5c

    if-ne v8, v11, :cond_b

    .line 269
    iget v8, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v11, v8, 0x1

    iput v11, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjnewStateCnt:I

    aput v1, v7, v8

    :cond_b
    :goto_2
    if-ne v5, v4, :cond_6

    goto :goto_4

    :cond_c
    and-int/lit16 v8, v7, 0xff

    shr-int/2addr v8, v9

    and-int/lit8 v7, v7, 0x3f

    const-wide/16 v11, 0x1

    shl-long/2addr v11, v7

    .line 289
    :cond_d
    iget-object v7, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjstateSet:[I

    add-int/lit8 v5, v5, -0x1

    aget v7, v7, v5

    const-wide/16 v13, 0x0

    if-eqz v7, :cond_f

    if-eq v7, v1, :cond_e

    goto :goto_3

    .line 296
    :cond_e
    sget-object v7, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjbitVec0:[J

    aget-wide v15, v7, v8

    and-long/2addr v15, v11

    cmp-long v7, v15, v13

    if-eqz v7, :cond_10

    if-le v6, v9, :cond_10

    move v6, v9

    goto :goto_3

    .line 292
    :cond_f
    sget-object v7, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjbitVec0:[J

    aget-wide v15, v7, v8

    and-long/2addr v15, v11

    cmp-long v7, v15, v13

    if-eqz v7, :cond_10

    if-le v6, v10, :cond_10

    move v6, v10

    :cond_10
    :goto_3
    if-ne v5, v4, :cond_d

    :goto_4
    if-eq v6, v3, :cond_11

    .line 305
    iput v6, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjmatchedKind:I

    .line 306
    iput v2, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjmatchedPos:I

    move v6, v3

    :cond_11
    add-int/lit8 v2, v2, 0x1

    .line 310
    iget v5, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjnewStateCnt:I

    iput v4, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v4, v4, 0x3

    if-ne v5, v4, :cond_12

    return v2

    .line 312
    :cond_12
    :try_start_0
    iget-object v7, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;

    invoke-virtual {v7}, Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;->readChar()C

    move-result v7

    iput-char v7, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->curChar:C

    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    return v2
.end method

.method private final jjMoveNfa_2(II)I
    .locals 17

    move-object/from16 v0, p0

    const/4 v1, 0x3

    .line 486
    iput v1, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjnewStateCnt:I

    .line 488
    iget-object v1, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjstateSet:[I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v1, 0x1

    const v3, 0x7fffffff

    move v5, v1

    move v4, v2

    move v6, v3

    move/from16 v2, p2

    .line 492
    :goto_0
    iget v7, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjround:I

    add-int/2addr v7, v1

    iput v7, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjround:I

    if-ne v7, v3, :cond_0

    .line 493
    invoke-direct/range {p0 .. p0}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->ReInitRounds()V

    .line 494
    :cond_0
    iget-char v7, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->curChar:C

    const/16 v8, 0x40

    const/16 v9, 0x9

    const/16 v10, 0xc

    if-ge v7, v8, :cond_5

    .line 499
    :cond_1
    iget-object v7, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjstateSet:[I

    add-int/lit8 v5, v5, -0x1

    aget v7, v7, v5

    if-eqz v7, :cond_3

    if-eq v7, v1, :cond_2

    goto :goto_1

    :cond_2
    if-le v6, v9, :cond_4

    move v6, v9

    goto :goto_1

    :cond_3
    if-le v6, v10, :cond_4

    move v6, v10

    :cond_4
    :goto_1
    if-ne v5, v4, :cond_1

    goto/16 :goto_4

    :cond_5
    const/16 v8, 0x80

    if-ge v7, v8, :cond_c

    .line 518
    :cond_6
    iget-object v7, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjstateSet:[I

    add-int/lit8 v5, v5, -0x1

    aget v8, v7, v5

    if-eqz v8, :cond_9

    if-eq v8, v1, :cond_8

    const/4 v7, 0x2

    if-eq v8, v7, :cond_7

    goto :goto_2

    :cond_7
    if-le v6, v10, :cond_b

    move v6, v10

    goto :goto_2

    :cond_8
    if-le v6, v9, :cond_b

    move v6, v9

    goto :goto_2

    :cond_9
    if-le v6, v10, :cond_a

    move v6, v10

    .line 523
    :cond_a
    iget-char v8, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->curChar:C

    const/16 v11, 0x5c

    if-ne v8, v11, :cond_b

    .line 524
    iget v8, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v11, v8, 0x1

    iput v11, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjnewStateCnt:I

    aput v1, v7, v8

    :cond_b
    :goto_2
    if-ne v5, v4, :cond_6

    goto :goto_4

    :cond_c
    and-int/lit16 v8, v7, 0xff

    shr-int/lit8 v8, v8, 0x6

    and-int/lit8 v7, v7, 0x3f

    const-wide/16 v11, 0x1

    shl-long/2addr v11, v7

    .line 544
    :cond_d
    iget-object v7, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjstateSet:[I

    add-int/lit8 v5, v5, -0x1

    aget v7, v7, v5

    const-wide/16 v13, 0x0

    if-eqz v7, :cond_f

    if-eq v7, v1, :cond_e

    goto :goto_3

    .line 551
    :cond_e
    sget-object v7, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjbitVec0:[J

    aget-wide v15, v7, v8

    and-long/2addr v15, v11

    cmp-long v7, v15, v13

    if-eqz v7, :cond_10

    if-le v6, v9, :cond_10

    move v6, v9

    goto :goto_3

    .line 547
    :cond_f
    sget-object v7, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjbitVec0:[J

    aget-wide v15, v7, v8

    and-long/2addr v15, v11

    cmp-long v7, v15, v13

    if-eqz v7, :cond_10

    if-le v6, v10, :cond_10

    move v6, v10

    :cond_10
    :goto_3
    if-ne v5, v4, :cond_d

    :goto_4
    if-eq v6, v3, :cond_11

    .line 560
    iput v6, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjmatchedKind:I

    .line 561
    iput v2, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjmatchedPos:I

    move v6, v3

    :cond_11
    add-int/lit8 v2, v2, 0x1

    .line 565
    iget v5, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjnewStateCnt:I

    iput v4, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v4, v4, 0x3

    if-ne v5, v4, :cond_12

    return v2

    .line 567
    :cond_12
    :try_start_0
    iget-object v7, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;

    invoke-virtual {v7}, Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;->readChar()C

    move-result v7

    iput-char v7, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->curChar:C

    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    return v2
.end method

.method private final jjMoveNfa_3(II)I
    .locals 18

    move-object/from16 v0, p0

    const/4 v1, 0x3

    .line 350
    iput v1, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjnewStateCnt:I

    .line 352
    iget-object v1, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjstateSet:[I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v1, 0x1

    const v3, 0x7fffffff

    move v5, v1

    move v4, v2

    move v6, v3

    move/from16 v2, p2

    .line 356
    :goto_0
    iget v7, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjround:I

    add-int/2addr v7, v1

    iput v7, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjround:I

    if-ne v7, v3, :cond_0

    .line 357
    invoke-direct/range {p0 .. p0}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->ReInitRounds()V

    .line 358
    :cond_0
    iget-char v7, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->curChar:C

    const/16 v8, 0x40

    const-wide/16 v9, 0x1

    const-wide/16 v11, 0x0

    const/16 v13, 0xe

    const/4 v14, 0x2

    const/16 v15, 0xf

    if-ge v7, v8, :cond_7

    shl-long v16, v9, v7

    .line 363
    :cond_1
    iget-object v7, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjstateSet:[I

    add-int/lit8 v5, v5, -0x1

    aget v7, v7, v5

    if-eqz v7, :cond_3

    if-eq v7, v1, :cond_2

    if-eq v7, v14, :cond_3

    goto :goto_1

    :cond_2
    if-le v6, v13, :cond_6

    move v6, v13

    goto :goto_1

    :cond_3
    const-wide v7, -0x400000001L

    and-long v7, v16, v7

    cmp-long v7, v7, v11

    if-nez v7, :cond_4

    goto :goto_1

    :cond_4
    if-le v6, v15, :cond_5

    move v6, v15

    .line 371
    :cond_5
    invoke-direct {v0, v14}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjCheckNAdd(I)V

    :cond_6
    :goto_1
    if-ne v5, v4, :cond_1

    goto/16 :goto_4

    :cond_7
    const/16 v8, 0x80

    if-ge v7, v8, :cond_11

    and-int/lit8 v7, v7, 0x3f

    shl-long v16, v9, v7

    .line 386
    :cond_8
    iget-object v7, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjstateSet:[I

    add-int/lit8 v5, v5, -0x1

    aget v8, v7, v5

    const-wide/32 v9, -0x10000001

    if-eqz v8, :cond_d

    if-eq v8, v1, :cond_c

    if-eq v8, v14, :cond_9

    goto :goto_2

    :cond_9
    and-long v7, v16, v9

    cmp-long v7, v7, v11

    if-nez v7, :cond_a

    goto :goto_2

    :cond_a
    if-le v6, v15, :cond_b

    move v6, v15

    .line 407
    :cond_b
    invoke-direct {v0, v14}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_2

    :cond_c
    if-le v6, v13, :cond_10

    move v6, v13

    goto :goto_2

    :cond_d
    and-long v8, v16, v9

    cmp-long v8, v8, v11

    if-eqz v8, :cond_f

    if-le v6, v15, :cond_e

    move v6, v15

    .line 393
    :cond_e
    invoke-direct {v0, v14}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_2

    .line 395
    :cond_f
    iget-char v8, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->curChar:C

    const/16 v9, 0x5c

    if-ne v8, v9, :cond_10

    .line 396
    iget v8, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v9, v8, 0x1

    iput v9, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjnewStateCnt:I

    aput v1, v7, v8

    :cond_10
    :goto_2
    if-ne v5, v4, :cond_8

    goto :goto_4

    :cond_11
    and-int/lit16 v8, v7, 0xff

    shr-int/lit8 v8, v8, 0x6

    and-int/lit8 v7, v7, 0x3f

    shl-long/2addr v9, v7

    .line 419
    :cond_12
    iget-object v7, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjstateSet:[I

    add-int/lit8 v5, v5, -0x1

    aget v7, v7, v5

    if-eqz v7, :cond_14

    if-eq v7, v1, :cond_13

    if-eq v7, v14, :cond_14

    goto :goto_3

    .line 430
    :cond_13
    sget-object v7, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjbitVec0:[J

    aget-wide v16, v7, v8

    and-long v16, v16, v9

    cmp-long v7, v16, v11

    if-eqz v7, :cond_17

    if-le v6, v13, :cond_17

    move v6, v13

    goto :goto_3

    .line 423
    :cond_14
    sget-object v7, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjbitVec0:[J

    aget-wide v16, v7, v8

    and-long v16, v16, v9

    cmp-long v7, v16, v11

    if-nez v7, :cond_15

    goto :goto_3

    :cond_15
    if-le v6, v15, :cond_16

    move v6, v15

    .line 427
    :cond_16
    invoke-direct {v0, v14}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjCheckNAdd(I)V

    :cond_17
    :goto_3
    if-ne v5, v4, :cond_12

    :goto_4
    if-eq v6, v3, :cond_18

    .line 439
    iput v6, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjmatchedKind:I

    .line 440
    iput v2, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjmatchedPos:I

    move v6, v3

    :cond_18
    add-int/lit8 v2, v2, 0x1

    .line 444
    iget v5, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjnewStateCnt:I

    iput v4, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v4, v4, 0x3

    if-ne v5, v4, :cond_19

    return v2

    .line 446
    :cond_19
    :try_start_0
    iget-object v7, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;

    invoke-virtual {v7}, Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;->readChar()C

    move-result v7

    iput-char v7, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->curChar:C

    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    return v2
.end method

.method private final jjMoveStringLiteralDfa0_0()I
    .locals 5

    .line 61
    iget-char v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->curChar:C

    const/16 v1, 0xa

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq v0, v1, :cond_4

    const/16 v1, 0xd

    if-eq v0, v1, :cond_3

    const/16 v4, 0x22

    if-eq v0, v4, :cond_2

    const/16 v1, 0x28

    if-eq v0, v1, :cond_1

    const/16 v1, 0x2e

    if-eq v0, v1, :cond_0

    .line 74
    invoke-direct {p0, v2, v3}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjMoveNfa_0(II)I

    move-result v0

    return v0

    :cond_0
    const/16 v0, 0x12

    .line 72
    invoke-direct {p0, v3, v0}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x4

    .line 70
    invoke-direct {p0, v3, v0}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    .line 68
    :cond_2
    invoke-direct {p0, v3, v1}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :cond_3
    const/4 v0, 0x1

    .line 66
    invoke-direct {p0, v3, v0, v3}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    .line 64
    :cond_4
    invoke-direct {p0, v3, v2, v3}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0
.end method

.method private final jjMoveStringLiteralDfa0_1()I
    .locals 3

    .line 214
    iget-char v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->curChar:C

    const/16 v1, 0x28

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/16 v1, 0x29

    if-eq v0, v1, :cond_0

    .line 221
    invoke-direct {p0, v2, v2}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjMoveNfa_1(II)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x5

    .line 219
    invoke-direct {p0, v2, v0}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x7

    .line 217
    invoke-direct {p0, v2, v0}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0
.end method

.method private final jjMoveStringLiteralDfa0_2()I
    .locals 3

    .line 472
    iget-char v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->curChar:C

    const/16 v1, 0x28

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/16 v1, 0x29

    if-eq v0, v1, :cond_0

    .line 479
    invoke-direct {p0, v2, v2}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjMoveNfa_2(II)I

    move-result v0

    return v0

    :cond_0
    const/16 v0, 0xb

    .line 477
    invoke-direct {p0, v2, v0}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :cond_1
    const/16 v0, 0xa

    .line 475
    invoke-direct {p0, v2, v0}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0
.end method

.method private final jjMoveStringLiteralDfa0_3()I
    .locals 3

    .line 338
    iget-char v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->curChar:C

    const/16 v1, 0x22

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 343
    invoke-direct {p0, v2, v2}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjMoveNfa_3(II)I

    move-result v0

    return v0

    :cond_0
    const/16 v0, 0x10

    .line 341
    invoke-direct {p0, v2, v0}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0
.end method

.method private final jjStartNfaWithStates_0(III)I
    .locals 0

    .line 53
    iput p2, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjmatchedKind:I

    .line 54
    iput p1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjmatchedPos:I

    .line 55
    :try_start_0
    iget-object p2, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;

    invoke-virtual {p2}, Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;->readChar()C

    move-result p2

    iput-char p2, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->curChar:C

    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p1, p1, 0x1

    .line 57
    invoke-direct {p0, p3, p1}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjMoveNfa_0(II)I

    move-result p1

    return p1

    :catch_0
    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private final jjStartNfaWithStates_1(III)I
    .locals 0

    .line 206
    iput p2, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjmatchedKind:I

    .line 207
    iput p1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjmatchedPos:I

    .line 208
    :try_start_0
    iget-object p2, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;

    invoke-virtual {p2}, Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;->readChar()C

    move-result p2

    iput-char p2, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->curChar:C

    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p1, p1, 0x1

    .line 210
    invoke-direct {p0, p3, p1}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjMoveNfa_1(II)I

    move-result p1

    return p1

    :catch_0
    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private final jjStartNfaWithStates_2(III)I
    .locals 0

    .line 464
    iput p2, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjmatchedKind:I

    .line 465
    iput p1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjmatchedPos:I

    .line 466
    :try_start_0
    iget-object p2, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;

    invoke-virtual {p2}, Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;->readChar()C

    move-result p2

    iput-char p2, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->curChar:C

    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p1, p1, 0x1

    .line 468
    invoke-direct {p0, p3, p1}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjMoveNfa_2(II)I

    move-result p1

    return p1

    :catch_0
    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private final jjStartNfaWithStates_3(III)I
    .locals 0

    .line 330
    iput p2, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjmatchedKind:I

    .line 331
    iput p1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjmatchedPos:I

    .line 332
    :try_start_0
    iget-object p2, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;

    invoke-virtual {p2}, Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;->readChar()C

    move-result p2

    iput-char p2, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->curChar:C

    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p1, p1, 0x1

    .line 334
    invoke-direct {p0, p3, p1}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjMoveNfa_3(II)I

    move-result p1

    return p1

    :catch_0
    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private final jjStartNfa_0(IJ)I
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjStopStringLiteralDfa_0(IJ)I

    move-result p2

    add-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p2, p1}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjMoveNfa_0(II)I

    move-result p1

    return p1
.end method

.method private final jjStartNfa_1(IJ)I
    .locals 0

    .line 202
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjStopStringLiteralDfa_1(IJ)I

    move-result p2

    add-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p2, p1}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjMoveNfa_1(II)I

    move-result p1

    return p1
.end method

.method private final jjStartNfa_2(IJ)I
    .locals 0

    .line 460
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjStopStringLiteralDfa_2(IJ)I

    move-result p2

    add-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p2, p1}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjMoveNfa_2(II)I

    move-result p1

    return p1
.end method

.method private final jjStartNfa_3(IJ)I
    .locals 0

    .line 326
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjStopStringLiteralDfa_3(IJ)I

    move-result p2

    add-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p2, p1}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjMoveNfa_3(II)I

    move-result p1

    return p1
.end method

.method private final jjStopAtPos(II)I
    .locals 0

    .line 47
    iput p2, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjmatchedKind:I

    .line 48
    iput p1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjmatchedPos:I

    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private final jjStopStringLiteralDfa_0(IJ)I
    .locals 0

    const/4 p1, -0x1

    return p1
.end method

.method private final jjStopStringLiteralDfa_1(IJ)I
    .locals 0

    const/4 p1, -0x1

    return p1
.end method

.method private final jjStopStringLiteralDfa_2(IJ)I
    .locals 0

    const/4 p1, -0x1

    return p1
.end method

.method private final jjStopStringLiteralDfa_3(IJ)I
    .locals 0

    const/4 p1, -0x1

    return p1
.end method


# virtual methods
.method MoreLexicalActions()V
    .locals 5

    .line 776
    iget v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjimageLen:I

    iget v1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjmatchedPos:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->lengthOfMatch:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjimageLen:I

    .line 777
    iget v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjmatchedKind:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0    # 0x8 0xc
    goto/16 :goto_0

    .line 822
    :pswitch_1    # 0xe
    iget-object v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_0

    .line 823
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->image:Ljava/lang/StringBuffer;

    .line 824
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;

    iget v3, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjimageLen:I

    invoke-virtual {v2, v3}, Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 825
    iput v1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjimageLen:I

    .line 826
    iget-object v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->image:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 815
    :pswitch_2    # 0xd
    iget-object v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_1

    .line 816
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->image:Ljava/lang/StringBuffer;

    .line 817
    :cond_1
    iget-object v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v3, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;

    iget v4, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjimageLen:I

    invoke-virtual {v3, v4}, Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 818
    iput v1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjimageLen:I

    .line 819
    iget-object v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->image:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 808
    :pswitch_3    # 0xb
    iget-object v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_2

    .line 809
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->image:Ljava/lang/StringBuffer;

    .line 810
    :cond_2
    iget-object v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v3, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;

    iget v4, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjimageLen:I

    invoke-virtual {v3, v4}, Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 811
    iput v1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjimageLen:I

    .line 812
    iget v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->commentNest:I

    sub-int/2addr v0, v2

    iput v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->commentNest:I

    if-nez v0, :cond_7

    invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->SwitchTo(I)V

    goto/16 :goto_0

    .line 801
    :pswitch_4    # 0xa
    iget-object v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_3

    .line 802
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->image:Ljava/lang/StringBuffer;

    .line 803
    :cond_3
    iget-object v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v3, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;

    iget v4, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjimageLen:I

    invoke-virtual {v3, v4}, Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 804
    iput v1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjimageLen:I

    .line 805
    iget v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->commentNest:I

    add-int/2addr v0, v2

    iput v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->commentNest:I

    goto :goto_0

    .line 794
    :pswitch_5    # 0x9
    iget-object v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_4

    .line 795
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->image:Ljava/lang/StringBuffer;

    .line 796
    :cond_4
    iget-object v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;

    iget v3, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjimageLen:I

    invoke-virtual {v2, v3}, Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 797
    iput v1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjimageLen:I

    .line 798
    iget-object v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->image:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 787
    :pswitch_6    # 0x7
    iget-object v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_5

    .line 788
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->image:Ljava/lang/StringBuffer;

    .line 789
    :cond_5
    iget-object v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v3, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;

    iget v4, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjimageLen:I

    invoke-virtual {v3, v4}, Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 790
    iput v1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjimageLen:I

    .line 791
    iput v2, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->commentNest:I

    goto :goto_0

    .line 780
    :pswitch_7    # 0x6
    iget-object v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_6

    .line 781
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->image:Ljava/lang/StringBuffer;

    .line 782
    :cond_6
    iget-object v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;

    iget v3, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjimageLen:I

    invoke-virtual {v2, v3}, Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 783
    iput v1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjimageLen:I

    .line 784
    iget-object v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->image:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    :cond_7
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_7    # 0x6
        :pswitch_6    # 0x7
        :pswitch_0    # 0x8
        :pswitch_5    # 0x9
        :pswitch_4    # 0xa
        :pswitch_3    # 0xb
        :pswitch_0    # 0xc
        :pswitch_2    # 0xd
        :pswitch_1    # 0xe
    .end packed-switch
.end method

.method public ReInit(Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;)V
    .locals 1

    const/4 v0, 0x0

    .line 615
    iput v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjnewStateCnt:I

    iput v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjmatchedPos:I

    .line 616
    iget v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->defaultLexState:I

    iput v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->curLexState:I

    .line 617
    iput-object p1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;

    .line 618
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->ReInitRounds()V

    return-void
.end method

.method public ReInit(Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;I)V
    .locals 0

    .line 629
    invoke-virtual {p0, p1}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->ReInit(Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;)V

    .line 630
    invoke-virtual {p0, p2}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->SwitchTo(I)V

    return-void
.end method

.method public SwitchTo(I)V
    .locals 3

    const/4 v0, 0x4

    if-ge p1, v0, :cond_0

    if-ltz p1, :cond_0

    .line 637
    iput p1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->curLexState:I

    return-void

    .line 635
    :cond_0
    new-instance v0, Lorg/apache/james/mime4j/field/mimeversion/parser/TokenMgrError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error: Ignoring invalid lexical state : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ". State unchanged."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, Lorg/apache/james/mime4j/field/mimeversion/parser/TokenMgrError;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method TokenLexicalActions(Lorg/apache/james/mime4j/field/mimeversion/parser/Token;)V
    .locals 4

    .line 834
    iget v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjmatchedKind:I

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 837
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_1

    .line 838
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->image:Ljava/lang/StringBuffer;

    .line 839
    :cond_1
    iget-object v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;

    iget v2, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjimageLen:I

    iget v3, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjmatchedPos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->lengthOfMatch:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 840
    iget-object v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->image:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lorg/apache/james/mime4j/field/mimeversion/parser/Token;->image:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public getNextToken()Lorg/apache/james/mime4j/field/mimeversion/parser/Token;
    .locals 20

    move-object/from16 v0, p0

    .line 663
    const-string v1, ""

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v2

    move v5, v3

    .line 672
    :cond_0
    :goto_0
    :try_start_0
    iget-object v6, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;

    invoke-virtual {v6}, Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;->BeginToken()C

    move-result v6

    iput-char v6, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->curChar:C

    .line 681
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    iput-object v2, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->image:Ljava/lang/StringBuffer;

    .line 682
    iput v3, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjimageLen:I

    .line 686
    :goto_1
    iget v6, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->curLexState:I

    const v7, 0x7fffffff

    const/4 v8, 0x1

    if-eqz v6, :cond_4

    if-eq v6, v8, :cond_3

    const/4 v9, 0x2

    if-eq v6, v9, :cond_2

    const/4 v9, 0x3

    if-eq v6, v9, :cond_1

    goto :goto_2

    .line 704
    :cond_1
    iput v7, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjmatchedKind:I

    .line 705
    iput v3, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjmatchedPos:I

    .line 706
    invoke-direct/range {p0 .. p0}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjMoveStringLiteralDfa0_3()I

    move-result v5

    goto :goto_2

    .line 699
    :cond_2
    iput v7, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjmatchedKind:I

    .line 700
    iput v3, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjmatchedPos:I

    .line 701
    invoke-direct/range {p0 .. p0}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjMoveStringLiteralDfa0_2()I

    move-result v5

    goto :goto_2

    .line 694
    :cond_3
    iput v7, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjmatchedKind:I

    .line 695
    iput v3, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjmatchedPos:I

    .line 696
    invoke-direct/range {p0 .. p0}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjMoveStringLiteralDfa0_1()I

    move-result v5

    goto :goto_2

    .line 689
    :cond_4
    iput v7, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjmatchedKind:I

    .line 690
    iput v3, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjmatchedPos:I

    .line 691
    invoke-direct/range {p0 .. p0}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjMoveStringLiteralDfa0_0()I

    move-result v5

    .line 709
    :goto_2
    iget v6, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjmatchedKind:I

    if-eq v6, v7, :cond_c

    .line 711
    iget v6, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjmatchedPos:I

    add-int/lit8 v9, v6, 0x1

    if-ge v9, v5, :cond_5

    .line 712
    iget-object v9, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;

    sub-int v6, v5, v6

    sub-int/2addr v6, v8

    invoke-virtual {v9, v6}, Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;->backup(I)V

    .line 713
    :cond_5
    sget-object v6, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjtoToken:[J

    iget v9, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjmatchedKind:I

    shr-int/lit8 v10, v9, 0x6

    aget-wide v10, v6, v10

    and-int/lit8 v6, v9, 0x3f

    const-wide/16 v12, 0x1

    shl-long v14, v12, v6

    and-long/2addr v10, v14

    const-wide/16 v14, 0x0

    cmp-long v6, v10, v14

    const/4 v10, -0x1

    if-eqz v6, :cond_7

    .line 715
    invoke-virtual/range {p0 .. p0}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjFillToken()Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    move-result-object v1

    .line 716
    iput-object v4, v1, Lorg/apache/james/mime4j/field/mimeversion/parser/Token;->specialToken:Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    .line 717
    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->TokenLexicalActions(Lorg/apache/james/mime4j/field/mimeversion/parser/Token;)V

    .line 718
    sget-object v2, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjnewLexState:[I

    iget v3, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjmatchedKind:I

    aget v2, v2, v3

    if-eq v2, v10, :cond_6

    .line 719
    iput v2, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->curLexState:I

    :cond_6
    return-object v1

    .line 722
    :cond_7
    sget-object v6, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjtoSkip:[J

    shr-int/lit8 v11, v9, 0x6

    aget-wide v16, v6, v11

    and-int/lit8 v6, v9, 0x3f

    shl-long v18, v12, v6

    and-long v16, v16, v18

    cmp-long v6, v16, v14

    if-eqz v6, :cond_a

    .line 724
    sget-object v6, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjtoSpecial:[J

    shr-int/lit8 v7, v9, 0x6

    aget-wide v7, v6, v7

    and-int/lit8 v6, v9, 0x3f

    shl-long v11, v12, v6

    and-long v6, v7, v11

    cmp-long v6, v6, v14

    if-eqz v6, :cond_9

    .line 726
    invoke-virtual/range {p0 .. p0}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjFillToken()Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    move-result-object v6

    if-nez v4, :cond_8

    goto :goto_3

    .line 731
    :cond_8
    iput-object v4, v6, Lorg/apache/james/mime4j/field/mimeversion/parser/Token;->specialToken:Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    .line 732
    iput-object v6, v4, Lorg/apache/james/mime4j/field/mimeversion/parser/Token;->next:Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    :goto_3
    move-object v4, v6

    .line 735
    :cond_9
    sget-object v6, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjnewLexState:[I

    iget v7, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjmatchedKind:I

    aget v6, v6, v7

    if-eq v6, v10, :cond_0

    .line 736
    iput v6, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->curLexState:I

    goto/16 :goto_0

    .line 739
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->MoreLexicalActions()V

    .line 740
    sget-object v5, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjnewLexState:[I

    iget v6, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjmatchedKind:I

    aget v5, v5, v6

    if-eq v5, v10, :cond_b

    .line 741
    iput v5, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->curLexState:I

    .line 743
    :cond_b
    iput v7, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjmatchedKind:I

    .line 745
    :try_start_1
    iget-object v5, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;

    invoke-virtual {v5}, Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;->readChar()C

    move-result v5

    iput-char v5, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->curChar:C

    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move v5, v3

    goto/16 :goto_1

    :catch_0
    move v5, v3

    .line 750
    :cond_c
    iget-object v4, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;

    invoke-virtual {v4}, Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;->getEndLine()I

    move-result v4

    .line 751
    iget-object v6, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;

    invoke-virtual {v6}, Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;->getEndColumn()I

    move-result v6

    .line 754
    :try_start_2
    iget-object v7, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;

    invoke-virtual {v7}, Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;->readChar()C

    iget-object v7, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;

    invoke-virtual {v7, v8}, Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;->backup(I)V

    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move v10, v3

    move v12, v4

    move v13, v6

    goto :goto_7

    :catch_1
    if-gt v5, v8, :cond_d

    move-object v2, v1

    goto :goto_4

    .line 757
    :cond_d
    iget-object v2, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;->GetImage()Ljava/lang/String;

    move-result-object v2

    .line 758
    :goto_4
    iget-char v7, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->curChar:C

    const/16 v9, 0xa

    if-eq v7, v9, :cond_f

    const/16 v9, 0xd

    if-ne v7, v9, :cond_e

    goto :goto_5

    :cond_e
    add-int/lit8 v3, v6, 0x1

    goto :goto_6

    :cond_f
    :goto_5
    add-int/lit8 v4, v4, 0x1

    :goto_6
    move v13, v3

    move v12, v4

    move v10, v8

    :goto_7
    if-nez v10, :cond_11

    .line 766
    iget-object v2, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;

    invoke-virtual {v2, v8}, Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;->backup(I)V

    if-gt v5, v8, :cond_10

    goto :goto_8

    .line 767
    :cond_10
    iget-object v1, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;->GetImage()Ljava/lang/String;

    move-result-object v1

    :goto_8
    move-object v14, v1

    goto :goto_9

    :cond_11
    move-object v14, v2

    .line 769
    :goto_9
    new-instance v1, Lorg/apache/james/mime4j/field/mimeversion/parser/TokenMgrError;

    iget v11, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->curLexState:I

    iget-char v15, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->curChar:C

    const/16 v16, 0x0

    move-object v9, v1

    invoke-direct/range {v9 .. v16}, Lorg/apache/james/mime4j/field/mimeversion/parser/TokenMgrError;-><init>(ZIIILjava/lang/String;CI)V

    throw v1

    .line 676
    :catch_2
    iput v3, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjmatchedKind:I

    .line 677
    invoke-virtual/range {p0 .. p0}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjFillToken()Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    move-result-object v1

    .line 678
    iput-object v4, v1, Lorg/apache/james/mime4j/field/mimeversion/parser/Token;->specialToken:Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    return-object v1
.end method

.method protected jjFillToken()Lorg/apache/james/mime4j/field/mimeversion/parser/Token;
    .locals 3

    .line 642
    iget v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjmatchedKind:I

    invoke-static {v0}, Lorg/apache/james/mime4j/field/mimeversion/parser/Token;->newToken(I)Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    move-result-object v0

    .line 643
    iget v1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjmatchedKind:I

    iput v1, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/Token;->kind:I

    .line 644
    sget-object v1, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

    iget v2, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjmatchedKind:I

    aget-object v1, v1, v2

    if-nez v1, :cond_0

    .line 645
    iget-object v1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;->GetImage()Ljava/lang/String;

    move-result-object v1

    :cond_0
    iput-object v1, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/Token;->image:Ljava/lang/String;

    .line 646
    iget-object v1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;->getBeginLine()I

    move-result v1

    iput v1, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/Token;->beginLine:I

    .line 647
    iget-object v1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;->getBeginColumn()I

    move-result v1

    iput v1, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/Token;->beginColumn:I

    .line 648
    iget-object v1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;->getEndLine()I

    move-result v1

    iput v1, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/Token;->endLine:I

    .line 649
    iget-object v1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;->getEndColumn()I

    move-result v1

    iput v1, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/Token;->endColumn:I

    return-object v0
.end method

.method public setDebugStream(Ljava/io/PrintStream;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->debugStream:Ljava/io/PrintStream;

    return-void
.end method
