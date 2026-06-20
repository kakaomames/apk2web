.class public final Lcom/braze/enums/CardKey$Provider;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/braze/enums/CardKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Provider"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/braze/enums/CardKey$Provider$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0008\u0008\u0007\u0018\u0000 \u00122\u00020\u0001:\u0001\u0013B\u000f\u0012\u0006\u0010\r\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u0010\u0010\t\u001a\u0004\u0018\u00010\u00082\u0006\u0010\u0007\u001a\u00020\u0006J\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u00042\u0006\u0010\n\u001a\u00020\u0008R\u0017\u0010\r\u001a\u00020\u000c8\u0006\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\r\u0010\u000f\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/braze/enums/CardKey$Provider;",
        "",
        "Lcom/braze/enums/CardKey;",
        "key",
        "",
        "getKey",
        "Lorg/json/JSONObject;",
        "jsonObject",
        "Lcom/braze/enums/CardType;",
        "getCardTypeFromJson",
        "cardType",
        "getServerKeyFromCardType",
        "",
        "isContentCardProvider",
        "Z",
        "()Z",
        "<init>",
        "(Z)V",
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
.field public static final CONTENT_CARDS:Lcom/braze/enums/CardKey$Provider;

.field public static final Companion:Lcom/braze/enums/CardKey$Provider$a;

.field public static final NEWS_FEED:Lcom/braze/enums/CardKey$Provider;


# instance fields
.field private final isContentCardProvider:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/braze/enums/CardKey$Provider$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/braze/enums/CardKey$Provider$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/braze/enums/CardKey$Provider;->Companion:Lcom/braze/enums/CardKey$Provider$a;

    .line 1
    new-instance v0, Lcom/braze/enums/CardKey$Provider;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/braze/enums/CardKey$Provider;-><init>(Z)V

    sput-object v0, Lcom/braze/enums/CardKey$Provider;->CONTENT_CARDS:Lcom/braze/enums/CardKey$Provider;

    .line 3
    new-instance v0, Lcom/braze/enums/CardKey$Provider;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/braze/enums/CardKey$Provider;-><init>(Z)V

    sput-object v0, Lcom/braze/enums/CardKey$Provider;->NEWS_FEED:Lcom/braze/enums/CardKey$Provider;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lcom/braze/enums/CardKey$Provider;->isContentCardProvider:Z

    return-void
.end method


# virtual methods
.method public final getCardTypeFromJson(Lorg/json/JSONObject;)Lcom/braze/enums/CardType;
    .locals 9

    const-string v0, "jsonObject"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/braze/enums/CardKey;->TYPE:Lcom/braze/enums/CardKey;

    invoke-virtual {p0, v0}, Lcom/braze/enums/CardKey$Provider;->getKey(Lcom/braze/enums/CardKey;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/braze/support/JsonUtils;->getOptionalString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Lcom/braze/enums/CardKey$Provider;->isContentCardProvider:Z

    if-eqz v1, :cond_2

    const-string v1, "short_news"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6
    sget-object v1, Lcom/braze/enums/CardKey;->SHORT_NEWS_IMAGE:Lcom/braze/enums/CardKey;

    invoke-virtual {p0, v1}, Lcom/braze/enums/CardKey$Provider;->getKey(Lcom/braze/enums/CardKey;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/braze/support/JsonUtils;->getOptionalString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 7
    :cond_1
    sget-object v2, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v4, Lcom/braze/support/BrazeLogger$Priority;->V:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v6, Lcom/braze/enums/CardKey$Provider$b;

    invoke-direct {v6, p1}, Lcom/braze/enums/CardKey$Provider$b;-><init>(Lorg/json/JSONObject;)V

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v5, 0x0

    move-object v3, p0

    invoke-static/range {v2 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 8
    const-string v0, "text_announcement"

    .line 11
    :cond_2
    :goto_0
    invoke-static {}, Lcom/braze/enums/CardKey;->access$getCardTypeMap$cp()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 12
    invoke-static {}, Lcom/braze/enums/CardKey;->access$getCardTypeMap$cp()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/braze/enums/CardType;

    goto :goto_1

    .line 14
    :cond_3
    sget-object p1, Lcom/braze/enums/CardType;->DEFAULT:Lcom/braze/enums/CardType;

    :goto_1
    return-object p1
.end method

.method public final getKey(Lcom/braze/enums/CardKey;)Ljava/lang/String;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Lcom/braze/enums/CardKey$Provider;->isContentCardProvider:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/braze/enums/CardKey;->getContentCardsKey()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/braze/enums/CardKey;->getFeedKey()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final getServerKeyFromCardType(Lcom/braze/enums/CardType;)Ljava/lang/String;
    .locals 3

    const-string v0, "cardType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcom/braze/enums/CardKey;->access$getCardTypeMap$cp()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/braze/enums/CardType;

    if-ne p1, v1, :cond_0

    return-object v2

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final isContentCardProvider()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/braze/enums/CardKey$Provider;->isContentCardProvider:Z

    return v0
.end method
