.class public Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;
.super Ljava/lang/Object;
.source "StructuredFieldParserTokenManager.java"

# interfaces
.implements Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserConstants;


# static fields
.field static final jjbitVec0:[J

.field public static final jjnewLexState:[I

.field static final jjnextStates:[I

.field public static final jjstrLiteralImages:[Ljava/lang/String;

.field static final jjtoMore:[J

.field static final jjtoSkip:[J

.field static final jjtoToken:[J

.field public static final lexStateNames:[Ljava/lang/String;


# instance fields
.field commentNest:I

.field protected curChar:C

.field curLexState:I

.field public debugStream:Ljava/io/PrintStream;

.field defaultLexState:I

.field image:Ljava/lang/StringBuffer;

.field protected input_stream:Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;

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
    .locals 9

    const/4 v0, 0x4

    .line 101
    new-array v1, v0, [J

    fill-array-data v1, :array_0

    sput-object v1, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjbitVec0:[J

    const/4 v1, 0x0

    .line 596
    new-array v2, v1, [I

    sput-object v2, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjnextStates:[I

    const/16 v2, 0x12

    .line 598
    new-array v3, v2, [Ljava/lang/String;

    const-string v4, ""

    aput-object v4, v3, v1

    const/4 v4, 0x1

    const/4 v5, 0x0

    aput-object v5, v3, v4

    const/4 v6, 0x2

    aput-object v5, v3, v6

    const/4 v7, 0x3

    aput-object v5, v3, v7

    aput-object v5, v3, v0

    const/4 v8, 0x5

    aput-object v5, v3, v8

    const/4 v8, 0x6

    aput-object v5, v3, v8

    const/4 v8, 0x7

    aput-object v5, v3, v8

    const/16 v8, 0x8

    aput-object v5, v3, v8

    const/16 v8, 0x9

    aput-object v5, v3, v8

    const/16 v8, 0xa

    aput-object v5, v3, v8

    const/16 v8, 0xb

    aput-object v5, v3, v8

    const/16 v8, 0xc

    aput-object v5, v3, v8

    const/16 v8, 0xd

    aput-object v5, v3, v8

    const/16 v8, 0xe

    aput-object v5, v3, v8

    const/16 v8, 0xf

    aput-object v5, v3, v8

    const/16 v8, 0x10

    aput-object v5, v3, v8

    const/16 v8, 0x11

    aput-object v5, v3, v8

    sput-object v3, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

    .line 601
    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "DEFAULT"

    aput-object v3, v0, v1

    const-string v3, "INCOMMENT"

    aput-object v3, v0, v4

    const-string v3, "NESTED_COMMENT"

    aput-object v3, v0, v6

    const-string v3, "INQUOTEDSTRING"

    aput-object v3, v0, v7

    sput-object v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->lexStateNames:[Ljava/lang/String;

    .line 607
    new-array v0, v2, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjnewLexState:[I

    .line 610
    new-array v0, v4, [J

    const-wide/32 v2, 0xf801

    aput-wide v2, v0, v1

    sput-object v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjtoToken:[J

    .line 613
    new-array v0, v4, [J

    const-wide/16 v2, 0x3fe

    aput-wide v2, v0, v1

    sput-object v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjtoSkip:[J

    .line 616
    new-array v0, v4, [J

    const-wide/16 v2, 0x400

    aput-wide v2, v0, v1

    sput-object v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjtoMore:[J

    return-void

    nop

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
        0x1
        0x0
        0x2
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x3
        -0x1
        -0x1
        -0x1
        0x0
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method public constructor <init>(Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;)V
    .locals 1

    .line 626
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iput-object v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->debugStream:Ljava/io/PrintStream;

    const/4 v0, 0x6

    .line 620
    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjrounds:[I

    const/16 v0, 0xc

    .line 621
    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjstateSet:[I

    const/4 v0, 0x0

    .line 675
    iput v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curLexState:I

    .line 676
    iput v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->defaultLexState:I

    .line 629
    iput-object p1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;

    return-void
.end method

.method public constructor <init>(Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;I)V
    .locals 0

    .line 632
    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;-><init>(Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;)V

    .line 633
    invoke-virtual {p0, p2}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->SwitchTo(I)V

    return-void
.end method

.method private final ReInitRounds()V
    .locals 3

    const v0, -0x7fffffff

    .line 645
    iput v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjround:I

    const/4 v0, 0x6

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_0

    .line 647
    iget-object v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjrounds:[I

    const/high16 v2, -0x80000000

    aput v2, v0, v1

    move v0, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final jjAddStates(II)V
    .locals 3

    .line 82
    :goto_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjstateSet:[I

    iget v1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjnewStateCnt:I

    sget-object v2, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjnextStates:[I

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

    .line 73
    iget-object v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjrounds:[I

    aget v1, v0, p1

    iget v2, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjround:I

    if-eq v1, v2, :cond_0

    .line 75
    iget-object v1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjstateSet:[I

    iget v3, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjnewStateCnt:I

    aput p1, v1, v3

    .line 76
    aput v2, v0, p1

    :cond_0
    return-void
.end method

.method private final jjCheckNAddStates(I)V
    .locals 2

    .line 98
    sget-object v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjnextStates:[I

    aget v1, v0, p1

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjCheckNAdd(I)V

    add-int/lit8 p1, p1, 0x1

    .line 99
    aget p1, v0, p1

    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjCheckNAdd(I)V

    return-void
.end method

.method private final jjCheckNAddStates(II)V
    .locals 1

    .line 93
    :goto_0
    sget-object v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjnextStates:[I

    aget v0, v0, p1

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjCheckNAdd(I)V

    add-int/lit8 v0, p1, 0x1

    if-ne p1, p2, :cond_0

    return-void

    :cond_0
    move p1, v0

    goto :goto_0
.end method

.method private final jjCheckNAddTwoStates(II)V
    .locals 0

    .line 87
    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjCheckNAdd(I)V

    .line 88
    invoke-direct {p0, p2}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjCheckNAdd(I)V

    return-void
.end method

.method private final jjMoveNfa_0(II)I
    .locals 20

    move-object/from16 v0, p0

    const/4 v1, 0x2

    .line 108
    iput v1, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjnewStateCnt:I

    .line 110
    iget-object v2, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjstateSet:[I

    const/4 v3, 0x0

    aput p1, v2, v3

    const/4 v2, 0x1

    const v4, 0x7fffffff

    move/from16 v5, p2

    move v6, v2

    move v8, v3

    move v7, v4

    .line 114
    :goto_0
    iget v9, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjround:I

    add-int/2addr v9, v2

    iput v9, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjround:I

    if-ne v9, v4, :cond_0

    .line 115
    invoke-direct/range {p0 .. p0}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->ReInitRounds()V

    .line 116
    :cond_0
    iget-char v9, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curChar:C

    const/16 v10, 0x40

    const-wide/16 v11, 0x1

    const-wide/16 v13, 0x0

    const/16 v15, 0xf

    if-ge v9, v10, :cond_b

    shl-long v16, v11, v9

    .line 121
    :cond_1
    iget-object v9, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjstateSet:[I

    add-int/lit8 v6, v6, -0x1

    aget v9, v9, v6

    const-wide v10, 0x100002600L

    const/16 v12, 0xe

    if-eqz v9, :cond_8

    const-wide v18, -0x10500002601L

    if-eq v9, v2, :cond_6

    if-eq v9, v1, :cond_2

    goto :goto_1

    :cond_2
    and-long v18, v16, v18

    cmp-long v9, v18, v13

    if-eqz v9, :cond_4

    if-le v7, v15, :cond_3

    move v7, v15

    .line 128
    :cond_3
    invoke-direct {v0, v2}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_1

    :cond_4
    and-long v9, v16, v10

    cmp-long v9, v9, v13

    if-eqz v9, :cond_a

    if-le v7, v12, :cond_5

    move v7, v12

    .line 134
    :cond_5
    invoke-direct {v0, v3}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_1

    :cond_6
    and-long v9, v16, v18

    cmp-long v9, v9, v13

    if-nez v9, :cond_7

    goto :goto_1

    .line 147
    :cond_7
    invoke-direct {v0, v2}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjCheckNAdd(I)V

    move v7, v15

    goto :goto_1

    :cond_8
    and-long v9, v16, v10

    cmp-long v9, v9, v13

    if-nez v9, :cond_9

    goto :goto_1

    .line 141
    :cond_9
    invoke-direct {v0, v3}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjCheckNAdd(I)V

    move v7, v12

    :cond_a
    :goto_1
    if-ne v6, v8, :cond_1

    goto :goto_4

    :cond_b
    const/16 v10, 0x80

    if-ge v9, v10, :cond_e

    .line 158
    :cond_c
    iget-object v9, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjstateSet:[I

    add-int/lit8 v6, v6, -0x1

    aget v9, v9, v6

    if-eq v9, v2, :cond_d

    if-eq v9, v1, :cond_d

    goto :goto_2

    .line 163
    :cond_d
    invoke-direct {v0, v2}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjCheckNAdd(I)V

    move v7, v15

    :goto_2
    if-ne v6, v8, :cond_c

    goto :goto_4

    :cond_e
    and-int/lit16 v10, v9, 0xff

    shr-int/lit8 v10, v10, 0x6

    and-int/lit8 v9, v9, 0x3f

    shl-long/2addr v11, v9

    .line 175
    :cond_f
    iget-object v9, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjstateSet:[I

    add-int/lit8 v6, v6, -0x1

    aget v9, v9, v6

    if-eq v9, v2, :cond_10

    if-eq v9, v1, :cond_10

    goto :goto_3

    .line 179
    :cond_10
    sget-object v9, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjbitVec0:[J

    aget-wide v16, v9, v10

    and-long v16, v16, v11

    cmp-long v9, v16, v13

    if-nez v9, :cond_11

    goto :goto_3

    :cond_11
    if-le v7, v15, :cond_12

    move v7, v15

    .line 183
    :cond_12
    invoke-direct {v0, v2}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjCheckNAdd(I)V

    :goto_3
    if-ne v6, v8, :cond_f

    :goto_4
    if-eq v7, v4, :cond_13

    .line 191
    iput v7, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedKind:I

    .line 192
    iput v5, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedPos:I

    move v7, v4

    :cond_13
    add-int/lit8 v5, v5, 0x1

    .line 196
    iget v6, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjnewStateCnt:I

    iput v8, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v8, v8, 0x2

    if-ne v6, v8, :cond_14

    return v5

    .line 198
    :cond_14
    :try_start_0
    iget-object v9, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;

    invoke-virtual {v9}, Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;->readChar()C

    move-result v9

    iput-char v9, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curChar:C

    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    return v5
.end method

.method private final jjMoveNfa_1(II)I
    .locals 13

    const/4 v0, 0x1

    .line 238
    iput v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjnewStateCnt:I

    .line 240
    iget-object v1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjstateSet:[I

    const/4 v2, 0x0

    aput p1, v1, v2

    const p1, 0x7fffffff

    move v3, p1

    move v1, v0

    .line 244
    :goto_0
    iget v4, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjround:I

    add-int/2addr v4, v0

    iput v4, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjround:I

    if-ne v4, p1, :cond_0

    .line 245
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->ReInitRounds()V

    .line 246
    :cond_0
    iget-char v4, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curChar:C

    const/16 v5, 0x40

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x1

    const/4 v10, 0x4

    if-ge v4, v5, :cond_4

    shl-long v11, v8, v4

    .line 251
    :cond_1
    iget-object v4, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v4, v4, v1

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    const-wide v4, -0x30000000001L

    and-long/2addr v4, v11

    cmp-long v4, v4, v6

    if-eqz v4, :cond_3

    move v3, v10

    :cond_3
    :goto_1
    if-ne v1, v2, :cond_1

    goto :goto_4

    :cond_4
    const/16 v5, 0x80

    if-ge v4, v5, :cond_7

    .line 266
    :cond_5
    iget-object v4, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v4, v4, v1

    if-eqz v4, :cond_6

    goto :goto_2

    :cond_6
    move v3, v10

    :goto_2
    if-ne v1, v2, :cond_5

    goto :goto_4

    :cond_7
    and-int/lit16 v5, v4, 0xff

    shr-int/lit8 v5, v5, 0x6

    and-int/lit8 v4, v4, 0x3f

    shl-long/2addr v8, v4

    .line 281
    :cond_8
    iget-object v4, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v4, v4, v1

    if-eqz v4, :cond_9

    goto :goto_3

    .line 284
    :cond_9
    sget-object v4, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjbitVec0:[J

    aget-wide v11, v4, v5

    and-long/2addr v11, v8

    cmp-long v4, v11, v6

    if-eqz v4, :cond_a

    if-le v3, v10, :cond_a

    move v3, v10

    :cond_a
    :goto_3
    if-ne v1, v2, :cond_8

    :goto_4
    if-eq v3, p1, :cond_b

    .line 293
    iput v3, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedKind:I

    .line 294
    iput p2, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedPos:I

    move v3, p1

    :cond_b
    add-int/lit8 p2, p2, 0x1

    .line 298
    iget v1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjnewStateCnt:I

    iput v2, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v2, v2, 0x1

    if-ne v1, v2, :cond_c

    return p2

    .line 300
    :cond_c
    :try_start_0
    iget-object v4, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;

    invoke-virtual {v4}, Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;->readChar()C

    move-result v4

    iput-char v4, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curChar:C

    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    return p2
.end method

.method private final jjMoveNfa_2(II)I
    .locals 18

    move-object/from16 v0, p0

    const/4 v1, 0x3

    .line 506
    iput v1, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjnewStateCnt:I

    .line 508
    iget-object v1, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjstateSet:[I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v1, 0x1

    const v3, 0x7fffffff

    move v5, v1

    move v4, v2

    move v6, v3

    move/from16 v2, p2

    .line 512
    :goto_0
    iget v7, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjround:I

    add-int/2addr v7, v1

    iput v7, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjround:I

    if-ne v7, v3, :cond_0

    .line 513
    invoke-direct/range {p0 .. p0}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->ReInitRounds()V

    .line 514
    :cond_0
    iget-char v7, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curChar:C

    const/16 v8, 0x40

    const-wide/16 v9, 0x1

    const-wide/16 v11, 0x0

    const/4 v13, 0x7

    const/16 v14, 0x8

    if-ge v7, v8, :cond_6

    shl-long v15, v9, v7

    .line 519
    :cond_1
    iget-object v7, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjstateSet:[I

    add-int/lit8 v5, v5, -0x1

    aget v8, v7, v5

    if-eqz v8, :cond_4

    if-eq v8, v1, :cond_2

    goto :goto_1

    :cond_2
    if-le v6, v13, :cond_3

    move v6, v13

    .line 528
    :cond_3
    iget v8, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v9, v8, 0x1

    iput v9, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjnewStateCnt:I

    aput v1, v7, v8

    goto :goto_1

    :cond_4
    const-wide v7, -0x30000000001L

    and-long/2addr v7, v15

    cmp-long v7, v7, v11

    if-eqz v7, :cond_5

    if-le v6, v14, :cond_5

    move v6, v14

    :cond_5
    :goto_1
    if-ne v5, v4, :cond_1

    goto/16 :goto_5

    :cond_6
    const/16 v8, 0x80

    if-ge v7, v8, :cond_e

    .line 539
    :cond_7
    iget-object v7, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjstateSet:[I

    add-int/lit8 v5, v5, -0x1

    aget v7, v7, v5

    if-eqz v7, :cond_b

    if-eq v7, v1, :cond_9

    const/4 v8, 0x2

    if-eq v7, v8, :cond_8

    goto :goto_2

    :cond_8
    if-le v6, v14, :cond_d

    move v6, v14

    goto :goto_2

    :cond_9
    if-le v6, v13, :cond_a

    move v6, v13

    .line 550
    :cond_a
    invoke-direct {v0, v1}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_2

    :cond_b
    if-le v6, v14, :cond_c

    move v6, v14

    .line 544
    :cond_c
    iget-char v7, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curChar:C

    const/16 v8, 0x5c

    if-ne v7, v8, :cond_d

    .line 545
    invoke-direct {v0, v1}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjCheckNAdd(I)V

    :cond_d
    :goto_2
    if-ne v5, v4, :cond_7

    goto :goto_5

    :cond_e
    and-int/lit16 v8, v7, 0xff

    shr-int/lit8 v8, v8, 0x6

    and-int/lit8 v7, v7, 0x3f

    shl-long/2addr v9, v7

    .line 566
    :goto_3
    iget-object v7, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjstateSet:[I

    add-int/lit8 v5, v5, -0x1

    aget v15, v7, v5

    if-eqz v15, :cond_12

    if-eq v15, v1, :cond_f

    goto :goto_4

    .line 573
    :cond_f
    sget-object v15, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjbitVec0:[J

    aget-wide v16, v15, v8

    and-long v15, v16, v9

    cmp-long v15, v15, v11

    if-nez v15, :cond_10

    goto :goto_4

    :cond_10
    if-le v6, v13, :cond_11

    move v6, v13

    .line 577
    :cond_11
    iget v15, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v13, v15, 0x1

    iput v13, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjnewStateCnt:I

    aput v1, v7, v15

    goto :goto_4

    .line 569
    :cond_12
    sget-object v7, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjbitVec0:[J

    aget-wide v15, v7, v8

    and-long/2addr v15, v9

    cmp-long v7, v15, v11

    if-eqz v7, :cond_13

    if-le v6, v14, :cond_13

    move v6, v14

    :cond_13
    :goto_4
    if-ne v5, v4, :cond_16

    :goto_5
    if-eq v6, v3, :cond_14

    .line 585
    iput v6, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedKind:I

    .line 586
    iput v2, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedPos:I

    move v6, v3

    :cond_14
    add-int/lit8 v2, v2, 0x1

    .line 590
    iget v5, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjnewStateCnt:I

    iput v4, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v4, v4, 0x3

    if-ne v5, v4, :cond_15

    return v2

    .line 592
    :cond_15
    :try_start_0
    iget-object v7, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;

    invoke-virtual {v7}, Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;->readChar()C

    move-result v7

    iput-char v7, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curChar:C

    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    return v2

    :cond_16
    const/4 v13, 0x7

    goto :goto_3
.end method

.method private final jjMoveNfa_3(II)I
    .locals 20

    move-object/from16 v0, p0

    const/4 v1, 0x6

    .line 338
    iput v1, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjnewStateCnt:I

    .line 340
    iget-object v2, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjstateSet:[I

    const/4 v3, 0x0

    aput p1, v2, v3

    const/4 v2, 0x1

    const v4, 0x7fffffff

    move v6, v2

    move v5, v3

    move v7, v4

    move/from16 v3, p2

    .line 344
    :goto_0
    iget v8, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjround:I

    add-int/2addr v8, v2

    iput v8, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjround:I

    if-ne v8, v4, :cond_0

    .line 345
    invoke-direct/range {p0 .. p0}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->ReInitRounds()V

    .line 346
    :cond_0
    iget-char v8, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curChar:C

    const/16 v9, 0x40

    const-wide/16 v10, 0x1

    const/16 v12, 0xa

    const-wide/16 v13, 0x0

    const/4 v15, 0x2

    const/16 v4, 0xb

    if-ge v8, v9, :cond_12

    shl-long v16, v10, v8

    .line 351
    :goto_1
    iget-object v8, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjstateSet:[I

    add-int/lit8 v6, v6, -0x1

    aget v9, v8, v6

    const/16 v10, 0xd

    const-wide v18, -0x400002001L

    const/4 v11, 0x3

    if-eqz v9, :cond_d

    if-eq v9, v2, :cond_b

    if-eq v9, v15, :cond_8

    const/4 v1, 0x4

    const/16 v2, 0xc

    if-eq v9, v11, :cond_5

    if-eq v9, v1, :cond_2

    const/4 v1, 0x5

    if-eq v9, v1, :cond_1

    goto/16 :goto_2

    .line 390
    :cond_1
    iget-char v1, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curChar:C

    if-ne v1, v10, :cond_10

    .line 391
    iget v1, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjnewStateCnt:I

    aput v11, v8, v1

    goto :goto_2

    :cond_2
    const-wide v8, 0x100000200L

    and-long v8, v16, v8

    cmp-long v8, v8, v13

    if-nez v8, :cond_3

    goto :goto_2

    :cond_3
    if-le v7, v2, :cond_4

    move v7, v2

    .line 387
    :cond_4
    invoke-direct {v0, v1}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_2

    .line 376
    :cond_5
    iget-char v8, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curChar:C

    if-eq v8, v12, :cond_6

    goto :goto_2

    :cond_6
    if-le v7, v2, :cond_7

    move v7, v2

    .line 380
    :cond_7
    invoke-direct {v0, v1}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_2

    :cond_8
    and-long v1, v16, v18

    cmp-long v1, v1, v13

    if-nez v1, :cond_9

    goto :goto_2

    :cond_9
    if-le v7, v4, :cond_a

    move v7, v4

    .line 373
    :cond_a
    invoke-direct {v0, v15}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_2

    :cond_b
    if-le v7, v12, :cond_c

    move v7, v12

    .line 366
    :cond_c
    iget v1, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjnewStateCnt:I

    const/4 v2, 0x1

    aput v2, v8, v1

    goto :goto_2

    :cond_d
    and-long v1, v16, v18

    cmp-long v1, v1, v13

    if-eqz v1, :cond_f

    if-le v7, v4, :cond_e

    move v7, v4

    .line 358
    :cond_e
    invoke-direct {v0, v15}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_2

    .line 360
    :cond_f
    iget-char v1, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curChar:C

    if-ne v1, v10, :cond_10

    .line 361
    iget v1, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjnewStateCnt:I

    aput v11, v8, v1

    :cond_10
    :goto_2
    if-ne v6, v5, :cond_11

    :goto_3
    const v2, 0x7fffffff

    const/4 v11, 0x1

    goto/16 :goto_9

    :cond_11
    const/4 v1, 0x6

    const/4 v2, 0x1

    goto/16 :goto_1

    :cond_12
    const/16 v1, 0x80

    if-ge v8, v1, :cond_1d

    and-int/lit8 v1, v8, 0x3f

    shl-long v1, v10, v1

    .line 402
    :cond_13
    iget-object v8, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjstateSet:[I

    add-int/lit8 v6, v6, -0x1

    aget v8, v8, v6

    const-wide/32 v9, -0x10000001

    if-eqz v8, :cond_19

    const/4 v11, 0x1

    if-eq v8, v11, :cond_17

    if-eq v8, v15, :cond_14

    goto :goto_4

    :cond_14
    and-long v8, v1, v9

    cmp-long v8, v8, v13

    if-nez v8, :cond_15

    goto :goto_4

    :cond_15
    if-le v7, v4, :cond_16

    move v7, v4

    .line 424
    :cond_16
    invoke-direct {v0, v15}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_4

    :cond_17
    if-le v7, v12, :cond_18

    move v7, v12

    :cond_18
    const/4 v8, 0x1

    .line 417
    invoke-direct {v0, v8}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_4

    :cond_19
    and-long v8, v1, v9

    cmp-long v8, v8, v13

    if-eqz v8, :cond_1b

    if-le v7, v4, :cond_1a

    move v7, v4

    .line 409
    :cond_1a
    invoke-direct {v0, v15}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_4

    .line 411
    :cond_1b
    iget-char v8, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curChar:C

    const/16 v9, 0x5c

    if-ne v8, v9, :cond_1c

    const/4 v8, 0x1

    .line 412
    invoke-direct {v0, v8}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjCheckNAdd(I)V

    :cond_1c
    :goto_4
    if-ne v6, v5, :cond_13

    goto :goto_3

    :cond_1d
    and-int/lit16 v1, v8, 0xff

    const/4 v2, 0x6

    shr-int/2addr v1, v2

    and-int/lit8 v8, v8, 0x3f

    shl-long v8, v10, v8

    .line 436
    :goto_5
    iget-object v10, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjstateSet:[I

    add-int/lit8 v6, v6, -0x1

    aget v11, v10, v6

    if-eqz v11, :cond_1e

    const/4 v2, 0x1

    if-eq v11, v2, :cond_1f

    if-eq v11, v15, :cond_1e

    :goto_6
    const/4 v11, 0x1

    goto :goto_8

    :cond_1e
    const/4 v11, 0x1

    goto :goto_7

    .line 447
    :cond_1f
    sget-object v2, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjbitVec0:[J

    aget-wide v16, v2, v1

    and-long v16, v16, v8

    cmp-long v2, v16, v13

    if-nez v2, :cond_20

    goto :goto_6

    :cond_20
    if-le v7, v12, :cond_21

    move v7, v12

    .line 451
    :cond_21
    iget v2, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v11, v2, 0x1

    iput v11, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjnewStateCnt:I

    const/4 v11, 0x1

    aput v11, v10, v2

    goto :goto_8

    .line 440
    :goto_7
    sget-object v2, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjbitVec0:[J

    aget-wide v16, v2, v1

    and-long v16, v16, v8

    cmp-long v2, v16, v13

    if-nez v2, :cond_22

    goto :goto_8

    :cond_22
    if-le v7, v4, :cond_23

    move v7, v4

    .line 444
    :cond_23
    invoke-direct {v0, v15}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjCheckNAdd(I)V

    :goto_8
    if-ne v6, v5, :cond_26

    const v2, 0x7fffffff

    :goto_9
    if-eq v7, v2, :cond_24

    .line 459
    iput v7, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedKind:I

    .line 460
    iput v3, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedPos:I

    move v7, v2

    :cond_24
    add-int/lit8 v3, v3, 0x1

    .line 464
    iget v6, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjnewStateCnt:I

    iput v5, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v5, v5, 0x6

    if-ne v6, v5, :cond_25

    return v3

    .line 466
    :cond_25
    :try_start_0
    iget-object v1, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;->readChar()C

    move-result v1

    iput-char v1, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curChar:C

    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v2

    move v2, v11

    const/4 v1, 0x6

    goto/16 :goto_0

    :catch_0
    return v3

    :cond_26
    const/4 v2, 0x6

    goto :goto_5
.end method

.method private final jjMoveStringLiteralDfa0_0()I
    .locals 3

    .line 61
    iget-char v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curChar:C

    const/16 v1, 0x22

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/16 v1, 0x28

    if-eq v0, v1, :cond_0

    const/4 v0, 0x2

    .line 68
    invoke-direct {p0, v0, v2}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjMoveNfa_0(II)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    .line 66
    invoke-direct {p0, v2, v0}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :cond_1
    const/16 v0, 0x9

    .line 64
    invoke-direct {p0, v2, v0}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0
.end method

.method private final jjMoveStringLiteralDfa0_1()I
    .locals 3

    .line 224
    iget-char v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curChar:C

    const/16 v1, 0x28

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/16 v1, 0x29

    if-eq v0, v1, :cond_0

    .line 231
    invoke-direct {p0, v2, v2}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjMoveNfa_1(II)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x2

    .line 229
    invoke-direct {p0, v2, v0}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x3

    .line 227
    invoke-direct {p0, v2, v0}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0
.end method

.method private final jjMoveStringLiteralDfa0_2()I
    .locals 3

    .line 492
    iget-char v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curChar:C

    const/16 v1, 0x28

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/16 v1, 0x29

    if-eq v0, v1, :cond_0

    .line 499
    invoke-direct {p0, v2, v2}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjMoveNfa_2(II)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x6

    .line 497
    invoke-direct {p0, v2, v0}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x5

    .line 495
    invoke-direct {p0, v2, v0}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0
.end method

.method private final jjMoveStringLiteralDfa0_3()I
    .locals 3

    .line 326
    iget-char v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curChar:C

    const/16 v1, 0x22

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 331
    invoke-direct {p0, v2, v2}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjMoveNfa_3(II)I

    move-result v0

    return v0

    :cond_0
    const/16 v0, 0xd

    .line 329
    invoke-direct {p0, v2, v0}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0
.end method

.method private final jjStartNfaWithStates_0(III)I
    .locals 0

    .line 53
    iput p2, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedKind:I

    .line 54
    iput p1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedPos:I

    .line 55
    :try_start_0
    iget-object p2, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;

    invoke-virtual {p2}, Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;->readChar()C

    move-result p2

    iput-char p2, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curChar:C

    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p1, p1, 0x1

    .line 57
    invoke-direct {p0, p3, p1}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjMoveNfa_0(II)I

    move-result p1

    return p1

    :catch_0
    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private final jjStartNfaWithStates_1(III)I
    .locals 0

    .line 216
    iput p2, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedKind:I

    .line 217
    iput p1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedPos:I

    .line 218
    :try_start_0
    iget-object p2, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;

    invoke-virtual {p2}, Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;->readChar()C

    move-result p2

    iput-char p2, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curChar:C

    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p1, p1, 0x1

    .line 220
    invoke-direct {p0, p3, p1}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjMoveNfa_1(II)I

    move-result p1

    return p1

    :catch_0
    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private final jjStartNfaWithStates_2(III)I
    .locals 0

    .line 484
    iput p2, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedKind:I

    .line 485
    iput p1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedPos:I

    .line 486
    :try_start_0
    iget-object p2, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;

    invoke-virtual {p2}, Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;->readChar()C

    move-result p2

    iput-char p2, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curChar:C

    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p1, p1, 0x1

    .line 488
    invoke-direct {p0, p3, p1}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjMoveNfa_2(II)I

    move-result p1

    return p1

    :catch_0
    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private final jjStartNfaWithStates_3(III)I
    .locals 0

    .line 318
    iput p2, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedKind:I

    .line 319
    iput p1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedPos:I

    .line 320
    :try_start_0
    iget-object p2, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;

    invoke-virtual {p2}, Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;->readChar()C

    move-result p2

    iput-char p2, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curChar:C

    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p1, p1, 0x1

    .line 322
    invoke-direct {p0, p3, p1}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjMoveNfa_3(II)I

    move-result p1

    return p1

    :catch_0
    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private final jjStartNfa_0(IJ)I
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjStopStringLiteralDfa_0(IJ)I

    move-result p2

    add-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p2, p1}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjMoveNfa_0(II)I

    move-result p1

    return p1
.end method

.method private final jjStartNfa_1(IJ)I
    .locals 0

    .line 212
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjStopStringLiteralDfa_1(IJ)I

    move-result p2

    add-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p2, p1}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjMoveNfa_1(II)I

    move-result p1

    return p1
.end method

.method private final jjStartNfa_2(IJ)I
    .locals 0

    .line 480
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjStopStringLiteralDfa_2(IJ)I

    move-result p2

    add-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p2, p1}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjMoveNfa_2(II)I

    move-result p1

    return p1
.end method

.method private final jjStartNfa_3(IJ)I
    .locals 0

    .line 314
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjStopStringLiteralDfa_3(IJ)I

    move-result p2

    add-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p2, p1}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjMoveNfa_3(II)I

    move-result p1

    return p1
.end method

.method private final jjStopAtPos(II)I
    .locals 0

    .line 47
    iput p2, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedKind:I

    .line 48
    iput p1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedPos:I

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
    .locals 3

    .line 818
    iget v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjimageLen:I

    iget v1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedPos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->lengthOfMatch:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjimageLen:I

    .line 819
    iget v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedKind:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 822
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_1

    .line 823
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->image:Ljava/lang/StringBuffer;

    .line 824
    :cond_1
    iget-object v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;

    iget v2, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjimageLen:I

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    .line 825
    iput v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjimageLen:I

    .line 826
    iget-object v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->image:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    :goto_0
    return-void
.end method

.method public ReInit(Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;)V
    .locals 1

    const/4 v0, 0x0

    .line 637
    iput v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjnewStateCnt:I

    iput v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedPos:I

    .line 638
    iget v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->defaultLexState:I

    iput v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curLexState:I

    .line 639
    iput-object p1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;

    .line 640
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->ReInitRounds()V

    return-void
.end method

.method public ReInit(Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;I)V
    .locals 0

    .line 651
    invoke-virtual {p0, p1}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->ReInit(Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;)V

    .line 652
    invoke-virtual {p0, p2}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->SwitchTo(I)V

    return-void
.end method

.method SkipLexicalActions(Lorg/apache/james/mime4j/field/structured/parser/Token;)V
    .locals 5

    .line 786
    iget p1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedKind:I

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-eq p1, v0, :cond_6

    const/4 v0, 0x5

    const-string v2, "+++ COMMENT NEST="

    if-eq p1, v0, :cond_4

    const/4 v0, 0x6

    if-eq p1, v0, :cond_2

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    .line 807
    :cond_0
    iget-object p1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez p1, :cond_1

    .line 808
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->image:Ljava/lang/StringBuffer;

    .line 809
    :cond_1
    iget-object p1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;

    iget v2, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjimageLen:I

    iget v3, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedPos:I

    add-int/2addr v3, v1

    iput v3, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->lengthOfMatch:I

    add-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 810
    iget-object p1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->image:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 801
    :cond_2
    iget-object p1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez p1, :cond_3

    .line 802
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->image:Ljava/lang/StringBuffer;

    .line 803
    :cond_3
    iget-object p1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;

    iget v3, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjimageLen:I

    iget v4, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedPos:I

    add-int/2addr v4, v1

    iput v4, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->lengthOfMatch:I

    add-int/2addr v3, v4

    invoke-virtual {v0, v3}, Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 804
    iget p1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->commentNest:I

    sub-int/2addr p1, v1

    iput p1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->commentNest:I

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->commentNest:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget p1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->commentNest:I

    if-nez p1, :cond_8

    invoke-virtual {p0, v1}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->SwitchTo(I)V

    goto :goto_0

    .line 795
    :cond_4
    iget-object p1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez p1, :cond_5

    .line 796
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->image:Ljava/lang/StringBuffer;

    .line 797
    :cond_5
    iget-object p1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;

    iget v3, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjimageLen:I

    iget v4, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedPos:I

    add-int/2addr v4, v1

    iput v4, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->lengthOfMatch:I

    add-int/2addr v3, v4

    invoke-virtual {v0, v3}, Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 798
    iget p1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->commentNest:I

    add-int/2addr p1, v1

    iput p1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->commentNest:I

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->commentNest:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 789
    :cond_6
    iget-object p1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez p1, :cond_7

    .line 790
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->image:Ljava/lang/StringBuffer;

    .line 791
    :cond_7
    iget-object p1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;

    iget v2, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjimageLen:I

    iget v3, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedPos:I

    add-int/2addr v3, v1

    iput v3, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->lengthOfMatch:I

    add-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 792
    iput v1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->commentNest:I

    :cond_8
    :goto_0
    return-void
.end method

.method public SwitchTo(I)V
    .locals 3

    const/4 v0, 0x4

    if-ge p1, v0, :cond_0

    if-ltz p1, :cond_0

    .line 659
    iput p1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curLexState:I

    return-void

    .line 657
    :cond_0
    new-instance v0, Lorg/apache/james/mime4j/field/structured/parser/TokenMgrError;

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

    invoke-direct {v0, p1, v1}, Lorg/apache/james/mime4j/field/structured/parser/TokenMgrError;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method TokenLexicalActions(Lorg/apache/james/mime4j/field/structured/parser/Token;)V
    .locals 4

    .line 834
    iget v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedKind:I

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 837
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_1

    .line 838
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->image:Ljava/lang/StringBuffer;

    .line 839
    :cond_1
    iget-object v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;

    iget v2, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjimageLen:I

    iget v3, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedPos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->lengthOfMatch:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 840
    iget-object v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->image:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lorg/apache/james/mime4j/field/structured/parser/Token;->image:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public getNextToken()Lorg/apache/james/mime4j/field/structured/parser/Token;
    .locals 17

    move-object/from16 v0, p0

    .line 685
    const-string v1, ""

    const/4 v2, 0x0

    move v3, v2

    .line 694
    :cond_0
    :goto_0
    :try_start_0
    iget-object v4, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;

    invoke-virtual {v4}, Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;->BeginToken()C

    move-result v4

    iput-char v4, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curChar:C

    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v4, 0x0

    .line 702
    iput-object v4, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->image:Ljava/lang/StringBuffer;

    .line 703
    iput v2, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjimageLen:I

    .line 707
    :goto_1
    iget v5, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curLexState:I

    const v6, 0x7fffffff

    const/4 v7, 0x1

    if-eqz v5, :cond_4

    if-eq v5, v7, :cond_3

    const/4 v8, 0x2

    if-eq v5, v8, :cond_2

    const/4 v8, 0x3

    if-eq v5, v8, :cond_1

    goto :goto_2

    .line 725
    :cond_1
    iput v6, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedKind:I

    .line 726
    iput v2, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedPos:I

    .line 727
    invoke-direct/range {p0 .. p0}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjMoveStringLiteralDfa0_3()I

    move-result v3

    goto :goto_2

    .line 720
    :cond_2
    iput v6, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedKind:I

    .line 721
    iput v2, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedPos:I

    .line 722
    invoke-direct/range {p0 .. p0}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjMoveStringLiteralDfa0_2()I

    move-result v3

    goto :goto_2

    .line 715
    :cond_3
    iput v6, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedKind:I

    .line 716
    iput v2, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedPos:I

    .line 717
    invoke-direct/range {p0 .. p0}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjMoveStringLiteralDfa0_1()I

    move-result v3

    goto :goto_2

    .line 710
    :cond_4
    iput v6, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedKind:I

    .line 711
    iput v2, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedPos:I

    .line 712
    invoke-direct/range {p0 .. p0}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjMoveStringLiteralDfa0_0()I

    move-result v3

    .line 730
    :goto_2
    iget v5, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedKind:I

    if-eq v5, v6, :cond_a

    .line 732
    iget v5, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedPos:I

    add-int/lit8 v8, v5, 0x1

    if-ge v8, v3, :cond_5

    .line 733
    iget-object v8, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;

    sub-int v5, v3, v5

    sub-int/2addr v5, v7

    invoke-virtual {v8, v5}, Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;->backup(I)V

    .line 734
    :cond_5
    sget-object v5, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjtoToken:[J

    iget v8, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedKind:I

    shr-int/lit8 v9, v8, 0x6

    aget-wide v9, v5, v9

    and-int/lit8 v5, v8, 0x3f

    const-wide/16 v11, 0x1

    shl-long v13, v11, v5

    and-long/2addr v9, v13

    const-wide/16 v13, 0x0

    cmp-long v5, v9, v13

    const/4 v9, -0x1

    if-eqz v5, :cond_7

    .line 736
    invoke-virtual/range {p0 .. p0}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjFillToken()Lorg/apache/james/mime4j/field/structured/parser/Token;

    move-result-object v1

    .line 737
    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->TokenLexicalActions(Lorg/apache/james/mime4j/field/structured/parser/Token;)V

    .line 738
    sget-object v2, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjnewLexState:[I

    iget v3, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedKind:I

    aget v2, v2, v3

    if-eq v2, v9, :cond_6

    .line 739
    iput v2, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curLexState:I

    :cond_6
    return-object v1

    .line 742
    :cond_7
    sget-object v5, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjtoSkip:[J

    shr-int/lit8 v10, v8, 0x6

    aget-wide v15, v5, v10

    and-int/lit8 v5, v8, 0x3f

    shl-long v10, v11, v5

    and-long/2addr v10, v15

    cmp-long v5, v10, v13

    if-eqz v5, :cond_8

    .line 744
    invoke-virtual {v0, v4}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->SkipLexicalActions(Lorg/apache/james/mime4j/field/structured/parser/Token;)V

    .line 745
    sget-object v4, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjnewLexState:[I

    iget v5, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedKind:I

    aget v4, v4, v5

    if-eq v4, v9, :cond_0

    .line 746
    iput v4, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curLexState:I

    goto/16 :goto_0

    .line 749
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->MoreLexicalActions()V

    .line 750
    sget-object v3, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjnewLexState:[I

    iget v5, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedKind:I

    aget v3, v3, v5

    if-eq v3, v9, :cond_9

    .line 751
    iput v3, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curLexState:I

    .line 753
    :cond_9
    iput v6, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedKind:I

    .line 755
    :try_start_1
    iget-object v3, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;

    invoke-virtual {v3}, Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;->readChar()C

    move-result v3

    iput-char v3, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curChar:C

    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move v3, v2

    goto/16 :goto_1

    :catch_0
    move v3, v2

    .line 760
    :cond_a
    iget-object v5, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;

    invoke-virtual {v5}, Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;->getEndLine()I

    move-result v5

    .line 761
    iget-object v6, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;

    invoke-virtual {v6}, Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;->getEndColumn()I

    move-result v6

    .line 764
    :try_start_2
    iget-object v8, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;

    invoke-virtual {v8}, Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;->readChar()C

    iget-object v8, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;

    invoke-virtual {v8, v7}, Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;->backup(I)V

    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move v9, v2

    move v11, v5

    move v12, v6

    goto :goto_6

    :catch_1
    if-gt v3, v7, :cond_b

    move-object v4, v1

    goto :goto_3

    .line 767
    :cond_b
    iget-object v4, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;

    invoke-virtual {v4}, Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;->GetImage()Ljava/lang/String;

    move-result-object v4

    .line 768
    :goto_3
    iget-char v8, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curChar:C

    const/16 v9, 0xa

    if-eq v8, v9, :cond_d

    const/16 v9, 0xd

    if-ne v8, v9, :cond_c

    goto :goto_4

    :cond_c
    add-int/lit8 v2, v6, 0x1

    goto :goto_5

    :cond_d
    :goto_4
    add-int/lit8 v5, v5, 0x1

    :goto_5
    move v12, v2

    move v11, v5

    move v9, v7

    :goto_6
    if-nez v9, :cond_f

    .line 776
    iget-object v2, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;

    invoke-virtual {v2, v7}, Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;->backup(I)V

    if-gt v3, v7, :cond_e

    goto :goto_7

    .line 777
    :cond_e
    iget-object v1, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;->GetImage()Ljava/lang/String;

    move-result-object v1

    :goto_7
    move-object v13, v1

    goto :goto_8

    :cond_f
    move-object v13, v4

    .line 779
    :goto_8
    new-instance v1, Lorg/apache/james/mime4j/field/structured/parser/TokenMgrError;

    iget v10, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curLexState:I

    iget-char v14, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curChar:C

    const/4 v15, 0x0

    move-object v8, v1

    invoke-direct/range {v8 .. v15}, Lorg/apache/james/mime4j/field/structured/parser/TokenMgrError;-><init>(ZIIILjava/lang/String;CI)V

    throw v1

    .line 698
    :catch_2
    iput v2, v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedKind:I

    .line 699
    invoke-virtual/range {p0 .. p0}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjFillToken()Lorg/apache/james/mime4j/field/structured/parser/Token;

    move-result-object v1

    return-object v1
.end method

.method protected jjFillToken()Lorg/apache/james/mime4j/field/structured/parser/Token;
    .locals 3

    .line 664
    iget v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedKind:I

    invoke-static {v0}, Lorg/apache/james/mime4j/field/structured/parser/Token;->newToken(I)Lorg/apache/james/mime4j/field/structured/parser/Token;

    move-result-object v0

    .line 665
    iget v1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedKind:I

    iput v1, v0, Lorg/apache/james/mime4j/field/structured/parser/Token;->kind:I

    .line 666
    sget-object v1, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

    iget v2, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedKind:I

    aget-object v1, v1, v2

    if-nez v1, :cond_0

    .line 667
    iget-object v1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;->GetImage()Ljava/lang/String;

    move-result-object v1

    :cond_0
    iput-object v1, v0, Lorg/apache/james/mime4j/field/structured/parser/Token;->image:Ljava/lang/String;

    .line 668
    iget-object v1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;->getBeginLine()I

    move-result v1

    iput v1, v0, Lorg/apache/james/mime4j/field/structured/parser/Token;->beginLine:I

    .line 669
    iget-object v1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;->getBeginColumn()I

    move-result v1

    iput v1, v0, Lorg/apache/james/mime4j/field/structured/parser/Token;->beginColumn:I

    .line 670
    iget-object v1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;->getEndLine()I

    move-result v1

    iput v1, v0, Lorg/apache/james/mime4j/field/structured/parser/Token;->endLine:I

    .line 671
    iget-object v1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;->getEndColumn()I

    move-result v1

    iput v1, v0, Lorg/apache/james/mime4j/field/structured/parser/Token;->endColumn:I

    return-object v0
.end method

.method public setDebugStream(Ljava/io/PrintStream;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->debugStream:Ljava/io/PrintStream;

    return-void
.end method
