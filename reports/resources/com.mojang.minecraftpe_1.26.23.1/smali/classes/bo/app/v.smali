.class public final Lbo/app/v;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbo/app/v$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J:\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000c2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\n\u0010\t\u001a\u0006\u0012\u0002\u0008\u00030\u00082\u0006\u0010\u000b\u001a\u00020\nH\u0007J6\u0010\u000e\u001a\u0004\u0018\u00010\r2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\n\u0010\t\u001a\u0006\u0012\u0002\u0008\u00030\u00082\u0006\u0010\u000b\u001a\u00020\nH\u0007J6\u0010\u000e\u001a\u0004\u0018\u00010\r2\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\n\u0010\t\u001a\u0006\u0012\u0002\u0008\u00030\u00082\u0006\u0010\u000b\u001a\u00020\nH\u0002\u00a8\u0006\u0015"
    }
    d2 = {
        "Lbo/app/v;",
        "",
        "Lorg/json/JSONArray;",
        "cardJsonStringArray",
        "Lcom/braze/enums/CardKey$Provider;",
        "cardKeyProvider",
        "Lbo/app/y1;",
        "brazeManager",
        "Lcom/braze/storage/ICardStorageProvider;",
        "cardStorageProvider",
        "Lbo/app/a2;",
        "cardAnalyticsProvider",
        "",
        "Lcom/braze/models/cards/Card;",
        "a",
        "Lorg/json/JSONObject;",
        "jsonObject",
        "",
        "jsonString",
        "<init>",
        "()V",
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
.field public static final a:Lbo/app/v;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lbo/app/v;

    invoke-direct {v0}, Lbo/app/v;-><init>()V

    sput-object v0, Lbo/app/v;->a:Lbo/app/v;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lbo/app/v;Ljava/lang/String;Lcom/braze/enums/CardKey$Provider;Lbo/app/y1;Lcom/braze/storage/ICardStorageProvider;Lbo/app/a2;)Lcom/braze/models/cards/Card;
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lbo/app/v;->a(Ljava/lang/String;Lcom/braze/enums/CardKey$Provider;Lbo/app/y1;Lcom/braze/storage/ICardStorageProvider;Lbo/app/a2;)Lcom/braze/models/cards/Card;

    move-result-object p0

    return-object p0
.end method

.method private final a(Ljava/lang/String;Lcom/braze/enums/CardKey$Provider;Lbo/app/y1;Lcom/braze/storage/ICardStorageProvider;Lbo/app/a2;)Lcom/braze/models/cards/Card;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/braze/enums/CardKey$Provider;",
            "Lbo/app/y1;",
            "Lcom/braze/storage/ICardStorageProvider<",
            "*>;",
            "Lbo/app/a2;",
            ")",
            "Lcom/braze/models/cards/Card;"
        }
    .end annotation

    .line 36
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 37
    invoke-static {v0, p2, p3, p4, p5}, Lbo/app/v;->a(Lorg/json/JSONObject;Lcom/braze/enums/CardKey$Provider;Lbo/app/y1;Lcom/braze/storage/ICardStorageProvider;Lbo/app/a2;)Lcom/braze/models/cards/Card;

    move-result-object p1

    return-object p1
.end method

.method public static final a(Lorg/json/JSONObject;Lcom/braze/enums/CardKey$Provider;Lbo/app/y1;Lcom/braze/storage/ICardStorageProvider;Lbo/app/a2;)Lcom/braze/models/cards/Card;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lcom/braze/enums/CardKey$Provider;",
            "Lbo/app/y1;",
            "Lcom/braze/storage/ICardStorageProvider<",
            "*>;",
            "Lbo/app/a2;",
            ")",
            "Lcom/braze/models/cards/Card;"
        }
    .end annotation
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "jsonObject"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cardKeyProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "brazeManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cardStorageProvider"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cardAnalyticsProvider"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1, p0}, Lcom/braze/enums/CardKey$Provider;->getCardTypeFromJson(Lorg/json/JSONObject;)Lcom/braze/enums/CardType;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    sget-object v1, Lbo/app/v$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    :goto_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 p0, 0x0

    goto/16 :goto_2

    .line 31
    :cond_1
    new-instance v6, Lcom/braze/models/cards/ControlCard;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/braze/models/cards/ControlCard;-><init>(Lorg/json/JSONObject;Lcom/braze/enums/CardKey$Provider;Lbo/app/y1;Lcom/braze/storage/ICardStorageProvider;Lbo/app/a2;)V

    goto :goto_1

    .line 32
    :cond_2
    new-instance v6, Lcom/braze/models/cards/TextAnnouncementCard;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/braze/models/cards/TextAnnouncementCard;-><init>(Lorg/json/JSONObject;Lcom/braze/enums/CardKey$Provider;Lbo/app/y1;Lcom/braze/storage/ICardStorageProvider;Lbo/app/a2;)V

    goto :goto_1

    .line 33
    :cond_3
    new-instance v6, Lcom/braze/models/cards/ShortNewsCard;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/braze/models/cards/ShortNewsCard;-><init>(Lorg/json/JSONObject;Lcom/braze/enums/CardKey$Provider;Lbo/app/y1;Lcom/braze/storage/ICardStorageProvider;Lbo/app/a2;)V

    goto :goto_1

    .line 34
    :cond_4
    new-instance v6, Lcom/braze/models/cards/CaptionedImageCard;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/braze/models/cards/CaptionedImageCard;-><init>(Lorg/json/JSONObject;Lcom/braze/enums/CardKey$Provider;Lbo/app/y1;Lcom/braze/storage/ICardStorageProvider;Lbo/app/a2;)V

    goto :goto_1

    .line 35
    :cond_5
    new-instance v6, Lcom/braze/models/cards/BannerImageCard;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/braze/models/cards/BannerImageCard;-><init>(Lorg/json/JSONObject;Lcom/braze/enums/CardKey$Provider;Lbo/app/y1;Lcom/braze/storage/ICardStorageProvider;Lbo/app/a2;)V

    :goto_1
    move-object p0, v6

    :goto_2
    return-object p0
.end method

.method public static final a(Lorg/json/JSONArray;Lcom/braze/enums/CardKey$Provider;Lbo/app/y1;Lcom/braze/storage/ICardStorageProvider;Lbo/app/a2;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Lcom/braze/enums/CardKey$Provider;",
            "Lbo/app/y1;",
            "Lcom/braze/storage/ICardStorageProvider<",
            "*>;",
            "Lbo/app/a2;",
            ")",
            "Ljava/util/List<",
            "Lcom/braze/models/cards/Card;",
            ">;"
        }
    .end annotation
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "cardJsonStringArray"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cardKeyProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "brazeManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cardStorageProvider"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cardAnalyticsProvider"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v0

    .line 39
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->asSequence(Ljava/lang/Iterable;)Lkotlin/sequences/Sequence;

    move-result-object v0

    .line 40
    new-instance v1, Lbo/app/v$b;

    invoke-direct {v1, p0}, Lbo/app/v$b;-><init>(Lorg/json/JSONArray;)V

    invoke-static {v0, v1}, Lkotlin/sequences/SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v0

    .line 41
    new-instance v1, Lbo/app/v$c;

    invoke-direct {v1, p0}, Lbo/app/v$c;-><init>(Lorg/json/JSONArray;)V

    invoke-static {v0, v1}, Lkotlin/sequences/SequencesKt;->map(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v0

    .line 42
    invoke-interface {v0}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 43
    invoke-static {v0}, Lkotlin/sequences/SequencesKt;->asSequence(Ljava/util/Iterator;)Lkotlin/sequences/Sequence;

    move-result-object v0

    .line 44
    new-instance v7, Lbo/app/v$d;

    move-object v1, v7

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p0

    invoke-direct/range {v1 .. v6}, Lbo/app/v$d;-><init>(Lcom/braze/enums/CardKey$Provider;Lbo/app/y1;Lcom/braze/storage/ICardStorageProvider;Lbo/app/a2;Lorg/json/JSONArray;)V

    invoke-static {v0, v7}, Lkotlin/sequences/SequencesKt;->mapNotNull(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object p0

    .line 61
    invoke-static {p0}, Lkotlin/sequences/SequencesKt;->toList(Lkotlin/sequences/Sequence;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
