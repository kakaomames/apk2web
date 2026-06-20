.class public final enum Lcom/braze/enums/CardKey;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/braze/enums/CardKey$a;,
        Lcom/braze/enums/CardKey$Provider;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/braze/enums/CardKey;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\u0008/\u0008\u0087\u0001\u0018\u0000 \u000b2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0002\u000c\rB\u0019\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\t\u0010\nR\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006R\u0017\u0010\u0007\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0004\u001a\u0004\u0008\u0008\u0010\u0006j\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013j\u0002\u0008\u0014j\u0002\u0008\u0015j\u0002\u0008\u0016j\u0002\u0008\u0017j\u0002\u0008\u0018j\u0002\u0008\u0019j\u0002\u0008\u001aj\u0002\u0008\u001bj\u0002\u0008\u001cj\u0002\u0008\u001dj\u0002\u0008\u001ej\u0002\u0008\u001fj\u0002\u0008 j\u0002\u0008!j\u0002\u0008\"j\u0002\u0008#j\u0002\u0008$j\u0002\u0008%j\u0002\u0008&j\u0002\u0008\'j\u0002\u0008(j\u0002\u0008)j\u0002\u0008*j\u0002\u0008+j\u0002\u0008,j\u0002\u0008-j\u0002\u0008.j\u0002\u0008/j\u0002\u00080\u00a8\u00061"
    }
    d2 = {
        "Lcom/braze/enums/CardKey;",
        "",
        "",
        "feedKey",
        "Ljava/lang/String;",
        "getFeedKey",
        "()Ljava/lang/String;",
        "contentCardsKey",
        "getContentCardsKey",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V",
        "Companion",
        "a",
        "Provider",
        "ID",
        "VIEWED",
        "CREATED",
        "EXPIRES_AT",
        "EXTRAS",
        "OPEN_URI_IN_WEBVIEW",
        "TYPE",
        "CATEGORIES",
        "UPDATED",
        "DISMISSED",
        "REMOVED",
        "PINNED",
        "DISMISSIBLE",
        "IS_TEST",
        "READ",
        "CLICKED",
        "BANNER_IMAGE_IMAGE",
        "BANNER_IMAGE_URL",
        "BANNER_IMAGE_DOMAIN",
        "BANNER_IMAGE_ASPECT_RATIO",
        "CAPTIONED_IMAGE_IMAGE",
        "CAPTIONED_IMAGE_TITLE",
        "CAPTIONED_IMAGE_DESCRIPTION",
        "CAPTIONED_IMAGE_URL",
        "CAPTIONED_IMAGE_DOMAIN",
        "CAPTIONED_IMAGE_ASPECT_RATIO",
        "TEXT_ANNOUNCEMENT_TITLE",
        "TEXT_ANNOUNCEMENT_DESCRIPTION",
        "TEXT_ANNOUNCEMENT_URL",
        "TEXT_ANNOUNCEMENT_DOMAIN",
        "SHORT_NEWS_IMAGE",
        "SHORT_NEWS_TITLE",
        "SHORT_NEWS_DESCRIPTION",
        "SHORT_NEWS_URL",
        "SHORT_NEWS_DOMAIN",
        "android-sdk-base_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/braze/enums/CardKey;

.field public static final enum BANNER_IMAGE_ASPECT_RATIO:Lcom/braze/enums/CardKey;

.field public static final enum BANNER_IMAGE_DOMAIN:Lcom/braze/enums/CardKey;

.field public static final enum BANNER_IMAGE_IMAGE:Lcom/braze/enums/CardKey;

.field private static final BANNER_IMAGE_KEY:Ljava/lang/String; = "banner_image"

.field public static final enum BANNER_IMAGE_URL:Lcom/braze/enums/CardKey;

.field public static final enum CAPTIONED_IMAGE_ASPECT_RATIO:Lcom/braze/enums/CardKey;

.field public static final enum CAPTIONED_IMAGE_DESCRIPTION:Lcom/braze/enums/CardKey;

.field public static final enum CAPTIONED_IMAGE_DOMAIN:Lcom/braze/enums/CardKey;

.field public static final enum CAPTIONED_IMAGE_IMAGE:Lcom/braze/enums/CardKey;

.field private static final CAPTIONED_IMAGE_KEY:Ljava/lang/String; = "captioned_image"

.field public static final enum CAPTIONED_IMAGE_TITLE:Lcom/braze/enums/CardKey;

.field public static final enum CAPTIONED_IMAGE_URL:Lcom/braze/enums/CardKey;

.field public static final enum CATEGORIES:Lcom/braze/enums/CardKey;

.field public static final enum CLICKED:Lcom/braze/enums/CardKey;

.field private static final CONTROL_KEY:Ljava/lang/String; = "control"

.field public static final enum CREATED:Lcom/braze/enums/CardKey;

.field public static final Companion:Lcom/braze/enums/CardKey$a;

.field public static final enum DISMISSED:Lcom/braze/enums/CardKey;

.field public static final enum DISMISSIBLE:Lcom/braze/enums/CardKey;

.field public static final enum EXPIRES_AT:Lcom/braze/enums/CardKey;

.field public static final enum EXTRAS:Lcom/braze/enums/CardKey;

.field public static final enum ID:Lcom/braze/enums/CardKey;

.field public static final enum IS_TEST:Lcom/braze/enums/CardKey;

.field public static final enum OPEN_URI_IN_WEBVIEW:Lcom/braze/enums/CardKey;

.field public static final enum PINNED:Lcom/braze/enums/CardKey;

.field public static final enum READ:Lcom/braze/enums/CardKey;

.field public static final enum REMOVED:Lcom/braze/enums/CardKey;

.field public static final enum SHORT_NEWS_DESCRIPTION:Lcom/braze/enums/CardKey;

.field public static final enum SHORT_NEWS_DOMAIN:Lcom/braze/enums/CardKey;

.field public static final enum SHORT_NEWS_IMAGE:Lcom/braze/enums/CardKey;

.field private static final SHORT_NEWS_KEY:Ljava/lang/String; = "short_news"

.field public static final enum SHORT_NEWS_TITLE:Lcom/braze/enums/CardKey;

.field public static final enum SHORT_NEWS_URL:Lcom/braze/enums/CardKey;

.field public static final enum TEXT_ANNOUNCEMENT_DESCRIPTION:Lcom/braze/enums/CardKey;

.field public static final enum TEXT_ANNOUNCEMENT_DOMAIN:Lcom/braze/enums/CardKey;

.field private static final TEXT_ANNOUNCEMENT_KEY:Ljava/lang/String; = "text_announcement"

.field public static final enum TEXT_ANNOUNCEMENT_TITLE:Lcom/braze/enums/CardKey;

.field public static final enum TEXT_ANNOUNCEMENT_URL:Lcom/braze/enums/CardKey;

.field public static final enum TYPE:Lcom/braze/enums/CardKey;

.field public static final enum UPDATED:Lcom/braze/enums/CardKey;

.field public static final enum VIEWED:Lcom/braze/enums/CardKey;

.field private static final cardTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/braze/enums/CardType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final contentCardsKey:Ljava/lang/String;

.field private final feedKey:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/braze/enums/CardKey;
    .locals 35

    sget-object v0, Lcom/braze/enums/CardKey;->ID:Lcom/braze/enums/CardKey;

    sget-object v1, Lcom/braze/enums/CardKey;->VIEWED:Lcom/braze/enums/CardKey;

    sget-object v2, Lcom/braze/enums/CardKey;->CREATED:Lcom/braze/enums/CardKey;

    sget-object v3, Lcom/braze/enums/CardKey;->EXPIRES_AT:Lcom/braze/enums/CardKey;

    sget-object v4, Lcom/braze/enums/CardKey;->EXTRAS:Lcom/braze/enums/CardKey;

    sget-object v5, Lcom/braze/enums/CardKey;->OPEN_URI_IN_WEBVIEW:Lcom/braze/enums/CardKey;

    sget-object v6, Lcom/braze/enums/CardKey;->TYPE:Lcom/braze/enums/CardKey;

    sget-object v7, Lcom/braze/enums/CardKey;->CATEGORIES:Lcom/braze/enums/CardKey;

    sget-object v8, Lcom/braze/enums/CardKey;->UPDATED:Lcom/braze/enums/CardKey;

    sget-object v9, Lcom/braze/enums/CardKey;->DISMISSED:Lcom/braze/enums/CardKey;

    sget-object v10, Lcom/braze/enums/CardKey;->REMOVED:Lcom/braze/enums/CardKey;

    sget-object v11, Lcom/braze/enums/CardKey;->PINNED:Lcom/braze/enums/CardKey;

    sget-object v12, Lcom/braze/enums/CardKey;->DISMISSIBLE:Lcom/braze/enums/CardKey;

    sget-object v13, Lcom/braze/enums/CardKey;->IS_TEST:Lcom/braze/enums/CardKey;

    sget-object v14, Lcom/braze/enums/CardKey;->READ:Lcom/braze/enums/CardKey;

    sget-object v15, Lcom/braze/enums/CardKey;->CLICKED:Lcom/braze/enums/CardKey;

    sget-object v16, Lcom/braze/enums/CardKey;->BANNER_IMAGE_IMAGE:Lcom/braze/enums/CardKey;

    sget-object v17, Lcom/braze/enums/CardKey;->BANNER_IMAGE_URL:Lcom/braze/enums/CardKey;

    sget-object v18, Lcom/braze/enums/CardKey;->BANNER_IMAGE_DOMAIN:Lcom/braze/enums/CardKey;

    sget-object v19, Lcom/braze/enums/CardKey;->BANNER_IMAGE_ASPECT_RATIO:Lcom/braze/enums/CardKey;

    sget-object v20, Lcom/braze/enums/CardKey;->CAPTIONED_IMAGE_IMAGE:Lcom/braze/enums/CardKey;

    sget-object v21, Lcom/braze/enums/CardKey;->CAPTIONED_IMAGE_TITLE:Lcom/braze/enums/CardKey;

    sget-object v22, Lcom/braze/enums/CardKey;->CAPTIONED_IMAGE_DESCRIPTION:Lcom/braze/enums/CardKey;

    sget-object v23, Lcom/braze/enums/CardKey;->CAPTIONED_IMAGE_URL:Lcom/braze/enums/CardKey;

    sget-object v24, Lcom/braze/enums/CardKey;->CAPTIONED_IMAGE_DOMAIN:Lcom/braze/enums/CardKey;

    sget-object v25, Lcom/braze/enums/CardKey;->CAPTIONED_IMAGE_ASPECT_RATIO:Lcom/braze/enums/CardKey;

    sget-object v26, Lcom/braze/enums/CardKey;->TEXT_ANNOUNCEMENT_TITLE:Lcom/braze/enums/CardKey;

    sget-object v27, Lcom/braze/enums/CardKey;->TEXT_ANNOUNCEMENT_DESCRIPTION:Lcom/braze/enums/CardKey;

    sget-object v28, Lcom/braze/enums/CardKey;->TEXT_ANNOUNCEMENT_URL:Lcom/braze/enums/CardKey;

    sget-object v29, Lcom/braze/enums/CardKey;->TEXT_ANNOUNCEMENT_DOMAIN:Lcom/braze/enums/CardKey;

    sget-object v30, Lcom/braze/enums/CardKey;->SHORT_NEWS_IMAGE:Lcom/braze/enums/CardKey;

    sget-object v31, Lcom/braze/enums/CardKey;->SHORT_NEWS_TITLE:Lcom/braze/enums/CardKey;

    sget-object v32, Lcom/braze/enums/CardKey;->SHORT_NEWS_DESCRIPTION:Lcom/braze/enums/CardKey;

    sget-object v33, Lcom/braze/enums/CardKey;->SHORT_NEWS_URL:Lcom/braze/enums/CardKey;

    sget-object v34, Lcom/braze/enums/CardKey;->SHORT_NEWS_DOMAIN:Lcom/braze/enums/CardKey;

    filled-new-array/range {v0 .. v34}, [Lcom/braze/enums/CardKey;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/braze/enums/CardKey;

    const-string v1, "id"

    const-string v2, "ID"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1, v1}, Lcom/braze/enums/CardKey;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/braze/enums/CardKey;->ID:Lcom/braze/enums/CardKey;

    .line 2
    new-instance v0, Lcom/braze/enums/CardKey;

    const-string v1, "viewed"

    const-string v2, "v"

    const-string v4, "VIEWED"

    const/4 v5, 0x1

    invoke-direct {v0, v4, v5, v1, v2}, Lcom/braze/enums/CardKey;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/braze/enums/CardKey;->VIEWED:Lcom/braze/enums/CardKey;

    .line 3
    new-instance v0, Lcom/braze/enums/CardKey;

    const-string v1, "created"

    const-string v2, "ca"

    const-string v4, "CREATED"

    const/4 v6, 0x2

    invoke-direct {v0, v4, v6, v1, v2}, Lcom/braze/enums/CardKey;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/braze/enums/CardKey;->CREATED:Lcom/braze/enums/CardKey;

    .line 4
    new-instance v0, Lcom/braze/enums/CardKey;

    const-string v1, "expires_at"

    const-string v2, "ea"

    const-string v4, "EXPIRES_AT"

    const/4 v7, 0x3

    invoke-direct {v0, v4, v7, v1, v2}, Lcom/braze/enums/CardKey;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/braze/enums/CardKey;->EXPIRES_AT:Lcom/braze/enums/CardKey;

    .line 5
    new-instance v0, Lcom/braze/enums/CardKey;

    const-string v1, "extras"

    const-string v2, "e"

    const-string v4, "EXTRAS"

    const/4 v8, 0x4

    invoke-direct {v0, v4, v8, v1, v2}, Lcom/braze/enums/CardKey;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/braze/enums/CardKey;->EXTRAS:Lcom/braze/enums/CardKey;

    .line 6
    new-instance v0, Lcom/braze/enums/CardKey;

    const-string v1, "use_webview"

    const-string v2, "uw"

    const-string v4, "OPEN_URI_IN_WEBVIEW"

    const/4 v9, 0x5

    invoke-direct {v0, v4, v9, v1, v2}, Lcom/braze/enums/CardKey;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/braze/enums/CardKey;->OPEN_URI_IN_WEBVIEW:Lcom/braze/enums/CardKey;

    .line 8
    new-instance v0, Lcom/braze/enums/CardKey;

    const-string v1, "type"

    const-string v2, "tp"

    const-string v4, "TYPE"

    const/4 v10, 0x6

    invoke-direct {v0, v4, v10, v1, v2}, Lcom/braze/enums/CardKey;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/braze/enums/CardKey;->TYPE:Lcom/braze/enums/CardKey;

    .line 9
    new-instance v0, Lcom/braze/enums/CardKey;

    const-string v1, "CATEGORIES"

    const/4 v2, 0x7

    const-string v4, "categories"

    const-string v10, ""

    invoke-direct {v0, v1, v2, v4, v10}, Lcom/braze/enums/CardKey;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/braze/enums/CardKey;->CATEGORIES:Lcom/braze/enums/CardKey;

    .line 11
    new-instance v0, Lcom/braze/enums/CardKey;

    const/16 v1, 0x8

    const-string v2, "updated"

    const-string v4, "UPDATED"

    invoke-direct {v0, v4, v1, v2, v10}, Lcom/braze/enums/CardKey;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/braze/enums/CardKey;->UPDATED:Lcom/braze/enums/CardKey;

    .line 12
    new-instance v0, Lcom/braze/enums/CardKey;

    const/16 v1, 0x9

    const-string v2, "d"

    const-string v4, "DISMISSED"

    invoke-direct {v0, v4, v1, v10, v2}, Lcom/braze/enums/CardKey;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/braze/enums/CardKey;->DISMISSED:Lcom/braze/enums/CardKey;

    .line 13
    new-instance v0, Lcom/braze/enums/CardKey;

    const/16 v1, 0xa

    const-string v2, "r"

    const-string v4, "REMOVED"

    invoke-direct {v0, v4, v1, v10, v2}, Lcom/braze/enums/CardKey;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/braze/enums/CardKey;->REMOVED:Lcom/braze/enums/CardKey;

    .line 14
    new-instance v0, Lcom/braze/enums/CardKey;

    const/16 v1, 0xb

    const-string v2, "p"

    const-string v4, "PINNED"

    invoke-direct {v0, v4, v1, v10, v2}, Lcom/braze/enums/CardKey;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/braze/enums/CardKey;->PINNED:Lcom/braze/enums/CardKey;

    .line 15
    new-instance v0, Lcom/braze/enums/CardKey;

    const/16 v1, 0xc

    const-string v2, "db"

    const-string v4, "DISMISSIBLE"

    invoke-direct {v0, v4, v1, v10, v2}, Lcom/braze/enums/CardKey;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/braze/enums/CardKey;->DISMISSIBLE:Lcom/braze/enums/CardKey;

    .line 22
    new-instance v0, Lcom/braze/enums/CardKey;

    const/16 v1, 0xd

    const-string v2, "t"

    const-string v4, "IS_TEST"

    invoke-direct {v0, v4, v1, v10, v2}, Lcom/braze/enums/CardKey;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/braze/enums/CardKey;->IS_TEST:Lcom/braze/enums/CardKey;

    .line 23
    new-instance v0, Lcom/braze/enums/CardKey;

    const/16 v1, 0xe

    const-string v2, "read"

    const-string v4, "READ"

    invoke-direct {v0, v4, v1, v10, v2}, Lcom/braze/enums/CardKey;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/braze/enums/CardKey;->READ:Lcom/braze/enums/CardKey;

    .line 24
    new-instance v0, Lcom/braze/enums/CardKey;

    const/16 v1, 0xf

    const-string v2, "cl"

    const-string v4, "CLICKED"

    invoke-direct {v0, v4, v1, v10, v2}, Lcom/braze/enums/CardKey;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/braze/enums/CardKey;->CLICKED:Lcom/braze/enums/CardKey;

    .line 25
    new-instance v0, Lcom/braze/enums/CardKey;

    const-string v1, "BANNER_IMAGE_IMAGE"

    const/16 v2, 0x10

    const-string v4, "image"

    const-string v11, "i"

    invoke-direct {v0, v1, v2, v4, v11}, Lcom/braze/enums/CardKey;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/braze/enums/CardKey;->BANNER_IMAGE_IMAGE:Lcom/braze/enums/CardKey;

    .line 26
    new-instance v0, Lcom/braze/enums/CardKey;

    const-string v1, "BANNER_IMAGE_URL"

    const/16 v2, 0x11

    const-string v12, "url"

    const-string v13, "u"

    invoke-direct {v0, v1, v2, v12, v13}, Lcom/braze/enums/CardKey;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/braze/enums/CardKey;->BANNER_IMAGE_URL:Lcom/braze/enums/CardKey;

    .line 27
    new-instance v0, Lcom/braze/enums/CardKey;

    const-string v1, "BANNER_IMAGE_DOMAIN"

    const/16 v2, 0x12

    const-string v14, "domain"

    invoke-direct {v0, v1, v2, v14, v10}, Lcom/braze/enums/CardKey;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/braze/enums/CardKey;->BANNER_IMAGE_DOMAIN:Lcom/braze/enums/CardKey;

    .line 28
    new-instance v0, Lcom/braze/enums/CardKey;

    const-string v1, "BANNER_IMAGE_ASPECT_RATIO"

    const/16 v2, 0x13

    const-string v10, "aspect_ratio"

    const-string v15, "ar"

    invoke-direct {v0, v1, v2, v10, v15}, Lcom/braze/enums/CardKey;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/braze/enums/CardKey;->BANNER_IMAGE_ASPECT_RATIO:Lcom/braze/enums/CardKey;

    .line 29
    new-instance v0, Lcom/braze/enums/CardKey;

    const-string v1, "CAPTIONED_IMAGE_IMAGE"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2, v4, v11}, Lcom/braze/enums/CardKey;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/braze/enums/CardKey;->CAPTIONED_IMAGE_IMAGE:Lcom/braze/enums/CardKey;

    .line 30
    new-instance v0, Lcom/braze/enums/CardKey;

    const-string v1, "CAPTIONED_IMAGE_TITLE"

    const/16 v2, 0x15

    const-string v8, "title"

    const-string v7, "tt"

    invoke-direct {v0, v1, v2, v8, v7}, Lcom/braze/enums/CardKey;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/braze/enums/CardKey;->CAPTIONED_IMAGE_TITLE:Lcom/braze/enums/CardKey;

    .line 31
    new-instance v0, Lcom/braze/enums/CardKey;

    const-string v1, "CAPTIONED_IMAGE_DESCRIPTION"

    const/16 v2, 0x16

    const-string v6, "description"

    const-string v5, "ds"

    invoke-direct {v0, v1, v2, v6, v5}, Lcom/braze/enums/CardKey;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/braze/enums/CardKey;->CAPTIONED_IMAGE_DESCRIPTION:Lcom/braze/enums/CardKey;

    .line 32
    new-instance v0, Lcom/braze/enums/CardKey;

    const-string v1, "CAPTIONED_IMAGE_URL"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2, v12, v13}, Lcom/braze/enums/CardKey;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/braze/enums/CardKey;->CAPTIONED_IMAGE_URL:Lcom/braze/enums/CardKey;

    .line 33
    new-instance v0, Lcom/braze/enums/CardKey;

    const-string v1, "CAPTIONED_IMAGE_DOMAIN"

    const/16 v2, 0x18

    const-string v3, "dm"

    invoke-direct {v0, v1, v2, v14, v3}, Lcom/braze/enums/CardKey;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/braze/enums/CardKey;->CAPTIONED_IMAGE_DOMAIN:Lcom/braze/enums/CardKey;

    .line 34
    new-instance v0, Lcom/braze/enums/CardKey;

    const-string v1, "CAPTIONED_IMAGE_ASPECT_RATIO"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2, v10, v15}, Lcom/braze/enums/CardKey;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/braze/enums/CardKey;->CAPTIONED_IMAGE_ASPECT_RATIO:Lcom/braze/enums/CardKey;

    .line 35
    new-instance v0, Lcom/braze/enums/CardKey;

    const-string v1, "TEXT_ANNOUNCEMENT_TITLE"

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v2, v8, v7}, Lcom/braze/enums/CardKey;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/braze/enums/CardKey;->TEXT_ANNOUNCEMENT_TITLE:Lcom/braze/enums/CardKey;

    .line 36
    new-instance v0, Lcom/braze/enums/CardKey;

    const-string v1, "TEXT_ANNOUNCEMENT_DESCRIPTION"

    const/16 v2, 0x1b

    invoke-direct {v0, v1, v2, v6, v5}, Lcom/braze/enums/CardKey;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/braze/enums/CardKey;->TEXT_ANNOUNCEMENT_DESCRIPTION:Lcom/braze/enums/CardKey;

    .line 37
    new-instance v0, Lcom/braze/enums/CardKey;

    const-string v1, "TEXT_ANNOUNCEMENT_URL"

    const/16 v2, 0x1c

    invoke-direct {v0, v1, v2, v12, v13}, Lcom/braze/enums/CardKey;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/braze/enums/CardKey;->TEXT_ANNOUNCEMENT_URL:Lcom/braze/enums/CardKey;

    .line 38
    new-instance v0, Lcom/braze/enums/CardKey;

    const-string v1, "TEXT_ANNOUNCEMENT_DOMAIN"

    const/16 v2, 0x1d

    invoke-direct {v0, v1, v2, v14, v3}, Lcom/braze/enums/CardKey;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/braze/enums/CardKey;->TEXT_ANNOUNCEMENT_DOMAIN:Lcom/braze/enums/CardKey;

    .line 39
    new-instance v0, Lcom/braze/enums/CardKey;

    const-string v1, "SHORT_NEWS_IMAGE"

    const/16 v2, 0x1e

    invoke-direct {v0, v1, v2, v4, v11}, Lcom/braze/enums/CardKey;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/braze/enums/CardKey;->SHORT_NEWS_IMAGE:Lcom/braze/enums/CardKey;

    .line 40
    new-instance v0, Lcom/braze/enums/CardKey;

    const-string v1, "SHORT_NEWS_TITLE"

    const/16 v2, 0x1f

    invoke-direct {v0, v1, v2, v8, v7}, Lcom/braze/enums/CardKey;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/braze/enums/CardKey;->SHORT_NEWS_TITLE:Lcom/braze/enums/CardKey;

    .line 41
    new-instance v0, Lcom/braze/enums/CardKey;

    const-string v1, "SHORT_NEWS_DESCRIPTION"

    const/16 v2, 0x20

    invoke-direct {v0, v1, v2, v6, v5}, Lcom/braze/enums/CardKey;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/braze/enums/CardKey;->SHORT_NEWS_DESCRIPTION:Lcom/braze/enums/CardKey;

    .line 42
    new-instance v0, Lcom/braze/enums/CardKey;

    const-string v1, "SHORT_NEWS_URL"

    const/16 v2, 0x21

    invoke-direct {v0, v1, v2, v12, v13}, Lcom/braze/enums/CardKey;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/braze/enums/CardKey;->SHORT_NEWS_URL:Lcom/braze/enums/CardKey;

    .line 43
    new-instance v0, Lcom/braze/enums/CardKey;

    const-string v1, "SHORT_NEWS_DOMAIN"

    const/16 v2, 0x22

    invoke-direct {v0, v1, v2, v14, v3}, Lcom/braze/enums/CardKey;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/braze/enums/CardKey;->SHORT_NEWS_DOMAIN:Lcom/braze/enums/CardKey;

    invoke-static {}, Lcom/braze/enums/CardKey;->$values()[Lcom/braze/enums/CardKey;

    move-result-object v0

    sput-object v0, Lcom/braze/enums/CardKey;->$VALUES:[Lcom/braze/enums/CardKey;

    new-instance v0, Lcom/braze/enums/CardKey$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/braze/enums/CardKey$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/braze/enums/CardKey;->Companion:Lcom/braze/enums/CardKey$a;

    .line 52
    new-array v0, v9, [Lkotlin/Pair;

    sget-object v1, Lcom/braze/enums/CardType;->BANNER:Lcom/braze/enums/CardType;

    const-string v2, "banner_image"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 53
    sget-object v1, Lcom/braze/enums/CardType;->CAPTIONED_IMAGE:Lcom/braze/enums/CardType;

    const-string v2, "captioned_image"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 54
    sget-object v1, Lcom/braze/enums/CardType;->TEXT_ANNOUNCEMENT:Lcom/braze/enums/CardType;

    const-string v2, "text_announcement"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 55
    sget-object v1, Lcom/braze/enums/CardType;->SHORT_NEWS:Lcom/braze/enums/CardType;

    const-string v2, "short_news"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 56
    sget-object v1, Lcom/braze/enums/CardType;->CONTROL:Lcom/braze/enums/CardType;

    const-string v2, "control"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 57
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/braze/enums/CardKey;->cardTypeMap:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 3
    iput-object p3, p0, Lcom/braze/enums/CardKey;->feedKey:Ljava/lang/String;

    .line 4
    iput-object p4, p0, Lcom/braze/enums/CardKey;->contentCardsKey:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getCardTypeMap$cp()Ljava/util/Map;
    .locals 1

    .line 1
    sget-object v0, Lcom/braze/enums/CardKey;->cardTypeMap:Ljava/util/Map;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/braze/enums/CardKey;
    .locals 1

    const-class v0, Lcom/braze/enums/CardKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/braze/enums/CardKey;

    return-object p0
.end method

.method public static values()[Lcom/braze/enums/CardKey;
    .locals 1

    sget-object v0, Lcom/braze/enums/CardKey;->$VALUES:[Lcom/braze/enums/CardKey;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/braze/enums/CardKey;

    return-object v0
.end method


# virtual methods
.method public final getContentCardsKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/braze/enums/CardKey;->contentCardsKey:Ljava/lang/String;

    return-object v0
.end method

.method public final getFeedKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/braze/enums/CardKey;->feedKey:Ljava/lang/String;

    return-object v0
.end method
