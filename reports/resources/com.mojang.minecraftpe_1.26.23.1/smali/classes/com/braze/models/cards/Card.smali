.class public Lcom/braze/models/cards/Card;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/braze/models/IPutIntoJson;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/braze/models/cards/Card$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/braze/models/IPutIntoJson<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000|\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0008\u0008\n\u0002\u0010\t\n\u0002\u0008\u001e\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0012\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0017\u0018\u0000 j2\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001:\u0001kB9\u0012\u0006\u0010\u0013\u001a\u00020\u0002\u0012\u0006\u0010a\u001a\u00020`\u0012\u0008\u0010c\u001a\u0004\u0018\u00010b\u0012\u000c\u0010\u0016\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u0015\u0012\u0008\u0010e\u001a\u0004\u0018\u00010d\u00a2\u0006\u0004\u0008f\u0010gB\u0019\u0008\u0016\u0012\u0006\u0010\u0013\u001a\u00020\u0002\u0012\u0006\u0010h\u001a\u00020`\u00a2\u0006\u0004\u0008f\u0010iJ\u0006\u0010\u0004\u001a\u00020\u0003J\u0006\u0010\u0005\u001a\u00020\u0003J\u0014\u0010\t\u001a\u00020\u00032\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006J\u0008\u0010\n\u001a\u00020\u0002H\u0016J\u0008\u0010\u000c\u001a\u00020\u000bH\u0016J\u0008\u0010\r\u001a\u00020\u0003H\u0007J\u0013\u0010\u0010\u001a\u00020\u00032\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0096\u0002J\u0008\u0010\u0012\u001a\u00020\u0011H\u0016R\u0014\u0010\u0013\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0014R\u001a\u0010\u0016\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u00158\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017R#\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b0\u00188\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0019\u0010\u001a\u001a\u0004\u0008\u001b\u0010\u001cR\u0017\u0010\u001d\u001a\u00020\u000b8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001d\u0010\u001e\u001a\u0004\u0008\u001f\u0010 R\u0017\u0010\"\u001a\u00020!8\u0006\u00a2\u0006\u000c\n\u0004\u0008\"\u0010#\u001a\u0004\u0008$\u0010%R\u0017\u0010&\u001a\u00020!8\u0006\u00a2\u0006\u000c\n\u0004\u0008&\u0010#\u001a\u0004\u0008\'\u0010%R\u0017\u0010(\u001a\u00020!8\u0006\u00a2\u0006\u000c\n\u0004\u0008(\u0010#\u001a\u0004\u0008)\u0010%R4\u0010\u0008\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u00062\u000e\u0010*\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u00068\u0006@BX\u0086\u000e\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010+\u001a\u0004\u0008,\u0010-R\u0017\u0010.\u001a\u00020\u00038\u0006\u00a2\u0006\u000c\n\u0004\u0008.\u0010/\u001a\u0004\u0008.\u00100R\u0017\u00101\u001a\u00020\u00038\u0006\u00a2\u0006\u000c\n\u0004\u00081\u0010/\u001a\u0004\u00081\u00100R\"\u00102\u001a\u00020\u00038\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00082\u0010/\u001a\u0004\u00082\u00100\"\u0004\u00083\u00104R$\u00105\u001a\u00020\u00032\u0006\u0010*\u001a\u00020\u00038\u0006@BX\u0086\u000e\u00a2\u0006\u000c\n\u0004\u00085\u0010/\u001a\u0004\u00085\u00100R\u001d\u00106\u001a\u00020\u00038\u0006\u00a2\u0006\u0012\n\u0004\u00086\u0010/\u0012\u0004\u00088\u00109\u001a\u0004\u00087\u00100R\"\u0010:\u001a\u00020\u00038\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008:\u0010/\u001a\u0004\u0008:\u00100\"\u0004\u0008;\u00104R\"\u0010<\u001a\u00020\u00038\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008<\u0010/\u001a\u0004\u0008<\u00100\"\u0004\u0008=\u00104R\u001c\u0010>\u001a\u0004\u0018\u00010\u000b8\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008>\u0010\u001e\u001a\u0004\u0008?\u0010 R\u001a\u0010A\u001a\u00020@8\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008A\u0010B\u001a\u0004\u0008C\u0010DR\u0016\u0010E\u001a\u00020\u00038\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008E\u0010/R\u0016\u0010F\u001a\u00020\u00038\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008F\u0010/R\u0016\u0010G\u001a\u00020\u00038\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008G\u0010/R\u0017\u0010I\u001a\u00020H8\u0006\u00a2\u0006\u000c\n\u0004\u0008I\u0010J\u001a\u0004\u0008K\u0010LR$\u0010N\u001a\u0004\u0018\u00010M8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008N\u0010O\u001a\u0004\u0008P\u0010Q\"\u0004\u0008R\u0010SR$\u0010U\u001a\u00020\u00032\u0006\u0010T\u001a\u00020\u00038F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008U\u00100\"\u0004\u0008V\u00104R*\u0010W\u001a\u00020\u00032\u0006\u0010W\u001a\u00020\u00038F@FX\u0086\u000e\u00a2\u0006\u0012\u0012\u0004\u0008Y\u00109\u001a\u0004\u0008W\u00100\"\u0004\u0008X\u00104R*\u0010Z\u001a\u00020\u00032\u0006\u0010Z\u001a\u00020\u00038F@FX\u0086\u000e\u00a2\u0006\u0012\u0012\u0004\u0008]\u00109\u001a\u0004\u0008[\u00100\"\u0004\u0008\\\u00104R\u0011\u0010^\u001a\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008^\u00100R\u0011\u0010_\u001a\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008_\u00100\u00a8\u0006l"
    }
    d2 = {
        "Lcom/braze/models/cards/Card;",
        "Lcom/braze/models/IPutIntoJson;",
        "Lorg/json/JSONObject;",
        "",
        "logImpression",
        "logClick",
        "Ljava/util/EnumSet;",
        "Lcom/braze/enums/CardCategory;",
        "categories",
        "isInCategorySet",
        "forJsonPut",
        "",
        "toString",
        "isValidCard",
        "",
        "other",
        "equals",
        "",
        "hashCode",
        "jsonObject",
        "Lorg/json/JSONObject;",
        "Lcom/braze/storage/ICardStorageProvider;",
        "cardStorage",
        "Lcom/braze/storage/ICardStorageProvider;",
        "",
        "extras",
        "Ljava/util/Map;",
        "getExtras",
        "()Ljava/util/Map;",
        "id",
        "Ljava/lang/String;",
        "getId",
        "()Ljava/lang/String;",
        "",
        "created",
        "J",
        "getCreated",
        "()J",
        "updated",
        "getUpdated",
        "expiresAt",
        "getExpiresAt",
        "<set-?>",
        "Ljava/util/EnumSet;",
        "getCategories",
        "()Ljava/util/EnumSet;",
        "isContentCard",
        "Z",
        "()Z",
        "isRemoved",
        "isPinned",
        "setPinned",
        "(Z)V",
        "isClicked",
        "openUriInWebView",
        "getOpenUriInWebView",
        "getOpenUriInWebView$annotations",
        "()V",
        "isDismissibleByUser",
        "setDismissibleByUser",
        "isTest",
        "setTest",
        "url",
        "getUrl",
        "Lcom/braze/enums/CardType;",
        "cardType",
        "Lcom/braze/enums/CardType;",
        "getCardType",
        "()Lcom/braze/enums/CardType;",
        "wasViewedInternal",
        "isIndicatorHighlightedInternal",
        "isDismissedInternal",
        "Lcom/braze/enums/Channel;",
        "channel",
        "Lcom/braze/enums/Channel;",
        "getChannel",
        "()Lcom/braze/enums/Channel;",
        "Lcom/braze/models/cards/ICardListener;",
        "listener",
        "Lcom/braze/models/cards/ICardListener;",
        "getListener",
        "()Lcom/braze/models/cards/ICardListener;",
        "setListener",
        "(Lcom/braze/models/cards/ICardListener;)V",
        "enabled",
        "isIndicatorHighlighted",
        "setIndicatorHighlighted",
        "isDismissed",
        "setDismissed",
        "isDismissed$annotations",
        "viewed",
        "getViewed",
        "setViewed",
        "getViewed$annotations",
        "isExpired",
        "isControl",
        "Lcom/braze/enums/CardKey$Provider;",
        "cardKeysProvider",
        "Lbo/app/y1;",
        "brazeManager",
        "Lbo/app/a2;",
        "cardAnalytics",
        "<init>",
        "(Lorg/json/JSONObject;Lcom/braze/enums/CardKey$Provider;Lbo/app/y1;Lcom/braze/storage/ICardStorageProvider;Lbo/app/a2;)V",
        "cardKeyProvider",
        "(Lorg/json/JSONObject;Lcom/braze/enums/CardKey$Provider;)V",
        "Companion",
        "a",
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
.field public static final Companion:Lcom/braze/models/cards/Card$a;

.field private static final DEFAULT_EXPIRES_AT_VALUE:J = -0x1L


# instance fields
.field private final brazeManager:Lbo/app/y1;

.field private final cardAnalytics:Lbo/app/a2;

.field private final cardStorage:Lcom/braze/storage/ICardStorageProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/braze/storage/ICardStorageProvider<",
            "*>;"
        }
    .end annotation
.end field

.field private final cardType:Lcom/braze/enums/CardType;

.field private categories:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/braze/enums/CardCategory;",
            ">;"
        }
    .end annotation
.end field

.field private final channel:Lcom/braze/enums/Channel;

.field private final created:J

.field private final expiresAt:J

.field private final extras:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final id:Ljava/lang/String;

.field private isClicked:Z

.field private final isContentCard:Z

.field private isDismissedInternal:Z

.field private isDismissibleByUser:Z

.field private isIndicatorHighlightedInternal:Z

.field private isPinned:Z

.field private final isRemoved:Z

.field private isTest:Z

.field private final jsonObject:Lorg/json/JSONObject;

.field private listener:Lcom/braze/models/cards/ICardListener;

.field private final openUriInWebView:Z

.field private final updated:J

.field private final url:Ljava/lang/String;

.field private wasViewedInternal:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/braze/models/cards/Card$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/braze/models/cards/Card$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/braze/models/cards/Card;->Companion:Lcom/braze/models/cards/Card$a;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;Lcom/braze/enums/CardKey$Provider;)V
    .locals 7

    const-string v0, "jsonObject"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cardKeyProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 71
    invoke-direct/range {v1 .. v6}, Lcom/braze/models/cards/Card;-><init>(Lorg/json/JSONObject;Lcom/braze/enums/CardKey$Provider;Lbo/app/y1;Lcom/braze/storage/ICardStorageProvider;Lbo/app/a2;)V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;Lcom/braze/enums/CardKey$Provider;Lbo/app/y1;Lcom/braze/storage/ICardStorageProvider;Lbo/app/a2;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lcom/braze/enums/CardKey$Provider;",
            "Lbo/app/y1;",
            "Lcom/braze/storage/ICardStorageProvider<",
            "*>;",
            "Lbo/app/a2;",
            ")V"
        }
    .end annotation

    const-string v0, "jsonObject"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cardKeysProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/braze/models/cards/Card;->jsonObject:Lorg/json/JSONObject;

    .line 4
    iput-object p3, p0, Lcom/braze/models/cards/Card;->brazeManager:Lbo/app/y1;

    .line 5
    iput-object p4, p0, Lcom/braze/models/cards/Card;->cardStorage:Lcom/braze/storage/ICardStorageProvider;

    .line 6
    iput-object p5, p0, Lcom/braze/models/cards/Card;->cardAnalytics:Lbo/app/a2;

    .line 13
    sget-object p3, Lcom/braze/enums/CardKey;->EXTRAS:Lcom/braze/enums/CardKey;

    invoke-virtual {p2, p3}, Lcom/braze/enums/CardKey$Provider;->getKey(Lcom/braze/enums/CardKey;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p3

    invoke-static {p3}, Lcom/braze/support/JsonUtils;->convertJSONObjectToMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object p3

    iput-object p3, p0, Lcom/braze/models/cards/Card;->extras:Ljava/util/Map;

    .line 14
    sget-object p3, Lcom/braze/enums/CardKey;->ID:Lcom/braze/enums/CardKey;

    invoke-virtual {p2, p3}, Lcom/braze/enums/CardKey$Provider;->getKey(Lcom/braze/enums/CardKey;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string p4, "jsonObject.getString(car\u2026vider.getKey(CardKey.ID))"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/braze/models/cards/Card;->id:Ljava/lang/String;

    .line 15
    invoke-virtual {p2}, Lcom/braze/enums/CardKey$Provider;->isContentCardProvider()Z

    move-result p3

    iput-boolean p3, p0, Lcom/braze/models/cards/Card;->isContentCard:Z

    .line 16
    sget-object p3, Lcom/braze/enums/CardType;->DEFAULT:Lcom/braze/enums/CardType;

    iput-object p3, p0, Lcom/braze/models/cards/Card;->cardType:Lcom/braze/enums/CardType;

    .line 17
    invoke-virtual {p2}, Lcom/braze/enums/CardKey$Provider;->isContentCardProvider()Z

    move-result p3

    if-eqz p3, :cond_0

    sget-object p3, Lcom/braze/enums/Channel;->CONTENT_CARD:Lcom/braze/enums/Channel;

    goto :goto_0

    :cond_0
    sget-object p3, Lcom/braze/enums/Channel;->NEWS_FEED:Lcom/braze/enums/Channel;

    :goto_0
    iput-object p3, p0, Lcom/braze/models/cards/Card;->channel:Lcom/braze/enums/Channel;

    .line 18
    sget-object p3, Lcom/braze/enums/CardKey;->VIEWED:Lcom/braze/enums/CardKey;

    invoke-virtual {p2, p3}, Lcom/braze/enums/CardKey$Provider;->getKey(Lcom/braze/enums/CardKey;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p3

    iput-boolean p3, p0, Lcom/braze/models/cards/Card;->wasViewedInternal:Z

    .line 19
    sget-object p3, Lcom/braze/enums/CardKey;->DISMISSED:Lcom/braze/enums/CardKey;

    invoke-virtual {p2, p3}, Lcom/braze/enums/CardKey$Provider;->getKey(Lcom/braze/enums/CardKey;)Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x0

    invoke-virtual {p1, p3, p4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p3

    iput-boolean p3, p0, Lcom/braze/models/cards/Card;->isDismissedInternal:Z

    .line 20
    sget-object p3, Lcom/braze/enums/CardKey;->PINNED:Lcom/braze/enums/CardKey;

    invoke-virtual {p2, p3}, Lcom/braze/enums/CardKey$Provider;->getKey(Lcom/braze/enums/CardKey;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3, p4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p3

    iput-boolean p3, p0, Lcom/braze/models/cards/Card;->isPinned:Z

    .line 21
    sget-object p3, Lcom/braze/enums/CardKey;->CREATED:Lcom/braze/enums/CardKey;

    invoke-virtual {p2, p3}, Lcom/braze/enums/CardKey$Provider;->getKey(Lcom/braze/enums/CardKey;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/braze/models/cards/Card;->created:J

    .line 22
    sget-object p3, Lcom/braze/enums/CardKey;->EXPIRES_AT:Lcom/braze/enums/CardKey;

    invoke-virtual {p2, p3}, Lcom/braze/enums/CardKey$Provider;->getKey(Lcom/braze/enums/CardKey;)Ljava/lang/String;

    move-result-object p3

    const-wide/16 v0, -0x1

    invoke-virtual {p1, p3, v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/braze/models/cards/Card;->expiresAt:J

    .line 23
    sget-object p3, Lcom/braze/enums/CardKey;->OPEN_URI_IN_WEBVIEW:Lcom/braze/enums/CardKey;

    invoke-virtual {p2, p3}, Lcom/braze/enums/CardKey$Provider;->getKey(Lcom/braze/enums/CardKey;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3, p4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p3

    iput-boolean p3, p0, Lcom/braze/models/cards/Card;->openUriInWebView:Z

    .line 26
    sget-object p3, Lcom/braze/enums/CardKey;->REMOVED:Lcom/braze/enums/CardKey;

    invoke-virtual {p2, p3}, Lcom/braze/enums/CardKey$Provider;->getKey(Lcom/braze/enums/CardKey;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3, p4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p3

    iput-boolean p3, p0, Lcom/braze/models/cards/Card;->isRemoved:Z

    .line 29
    sget-object p3, Lcom/braze/enums/CardKey;->CATEGORIES:Lcom/braze/enums/CardKey;

    invoke-virtual {p2, p3}, Lcom/braze/enums/CardKey$Provider;->getKey(Lcom/braze/enums/CardKey;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 30
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p3

    if-nez p3, :cond_1

    goto :goto_2

    .line 33
    :cond_1
    const-class p3, Lcom/braze/enums/CardCategory;

    invoke-static {p3}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object p3

    .line 34
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p5

    invoke-static {p4, p5}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object p5

    .line 35
    invoke-static {p5}, Lkotlin/collections/CollectionsKt;->asSequence(Ljava/lang/Iterable;)Lkotlin/sequences/Sequence;

    move-result-object p5

    .line 36
    new-instance v0, Lcom/braze/models/cards/Card$b;

    invoke-direct {v0, p1}, Lcom/braze/models/cards/Card$b;-><init>(Lorg/json/JSONArray;)V

    invoke-static {p5, v0}, Lkotlin/sequences/SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object p5

    .line 37
    new-instance v0, Lcom/braze/models/cards/Card$c;

    invoke-direct {v0, p1}, Lcom/braze/models/cards/Card$c;-><init>(Lorg/json/JSONArray;)V

    invoke-static {p5, v0}, Lkotlin/sequences/SequencesKt;->map(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object p1

    .line 38
    invoke-interface {p1}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 39
    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    .line 40
    invoke-static {p5}, Lcom/braze/enums/CardCategory;->get(Ljava/lang/String;)Lcom/braze/enums/CardCategory;

    move-result-object p5

    if-eqz p5, :cond_2

    const-string v0, "get(categoryString)"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-virtual {p3, p5}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 44
    :cond_3
    iput-object p3, p0, Lcom/braze/models/cards/Card;->categories:Ljava/util/EnumSet;

    goto :goto_3

    .line 45
    :cond_4
    :goto_2
    sget-object p1, Lcom/braze/enums/CardCategory;->NO_CATEGORY:Lcom/braze/enums/CardCategory;

    invoke-static {p1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object p1

    iput-object p1, p0, Lcom/braze/models/cards/Card;->categories:Ljava/util/EnumSet;

    .line 58
    :goto_3
    iget-object p1, p0, Lcom/braze/models/cards/Card;->jsonObject:Lorg/json/JSONObject;

    sget-object p3, Lcom/braze/enums/CardKey;->UPDATED:Lcom/braze/enums/CardKey;

    invoke-virtual {p2, p3}, Lcom/braze/enums/CardKey$Provider;->getKey(Lcom/braze/enums/CardKey;)Ljava/lang/String;

    move-result-object p3

    iget-wide v0, p0, Lcom/braze/models/cards/Card;->created:J

    invoke-virtual {p1, p3, v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/braze/models/cards/Card;->updated:J

    .line 61
    iget-object p1, p0, Lcom/braze/models/cards/Card;->jsonObject:Lorg/json/JSONObject;

    sget-object p3, Lcom/braze/enums/CardKey;->DISMISSIBLE:Lcom/braze/enums/CardKey;

    invoke-virtual {p2, p3}, Lcom/braze/enums/CardKey$Provider;->getKey(Lcom/braze/enums/CardKey;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3, p4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/braze/models/cards/Card;->isDismissibleByUser:Z

    .line 64
    iget-object p1, p0, Lcom/braze/models/cards/Card;->jsonObject:Lorg/json/JSONObject;

    sget-object p3, Lcom/braze/enums/CardKey;->READ:Lcom/braze/enums/CardKey;

    invoke-virtual {p2, p3}, Lcom/braze/enums/CardKey$Provider;->getKey(Lcom/braze/enums/CardKey;)Ljava/lang/String;

    move-result-object p3

    iget-boolean p5, p0, Lcom/braze/models/cards/Card;->wasViewedInternal:Z

    invoke-virtual {p1, p3, p5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/braze/models/cards/Card;->isIndicatorHighlightedInternal:Z

    .line 67
    iget-object p1, p0, Lcom/braze/models/cards/Card;->jsonObject:Lorg/json/JSONObject;

    sget-object p3, Lcom/braze/enums/CardKey;->CLICKED:Lcom/braze/enums/CardKey;

    invoke-virtual {p2, p3}, Lcom/braze/enums/CardKey$Provider;->getKey(Lcom/braze/enums/CardKey;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3, p4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/braze/models/cards/Card;->isClicked:Z

    .line 70
    iget-object p1, p0, Lcom/braze/models/cards/Card;->jsonObject:Lorg/json/JSONObject;

    sget-object p3, Lcom/braze/enums/CardKey;->IS_TEST:Lcom/braze/enums/CardKey;

    invoke-virtual {p2, p3}, Lcom/braze/enums/CardKey$Provider;->getKey(Lcom/braze/enums/CardKey;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, p4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/braze/models/cards/Card;->isTest:Z

    return-void
.end method

.method public static synthetic getOpenUriInWebView$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getViewed$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic isDismissed$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    check-cast p1, Lcom/braze/models/cards/Card;

    .line 5
    iget-wide v2, p0, Lcom/braze/models/cards/Card;->updated:J

    iget-wide v4, p1, Lcom/braze/models/cards/Card;->updated:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/braze/models/cards/Card;->id:Ljava/lang/String;

    iget-object p1, p1, Lcom/braze/models/cards/Card;->id:Ljava/lang/String;

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public bridge synthetic forJsonPut()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/braze/models/cards/Card;->forJsonPut()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public forJsonPut()Lorg/json/JSONObject;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/braze/models/cards/Card;->jsonObject:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getCardType()Lcom/braze/enums/CardType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/braze/models/cards/Card;->cardType:Lcom/braze/enums/CardType;

    return-object v0
.end method

.method public final getCategories()Ljava/util/EnumSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lcom/braze/enums/CardCategory;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/braze/models/cards/Card;->categories:Ljava/util/EnumSet;

    return-object v0
.end method

.method public final getChannel()Lcom/braze/enums/Channel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/braze/models/cards/Card;->channel:Lcom/braze/enums/Channel;

    return-object v0
.end method

.method public final getCreated()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/braze/models/cards/Card;->created:J

    return-wide v0
.end method

.method public final getExpiresAt()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/braze/models/cards/Card;->expiresAt:J

    return-wide v0
.end method

.method public final getExtras()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/braze/models/cards/Card;->extras:Ljava/util/Map;

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/braze/models/cards/Card;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getListener()Lcom/braze/models/cards/ICardListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/braze/models/cards/Card;->listener:Lcom/braze/models/cards/ICardListener;

    return-object v0
.end method

.method public final getOpenUriInWebView()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/braze/models/cards/Card;->openUriInWebView:Z

    return v0
.end method

.method public final getUpdated()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/braze/models/cards/Card;->updated:J

    return-wide v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/braze/models/cards/Card;->url:Ljava/lang/String;

    return-object v0
.end method

.method public final getViewed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/braze/models/cards/Card;->wasViewedInternal:Z

    return v0
.end method

.method public hashCode()I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/braze/models/cards/Card;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-wide v1, p0, Lcom/braze/models/cards/Card;->updated:J

    const/16 v3, 0x20

    ushr-long v3, v1, v3

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final isClicked()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/braze/models/cards/Card;->isClicked:Z

    return v0
.end method

.method public final isContentCard()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/braze/models/cards/Card;->isContentCard:Z

    return v0
.end method

.method public final isControl()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/braze/models/cards/Card;->getCardType()Lcom/braze/enums/CardType;

    move-result-object v0

    sget-object v1, Lcom/braze/enums/CardType;->CONTROL:Lcom/braze/enums/CardType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isDismissed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/braze/models/cards/Card;->isDismissedInternal:Z

    return v0
.end method

.method public final isDismissibleByUser()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/braze/models/cards/Card;->isDismissibleByUser:Z

    return v0
.end method

.method public final isExpired()Z
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/braze/models/cards/Card;->expiresAt:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/braze/support/DateTimeUtils;->nowInSeconds()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isInCategorySet(Ljava/util/EnumSet;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lcom/braze/enums/CardCategory;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "categories"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/braze/models/cards/Card;->categories:Ljava/util/EnumSet;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/braze/enums/CardCategory;

    .line 3
    invoke-virtual {v0, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method public final isIndicatorHighlighted()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/braze/models/cards/Card;->isIndicatorHighlightedInternal:Z

    return v0
.end method

.method public final isPinned()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/braze/models/cards/Card;->isPinned:Z

    return v0
.end method

.method public final isRemoved()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/braze/models/cards/Card;->isRemoved:Z

    return v0
.end method

.method public final isTest()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/braze/models/cards/Card;->isTest:Z

    return v0
.end method

.method public final isValidCard()Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/braze/models/cards/Card;->id:Ljava/lang/String;

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v3, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    sget-object v5, Lcom/braze/models/cards/Card$g;->b:Lcom/braze/models/cards/Card$g;

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final logClick()Z
    .locals 10

    const/4 v0, 0x1

    .line 1
    :try_start_0
    iput-boolean v0, p0, Lcom/braze/models/cards/Card;->isClicked:Z

    .line 2
    iget-object v1, p0, Lcom/braze/models/cards/Card;->brazeManager:Lbo/app/y1;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/braze/models/cards/Card;->cardAnalytics:Lbo/app/a2;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/braze/models/cards/Card;->cardStorage:Lcom/braze/storage/ICardStorageProvider;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/braze/models/cards/Card;->isValidCard()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    iget-object v1, p0, Lcom/braze/models/cards/Card;->cardAnalytics:Lbo/app/a2;

    iget-object v2, p0, Lcom/braze/models/cards/Card;->id:Ljava/lang/String;

    invoke-interface {v1, v2}, Lbo/app/a2;->a(Ljava/lang/String;)Lbo/app/w1;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    iget-object v2, p0, Lcom/braze/models/cards/Card;->brazeManager:Lbo/app/y1;

    invoke-interface {v2, v1}, Lbo/app/y1;->a(Lbo/app/w1;)Z

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/braze/models/cards/Card;->cardStorage:Lcom/braze/storage/ICardStorageProvider;

    iget-object v2, p0, Lcom/braze/models/cards/Card;->id:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/braze/storage/ICardStorageProvider;->markCardAsClicked(Ljava/lang/String;)V

    .line 7
    sget-object v3, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    new-instance v7, Lcom/braze/models/cards/Card$h;

    invoke-direct {v7, p0}, Lcom/braze/models/cards/Card$h;-><init>(Lcom/braze/models/cards/Card;)V

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, p0

    invoke-static/range {v3 .. v9}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return v0

    .line 10
    :cond_1
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v3, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v5, Lcom/braze/models/cards/Card$i;

    invoke-direct {v5, p0}, Lcom/braze/models/cards/Card$i;-><init>(Lcom/braze/models/cards/Card;)V

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 13
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v2, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v3, Lcom/braze/models/cards/Card$j;

    invoke-direct {v3, p0}, Lcom/braze/models/cards/Card$j;-><init>(Lcom/braze/models/cards/Card;)V

    invoke-virtual {v1, p0, v2, v0, v3}, Lcom/braze/support/BrazeLogger;->brazelog(Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V

    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public final logImpression()Z
    .locals 8

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/braze/models/cards/Card;->brazeManager:Lbo/app/y1;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/braze/models/cards/Card;->cardAnalytics:Lbo/app/a2;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/braze/models/cards/Card;->cardStorage:Lcom/braze/storage/ICardStorageProvider;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/braze/models/cards/Card;->isValidCard()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p0}, Lcom/braze/models/cards/Card;->isControl()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v3, Lcom/braze/support/BrazeLogger$Priority;->V:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v5, Lcom/braze/models/cards/Card$k;

    invoke-direct {v5, p0}, Lcom/braze/models/cards/Card$k;-><init>(Lcom/braze/models/cards/Card;)V

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lcom/braze/models/cards/Card;->cardAnalytics:Lbo/app/a2;

    iget-object v1, p0, Lcom/braze/models/cards/Card;->id:Ljava/lang/String;

    invoke-interface {v0, v1}, Lbo/app/a2;->c(Ljava/lang/String;)Lbo/app/w1;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v1, p0, Lcom/braze/models/cards/Card;->brazeManager:Lbo/app/y1;

    invoke-interface {v1, v0}, Lbo/app/y1;->a(Lbo/app/w1;)Z

    goto :goto_0

    .line 8
    :cond_0
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v3, Lcom/braze/support/BrazeLogger$Priority;->V:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v5, Lcom/braze/models/cards/Card$l;

    invoke-direct {v5, p0}, Lcom/braze/models/cards/Card$l;-><init>(Lcom/braze/models/cards/Card;)V

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 9
    iget-object v0, p0, Lcom/braze/models/cards/Card;->cardAnalytics:Lbo/app/a2;

    iget-object v1, p0, Lcom/braze/models/cards/Card;->id:Ljava/lang/String;

    invoke-interface {v0, v1}, Lbo/app/a2;->b(Ljava/lang/String;)Lbo/app/w1;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 10
    iget-object v1, p0, Lcom/braze/models/cards/Card;->brazeManager:Lbo/app/y1;

    invoke-interface {v1, v0}, Lbo/app/y1;->a(Lbo/app/w1;)Z

    .line 13
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/braze/models/cards/Card;->cardStorage:Lcom/braze/storage/ICardStorageProvider;

    iget-object v1, p0, Lcom/braze/models/cards/Card;->id:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/braze/storage/ICardStorageProvider;->markCardAsViewed(Ljava/lang/String;)V

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    .line 17
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v2, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v3, Lcom/braze/models/cards/Card$m;

    invoke-direct {v3, p0}, Lcom/braze/models/cards/Card$m;-><init>(Lcom/braze/models/cards/Card;)V

    invoke-virtual {v1, p0, v2, v0, v3}, Lcom/braze/support/BrazeLogger;->brazelog(Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public final setDismissed(Z)V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/braze/models/cards/Card;->isDismissedInternal:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 2
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v3, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    sget-object v5, Lcom/braze/models/cards/Card$d;->b:Lcom/braze/models/cards/Card$d;

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void

    .line 5
    :cond_0
    iput-boolean p1, p0, Lcom/braze/models/cards/Card;->isDismissedInternal:Z

    .line 6
    iget-object v0, p0, Lcom/braze/models/cards/Card;->cardStorage:Lcom/braze/storage/ICardStorageProvider;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/braze/models/cards/Card;->id:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/braze/storage/ICardStorageProvider;->markCardAsDismissed(Ljava/lang/String;)V

    :cond_1
    if-eqz p1, :cond_2

    .line 8
    :try_start_0
    iget-object p1, p0, Lcom/braze/models/cards/Card;->brazeManager:Lbo/app/y1;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/braze/models/cards/Card;->cardAnalytics:Lbo/app/a2;

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/braze/models/cards/Card;->isValidCard()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 9
    iget-object p1, p0, Lcom/braze/models/cards/Card;->cardAnalytics:Lbo/app/a2;

    iget-object v0, p0, Lcom/braze/models/cards/Card;->id:Ljava/lang/String;

    invoke-interface {p1, v0}, Lbo/app/a2;->d(Ljava/lang/String;)Lbo/app/w1;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 10
    iget-object v0, p0, Lcom/braze/models/cards/Card;->brazeManager:Lbo/app/y1;

    invoke-interface {v0, p1}, Lbo/app/y1;->a(Lbo/app/w1;)Z

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 14
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v1, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    sget-object v2, Lcom/braze/models/cards/Card$e;->b:Lcom/braze/models/cards/Card$e;

    invoke-virtual {v0, p0, v1, p1, v2}, Lcom/braze/support/BrazeLogger;->brazelog(Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final setDismissibleByUser(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/braze/models/cards/Card;->isDismissibleByUser:Z

    return-void
.end method

.method public final setIndicatorHighlighted(Z)V
    .locals 3

    .line 1
    iput-boolean p1, p0, Lcom/braze/models/cards/Card;->isIndicatorHighlightedInternal:Z

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/braze/models/cards/Card;->listener:Lcom/braze/models/cards/ICardListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/braze/models/cards/ICardListener;->onCardUpdate()V

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/braze/models/cards/Card;->cardStorage:Lcom/braze/storage/ICardStorageProvider;

    if-eqz p1, :cond_1

    .line 7
    :try_start_1
    iget-object v0, p0, Lcom/braze/models/cards/Card;->id:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/braze/storage/ICardStorageProvider;->markCardAsVisuallyRead(Ljava/lang/String;)V

    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 9
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v1, Lcom/braze/support/BrazeLogger$Priority;->D:Lcom/braze/support/BrazeLogger$Priority;

    sget-object v2, Lcom/braze/models/cards/Card$f;->b:Lcom/braze/models/cards/Card$f;

    invoke-virtual {v0, p0, v1, p1, v2}, Lcom/braze/support/BrazeLogger;->brazelog(Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final setListener(Lcom/braze/models/cards/ICardListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/braze/models/cards/Card;->listener:Lcom/braze/models/cards/ICardListener;

    return-void
.end method

.method public final setPinned(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/braze/models/cards/Card;->isPinned:Z

    return-void
.end method

.method public final setTest(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/braze/models/cards/Card;->isTest:Z

    return-void
.end method

.method public final setViewed(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/braze/models/cards/Card;->wasViewedInternal:Z

    .line 2
    iget-object p1, p0, Lcom/braze/models/cards/Card;->cardStorage:Lcom/braze/storage/ICardStorageProvider;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/braze/models/cards/Card;->id:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/braze/storage/ICardStorageProvider;->markCardAsViewed(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\n            Card{\n            extras="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/braze/models/cards/Card;->extras:Ljava/util/Map;

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n            id=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 7
    iget-object v2, p0, Lcom/braze/models/cards/Card;->id:Ljava/lang/String;

    .line 8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'\n            created="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 12
    iget-wide v2, p0, Lcom/braze/models/cards/Card;->created:J

    .line 13
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n            updated="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 18
    iget-wide v2, p0, Lcom/braze/models/cards/Card;->updated:J

    .line 19
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n            expiresAt="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 25
    iget-wide v2, p0, Lcom/braze/models/cards/Card;->expiresAt:J

    .line 26
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n            categories="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 33
    iget-object v2, p0, Lcom/braze/models/cards/Card;->categories:Ljava/util/EnumSet;

    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n            isContentCard="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 42
    iget-boolean v2, p0, Lcom/braze/models/cards/Card;->isContentCard:Z

    .line 43
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n            viewed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 52
    iget-boolean v2, p0, Lcom/braze/models/cards/Card;->wasViewedInternal:Z

    .line 53
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n            isRead="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 63
    iget-boolean v2, p0, Lcom/braze/models/cards/Card;->isIndicatorHighlightedInternal:Z

    .line 64
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n            isDismissed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 75
    iget-boolean v2, p0, Lcom/braze/models/cards/Card;->isDismissedInternal:Z

    .line 76
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n            isRemoved="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 88
    iget-boolean v2, p0, Lcom/braze/models/cards/Card;->isRemoved:Z

    .line 89
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n            isPinned="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    iget-boolean v1, p0, Lcom/braze/models/cards/Card;->isPinned:Z

    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    sget-object v2, Lcom/microsoft/xbox/xle/app/activity/Profile/Fjx/kHBgDSnvUofLDy;->XTBgazYom:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 117
    iget-boolean v2, p0, Lcom/braze/models/cards/Card;->isClicked:Z

    .line 118
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n            openUriInWebview="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 133
    iget-boolean v2, p0, Lcom/braze/models/cards/Card;->openUriInWebView:Z

    .line 134
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n            isDismissibleByUser="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 150
    iget-boolean v2, p0, Lcom/braze/models/cards/Card;->isDismissibleByUser:Z

    .line 151
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n            isTest="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 168
    iget-boolean v2, p0, Lcom/braze/models/cards/Card;->isTest:Z

    .line 169
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n            json="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 187
    iget-object v2, p0, Lcom/braze/models/cards/Card;->jsonObject:Lorg/json/JSONObject;

    invoke-static {v2}, Lcom/braze/support/JsonUtils;->getPrettyPrintedString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    .line 188
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n            }\n\n        "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 209
    invoke-static {v0}, Lkotlin/text/StringsKt;->trimIndent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
