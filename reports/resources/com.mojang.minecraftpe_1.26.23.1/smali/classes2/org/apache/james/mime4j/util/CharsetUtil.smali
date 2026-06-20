.class public Lorg/apache/james/mime4j/util/CharsetUtil;
.super Ljava/lang/Object;
.source "CharsetUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/james/mime4j/util/CharsetUtil$Charset;
    }
.end annotation


# static fields
.field public static final CR:I = 0xd

.field public static final CRLF:Ljava/lang/String; = "\r\n"

.field public static final DEFAULT_CHARSET:Ljava/nio/charset/Charset;

.field public static final HT:I = 0x9

.field public static final ISO_8859_1:Ljava/nio/charset/Charset;

.field private static JAVA_CHARSETS:[Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

.field public static final LF:I = 0xa

.field public static final SP:I = 0x20

.field public static final US_ASCII:Ljava/nio/charset/Charset;

.field public static final UTF_8:Ljava/nio/charset/Charset;

.field private static charsetMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/james/mime4j/util/CharsetUtil$Charset;",
            ">;"
        }
    .end annotation
.end field

.field private static decodingSupported:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static encodingSupported:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static log:Lorg/apache/commons/logging/Log;


# direct methods
.method static constructor <clinit>()V
    .locals 21

    .line 791
    const-class v0, Lorg/apache/james/mime4j/util/CharsetUtil;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/util/CharsetUtil;->log:Lorg/apache/commons/logging/Log;

    const/16 v0, 0x93

    .line 809
    new-array v0, v0, [Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const/16 v2, 0xd

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "ISO_8859-1:1987"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "iso-ir-100"

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const-string v4, "ISO_8859-1"

    const/4 v7, 0x2

    aput-object v4, v3, v7

    const-string v4, "latin1"

    const/4 v8, 0x3

    aput-object v4, v3, v8

    const-string v4, "l1"

    const/4 v9, 0x4

    aput-object v4, v3, v9

    const-string v4, "IBM819"

    const/4 v10, 0x5

    aput-object v4, v3, v10

    const-string v4, "CP819"

    const/4 v11, 0x6

    aput-object v4, v3, v11

    const-string v4, "csISOLatin1"

    const/4 v12, 0x7

    aput-object v4, v3, v12

    const-string v4, "8859_1"

    const/16 v13, 0x8

    aput-object v4, v3, v13

    const-string v4, "819"

    const/16 v14, 0x9

    aput-object v4, v3, v14

    const-string v4, "IBM-819"

    const/16 v15, 0xa

    aput-object v4, v3, v15

    const-string v4, "ISO8859-1"

    const/16 v16, 0xb

    aput-object v4, v3, v16

    const-string v4, "ISO_8859_1"

    const/16 v2, 0xc

    aput-object v4, v3, v2

    const-string v4, "ISO8859_1"

    const-string v2, "ISO-8859-1"

    const/4 v14, 0x0

    invoke-direct {v1, v4, v2, v3, v14}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v1, v0, v5

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    new-array v3, v13, [Ljava/lang/String;

    const-string v4, "ISO_8859-2:1987"

    aput-object v4, v3, v5

    const-string v4, "iso-ir-101"

    aput-object v4, v3, v6

    const-string v4, "ISO_8859-2"

    aput-object v4, v3, v7

    const-string v4, "latin2"

    aput-object v4, v3, v8

    const-string v4, "l2"

    aput-object v4, v3, v9

    const-string v4, "csISOLatin2"

    aput-object v4, v3, v10

    const-string v4, "8859_2"

    aput-object v4, v3, v11

    const-string v4, "iso8859_2"

    aput-object v4, v3, v12

    const-string v4, "ISO8859_2"

    const-string v15, "ISO-8859-2"

    invoke-direct {v1, v4, v15, v3, v14}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v1, v0, v6

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    new-array v3, v12, [Ljava/lang/String;

    const-string v4, "ISO_8859-3:1988"

    aput-object v4, v3, v5

    const-string v4, "iso-ir-109"

    aput-object v4, v3, v6

    const-string v4, "ISO_8859-3"

    aput-object v4, v3, v7

    const-string v4, "latin3"

    aput-object v4, v3, v8

    const-string v4, "l3"

    aput-object v4, v3, v9

    const-string v4, "csISOLatin3"

    aput-object v4, v3, v10

    const-string v4, "8859_3"

    aput-object v4, v3, v11

    const-string v4, "ISO8859_3"

    const-string v15, "ISO-8859-3"

    invoke-direct {v1, v4, v15, v3, v14}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v1, v0, v7

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    new-array v3, v12, [Ljava/lang/String;

    const-string v4, "ISO_8859-4:1988"

    aput-object v4, v3, v5

    const-string v4, "iso-ir-110"

    aput-object v4, v3, v6

    const-string v4, "ISO_8859-4"

    aput-object v4, v3, v7

    const-string v4, "latin4"

    aput-object v4, v3, v8

    const-string v4, "l4"

    aput-object v4, v3, v9

    const-string v4, "csISOLatin4"

    aput-object v4, v3, v10

    const-string v4, "8859_4"

    aput-object v4, v3, v11

    const-string v4, "ISO8859_4"

    const-string v15, "ISO-8859-4"

    invoke-direct {v1, v4, v15, v3, v14}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v1, v0, v8

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    new-array v3, v11, [Ljava/lang/String;

    const-string v4, "ISO_8859-5:1988"

    aput-object v4, v3, v5

    const-string v4, "iso-ir-144"

    aput-object v4, v3, v6

    const-string v4, "ISO_8859-5"

    aput-object v4, v3, v7

    const-string v4, "cyrillic"

    aput-object v4, v3, v8

    const-string v4, "csISOLatinCyrillic"

    aput-object v4, v3, v9

    const-string v4, "8859_5"

    aput-object v4, v3, v10

    const-string v4, "ISO8859_5"

    const-string v15, "ISO-8859-5"

    invoke-direct {v1, v4, v15, v3, v14}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v1, v0, v9

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    new-array v3, v13, [Ljava/lang/String;

    const-string v4, "ISO_8859-6:1987"

    aput-object v4, v3, v5

    const-string v4, "iso-ir-127"

    aput-object v4, v3, v6

    const-string v4, "ISO_8859-6"

    aput-object v4, v3, v7

    const-string v4, "ECMA-114"

    aput-object v4, v3, v8

    const-string v4, "ASMO-708"

    aput-object v4, v3, v9

    const-string v4, "arabic"

    aput-object v4, v3, v10

    const-string v4, "csISOLatinArabic"

    aput-object v4, v3, v11

    const-string v4, "8859_6"

    aput-object v4, v3, v12

    const-string v4, "ISO8859_6"

    const/4 v15, 0x0

    sget-object v15, Lcom/google/android/datatransport/runtime/dagger/internal/TVW/fhjtYMsniW;->gnkODx:Ljava/lang/String;

    invoke-direct {v1, v4, v15, v3, v14}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v1, v0, v10

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const/16 v3, 0xa

    new-array v4, v3, [Ljava/lang/String;

    const-string v3, "ISO_8859-7:1987"

    aput-object v3, v4, v5

    const-string v3, "iso-ir-126"

    aput-object v3, v4, v6

    const-string v3, "ISO_8859-7"

    aput-object v3, v4, v7

    const-string v3, "ELOT_928"

    aput-object v3, v4, v8

    const-string v3, "ECMA-118"

    aput-object v3, v4, v9

    const-string v3, "greek"

    aput-object v3, v4, v10

    const-string v3, "greek8"

    aput-object v3, v4, v11

    const-string v3, "csISOLatinGreek"

    aput-object v3, v4, v12

    const-string v3, "8859_7"

    aput-object v3, v4, v13

    const-string/jumbo v3, "sun_eu_greek"

    const/16 v15, 0x9

    aput-object v3, v4, v15

    const-string v3, "ISO8859_7"

    const-string v15, "ISO-8859-7"

    invoke-direct {v1, v3, v15, v4, v14}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v1, v0, v11

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    new-array v3, v11, [Ljava/lang/String;

    const-string v4, "ISO_8859-8:1988"

    aput-object v4, v3, v5

    const-string v4, "iso-ir-138"

    aput-object v4, v3, v6

    const-string v4, "ISO_8859-8"

    aput-object v4, v3, v7

    const-string v4, "hebrew"

    aput-object v4, v3, v8

    const-string v4, "csISOLatinHebrew"

    aput-object v4, v3, v9

    const-string v4, "8859_8"

    aput-object v4, v3, v10

    const-string v4, "ISO8859_8"

    const-string v15, "ISO-8859-8"

    invoke-direct {v1, v4, v15, v3, v14}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v1, v0, v12

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    new-array v3, v12, [Ljava/lang/String;

    const-string v4, "ISO_8859-9:1989"

    aput-object v4, v3, v5

    const-string v4, "iso-ir-148"

    aput-object v4, v3, v6

    const-string v4, "ISO_8859-9"

    aput-object v4, v3, v7

    const-string v4, "latin5"

    aput-object v4, v3, v8

    const-string v4, "l5"

    aput-object v4, v3, v9

    const-string v4, "csISOLatin5"

    aput-object v4, v3, v10

    const-string v4, "8859_9"

    aput-object v4, v3, v11

    const/4 v4, 0x0

    sget-object v4, Lcom/google/android/datatransport/runtime/dagger/internal/TVW/fhjtYMsniW;->FDwvAgpYh:Ljava/lang/String;

    const-string v15, "ISO-8859-9"

    invoke-direct {v1, v4, v15, v3, v14}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v1, v0, v13

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v3, "ISO-8859-13"

    new-array v4, v5, [Ljava/lang/String;

    const-string v15, "ISO8859_13"

    invoke-direct {v1, v15, v3, v4, v14}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v3, 0x9

    aput-object v1, v0, v3

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const/16 v3, 0xe

    new-array v4, v3, [Ljava/lang/String;

    const-string v15, "ISO_8859-15"

    aput-object v15, v4, v5

    const-string v15, "Latin-9"

    aput-object v15, v4, v6

    const-string v15, "8859_15"

    aput-object v15, v4, v7

    const-string v15, "csISOlatin9"

    aput-object v15, v4, v8

    const-string v15, "IBM923"

    aput-object v15, v4, v9

    const-string v15, "cp923"

    aput-object v15, v4, v10

    const-string v15, "923"

    aput-object v15, v4, v11

    const-string v15, "L9"

    aput-object v15, v4, v12

    const-string v15, "IBM-923"

    aput-object v15, v4, v13

    const-string v15, "ISO8859-15"

    const/16 v19, 0x9

    aput-object v15, v4, v19

    const-string v15, "LATIN9"

    const/16 v20, 0xa

    aput-object v15, v4, v20

    const-string v15, "LATIN0"

    aput-object v15, v4, v16

    const-string v15, "csISOlatin0"

    const/16 v18, 0xc

    aput-object v15, v4, v18

    const-string v15, "ISO8859_15_FDIS"

    const/16 v17, 0xd

    aput-object v15, v4, v17

    const-string v15, "ISO8859_15"

    const-string v3, "ISO-8859-15"

    invoke-direct {v1, v15, v3, v4, v14}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v1, v0, v20

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "csKOI8R"

    aput-object v4, v3, v5

    const-string v4, "koi8"

    aput-object v4, v3, v6

    const-string v4, "KOI8_R"

    const-string v15, "KOI8-R"

    invoke-direct {v1, v4, v15, v3, v14}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    aput-object v1, v0, v16

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const/16 v3, 0xc

    new-array v4, v3, [Ljava/lang/String;

    const-string v3, "ANSI_X3.4-1968"

    aput-object v3, v4, v5

    const/4 v3, 0x0

    sget-object v3, Lorg/spongycastle/asn1/util/GKS/lAxclkLY;->eqAWDqZvAakeluS:Ljava/lang/String;

    aput-object v3, v4, v6

    const-string v3, "ANSI_X3.4-1986"

    aput-object v3, v4, v7

    const-string v3, "ISO_646.irv:1991"

    aput-object v3, v4, v8

    const-string v3, "ISO646-US"

    aput-object v3, v4, v9

    const-string/jumbo v3, "us"

    aput-object v3, v4, v10

    const-string v3, "IBM367"

    aput-object v3, v4, v11

    const-string v3, "cp367"

    aput-object v3, v4, v12

    const-string v3, "csASCII"

    aput-object v3, v4, v13

    const-string v3, "ascii7"

    const/16 v15, 0x9

    aput-object v3, v4, v15

    const-string v3, "646"

    const/16 v15, 0xa

    aput-object v3, v4, v15

    const-string v3, "iso_646.irv:1983"

    aput-object v3, v4, v16

    const-string v3, "ASCII"

    const-string v15, "US-ASCII"

    invoke-direct {v1, v3, v15, v4, v14}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v3, 0xc

    aput-object v1, v0, v3

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    new-array v3, v5, [Ljava/lang/String;

    const/4 v4, 0x0

    sget-object v4, Lcom/google/firebase/iid/EBY/WEjYEmdPgeUUZ;->EkhfQUsvyfBXn:Ljava/lang/String;

    const-string v12, "UTF-8"

    invoke-direct {v1, v4, v12, v3, v14}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v3, 0xd

    aput-object v1, v0, v3

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "UTF_16"

    aput-object v4, v3, v5

    const-string v4, "UTF-16"

    invoke-direct {v1, v4, v4, v3, v14}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v3, 0xe

    aput-object v1, v0, v3

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    new-array v3, v8, [Ljava/lang/String;

    const-string v4, "X-UTF-16BE"

    aput-object v4, v3, v5

    const-string v4, "UTF_16BE"

    aput-object v4, v3, v6

    const-string v4, "ISO-10646-UCS-2"

    aput-object v4, v3, v7

    const-string v4, "UnicodeBigUnmarked"

    const-string v13, "UTF-16BE"

    invoke-direct {v1, v4, v13, v3, v14}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v3, 0xf

    aput-object v1, v0, v3

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "UTF_16LE"

    aput-object v4, v3, v5

    const-string v4, "X-UTF-16LE"

    aput-object v4, v3, v6

    const-string v4, "UnicodeLittleUnmarked"

    const-string v13, "UTF-16LE"

    invoke-direct {v1, v4, v13, v3, v14}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v3, 0x10

    aput-object v1, v0, v3

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    new-array v3, v9, [Ljava/lang/String;

    const-string v4, "csBig5"

    aput-object v4, v3, v5

    const-string v4, "CN-Big5"

    aput-object v4, v3, v6

    const-string v4, "BIG-FIVE"

    aput-object v4, v3, v7

    const-string v4, "BIGFIVE"

    aput-object v4, v3, v8

    const-string v4, "Big5"

    invoke-direct {v1, v4, v4, v3, v14}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v3, 0x11

    aput-object v1, v0, v3

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "big5hkscs"

    aput-object v4, v3, v5

    const-string v4, "Big5_HKSCS"

    const-string v13, "Big5-HKSCS"

    invoke-direct {v1, v4, v13, v3, v14}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v3, 0x12

    aput-object v1, v0, v3

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    new-array v3, v11, [Ljava/lang/String;

    const-string v4, "csEUCPkdFmtJapanese"

    aput-object v4, v3, v5

    const-string v4, "Extended_UNIX_Code_Packed_Format_for_Japanese"

    aput-object v4, v3, v6

    const-string v4, "eucjis"

    aput-object v4, v3, v7

    const-string/jumbo v4, "x-eucjp"

    aput-object v4, v3, v8

    const-string v4, "eucjp"

    aput-object v4, v3, v9

    const-string/jumbo v4, "x-euc-jp"

    aput-object v4, v3, v10

    const-string v4, "EUC_JP"

    const-string v13, "EUC-JP"

    invoke-direct {v1, v4, v13, v3, v14}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v3, 0x13

    aput-object v1, v0, v3

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const/16 v3, 0x8

    new-array v4, v3, [Ljava/lang/String;

    const-string v3, "csEUCKR"

    aput-object v3, v4, v5

    const-string v3, "ksc5601"

    aput-object v3, v4, v6

    const-string v3, "5601"

    aput-object v3, v4, v7

    const-string v3, "ksc5601_1987"

    aput-object v3, v4, v8

    const-string v3, "ksc_5601"

    aput-object v3, v4, v9

    const-string v3, "ksc5601-1987"

    aput-object v3, v4, v10

    const-string v3, "ks_c_5601-1987"

    aput-object v3, v4, v11

    const-string v3, "euckr"

    const/4 v13, 0x7

    aput-object v3, v4, v13

    const-string v3, "EUC_KR"

    const-string v13, "EUC-KR"

    invoke-direct {v1, v3, v13, v4, v14}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v3, 0x14

    aput-object v1, v0, v3

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "gb18030-2000"

    aput-object v4, v3, v5

    const-string v4, "GB18030"

    const-string v13, "GB18030"

    invoke-direct {v1, v4, v13, v3, v14}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v3, 0x15

    aput-object v1, v0, v3

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const/16 v3, 0x8

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "x-EUC-CN"

    aput-object v4, v3, v5

    const-string v4, "csGB2312"

    aput-object v4, v3, v6

    const-string v4, "euccn"

    aput-object v4, v3, v7

    const-string v4, "euc-cn"

    aput-object v4, v3, v8

    const-string v4, "gb2312-80"

    aput-object v4, v3, v9

    const-string v4, "gb2312-1980"

    aput-object v4, v3, v10

    const-string v4, "CN-GB"

    aput-object v4, v3, v11

    const/4 v4, 0x0

    sget-object v4, Lcom/google/firebase/components/ry/rJEhvHEtgO;->wIrSAl:Ljava/lang/String;

    const/4 v13, 0x7

    aput-object v4, v3, v13

    const-string v4, "EUC_CN"

    const-string v13, "GB2312"

    invoke-direct {v1, v4, v13, v3, v14}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v3, 0x16

    aput-object v1, v0, v3

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    new-array v3, v9, [Ljava/lang/String;

    const-string v4, "CP936"

    aput-object v4, v3, v5

    const-string v4, "MS936"

    aput-object v4, v3, v6

    const-string v4, "ms_936"

    aput-object v4, v3, v7

    const-string/jumbo v4, "x-mswin-936"

    aput-object v4, v3, v8

    const-string v4, "GBK"

    const-string/jumbo v13, "windows-936"

    invoke-direct {v1, v4, v13, v3, v14}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v3, 0x17

    aput-object v1, v0, v3

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    new-array v3, v10, [Ljava/lang/String;

    const-string v4, "ebcdic-cp-us"

    aput-object v4, v3, v5

    const-string v4, "ebcdic-cp-ca"

    aput-object v4, v3, v6

    const-string v4, "ebcdic-cp-wt"

    aput-object v4, v3, v7

    const-string v4, "ebcdic-cp-nl"

    aput-object v4, v3, v8

    const-string v4, "csIBM037"

    aput-object v4, v3, v9

    const-string v4, "Cp037"

    const-string v13, "IBM037"

    invoke-direct {v1, v4, v13, v3, v14}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v3, 0x18

    aput-object v1, v0, v3

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "csIBM273"

    aput-object v4, v3, v5

    const-string v4, "Cp273"

    const-string v13, "IBM273"

    invoke-direct {v1, v4, v13, v3, v14}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v3, 0x19

    aput-object v1, v0, v3

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    new-array v3, v8, [Ljava/lang/String;

    const-string v4, "EBCDIC-CP-DK"

    aput-object v4, v3, v5

    const-string v4, "EBCDIC-CP-NO"

    aput-object v4, v3, v6

    const-string v4, "csIBM277"

    aput-object v4, v3, v7

    const/4 v4, 0x0

    sget-object v4, Lcom/google/firebase/components/ry/rJEhvHEtgO;->QPxhqjtitKR:Ljava/lang/String;

    const-string v13, "IBM277"

    invoke-direct {v1, v4, v13, v3, v14}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v3, 0x1a

    aput-object v1, v0, v3

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    new-array v3, v9, [Ljava/lang/String;

    const-string v4, "CP278"

    aput-object v4, v3, v5

    const-string v4, "ebcdic-cp-fi"

    aput-object v4, v3, v6

    const-string v4, "ebcdic-cp-se"

    aput-object v4, v3, v7

    const-string v4, "csIBM278"

    aput-object v4, v3, v8

    const-string v4, "Cp278"

    const-string v13, "IBM278"

    invoke-direct {v1, v4, v13, v3, v14}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v3, 0x1b

    aput-object v1, v0, v3

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "ebcdic-cp-it"

    aput-object v4, v3, v5

    const-string v4, "csIBM280"

    aput-object v4, v3, v6

    const-string v4, "Cp280"

    const-string v13, "IBM280"

    invoke-direct {v1, v4, v13, v3, v14}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v3, 0x1c

    aput-object v1, v0, v3

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    new-array v3, v7, [Ljava/lang/String;

    const/4 v4, 0x0

    sget-object v4, Landroidx/legacy/coreutils/Zn/jzoH;->zFk:Ljava/lang/String;

    aput-object v4, v3, v5

    const-string v4, "csIBM284"

    aput-object v4, v3, v6

    const-string v4, "Cp284"

    const-string v13, "IBM284"

    invoke-direct {v1, v4, v13, v3, v14}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v3, 0x1d

    aput-object v1, v0, v3

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "ebcdic-cp-gb"

    aput-object v4, v3, v5

    const-string v4, "csIBM285"

    aput-object v4, v3, v6

    const-string v4, "Cp285"

    const-string v13, "IBM285"

    invoke-direct {v1, v4, v13, v3, v14}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v3, 0x1e

    aput-object v1, v0, v3

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "ebcdic-cp-fr"

    aput-object v4, v3, v5

    const-string v4, "csIBM297"

    aput-object v4, v3, v6

    const-string v4, "Cp297"

    const-string v13, "IBM297"

    invoke-direct {v1, v4, v13, v3, v14}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v3, 0x1f

    aput-object v1, v0, v3

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    new-array v3, v7, [Ljava/lang/String;

    const/4 v4, 0x0

    sget-object v4, Landroidx/startup/xeu/fpYJP;->PPnPRy:Ljava/lang/String;

    aput-object v4, v3, v5

    const/4 v4, 0x0

    sget-object v4, Lcom/google/android/datatransport/runtime/dagger/internal/TVW/fhjtYMsniW;->zpyqJq:Ljava/lang/String;

    aput-object v4, v3, v6

    const-string v4, "Cp420"

    const-string v13, "IBM420"

    invoke-direct {v1, v4, v13, v3, v14}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v3, 0x20

    aput-object v1, v0, v3

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "ebcdic-cp-he"

    aput-object v4, v3, v5

    const-string v4, "csIBM424"

    aput-object v4, v3, v6

    const-string v4, "Cp424"

    const-string v13, "IBM424"

    invoke-direct {v1, v4, v13, v3, v14}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v3, 0x21

    aput-object v1, v0, v3

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "437"

    aput-object v4, v3, v5

    const-string v4, "csPC8CodePage437"

    aput-object v4, v3, v6

    const-string v4, "Cp437"

    const-string v13, "IBM437"

    invoke-direct {v1, v4, v13, v3, v14}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v3, 0x22

    aput-object v1, v0, v3

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    new-array v3, v8, [Ljava/lang/String;

    const-string v4, "ebcdic-cp-be"

    aput-object v4, v3, v5

    const-string v4, "ebcdic-cp-ch"

    aput-object v4, v3, v6

    const-string v4, "csIBM500"

    aput-object v4, v3, v7

    const-string v4, "Cp500"

    const-string v13, "IBM500"

    invoke-direct {v1, v4, v13, v3, v14}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v3, 0x23

    aput-object v1, v0, v3

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "csPC775Baltic"

    aput-object v4, v3, v5

    const-string v4, "Cp775"

    const-string v13, "IBM775"

    invoke-direct {v1, v4, v13, v3, v14}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v3, 0x24

    aput-object v1, v0, v3

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v3, "IBM-Thai"

    new-array v4, v5, [Ljava/lang/String;

    const-string v13, "Cp838"

    invoke-direct {v1, v13, v3, v4, v14}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v3, 0x25

    aput-object v1, v0, v3

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "850"

    aput-object v4, v3, v5

    const-string v4, "csPC850Multilingual"

    aput-object v4, v3, v6

    const-string v4, "Cp850"

    const-string v13, "IBM850"

    invoke-direct {v1, v4, v13, v3, v14}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v3, 0x26

    aput-object v1, v0, v3

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "852"

    aput-object v4, v3, v5

    const-string v4, "csPCp852"

    aput-object v4, v3, v6

    const-string v4, "Cp852"

    const-string v13, "IBM852"

    invoke-direct {v1, v4, v13, v3, v14}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v3, 0x27

    aput-object v1, v0, v3

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "855"

    aput-object v4, v3, v5

    const-string v4, "csIBM855"

    aput-object v4, v3, v6

    const/4 v4, 0x0

    sget-object v4, Lorg/conscrypt/io/fMC/nEChR;->AxhiBoQ:Ljava/lang/String;

    const-string v13, "IBM855"

    invoke-direct {v1, v4, v13, v3, v14}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v3, 0x28

    aput-object v1, v0, v3

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "857"

    aput-object v4, v3, v5

    const-string v4, "csIBM857"

    aput-object v4, v3, v6

    const-string v4, "Cp857"

    const-string v13, "IBM857"

    invoke-direct {v1, v4, v13, v3, v14}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v3, 0x29

    aput-object v1, v0, v3

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    new-array v3, v8, [Ljava/lang/String;

    const-string v4, "CCSID00858"

    aput-object v4, v3, v5

    const-string v4, "CP00858"

    aput-object v4, v3, v6

    const-string v4, "PC-Multilingual-850+euro"

    aput-object v4, v3, v7

    const-string v4, "Cp858"

    const-string v13, "IBM00858"

    invoke-direct {v1, v4, v13, v3, v14}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v3, 0x2a

    aput-object v1, v0, v3

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "860"

    aput-object v4, v3, v5

    const-string v4, "csIBM860"

    aput-object v4, v3, v6

    const-string v4, "Cp860"

    const-string v13, "IBM860"

    invoke-direct {v1, v4, v13, v3, v14}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v3, 0x2b

    aput-object v1, v0, v3

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    new-array v3, v8, [Ljava/lang/String;

    const-string v4, "861"

    aput-object v4, v3, v5

    const-string v4, "cp-is"

    aput-object v4, v3, v6

    const-string v4, "csIBM861"

    aput-object v4, v3, v7

    const-string v4, "Cp861"

    const-string v13, "IBM861"

    invoke-direct {v1, v4, v13, v3, v14}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v3, 0x2c

    aput-object v1, v0, v3

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "862"

    aput-object v4, v3, v5

    const-string v4, "csPC862LatinHebrew"

    aput-object v4, v3, v6

    const-string v4, "Cp862"

    const-string v13, "IBM862"

    invoke-direct {v1, v4, v13, v3, v14}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v3, 0x2d

    aput-object v1, v0, v3

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "863"

    aput-object v4, v3, v5

    const-string v4, "csIBM863"

    aput-object v4, v3, v6

    const-string v4, "Cp863"

    const-string v13, "IBM863"

    invoke-direct {v1, v4, v13, v3, v14}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v3, 0x2e

    aput-object v1, v0, v3

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "cp864"

    aput-object v4, v3, v5

    const-string v4, "csIBM864"

    aput-object v4, v3, v6

    const-string v4, "Cp864"

    const-string v13, "IBM864"

    invoke-direct {v1, v4, v13, v3, v14}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v3, 0x2f

    aput-object v1, v0, v3

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "865"

    aput-object v4, v3, v5

    const/4 v4, 0x0

    sget-object v4, Landroidx/legacy/coreutils/Zn/jzoH;->xlbmLNGO:Ljava/lang/String;

    aput-object v4, v3, v6

    const-string v4, "Cp865"

    const-string v13, "IBM865"

    invoke-direct {v1, v4, v13, v3, v14}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v3, 0x30

    aput-object v1, v0, v3

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "866"

    aput-object v4, v3, v5

    const-string v4, "csIBM866"

    aput-object v4, v3, v6

    const-string v4, "Cp866"

    const-string v13, "IBM866"

    invoke-direct {v1, v4, v13, v3, v14}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v3, 0x31

    aput-object v1, v0, v3

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "cp-ar"

    aput-object v4, v3, v5

    const/4 v4, 0x0

    sget-object v4, Lkotlin/streams/jdk8/Iq/XmnkEGmkvCpmts;->MuLdnMdUrcTNZv:Ljava/lang/String;

    aput-object v4, v3, v6

    const/4 v4, 0x0

    sget-object v4, Lorg/spongycastle/asn1/util/GKS/lAxclkLY;->wqaPDCS:Ljava/lang/String;

    const-string v13, "IBM868"

    invoke-direct {v1, v4, v13, v3, v14}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v3, 0x32

    aput-object v1, v0, v3

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "cp-gr"

    aput-object v4, v3, v5

    const-string v4, "csIBM869"

    aput-object v4, v3, v6

    const-string v4, "Cp869"

    const-string v13, "IBM869"

    invoke-direct {v1, v4, v13, v3, v14}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v3, 0x33

    aput-object v1, v0, v3

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    new-array v3, v8, [Ljava/lang/String;

    const-string v4, "ebcdic-cp-roece"

    aput-object v4, v3, v5

    const-string v4, "ebcdic-cp-yu"

    aput-object v4, v3, v6

    const-string v4, "csIBM870"

    aput-object v4, v3, v7

    const-string v4, "Cp870"

    const-string v13, "IBM870"

    invoke-direct {v1, v4, v13, v3, v14}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v3, 0x34

    aput-object v1, v0, v3

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "ebcdic-cp-is"

    aput-object v4, v3, v5

    const-string v4, "csIBM871"

    aput-object v4, v3, v6

    const-string v4, "Cp871"

    const-string v13, "IBM871"

    invoke-direct {v1, v4, v13, v3, v14}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v3, 0x35

    aput-object v1, v0, v3

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "ebcdic-cp-ar2"

    aput-object v4, v3, v5

    const-string v4, "csIBM918"

    aput-object v4, v3, v6

    const/4 v4, 0x0

    sget-object v4, Lkotlin/streams/jdk8/Iq/XmnkEGmkvCpmts;->JEwloD:Ljava/lang/String;

    const-string v13, "IBM918"

    invoke-direct {v1, v4, v13, v3, v14}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v3, 0x36

    aput-object v1, v0, v3

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "csIBM1026"

    aput-object v4, v3, v5

    const-string v4, "Cp1026"

    const-string v13, "IBM1026"

    invoke-direct {v1, v4, v13, v3, v14}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v3, 0x37

    aput-object v1, v0, v3

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "IBM-1047"

    aput-object v4, v3, v5

    const-string v4, "Cp1047"

    const-string v13, "IBM1047"

    invoke-direct {v1, v4, v13, v3, v14}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v3, 0x38

    aput-object v1, v0, v3

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    new-array v3, v8, [Ljava/lang/String;

    const-string v4, "CCSID01140"

    aput-object v4, v3, v5

    const-string v4, "CP01140"

    aput-object v4, v3, v6

    const-string v4, "ebcdic-us-37+euro"

    aput-object v4, v3, v7

    const-string v4, "Cp1140"

    const-string v13, "IBM01140"

    invoke-direct {v1, v4, v13, v3, v14}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v3, 0x39

    aput-object v1, v0, v3

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    new-array v3, v8, [Ljava/lang/String;

    const/4 v4, 0x0

    sget-object v4, Landroidx/browser/trusted/XVPk/TRDIJWgKAJDvEL;->cGeuFJ:Ljava/lang/String;

    aput-object v4, v3, v5

    const-string v4, "CP01141"

    aput-object v4, v3, v6

    const-string v4, "ebcdic-de-273+euro"

    aput-object v4, v3, v7

    const-string v4, "Cp1141"

    const-string v13, "IBM01141"

    invoke-direct {v1, v4, v13, v3, v14}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v3, 0x3a

    aput-object v1, v0, v3

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    new-array v3, v9, [Ljava/lang/String;

    const-string v4, "CCSID01142"

    aput-object v4, v3, v5

    const-string v4, "CP01142"

    aput-object v4, v3, v6

    const-string v4, "ebcdic-dk-277+euro"

    aput-object v4, v3, v7

    const-string v4, "ebcdic-no-277+euro"

    aput-object v4, v3, v8

    const-string v4, "Cp1142"

    const-string v13, "IBM01142"

    invoke-direct {v1, v4, v13, v3, v14}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v3, 0x3b

    aput-object v1, v0, v3

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    new-array v3, v9, [Ljava/lang/String;

    const-string v4, "CCSID01143"

    aput-object v4, v3, v5

    const-string v4, "CP01143"

    aput-object v4, v3, v6

    const-string v4, "ebcdic-fi-278+euro"

    aput-object v4, v3, v7

    const-string v4, "ebcdic-se-278+euro"

    aput-object v4, v3, v8

    const-string v4, "Cp1143"

    const-string v13, "IBM01143"

    invoke-direct {v1, v4, v13, v3, v14}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v3, 0x3c

    aput-object v1, v0, v3

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    new-array v3, v8, [Ljava/lang/String;

    const-string v4, "CCSID01144"

    aput-object v4, v3, v5

    const-string v4, "CP01144"

    aput-object v4, v3, v6

    const-string v4, "ebcdic-it-280+euro"

    aput-object v4, v3, v7

    const-string v4, "Cp1144"

    const-string v13, "IBM01144"

    invoke-direct {v1, v4, v13, v3, v14}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v3, 0x3d

    aput-object v1, v0, v3

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    new-array v3, v8, [Ljava/lang/String;

    const-string v4, "CCSID01145"

    aput-object v4, v3, v5

    const-string v4, "CP01145"

    aput-object v4, v3, v6

    const-string v4, "ebcdic-es-284+euro"

    aput-object v4, v3, v7

    const-string v4, "Cp1145"

    const-string v13, "IBM01145"

    invoke-direct {v1, v4, v13, v3, v14}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v3, 0x3e

    aput-object v1, v0, v3

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    new-array v3, v8, [Ljava/lang/String;

    const-string v4, "CCSID01146"

    aput-object v4, v3, v5

    const-string v4, "CP01146"

    aput-object v4, v3, v6

    const-string v4, "ebcdic-gb-285+euro"

    aput-object v4, v3, v7

    const-string v4, "Cp1146"

    const-string v13, "IBM01146"

    invoke-direct {v1, v4, v13, v3, v14}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v3, 0x3f

    aput-object v1, v0, v3

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    new-array v3, v8, [Ljava/lang/String;

    const-string v4, "CCSID01147"

    aput-object v4, v3, v5

    const-string v4, "CP01147"

    aput-object v4, v3, v6

    const-string v4, "ebcdic-fr-297+euro"

    aput-object v4, v3, v7

    const-string v4, "Cp1147"

    const-string v13, "IBM01147"

    invoke-direct {v1, v4, v13, v3, v14}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v3, 0x40

    aput-object v1, v0, v3

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    new-array v3, v8, [Ljava/lang/String;

    const-string v4, "CCSID01148"

    aput-object v4, v3, v5

    const-string v4, "CP01148"

    aput-object v4, v3, v6

    const-string v4, "ebcdic-international-500+euro"

    aput-object v4, v3, v7

    const-string v4, "Cp1148"

    const-string v13, "IBM01148"

    invoke-direct {v1, v4, v13, v3, v14}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v3, 0x41

    aput-object v1, v0, v3

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    new-array v3, v8, [Ljava/lang/String;

    const-string v4, "CCSID01149"

    aput-object v4, v3, v5

    const-string v4, "CP01149"

    aput-object v4, v3, v6

    const-string v4, "ebcdic-is-871+euro"

    aput-object v4, v3, v7

    const-string v4, "Cp1149"

    const-string v13, "IBM01149"

    invoke-direct {v1, v4, v13, v3, v14}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v3, 0x42

    aput-object v1, v0, v3

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string/jumbo v3, "windows-1250"

    new-array v4, v5, [Ljava/lang/String;

    const-string v13, "Cp1250"

    invoke-direct {v1, v13, v3, v4, v14}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v3, 0x43

    aput-object v1, v0, v3

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string/jumbo v3, "windows-1251"

    new-array v4, v5, [Ljava/lang/String;

    const-string v13, "Cp1251"

    invoke-direct {v1, v13, v3, v4, v14}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v3, 0x44

    aput-object v1, v0, v3

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string/jumbo v3, "windows-1252"

    new-array v4, v5, [Ljava/lang/String;

    const-string v13, "Cp1252"

    invoke-direct {v1, v13, v3, v4, v14}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v3, 0x45

    aput-object v1, v0, v3

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string/jumbo v3, "windows-1253"

    new-array v4, v5, [Ljava/lang/String;

    const-string v13, "Cp1253"

    invoke-direct {v1, v13, v3, v4, v14}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v3, 0x46

    aput-object v1, v0, v3

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string/jumbo v3, "windows-1254"

    new-array v4, v5, [Ljava/lang/String;

    const-string v13, "Cp1254"

    invoke-direct {v1, v13, v3, v4, v14}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v3, 0x47

    aput-object v1, v0, v3

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string/jumbo v3, "windows-1255"

    new-array v4, v5, [Ljava/lang/String;

    const-string v13, "Cp1255"

    invoke-direct {v1, v13, v3, v4, v14}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v3, 0x48

    aput-object v1, v0, v3

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string/jumbo v3, "windows-1256"

    new-array v4, v5, [Ljava/lang/String;

    const-string v13, "Cp1256"

    invoke-direct {v1, v13, v3, v4, v14}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v3, 0x49

    aput-object v1, v0, v3

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string/jumbo v3, "windows-1257"

    new-array v4, v5, [Ljava/lang/String;

    const-string v13, "Cp1257"

    invoke-direct {v1, v13, v3, v4, v14}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v3, 0x4a

    aput-object v1, v0, v3

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string/jumbo v3, "windows-1258"

    new-array v4, v5, [Ljava/lang/String;

    const-string v13, "Cp1258"

    invoke-direct {v1, v13, v3, v4, v14}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v3, 0x4b

    aput-object v1, v0, v3

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v3, "ISO-2022-CN"

    new-array v4, v5, [Ljava/lang/String;

    const-string v13, "ISO2022CN"

    invoke-direct {v1, v13, v3, v4, v14}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v3, 0x4c

    aput-object v1, v0, v3

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    new-array v3, v9, [Ljava/lang/String;

    const-string v4, "csISO2022JP"

    aput-object v4, v3, v5

    const-string v4, "JIS"

    aput-object v4, v3, v6

    const-string v4, "jis_encoding"

    aput-object v4, v3, v7

    const-string v4, "csjisencoding"

    aput-object v4, v3, v8

    const-string v4, "ISO2022JP"

    const-string v13, "ISO-2022-JP"

    invoke-direct {v1, v4, v13, v3, v14}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v3, 0x4d

    aput-object v1, v0, v3

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "csISO2022KR"

    aput-object v4, v3, v5

    const-string v4, "ISO2022KR"

    const-string v13, "ISO-2022-KR"

    invoke-direct {v1, v4, v13, v3, v14}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v3, 0x4e

    aput-object v1, v0, v3

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    new-array v3, v8, [Ljava/lang/String;

    const-string v4, "X0201"

    aput-object v4, v3, v5

    const-string v4, "JIS0201"

    aput-object v4, v3, v6

    const-string v4, "csHalfWidthKatakana"

    aput-object v4, v3, v7

    const/4 v4, 0x0

    sget-object v4, Lorg/spongycastle/asn1/cms/ecc/ERP/JpmwdoMtPrsbO;->YQU:Ljava/lang/String;

    const-string v13, "JIS_X0201"

    invoke-direct {v1, v4, v13, v3, v14}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v3, 0x4f

    aput-object v1, v0, v3

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    new-array v3, v9, [Ljava/lang/String;

    const-string v4, "iso-ir-159"

    aput-object v4, v3, v5

    const-string/jumbo v4, "x0212"

    aput-object v4, v3, v6

    const-string v4, "JIS0212"

    aput-object v4, v3, v7

    const-string v4, "csISO159JISX02121990"

    aput-object v4, v3, v8

    const-string v4, "JIS_X0212-1990"

    const/4 v13, 0x0

    sget-object v13, Lorg/spongycastle/pqc/jcajce/provider/AB/GpZWhhfo;->lhWNjd:Ljava/lang/String;

    invoke-direct {v1, v4, v13, v3, v14}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v3, 0x50

    aput-object v1, v0, v3

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    new-array v3, v11, [Ljava/lang/String;

    const-string/jumbo v4, "x-JIS0208"

    aput-object v4, v3, v5

    const-string v4, "JIS0208"

    aput-object v4, v3, v6

    const-string v4, "csISO87JISX0208"

    aput-object v4, v3, v7

    const-string/jumbo v4, "x0208"

    aput-object v4, v3, v8

    const-string v4, "JIS_X0208-1983"

    aput-object v4, v3, v9

    const-string v4, "iso-ir-87"

    aput-object v4, v3, v10

    const-string v4, "JIS_C6626-1983"

    const-string v11, "JIS_C6626-1983"

    invoke-direct {v1, v4, v11, v3, v14}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v3, 0x51

    aput-object v1, v0, v3

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    new-array v3, v10, [Ljava/lang/String;

    const-string v4, "MS_Kanji"

    aput-object v4, v3, v5

    const-string v4, "csShiftJIS"

    aput-object v4, v3, v6

    const-string v4, "shift-jis"

    aput-object v4, v3, v7

    const-string/jumbo v4, "x-sjis"

    aput-object v4, v3, v8

    const-string v4, "pck"

    aput-object v4, v3, v9

    const-string v4, "SJIS"

    const-string v11, "Shift_JIS"

    invoke-direct {v1, v4, v11, v3, v14}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v3, 0x52

    aput-object v1, v0, v3

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v3, "TIS-620"

    new-array v4, v5, [Ljava/lang/String;

    const-string v11, "TIS620"

    invoke-direct {v1, v11, v3, v4, v14}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v3, 0x53

    aput-object v1, v0, v3

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    new-array v3, v8, [Ljava/lang/String;

    const-string/jumbo v4, "windows-932"

    aput-object v4, v3, v5

    const-string v4, "csWindows31J"

    aput-object v4, v3, v6

    const-string/jumbo v4, "x-ms-cp932"

    aput-object v4, v3, v7

    const-string v4, "MS932"

    const-string v11, "Windows-31J"

    invoke-direct {v1, v4, v11, v3, v14}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v3, 0x54

    aput-object v1, v0, v3

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    new-array v3, v8, [Ljava/lang/String;

    const-string/jumbo v4, "x-EUC-TW"

    aput-object v4, v3, v5

    const-string v4, "cns11643"

    aput-object v4, v3, v6

    const-string v4, "euctw"

    aput-object v4, v3, v7

    const-string v4, "EUC_TW"

    const-string v11, "EUC-TW"

    invoke-direct {v1, v4, v11, v3, v14}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v3, 0x55

    aput-object v1, v0, v3

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    new-array v3, v10, [Ljava/lang/String;

    const-string v4, "johab"

    aput-object v4, v3, v5

    const-string v4, "cp1361"

    aput-object v4, v3, v6

    const-string v4, "ms1361"

    aput-object v4, v3, v7

    const-string v4, "ksc5601-1992"

    aput-object v4, v3, v8

    const-string v4, "ksc5601_1992"

    aput-object v4, v3, v9

    const-string/jumbo v4, "x-Johab"

    const-string v9, "johab"

    invoke-direct {v1, v4, v9, v3, v14}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v3, 0x56

    aput-object v1, v0, v3

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v3, ""

    new-array v4, v5, [Ljava/lang/String;

    const-string v9, "MS950_HKSCS"

    invoke-direct {v1, v9, v3, v4, v14}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v3, 0x57

    aput-object v1, v0, v3

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "cp874"

    aput-object v4, v3, v5

    const/4 v4, 0x0

    sget-object v4, Lorg/spongycastle/asn1/cms/ecc/ERP/JpmwdoMtPrsbO;->gricqVcKZl:Ljava/lang/String;

    const-string/jumbo v9, "windows-874"

    invoke-direct {v1, v4, v9, v3, v14}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v3, 0x58

    aput-object v1, v0, v3

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    new-array v3, v8, [Ljava/lang/String;

    const-string/jumbo v4, "windows949"

    aput-object v4, v3, v5

    const-string v4, "ms_949"

    aput-object v4, v3, v6

    const-string/jumbo v4, "x-windows-949"

    aput-object v4, v3, v7

    const-string v4, "MS949"

    const-string/jumbo v9, "windows-949"

    invoke-direct {v1, v4, v9, v3, v14}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v3, 0x59

    aput-object v1, v0, v3

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "x-windows-950"

    aput-object v4, v3, v5

    const-string v4, "MS950"

    const-string/jumbo v9, "windows-950"

    invoke-direct {v1, v4, v9, v3, v14}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v3, 0x5a

    aput-object v1, v0, v3

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v3, "Cp737"

    new-array v4, v5, [Ljava/lang/String;

    invoke-direct {v1, v3, v14, v4, v14}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v3, 0x5b

    aput-object v1, v0, v3

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v3, "Cp856"

    new-array v4, v5, [Ljava/lang/String;

    invoke-direct {v1, v3, v14, v4, v14}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v3, 0x5c

    aput-object v1, v0, v3

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v3, "Cp875"

    new-array v4, v5, [Ljava/lang/String;

    invoke-direct {v1, v3, v14, v4, v14}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v3, 0x5d

    aput-object v1, v0, v3

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v3, "Cp921"

    new-array v4, v5, [Ljava/lang/String;

    invoke-direct {v1, v3, v14, v4, v14}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v3, 0x5e

    aput-object v1, v0, v3

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v3, "Cp922"

    new-array v4, v5, [Ljava/lang/String;

    invoke-direct {v1, v3, v14, v4, v14}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v3, 0x5f

    aput-object v1, v0, v3

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v3, "Cp930"

    new-array v4, v5, [Ljava/lang/String;

    invoke-direct {v1, v3, v14, v4, v14}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v3, 0x60

    aput-object v1, v0, v3

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const/4 v3, 0x0

    sget-object v3, Ljunit/extensions/FsRt/SYwSnVGKGiUHcM;->aEoxaML:Ljava/lang/String;

    new-array v4, v5, [Ljava/lang/String;

    invoke-direct {v1, v3, v14, v4, v14}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v3, 0x61

    aput-object v1, v0, v3

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v3, "Cp935"

    new-array v4, v5, [Ljava/lang/String;

    invoke-direct {v1, v3, v14, v4, v14}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v3, 0x62

    aput-object v1, v0, v3

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v3, "Cp937"

    new-array v4, v5, [Ljava/lang/String;

    invoke-direct {v1, v3, v14, v4, v14}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v3, 0x63

    aput-object v1, v0, v3

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v3, "Cp939"

    new-array v4, v5, [Ljava/lang/String;

    invoke-direct {v1, v3, v14, v4, v14}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v3, 0x64

    aput-object v1, v0, v3

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v3, "Cp942"

    new-array v4, v5, [Ljava/lang/String;

    invoke-direct {v1, v3, v14, v4, v14}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v3, 0x65

    aput-object v1, v0, v3

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v3, "Cp942C"

    new-array v4, v5, [Ljava/lang/String;

    invoke-direct {v1, v3, v14, v4, v14}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v3, 0x66

    aput-object v1, v0, v3

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v3, "Cp943"

    new-array v4, v5, [Ljava/lang/String;

    invoke-direct {v1, v3, v14, v4, v14}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v3, 0x67

    aput-object v1, v0, v3

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v3, "Cp943C"

    new-array v4, v5, [Ljava/lang/String;

    invoke-direct {v1, v3, v14, v4, v14}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v3, 0x68

    aput-object v1, v0, v3

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v3, "Cp948"

    new-array v4, v5, [Ljava/lang/String;

    invoke-direct {v1, v3, v14, v4, v14}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v3, 0x69

    aput-object v1, v0, v3

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v3, "Cp949"

    new-array v4, v5, [Ljava/lang/String;

    invoke-direct {v1, v3, v14, v4, v14}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v3, 0x6a

    aput-object v1, v0, v3

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v3, "Cp949C"

    new-array v4, v5, [Ljava/lang/String;

    invoke-direct {v1, v3, v14, v4, v14}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v3, 0x6b

    aput-object v1, v0, v3

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v3, "Cp950"

    new-array v4, v5, [Ljava/lang/String;

    invoke-direct {v1, v3, v14, v4, v14}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v3, 0x6c

    aput-object v1, v0, v3

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v3, "Cp964"

    new-array v4, v5, [Ljava/lang/String;

    invoke-direct {v1, v3, v14, v4, v14}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v3, 0x6d

    aput-object v1, v0, v3

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v3, "Cp970"

    new-array v4, v5, [Ljava/lang/String;

    invoke-direct {v1, v3, v14, v4, v14}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v3, 0x6e

    aput-object v1, v0, v3

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v3, "Cp1006"

    new-array v4, v5, [Ljava/lang/String;

    invoke-direct {v1, v3, v14, v4, v14}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v3, 0x6f

    aput-object v1, v0, v3

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v3, "Cp1025"

    new-array v4, v5, [Ljava/lang/String;

    invoke-direct {v1, v3, v14, v4, v14}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v3, 0x70

    aput-object v1, v0, v3

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v3, "Cp1046"

    new-array v4, v5, [Ljava/lang/String;

    invoke-direct {v1, v3, v14, v4, v14}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v3, 0x71

    aput-object v1, v0, v3

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v3, "Cp1097"

    new-array v4, v5, [Ljava/lang/String;

    invoke-direct {v1, v3, v14, v4, v14}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v3, 0x72

    aput-object v1, v0, v3

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v3, "Cp1098"

    new-array v4, v5, [Ljava/lang/String;

    invoke-direct {v1, v3, v14, v4, v14}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v3, 0x73

    aput-object v1, v0, v3

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v3, "Cp1112"

    new-array v4, v5, [Ljava/lang/String;

    invoke-direct {v1, v3, v14, v4, v14}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v3, 0x74

    aput-object v1, v0, v3

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v3, "Cp1122"

    new-array v4, v5, [Ljava/lang/String;

    invoke-direct {v1, v3, v14, v4, v14}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v3, 0x75

    aput-object v1, v0, v3

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v3, "Cp1123"

    new-array v4, v5, [Ljava/lang/String;

    invoke-direct {v1, v3, v14, v4, v14}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v3, 0x76

    aput-object v1, v0, v3

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v3, "Cp1124"

    new-array v4, v5, [Ljava/lang/String;

    invoke-direct {v1, v3, v14, v4, v14}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v3, 0x77

    aput-object v1, v0, v3

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v3, "Cp1381"

    new-array v4, v5, [Ljava/lang/String;

    invoke-direct {v1, v3, v14, v4, v14}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v3, 0x78

    aput-object v1, v0, v3

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v3, "Cp1383"

    new-array v4, v5, [Ljava/lang/String;

    invoke-direct {v1, v3, v14, v4, v14}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v3, 0x79

    aput-object v1, v0, v3

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v3, "Cp33722"

    new-array v4, v5, [Ljava/lang/String;

    invoke-direct {v1, v3, v14, v4, v14}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v3, 0x7a

    aput-object v1, v0, v3

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v3, "Big5_Solaris"

    new-array v4, v5, [Ljava/lang/String;

    invoke-direct {v1, v3, v14, v4, v14}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v3, 0x7b

    aput-object v1, v0, v3

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v3, "EUC_JP_LINUX"

    new-array v4, v5, [Ljava/lang/String;

    invoke-direct {v1, v3, v14, v4, v14}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v3, 0x7c

    aput-object v1, v0, v3

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v3, "EUC_JP_Solaris"

    new-array v4, v5, [Ljava/lang/String;

    invoke-direct {v1, v3, v14, v4, v14}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v3, 0x7d

    aput-object v1, v0, v3

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    new-array v3, v7, [Ljava/lang/String;

    const-string/jumbo v4, "x-ISCII91"

    aput-object v4, v3, v5

    const-string v4, "iscii"

    aput-object v4, v3, v6

    const-string v4, "ISCII91"

    invoke-direct {v1, v4, v14, v3, v14}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v3, 0x7e

    aput-object v1, v0, v3

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v3, "ISO2022_CN_CNS"

    new-array v4, v5, [Ljava/lang/String;

    invoke-direct {v1, v3, v14, v4, v14}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v3, 0x7f

    aput-object v1, v0, v3

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v3, "ISO2022_CN_GB"

    new-array v4, v5, [Ljava/lang/String;

    invoke-direct {v1, v3, v14, v4, v14}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v3, 0x80

    aput-object v1, v0, v3

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string/jumbo v3, "x-iso-8859-11"

    new-array v4, v5, [Ljava/lang/String;

    invoke-direct {v1, v3, v14, v4, v14}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v3, 0x81

    aput-object v1, v0, v3

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v3, "JISAutoDetect"

    new-array v4, v5, [Ljava/lang/String;

    invoke-direct {v1, v3, v14, v4, v14}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v3, 0x82

    aput-object v1, v0, v3

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v3, "MacArabic"

    new-array v4, v5, [Ljava/lang/String;

    invoke-direct {v1, v3, v14, v4, v14}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v3, 0x83

    aput-object v1, v0, v3

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v3, "MacCentralEurope"

    new-array v4, v5, [Ljava/lang/String;

    invoke-direct {v1, v3, v14, v4, v14}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v3, 0x84

    aput-object v1, v0, v3

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v3, "MacCroatian"

    new-array v4, v5, [Ljava/lang/String;

    invoke-direct {v1, v3, v14, v4, v14}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v3, 0x85

    aput-object v1, v0, v3

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v3, "MacCyrillic"

    new-array v4, v5, [Ljava/lang/String;

    invoke-direct {v1, v3, v14, v4, v14}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v3, 0x86

    aput-object v1, v0, v3

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v3, "MacDingbat"

    new-array v4, v5, [Ljava/lang/String;

    invoke-direct {v1, v3, v14, v4, v14}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v3, 0x87

    aput-object v1, v0, v3

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v3, "MacGreek"

    new-array v4, v5, [Ljava/lang/String;

    const-string v9, "MacGreek"

    invoke-direct {v1, v9, v3, v4, v14}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v3, 0x88

    aput-object v1, v0, v3

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v3, "MacHebrew"

    new-array v4, v5, [Ljava/lang/String;

    invoke-direct {v1, v3, v14, v4, v14}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v3, 0x89

    aput-object v1, v0, v3

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v3, "MacIceland"

    new-array v4, v5, [Ljava/lang/String;

    invoke-direct {v1, v3, v14, v4, v14}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v3, 0x8a

    aput-object v1, v0, v3

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    new-array v3, v8, [Ljava/lang/String;

    const-string v4, "Macintosh"

    aput-object v4, v3, v5

    const-string v4, "MAC"

    aput-object v4, v3, v6

    const/4 v4, 0x0

    sget-object v4, Landroidx/documentfile/provider/ee/zVjgszcQMGytd;->jDV:Ljava/lang/String;

    aput-object v4, v3, v7

    const-string v4, "MacRoman"

    const-string v6, "MacRoman"

    invoke-direct {v1, v4, v6, v3, v14}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v3, 0x8b

    aput-object v1, v0, v3

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v3, "MacRomania"

    new-array v4, v5, [Ljava/lang/String;

    invoke-direct {v1, v3, v14, v4, v14}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v3, 0x8c

    aput-object v1, v0, v3

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v3, "MacSymbol"

    new-array v4, v5, [Ljava/lang/String;

    invoke-direct {v1, v3, v14, v4, v14}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v3, 0x8d

    aput-object v1, v0, v3

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v3, "MacThai"

    new-array v4, v5, [Ljava/lang/String;

    invoke-direct {v1, v3, v14, v4, v14}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v3, 0x8e

    aput-object v1, v0, v3

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v3, "MacTurkish"

    new-array v4, v5, [Ljava/lang/String;

    invoke-direct {v1, v3, v14, v4, v14}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v3, 0x8f

    aput-object v1, v0, v3

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v3, "MacUkraine"

    new-array v4, v5, [Ljava/lang/String;

    invoke-direct {v1, v3, v14, v4, v14}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v3, 0x90

    aput-object v1, v0, v3

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const-string v3, "UnicodeBig"

    new-array v4, v5, [Ljava/lang/String;

    invoke-direct {v1, v3, v14, v4, v14}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v3, 0x91

    aput-object v1, v0, v3

    new-instance v1, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    const/4 v3, 0x0

    sget-object v3, Lcom/google/firebase/components/ry/rJEhvHEtgO;->McQbr:Ljava/lang/String;

    new-array v4, v5, [Ljava/lang/String;

    invoke-direct {v1, v3, v14, v4, v14}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/apache/james/mime4j/util/CharsetUtil$1;)V

    const/16 v3, 0x92

    aput-object v1, v0, v3

    sput-object v0, Lorg/apache/james/mime4j/util/CharsetUtil;->JAVA_CHARSETS:[Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    .line 1002
    sput-object v14, Lorg/apache/james/mime4j/util/CharsetUtil;->decodingSupported:Ljava/util/SortedSet;

    .line 1008
    sput-object v14, Lorg/apache/james/mime4j/util/CharsetUtil;->encodingSupported:Ljava/util/SortedSet;

    .line 1014
    sput-object v14, Lorg/apache/james/mime4j/util/CharsetUtil;->charsetMap:Ljava/util/Map;

    .line 1017
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    sput-object v0, Lorg/apache/james/mime4j/util/CharsetUtil;->decodingSupported:Ljava/util/SortedSet;

    .line 1018
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    sput-object v0, Lorg/apache/james/mime4j/util/CharsetUtil;->encodingSupported:Ljava/util/SortedSet;

    .line 1019
    new-array v0, v10, [B

    fill-array-data v0, :array_0

    .line 1020
    sget-object v1, Lorg/apache/james/mime4j/util/CharsetUtil;->JAVA_CHARSETS:[Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    array-length v3, v1

    move v4, v5

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v6, v1, v4

    .line 1022
    :try_start_0
    new-instance v7, Ljava/lang/String;

    invoke-static {v6}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;->access$100(Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v0, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 1023
    sget-object v7, Lorg/apache/james/mime4j/util/CharsetUtil;->decodingSupported:Ljava/util/SortedSet;

    invoke-static {v6}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;->access$100(Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 1028
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    const-string v7, "dummy"

    invoke-static {v6}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;->access$100(Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 1029
    sget-object v7, Lorg/apache/james/mime4j/util/CharsetUtil;->encodingSupported:Ljava/util/SortedSet;

    invoke-static {v6}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;->access$100(Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v7, v6}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    :try_end_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1035
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/james/mime4j/util/CharsetUtil;->charsetMap:Ljava/util/Map;

    .line 1036
    sget-object v0, Lorg/apache/james/mime4j/util/CharsetUtil;->JAVA_CHARSETS:[Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    array-length v1, v0

    move v3, v5

    :goto_1
    if-ge v3, v1, :cond_3

    aget-object v4, v0, v3

    .line 1037
    sget-object v6, Lorg/apache/james/mime4j/util/CharsetUtil;->charsetMap:Ljava/util/Map;

    invoke-static {v4}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;->access$100(Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1038
    invoke-static {v4}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;->access$200(Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 1039
    sget-object v6, Lorg/apache/james/mime4j/util/CharsetUtil;->charsetMap:Ljava/util/Map;

    invoke-static {v4}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;->access$200(Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1041
    :cond_1
    invoke-static {v4}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;->access$300(Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 1042
    invoke-static {v4}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;->access$300(Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    move v8, v5

    :goto_2
    if-ge v8, v7, :cond_2

    aget-object v9, v6, v8

    .line 1043
    sget-object v10, Lorg/apache/james/mime4j/util/CharsetUtil;->charsetMap:Ljava/util/Map;

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v10, v9, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1048
    :cond_3
    sget-object v0, Lorg/apache/james/mime4j/util/CharsetUtil;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1049
    sget-object v0, Lorg/apache/james/mime4j/util/CharsetUtil;->log:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Character sets which support decoding: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lorg/apache/james/mime4j/util/CharsetUtil;->decodingSupported:Ljava/util/SortedSet;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 1051
    sget-object v0, Lorg/apache/james/mime4j/util/CharsetUtil;->log:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Character sets which support encoding: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lorg/apache/james/mime4j/util/CharsetUtil;->encodingSupported:Ljava/util/SortedSet;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 1071
    :cond_4
    invoke-static {v15}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/util/CharsetUtil;->US_ASCII:Ljava/nio/charset/Charset;

    .line 1074
    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    sput-object v1, Lorg/apache/james/mime4j/util/CharsetUtil;->ISO_8859_1:Ljava/nio/charset/Charset;

    .line 1077
    invoke-static {v12}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    sput-object v1, Lorg/apache/james/mime4j/util/CharsetUtil;->UTF_8:Ljava/nio/charset/Charset;

    .line 1080
    sput-object v0, Lorg/apache/james/mime4j/util/CharsetUtil;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    return-void

    :array_0
    .array-data 1
        0x64t
        0x75t
        0x6dt
        0x6dt
        0x79t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 790
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;
    .locals 6

    .line 1217
    const-string v0, ", fallback to ISO-8859-1: "

    .line 1220
    const-string v1, "ISO-8859-1"

    if-nez p0, :cond_0

    move-object p0, v1

    .line 1223
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p0

    :try_end_0
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v2

    .line 1229
    sget-object v3, Lorg/apache/james/mime4j/util/CharsetUtil;->log:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unsupported charset "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v3, p0}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 1231
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p0

    return-object p0

    :catch_1
    move-exception v2

    .line 1225
    sget-object v3, Lorg/apache/james/mime4j/util/CharsetUtil;->log:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Illegal charset "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v3, p0}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 1227
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p0

    return-object p0
.end method

.method public static isASCII(C)Z
    .locals 1

    const v0, 0xff80

    and-int/2addr p0, v0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isASCII(Ljava/lang/String;)Z
    .locals 4

    if-eqz p0, :cond_2

    .line 1108
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 1110
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lorg/apache/james/mime4j/util/CharsetUtil;->isASCII(C)Z

    move-result v3

    if-nez v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0

    .line 1106
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "String may not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static isDecodingSupported(Ljava/lang/String;)Z
    .locals 1

    .line 1179
    sget-object v0, Lorg/apache/james/mime4j/util/CharsetUtil;->decodingSupported:Ljava/util/SortedSet;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/SortedSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isEncodingSupported(Ljava/lang/String;)Z
    .locals 1

    .line 1164
    sget-object v0, Lorg/apache/james/mime4j/util/CharsetUtil;->encodingSupported:Ljava/util/SortedSet;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/SortedSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isWhitespace(C)Z
    .locals 1

    const/16 v0, 0x20

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

    if-eq p0, v0, :cond_1

    const/16 v0, 0xd

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isWhitespace(Ljava/lang/String;)Z
    .locals 4

    if-eqz p0, :cond_2

    .line 1143
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 1145
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lorg/apache/james/mime4j/util/CharsetUtil;->isWhitespace(C)Z

    move-result v3

    if-nez v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0

    .line 1141
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "String may not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static toJavaCharset(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1209
    sget-object v0, Lorg/apache/james/mime4j/util/CharsetUtil;->charsetMap:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    if-eqz p0, :cond_0

    .line 1211
    invoke-static {p0}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;->access$100(Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static toMimeCharset(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1190
    sget-object v0, Lorg/apache/james/mime4j/util/CharsetUtil;->charsetMap:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;

    if-eqz p0, :cond_0

    .line 1192
    invoke-static {p0}, Lorg/apache/james/mime4j/util/CharsetUtil$Charset;->access$200(Lorg/apache/james/mime4j/util/CharsetUtil$Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
