.class public Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;
.super Ljava/lang/Object;
.source "ContentLanguageParserTokenManager.java"

# interfaces
.implements Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserConstants;


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

.field protected input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

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

    .line 268
    new-array v1, v0, [J

    fill-array-data v1, :array_0

    sput-object v1, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjbitVec0:[J

    const/4 v1, 0x0

    .line 615
    new-array v2, v1, [I

    sput-object v2, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjnextStates:[I

    const/16 v2, 0x17

    .line 617
    new-array v3, v2, [Ljava/lang/String;

    const-string v4, ""

    aput-object v4, v3, v1

    const-string v4, ","

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const-string v4, "-"

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

    aput-object v7, v3, v8

    const/16 v8, 0x13

    aput-object v7, v3, v8

    const/16 v8, 0x14

    const-string v9, "."

    aput-object v9, v3, v8

    const/16 v8, 0x15

    aput-object v7, v3, v8

    const/16 v8, 0x16

    aput-object v7, v3, v8

    sput-object v3, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

    .line 620
    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "DEFAULT"

    aput-object v3, v0, v1

    const-string v3, "INCOMMENT"

    aput-object v3, v0, v5

    const-string v3, "NESTED_COMMENT"

    aput-object v3, v0, v6

    const-string v3, "INQUOTEDSTRING"

    aput-object v3, v0, v4

    sput-object v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->lexStateNames:[Ljava/lang/String;

    .line 626
    new-array v0, v2, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjnewLexState:[I

    .line 629
    new-array v0, v5, [J

    const-wide/32 v2, 0x1f0007

    aput-wide v2, v0, v1

    sput-object v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjtoToken:[J

    .line 632
    new-array v0, v5, [J

    const-wide/16 v2, 0x28

    aput-wide v2, v0, v1

    sput-object v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjtoSkip:[J

    .line 635
    new-array v0, v5, [J

    const-wide/16 v2, 0x8

    aput-wide v2, v0, v1

    sput-object v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjtoSpecial:[J

    .line 638
    new-array v0, v5, [J

    const-wide/32 v2, 0xffd0

    aput-wide v2, v0, v1

    sput-object v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjtoMore:[J

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
        -0x1
        -0x1
    .end array-data
.end method

.method public constructor <init>(Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;)V
    .locals 1

    .line 648
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iput-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->debugStream:Ljava/io/PrintStream;

    const/4 v0, 0x4

    .line 642
    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjrounds:[I

    const/16 v0, 0x8

    .line 643
    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjstateSet:[I

    const/4 v0, 0x0

    .line 697
    iput v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->curLexState:I

    .line 698
    iput v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->defaultLexState:I

    .line 651
    iput-object p1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    return-void
.end method

.method public constructor <init>(Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;I)V
    .locals 0

    .line 654
    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;-><init>(Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;)V

    .line 655
    invoke-virtual {p0, p2}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->SwitchTo(I)V

    return-void
.end method

.method private final ReInitRounds()V
    .locals 3

    const v0, -0x7fffffff

    .line 667
    iput v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjround:I

    const/4 v0, 0x4

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_0

    .line 669
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjrounds:[I

    const/high16 v2, -0x80000000

    aput v2, v0, v1

    move v0, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final jjAddStates(II)V
    .locals 3

    .line 90
    :goto_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjstateSet:[I

    iget v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjnewStateCnt:I

    sget-object v2, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjnextStates:[I

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

    .line 81
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjrounds:[I

    aget v1, v0, p1

    iget v2, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjround:I

    if-eq v1, v2, :cond_0

    .line 83
    iget-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjstateSet:[I

    iget v3, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjnewStateCnt:I

    aput p1, v1, v3

    .line 84
    aput v2, v0, p1

    :cond_0
    return-void
.end method

.method private final jjCheckNAddStates(I)V
    .locals 2

    .line 106
    sget-object v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjnextStates:[I

    aget v1, v0, p1

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjCheckNAdd(I)V

    add-int/lit8 p1, p1, 0x1

    .line 107
    aget p1, v0, p1

    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjCheckNAdd(I)V

    return-void
.end method

.method private final jjCheckNAddStates(II)V
    .locals 1

    .line 101
    :goto_0
    sget-object v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjnextStates:[I

    aget v0, v0, p1

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjCheckNAdd(I)V

    add-int/lit8 v0, p1, 0x1

    if-ne p1, p2, :cond_0

    return-void

    :cond_0
    move p1, v0

    goto :goto_0
.end method

.method private final jjCheckNAddTwoStates(II)V
    .locals 0

    .line 95
    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjCheckNAdd(I)V

    .line 96
    invoke-direct {p0, p2}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjCheckNAdd(I)V

    return-void
.end method

.method private final jjMoveNfa_0(II)I
    .locals 20

    move-object/from16 v0, p0

    const/4 v1, 0x4

    .line 113
    iput v1, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjnewStateCnt:I

    .line 115
    iget-object v2, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjstateSet:[I

    const/4 v3, 0x0

    aput p1, v2, v3

    const/4 v2, 0x1

    const v4, 0x7fffffff

    move/from16 v5, p2

    move v6, v2

    move v8, v3

    move v7, v4

    .line 119
    :goto_0
    iget v9, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjround:I

    add-int/2addr v9, v2

    iput v9, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjround:I

    if-ne v9, v4, :cond_0

    .line 120
    invoke-direct/range {p0 .. p0}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->ReInitRounds()V

    .line 121
    :cond_0
    iget-char v9, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->curChar:C

    const/16 v10, 0x40

    const-wide/16 v11, 0x1

    const/16 v13, 0x13

    const-wide/16 v14, 0x0

    const/4 v4, 0x3

    if-ge v9, v10, :cond_11

    shl-long v16, v11, v9

    .line 126
    :cond_1
    iget-object v9, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjstateSet:[I

    add-int/lit8 v6, v6, -0x1

    aget v9, v9, v6

    const-wide v10, 0x100002600L

    if-eqz v9, :cond_e

    const-wide/high16 v18, 0x3ff000000000000L

    const/16 v12, 0x11

    if-eq v9, v2, :cond_b

    if-eq v9, v4, :cond_8

    if-eq v9, v1, :cond_2

    goto :goto_3

    :cond_2
    and-long v18, v16, v18

    cmp-long v9, v18, v14

    if-eqz v9, :cond_4

    if-le v7, v13, :cond_3

    move v7, v13

    .line 133
    :cond_3
    invoke-direct {v0, v4}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_1

    :cond_4
    and-long v10, v16, v10

    cmp-long v10, v10, v14

    if-eqz v10, :cond_6

    if-le v7, v4, :cond_5

    move v7, v4

    .line 139
    :cond_5
    invoke-direct {v0, v3}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjCheckNAdd(I)V

    :cond_6
    :goto_1
    if-eqz v9, :cond_10

    if-le v7, v12, :cond_7

    goto :goto_2

    :cond_7
    move v12, v7

    .line 145
    :goto_2
    invoke-direct {v0, v2}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjCheckNAdd(I)V

    move v7, v12

    goto :goto_3

    :cond_8
    and-long v9, v16, v18

    cmp-long v9, v9, v14

    if-nez v9, :cond_9

    goto :goto_3

    :cond_9
    if-le v7, v13, :cond_a

    move v7, v13

    .line 166
    :cond_a
    invoke-direct {v0, v4}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_3

    :cond_b
    and-long v9, v16, v18

    cmp-long v9, v9, v14

    if-nez v9, :cond_c

    goto :goto_3

    :cond_c
    if-le v7, v12, :cond_d

    move v7, v12

    .line 159
    :cond_d
    invoke-direct {v0, v2}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_3

    :cond_e
    and-long v9, v16, v10

    cmp-long v9, v9, v14

    if-nez v9, :cond_f

    goto :goto_3

    .line 152
    :cond_f
    invoke-direct {v0, v3}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjCheckNAdd(I)V

    move v7, v4

    :cond_10
    :goto_3
    if-ne v6, v8, :cond_1

    goto/16 :goto_7

    :cond_11
    const/16 v10, 0x80

    if-ge v9, v10, :cond_1e

    and-int/lit8 v9, v9, 0x3f

    shl-long v9, v11, v9

    .line 177
    :goto_4
    iget-object v11, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjstateSet:[I

    add-int/lit8 v6, v6, -0x1

    aget v11, v11, v6

    const-wide v16, 0x7fffffe07fffffeL

    const/4 v12, 0x2

    const/16 v2, 0x12

    if-eq v11, v12, :cond_19

    if-eq v11, v4, :cond_16

    if-eq v11, v1, :cond_12

    goto :goto_6

    :cond_12
    and-long v16, v9, v16

    cmp-long v11, v16, v14

    if-eqz v11, :cond_14

    if-le v7, v13, :cond_13

    move v7, v13

    .line 184
    :cond_13
    invoke-direct {v0, v4}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjCheckNAdd(I)V

    :cond_14
    if-eqz v11, :cond_1c

    if-le v7, v2, :cond_15

    goto :goto_5

    :cond_15
    move v2, v7

    .line 190
    :goto_5
    invoke-direct {v0, v12}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjCheckNAdd(I)V

    move v7, v2

    goto :goto_6

    :cond_16
    and-long v11, v9, v16

    cmp-long v2, v11, v14

    if-nez v2, :cond_17

    goto :goto_6

    :cond_17
    if-le v7, v13, :cond_18

    move v7, v13

    .line 205
    :cond_18
    invoke-direct {v0, v4}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_6

    :cond_19
    and-long v16, v9, v16

    cmp-long v11, v16, v14

    if-nez v11, :cond_1a

    goto :goto_6

    :cond_1a
    if-le v7, v2, :cond_1b

    move v7, v2

    .line 198
    :cond_1b
    invoke-direct {v0, v12}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjCheckNAdd(I)V

    :cond_1c
    :goto_6
    if-ne v6, v8, :cond_1d

    goto :goto_7

    :cond_1d
    const/4 v2, 0x1

    goto :goto_4

    .line 217
    :cond_1e
    iget-object v2, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjstateSet:[I

    add-int/lit8 v6, v6, -0x1

    aget v2, v2, v6

    if-ne v6, v8, :cond_1e

    :goto_7
    const v2, 0x7fffffff

    if-eq v7, v2, :cond_1f

    .line 225
    iput v7, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedKind:I

    .line 226
    iput v5, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedPos:I

    move v7, v2

    :cond_1f
    add-int/lit8 v5, v5, 0x1

    .line 230
    iget v6, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjnewStateCnt:I

    iput v8, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v8, v8, 0x4

    if-ne v6, v8, :cond_20

    return v5

    .line 232
    :cond_20
    :try_start_0
    iget-object v4, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    invoke-virtual {v4}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->readChar()C

    move-result v4

    iput-char v4, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->curChar:C

    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v2

    const/4 v2, 0x1

    goto/16 :goto_0

    :catch_0
    return v5
.end method

.method private final jjMoveNfa_1(II)I
    .locals 17

    move-object/from16 v0, p0

    const/4 v1, 0x3

    .line 275
    iput v1, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjnewStateCnt:I

    .line 277
    iget-object v1, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjstateSet:[I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v1, 0x1

    const v3, 0x7fffffff

    move v5, v1

    move v4, v2

    move v6, v3

    move/from16 v2, p2

    .line 281
    :goto_0
    iget v7, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjround:I

    add-int/2addr v7, v1

    iput v7, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjround:I

    if-ne v7, v3, :cond_0

    .line 282
    invoke-direct/range {p0 .. p0}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->ReInitRounds()V

    .line 283
    :cond_0
    iget-char v7, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->curChar:C

    const/16 v8, 0x40

    const/4 v9, 0x6

    const/16 v10, 0x8

    if-ge v7, v8, :cond_5

    .line 288
    :cond_1
    iget-object v7, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjstateSet:[I

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

    .line 307
    :cond_6
    iget-object v7, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjstateSet:[I

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

    .line 312
    :cond_a
    iget-char v8, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->curChar:C

    const/16 v11, 0x5c

    if-ne v8, v11, :cond_b

    .line 313
    iget v8, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v11, v8, 0x1

    iput v11, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjnewStateCnt:I

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

    .line 333
    :cond_d
    iget-object v7, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjstateSet:[I

    add-int/lit8 v5, v5, -0x1

    aget v7, v7, v5

    const-wide/16 v13, 0x0

    if-eqz v7, :cond_f

    if-eq v7, v1, :cond_e

    goto :goto_3

    .line 340
    :cond_e
    sget-object v7, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjbitVec0:[J

    aget-wide v15, v7, v8

    and-long/2addr v15, v11

    cmp-long v7, v15, v13

    if-eqz v7, :cond_10

    if-le v6, v9, :cond_10

    move v6, v9

    goto :goto_3

    .line 336
    :cond_f
    sget-object v7, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjbitVec0:[J

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

    .line 349
    iput v6, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedKind:I

    .line 350
    iput v2, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedPos:I

    move v6, v3

    :cond_11
    add-int/lit8 v2, v2, 0x1

    .line 354
    iget v5, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjnewStateCnt:I

    iput v4, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v4, v4, 0x3

    if-ne v5, v4, :cond_12

    return v2

    .line 356
    :cond_12
    :try_start_0
    iget-object v7, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    invoke-virtual {v7}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->readChar()C

    move-result v7

    iput-char v7, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->curChar:C

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

    .line 530
    iput v1, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjnewStateCnt:I

    .line 532
    iget-object v1, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjstateSet:[I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v1, 0x1

    const v3, 0x7fffffff

    move v5, v1

    move v4, v2

    move v6, v3

    move/from16 v2, p2

    .line 536
    :goto_0
    iget v7, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjround:I

    add-int/2addr v7, v1

    iput v7, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjround:I

    if-ne v7, v3, :cond_0

    .line 537
    invoke-direct/range {p0 .. p0}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->ReInitRounds()V

    .line 538
    :cond_0
    iget-char v7, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->curChar:C

    const/16 v8, 0x40

    const/16 v9, 0x9

    const/16 v10, 0xc

    if-ge v7, v8, :cond_5

    .line 543
    :cond_1
    iget-object v7, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjstateSet:[I

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

    .line 562
    :cond_6
    iget-object v7, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjstateSet:[I

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

    .line 567
    :cond_a
    iget-char v8, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->curChar:C

    const/16 v11, 0x5c

    if-ne v8, v11, :cond_b

    .line 568
    iget v8, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v11, v8, 0x1

    iput v11, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjnewStateCnt:I

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

    .line 588
    :cond_d
    iget-object v7, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjstateSet:[I

    add-int/lit8 v5, v5, -0x1

    aget v7, v7, v5

    const-wide/16 v13, 0x0

    if-eqz v7, :cond_f

    if-eq v7, v1, :cond_e

    goto :goto_3

    .line 595
    :cond_e
    sget-object v7, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjbitVec0:[J

    aget-wide v15, v7, v8

    and-long/2addr v15, v11

    cmp-long v7, v15, v13

    if-eqz v7, :cond_10

    if-le v6, v9, :cond_10

    move v6, v9

    goto :goto_3

    .line 591
    :cond_f
    sget-object v7, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjbitVec0:[J

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

    .line 604
    iput v6, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedKind:I

    .line 605
    iput v2, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedPos:I

    move v6, v3

    :cond_11
    add-int/lit8 v2, v2, 0x1

    .line 609
    iget v5, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjnewStateCnt:I

    iput v4, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v4, v4, 0x3

    if-ne v5, v4, :cond_12

    return v2

    .line 611
    :cond_12
    :try_start_0
    iget-object v7, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    invoke-virtual {v7}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->readChar()C

    move-result v7

    iput-char v7, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->curChar:C

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

    .line 394
    iput v1, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjnewStateCnt:I

    .line 396
    iget-object v1, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjstateSet:[I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v1, 0x1

    const v3, 0x7fffffff

    move v5, v1

    move v4, v2

    move v6, v3

    move/from16 v2, p2

    .line 400
    :goto_0
    iget v7, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjround:I

    add-int/2addr v7, v1

    iput v7, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjround:I

    if-ne v7, v3, :cond_0

    .line 401
    invoke-direct/range {p0 .. p0}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->ReInitRounds()V

    .line 402
    :cond_0
    iget-char v7, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->curChar:C

    const/16 v8, 0x40

    const-wide/16 v9, 0x1

    const-wide/16 v11, 0x0

    const/16 v13, 0xe

    const/4 v14, 0x2

    const/16 v15, 0xf

    if-ge v7, v8, :cond_7

    shl-long v16, v9, v7

    .line 407
    :cond_1
    iget-object v7, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjstateSet:[I

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

    .line 415
    :cond_5
    invoke-direct {v0, v14}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjCheckNAdd(I)V

    :cond_6
    :goto_1
    if-ne v5, v4, :cond_1

    goto/16 :goto_4

    :cond_7
    const/16 v8, 0x80

    if-ge v7, v8, :cond_11

    and-int/lit8 v7, v7, 0x3f

    shl-long v16, v9, v7

    .line 430
    :cond_8
    iget-object v7, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjstateSet:[I

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

    .line 451
    :cond_b
    invoke-direct {v0, v14}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjCheckNAdd(I)V

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

    .line 437
    :cond_e
    invoke-direct {v0, v14}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_2

    .line 439
    :cond_f
    iget-char v8, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->curChar:C

    const/16 v9, 0x5c

    if-ne v8, v9, :cond_10

    .line 440
    iget v8, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v9, v8, 0x1

    iput v9, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjnewStateCnt:I

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

    .line 463
    :cond_12
    iget-object v7, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjstateSet:[I

    add-int/lit8 v5, v5, -0x1

    aget v7, v7, v5

    if-eqz v7, :cond_14

    if-eq v7, v1, :cond_13

    if-eq v7, v14, :cond_14

    goto :goto_3

    .line 474
    :cond_13
    sget-object v7, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjbitVec0:[J

    aget-wide v16, v7, v8

    and-long v16, v16, v9

    cmp-long v7, v16, v11

    if-eqz v7, :cond_17

    if-le v6, v13, :cond_17

    move v6, v13

    goto :goto_3

    .line 467
    :cond_14
    sget-object v7, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjbitVec0:[J

    aget-wide v16, v7, v8

    and-long v16, v16, v9

    cmp-long v7, v16, v11

    if-nez v7, :cond_15

    goto :goto_3

    :cond_15
    if-le v6, v15, :cond_16

    move v6, v15

    .line 471
    :cond_16
    invoke-direct {v0, v14}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjCheckNAdd(I)V

    :cond_17
    :goto_3
    if-ne v5, v4, :cond_12

    :goto_4
    if-eq v6, v3, :cond_18

    .line 483
    iput v6, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedKind:I

    .line 484
    iput v2, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedPos:I

    move v6, v3

    :cond_18
    add-int/lit8 v2, v2, 0x1

    .line 488
    iget v5, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjnewStateCnt:I

    iput v4, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v4, v4, 0x3

    if-ne v5, v4, :cond_19

    return v2

    .line 490
    :cond_19
    :try_start_0
    iget-object v7, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    invoke-virtual {v7}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->readChar()C

    move-result v7

    iput-char v7, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->curChar:C

    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    return v2
.end method

.method private final jjMoveStringLiteralDfa0_0()I
    .locals 4

    .line 63
    iget-char v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->curChar:C

    const/16 v1, 0x22

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/16 v1, 0x28

    const/4 v3, 0x4

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    .line 76
    invoke-direct {p0, v3, v2}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjMoveNfa_0(II)I

    move-result v0

    return v0

    :pswitch_0    # 0x2e
    const/16 v0, 0x14

    .line 74
    invoke-direct {p0, v2, v0}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :pswitch_1    # 0x2d
    const/4 v0, 0x2

    .line 72
    invoke-direct {p0, v2, v0}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :pswitch_2    # 0x2c
    const/4 v0, 0x1

    .line 70
    invoke-direct {p0, v2, v0}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    .line 68
    :cond_0
    invoke-direct {p0, v2, v3}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :cond_1
    const/16 v0, 0xd

    .line 66
    invoke-direct {p0, v2, v0}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x2c
        :pswitch_2    # 0x2c
        :pswitch_1    # 0x2d
        :pswitch_0    # 0x2e
    .end packed-switch
.end method

.method private final jjMoveStringLiteralDfa0_1()I
    .locals 3

    .line 258
    iget-char v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->curChar:C

    const/16 v1, 0x28

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/16 v1, 0x29

    if-eq v0, v1, :cond_0

    .line 265
    invoke-direct {p0, v2, v2}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjMoveNfa_1(II)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x5

    .line 263
    invoke-direct {p0, v2, v0}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x7

    .line 261
    invoke-direct {p0, v2, v0}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0
.end method

.method private final jjMoveStringLiteralDfa0_2()I
    .locals 3

    .line 516
    iget-char v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->curChar:C

    const/16 v1, 0x28

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/16 v1, 0x29

    if-eq v0, v1, :cond_0

    .line 523
    invoke-direct {p0, v2, v2}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjMoveNfa_2(II)I

    move-result v0

    return v0

    :cond_0
    const/16 v0, 0xb

    .line 521
    invoke-direct {p0, v2, v0}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :cond_1
    const/16 v0, 0xa

    .line 519
    invoke-direct {p0, v2, v0}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0
.end method

.method private final jjMoveStringLiteralDfa0_3()I
    .locals 3

    .line 382
    iget-char v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->curChar:C

    const/16 v1, 0x22

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 387
    invoke-direct {p0, v2, v2}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjMoveNfa_3(II)I

    move-result v0

    return v0

    :cond_0
    const/16 v0, 0x10

    .line 385
    invoke-direct {p0, v2, v0}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0
.end method

.method private final jjStartNfaWithStates_0(III)I
    .locals 0

    .line 55
    iput p2, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedKind:I

    .line 56
    iput p1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedPos:I

    .line 57
    :try_start_0
    iget-object p2, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    invoke-virtual {p2}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->readChar()C

    move-result p2

    iput-char p2, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->curChar:C

    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p1, p1, 0x1

    .line 59
    invoke-direct {p0, p3, p1}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjMoveNfa_0(II)I

    move-result p1

    return p1

    :catch_0
    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private final jjStartNfaWithStates_1(III)I
    .locals 0

    .line 250
    iput p2, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedKind:I

    .line 251
    iput p1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedPos:I

    .line 252
    :try_start_0
    iget-object p2, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    invoke-virtual {p2}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->readChar()C

    move-result p2

    iput-char p2, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->curChar:C

    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p1, p1, 0x1

    .line 254
    invoke-direct {p0, p3, p1}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjMoveNfa_1(II)I

    move-result p1

    return p1

    :catch_0
    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private final jjStartNfaWithStates_2(III)I
    .locals 0

    .line 508
    iput p2, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedKind:I

    .line 509
    iput p1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedPos:I

    .line 510
    :try_start_0
    iget-object p2, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    invoke-virtual {p2}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->readChar()C

    move-result p2

    iput-char p2, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->curChar:C

    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p1, p1, 0x1

    .line 512
    invoke-direct {p0, p3, p1}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjMoveNfa_2(II)I

    move-result p1

    return p1

    :catch_0
    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private final jjStartNfaWithStates_3(III)I
    .locals 0

    .line 374
    iput p2, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedKind:I

    .line 375
    iput p1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedPos:I

    .line 376
    :try_start_0
    iget-object p2, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    invoke-virtual {p2}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->readChar()C

    move-result p2

    iput-char p2, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->curChar:C

    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p1, p1, 0x1

    .line 378
    invoke-direct {p0, p3, p1}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjMoveNfa_3(II)I

    move-result p1

    return p1

    :catch_0
    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private final jjStartNfa_0(IJ)I
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjStopStringLiteralDfa_0(IJ)I

    move-result p2

    add-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p2, p1}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjMoveNfa_0(II)I

    move-result p1

    return p1
.end method

.method private final jjStartNfa_1(IJ)I
    .locals 0

    .line 246
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjStopStringLiteralDfa_1(IJ)I

    move-result p2

    add-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p2, p1}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjMoveNfa_1(II)I

    move-result p1

    return p1
.end method

.method private final jjStartNfa_2(IJ)I
    .locals 0

    .line 504
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjStopStringLiteralDfa_2(IJ)I

    move-result p2

    add-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p2, p1}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjMoveNfa_2(II)I

    move-result p1

    return p1
.end method

.method private final jjStartNfa_3(IJ)I
    .locals 0

    .line 370
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjStopStringLiteralDfa_3(IJ)I

    move-result p2

    add-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p2, p1}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjMoveNfa_3(II)I

    move-result p1

    return p1
.end method

.method private final jjStopAtPos(II)I
    .locals 0

    .line 49
    iput p2, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedKind:I

    .line 50
    iput p1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedPos:I

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

    .line 820
    iget v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjimageLen:I

    iget v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedPos:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->lengthOfMatch:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjimageLen:I

    .line 821
    iget v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedKind:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0    # 0x8 0xc
    goto/16 :goto_0

    .line 866
    :pswitch_1    # 0xe
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_0

    .line 867
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    .line 868
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    iget v3, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjimageLen:I

    invoke-virtual {v2, v3}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 869
    iput v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjimageLen:I

    .line 870
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 859
    :pswitch_2    # 0xd
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_1

    .line 860
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    .line 861
    :cond_1
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v3, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    iget v4, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjimageLen:I

    invoke-virtual {v3, v4}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 862
    iput v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjimageLen:I

    .line 863
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 852
    :pswitch_3    # 0xb
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_2

    .line 853
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    .line 854
    :cond_2
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v3, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    iget v4, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjimageLen:I

    invoke-virtual {v3, v4}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 855
    iput v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjimageLen:I

    .line 856
    iget v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->commentNest:I

    sub-int/2addr v0, v2

    iput v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->commentNest:I

    if-nez v0, :cond_7

    invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->SwitchTo(I)V

    goto/16 :goto_0

    .line 845
    :pswitch_4    # 0xa
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_3

    .line 846
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    .line 847
    :cond_3
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v3, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    iget v4, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjimageLen:I

    invoke-virtual {v3, v4}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 848
    iput v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjimageLen:I

    .line 849
    iget v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->commentNest:I

    add-int/2addr v0, v2

    iput v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->commentNest:I

    goto :goto_0

    .line 838
    :pswitch_5    # 0x9
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_4

    .line 839
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    .line 840
    :cond_4
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    iget v3, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjimageLen:I

    invoke-virtual {v2, v3}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 841
    iput v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjimageLen:I

    .line 842
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 831
    :pswitch_6    # 0x7
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_5

    .line 832
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    .line 833
    :cond_5
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v3, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    iget v4, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjimageLen:I

    invoke-virtual {v3, v4}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 834
    iput v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjimageLen:I

    .line 835
    iput v2, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->commentNest:I

    goto :goto_0

    .line 824
    :pswitch_7    # 0x6
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_6

    .line 825
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    .line 826
    :cond_6
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    iget v3, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjimageLen:I

    invoke-virtual {v2, v3}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 827
    iput v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjimageLen:I

    .line 828
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

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

.method public ReInit(Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;)V
    .locals 1

    const/4 v0, 0x0

    .line 659
    iput v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjnewStateCnt:I

    iput v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedPos:I

    .line 660
    iget v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->defaultLexState:I

    iput v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->curLexState:I

    .line 661
    iput-object p1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    .line 662
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->ReInitRounds()V

    return-void
.end method

.method public ReInit(Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;I)V
    .locals 0

    .line 673
    invoke-virtual {p0, p1}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->ReInit(Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;)V

    .line 674
    invoke-virtual {p0, p2}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->SwitchTo(I)V

    return-void
.end method

.method public SwitchTo(I)V
    .locals 3

    const/4 v0, 0x4

    if-ge p1, v0, :cond_0

    if-ltz p1, :cond_0

    .line 681
    iput p1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->curLexState:I

    return-void

    .line 679
    :cond_0
    new-instance v0, Lorg/apache/james/mime4j/field/language/parser/TokenMgrError;

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

    invoke-direct {v0, p1, v1}, Lorg/apache/james/mime4j/field/language/parser/TokenMgrError;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method TokenLexicalActions(Lorg/apache/james/mime4j/field/language/parser/Token;)V
    .locals 4

    .line 878
    iget v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedKind:I

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 881
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_1

    .line 882
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    .line 883
    :cond_1
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    iget v2, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjimageLen:I

    iget v3, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedPos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->lengthOfMatch:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 884
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lorg/apache/james/mime4j/field/language/parser/Token;->image:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public getNextToken()Lorg/apache/james/mime4j/field/language/parser/Token;
    .locals 20

    move-object/from16 v0, p0

    .line 707
    const-string v1, ""

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v2

    move v5, v3

    .line 716
    :cond_0
    :goto_0
    :try_start_0
    iget-object v6, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    invoke-virtual {v6}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->BeginToken()C

    move-result v6

    iput-char v6, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->curChar:C

    .line 725
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    iput-object v2, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    .line 726
    iput v3, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjimageLen:I

    .line 730
    :goto_1
    iget v6, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->curLexState:I

    const v7, 0x7fffffff

    const/4 v8, 0x1

    if-eqz v6, :cond_4

    if-eq v6, v8, :cond_3

    const/4 v9, 0x2

    if-eq v6, v9, :cond_2

    const/4 v9, 0x3

    if-eq v6, v9, :cond_1

    goto :goto_2

    .line 748
    :cond_1
    iput v7, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedKind:I

    .line 749
    iput v3, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedPos:I

    .line 750
    invoke-direct/range {p0 .. p0}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjMoveStringLiteralDfa0_3()I

    move-result v5

    goto :goto_2

    .line 743
    :cond_2
    iput v7, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedKind:I

    .line 744
    iput v3, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedPos:I

    .line 745
    invoke-direct/range {p0 .. p0}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjMoveStringLiteralDfa0_2()I

    move-result v5

    goto :goto_2

    .line 738
    :cond_3
    iput v7, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedKind:I

    .line 739
    iput v3, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedPos:I

    .line 740
    invoke-direct/range {p0 .. p0}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjMoveStringLiteralDfa0_1()I

    move-result v5

    goto :goto_2

    .line 733
    :cond_4
    iput v7, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedKind:I

    .line 734
    iput v3, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedPos:I

    .line 735
    invoke-direct/range {p0 .. p0}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjMoveStringLiteralDfa0_0()I

    move-result v5

    .line 753
    :goto_2
    iget v6, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedKind:I

    if-eq v6, v7, :cond_c

    .line 755
    iget v6, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedPos:I

    add-int/lit8 v9, v6, 0x1

    if-ge v9, v5, :cond_5

    .line 756
    iget-object v9, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    sub-int v6, v5, v6

    sub-int/2addr v6, v8

    invoke-virtual {v9, v6}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->backup(I)V

    .line 757
    :cond_5
    sget-object v6, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjtoToken:[J

    iget v9, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedKind:I

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

    .line 759
    invoke-virtual/range {p0 .. p0}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjFillToken()Lorg/apache/james/mime4j/field/language/parser/Token;

    move-result-object v1

    .line 760
    iput-object v4, v1, Lorg/apache/james/mime4j/field/language/parser/Token;->specialToken:Lorg/apache/james/mime4j/field/language/parser/Token;

    .line 761
    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->TokenLexicalActions(Lorg/apache/james/mime4j/field/language/parser/Token;)V

    .line 762
    sget-object v2, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjnewLexState:[I

    iget v3, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedKind:I

    aget v2, v2, v3

    if-eq v2, v10, :cond_6

    .line 763
    iput v2, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->curLexState:I

    :cond_6
    return-object v1

    .line 766
    :cond_7
    sget-object v6, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjtoSkip:[J

    shr-int/lit8 v11, v9, 0x6

    aget-wide v16, v6, v11

    and-int/lit8 v6, v9, 0x3f

    shl-long v18, v12, v6

    and-long v16, v16, v18

    cmp-long v6, v16, v14

    if-eqz v6, :cond_a

    .line 768
    sget-object v6, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjtoSpecial:[J

    shr-int/lit8 v7, v9, 0x6

    aget-wide v7, v6, v7

    and-int/lit8 v6, v9, 0x3f

    shl-long v11, v12, v6

    and-long v6, v7, v11

    cmp-long v6, v6, v14

    if-eqz v6, :cond_9

    .line 770
    invoke-virtual/range {p0 .. p0}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjFillToken()Lorg/apache/james/mime4j/field/language/parser/Token;

    move-result-object v6

    if-nez v4, :cond_8

    goto :goto_3

    .line 775
    :cond_8
    iput-object v4, v6, Lorg/apache/james/mime4j/field/language/parser/Token;->specialToken:Lorg/apache/james/mime4j/field/language/parser/Token;

    .line 776
    iput-object v6, v4, Lorg/apache/james/mime4j/field/language/parser/Token;->next:Lorg/apache/james/mime4j/field/language/parser/Token;

    :goto_3
    move-object v4, v6

    .line 779
    :cond_9
    sget-object v6, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjnewLexState:[I

    iget v7, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedKind:I

    aget v6, v6, v7

    if-eq v6, v10, :cond_0

    .line 780
    iput v6, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->curLexState:I

    goto/16 :goto_0

    .line 783
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->MoreLexicalActions()V

    .line 784
    sget-object v5, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjnewLexState:[I

    iget v6, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedKind:I

    aget v5, v5, v6

    if-eq v5, v10, :cond_b

    .line 785
    iput v5, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->curLexState:I

    .line 787
    :cond_b
    iput v7, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedKind:I

    .line 789
    :try_start_1
    iget-object v5, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    invoke-virtual {v5}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->readChar()C

    move-result v5

    iput-char v5, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->curChar:C

    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move v5, v3

    goto/16 :goto_1

    :catch_0
    move v5, v3

    .line 794
    :cond_c
    iget-object v4, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    invoke-virtual {v4}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->getEndLine()I

    move-result v4

    .line 795
    iget-object v6, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    invoke-virtual {v6}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->getEndColumn()I

    move-result v6

    .line 798
    :try_start_2
    iget-object v7, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    invoke-virtual {v7}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->readChar()C

    iget-object v7, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    invoke-virtual {v7, v8}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->backup(I)V

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

    .line 801
    :cond_d
    iget-object v2, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->GetImage()Ljava/lang/String;

    move-result-object v2

    .line 802
    :goto_4
    iget-char v7, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->curChar:C

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

    .line 810
    iget-object v2, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    invoke-virtual {v2, v8}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->backup(I)V

    if-gt v5, v8, :cond_10

    goto :goto_8

    .line 811
    :cond_10
    iget-object v1, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->GetImage()Ljava/lang/String;

    move-result-object v1

    :goto_8
    move-object v14, v1

    goto :goto_9

    :cond_11
    move-object v14, v2

    .line 813
    :goto_9
    new-instance v1, Lorg/apache/james/mime4j/field/language/parser/TokenMgrError;

    iget v11, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->curLexState:I

    iget-char v15, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->curChar:C

    const/16 v16, 0x0

    move-object v9, v1

    invoke-direct/range {v9 .. v16}, Lorg/apache/james/mime4j/field/language/parser/TokenMgrError;-><init>(ZIIILjava/lang/String;CI)V

    throw v1

    .line 720
    :catch_2
    iput v3, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedKind:I

    .line 721
    invoke-virtual/range {p0 .. p0}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjFillToken()Lorg/apache/james/mime4j/field/language/parser/Token;

    move-result-object v1

    .line 722
    iput-object v4, v1, Lorg/apache/james/mime4j/field/language/parser/Token;->specialToken:Lorg/apache/james/mime4j/field/language/parser/Token;

    return-object v1
.end method

.method protected jjFillToken()Lorg/apache/james/mime4j/field/language/parser/Token;
    .locals 3

    .line 686
    iget v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedKind:I

    invoke-static {v0}, Lorg/apache/james/mime4j/field/language/parser/Token;->newToken(I)Lorg/apache/james/mime4j/field/language/parser/Token;

    move-result-object v0

    .line 687
    iget v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedKind:I

    iput v1, v0, Lorg/apache/james/mime4j/field/language/parser/Token;->kind:I

    .line 688
    sget-object v1, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

    iget v2, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedKind:I

    aget-object v1, v1, v2

    if-nez v1, :cond_0

    .line 689
    iget-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->GetImage()Ljava/lang/String;

    move-result-object v1

    :cond_0
    iput-object v1, v0, Lorg/apache/james/mime4j/field/language/parser/Token;->image:Ljava/lang/String;

    .line 690
    iget-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->getBeginLine()I

    move-result v1

    iput v1, v0, Lorg/apache/james/mime4j/field/language/parser/Token;->beginLine:I

    .line 691
    iget-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->getBeginColumn()I

    move-result v1

    iput v1, v0, Lorg/apache/james/mime4j/field/language/parser/Token;->beginColumn:I

    .line 692
    iget-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->getEndLine()I

    move-result v1

    iput v1, v0, Lorg/apache/james/mime4j/field/language/parser/Token;->endLine:I

    .line 693
    iget-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->getEndColumn()I

    move-result v1

    iput v1, v0, Lorg/apache/james/mime4j/field/language/parser/Token;->endColumn:I

    return-object v0
.end method

.method public setDebugStream(Ljava/io/PrintStream;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->debugStream:Ljava/io/PrintStream;

    return-void
.end method
