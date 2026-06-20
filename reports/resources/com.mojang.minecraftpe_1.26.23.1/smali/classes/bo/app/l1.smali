.class public final Lbo/app/l1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/braze/storage/ICardStorageProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbo/app/l1$a;,
        Lbo/app/l1$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/braze/storage/ICardStorageProvider<",
        "Lcom/braze/events/FeedUpdatedEvent;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010#\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010\"\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u000b\u001fB!\u0012\u0006\u0010\u001a\u001a\u00020\u0019\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u001c\u001a\u00020\u001b\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ*\u0010\u000b\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u00032\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tH\u0002J\u0016\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u000e2\u0006\u0010\r\u001a\u00020\u000cH\u0002J\u0018\u0010\u000b\u001a\u00020\u000f2\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\tH\u0002J\u0012\u0010\u000b\u001a\u00020\u000f2\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0002J\u0010\u0010\u0011\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0005H\u0016J\u0010\u0010\u0012\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0005H\u0016J\u0010\u0010\u0013\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0005H\u0016J\u0010\u0010\u0014\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0005H\u0016J\u001a\u0010\u000b\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0004\u001a\u00020\u00032\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005J\u001c\u0010\u000b\u001a\u00020\u000f2\u000c\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00152\u0006\u0010\r\u001a\u00020\u000cR\u0014\u0010\u0018\u001a\u00020\u00028VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u0017\u00a8\u0006 "
    }
    d2 = {
        "Lbo/app/l1;",
        "Lcom/braze/storage/ICardStorageProvider;",
        "Lcom/braze/events/FeedUpdatedEvent;",
        "Lorg/json/JSONArray;",
        "cardsArray",
        "",
        "userId",
        "",
        "isFromOfflineStorage",
        "",
        "cardsTimestamp",
        "a",
        "Lbo/app/l1$a;",
        "property",
        "",
        "",
        "cardId",
        "markCardAsVisuallyRead",
        "markCardAsViewed",
        "markCardAsDismissed",
        "markCardAsClicked",
        "",
        "cardIds",
        "()Lcom/braze/events/FeedUpdatedEvent;",
        "cachedCardsAsEvent",
        "Landroid/content/Context;",
        "context",
        "Lbo/app/y1;",
        "brazeManager",
        "<init>",
        "(Landroid/content/Context;Ljava/lang/String;Lbo/app/y1;)V",
        "b",
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
.field public static final f:Lbo/app/l1$b;


# instance fields
.field private final a:Lbo/app/y1;

.field private final b:Landroid/content/SharedPreferences;

.field private final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lbo/app/a2;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lbo/app/l1$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbo/app/l1$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lbo/app/l1;->f:Lbo/app/l1$b;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lbo/app/y1;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "brazeManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lbo/app/l1;->a:Lbo/app/y1;

    .line 14
    new-instance p3, Lbo/app/k1;

    invoke-direct {p3}, Lbo/app/k1;-><init>()V

    iput-object p3, p0, Lbo/app/l1;->e:Lbo/app/a2;

    if-nez p2, :cond_0

    .line 26
    const-string p3, ""

    goto :goto_0

    :cond_0
    move-object p3, p2

    .line 27
    :goto_0
    invoke-static {p1, p3}, Lcom/braze/support/StringUtils;->getCacheFileSuffix(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "com.appboy.storage.feedstorageprovider"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x0

    invoke-virtual {p1, p3, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string p3, "context.getSharedPrefere\u2026Id, Context.MODE_PRIVATE)"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lbo/app/l1;->b:Landroid/content/SharedPreferences;

    .line 29
    sget-object p1, Lbo/app/l1$a;->e:Lbo/app/l1$a;

    invoke-direct {p0, p1}, Lbo/app/l1;->a(Lbo/app/l1$a;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lbo/app/l1;->c:Ljava/util/Set;

    .line 30
    sget-object p1, Lbo/app/l1$a;->d:Lbo/app/l1$a;

    invoke-direct {p0, p1}, Lbo/app/l1;->a(Lbo/app/l1$a;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lbo/app/l1;->d:Ljava/util/Set;

    .line 31
    invoke-direct {p0, p2}, Lbo/app/l1;->a(Ljava/lang/String;)V

    return-void
.end method

.method private final a(Lorg/json/JSONArray;Ljava/lang/String;ZJ)Lcom/braze/events/FeedUpdatedEvent;
    .locals 6

    .line 19
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 20
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 24
    :cond_0
    new-instance v0, Lcom/braze/enums/CardKey$Provider;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/braze/enums/CardKey$Provider;-><init>(Z)V

    .line 25
    iget-object v1, p0, Lbo/app/l1;->a:Lbo/app/y1;

    .line 27
    iget-object v2, p0, Lbo/app/l1;->e:Lbo/app/a2;

    .line 28
    invoke-static {p1, v0, v1, p0, v2}, Lbo/app/v;->a(Lorg/json/JSONArray;Lcom/braze/enums/CardKey$Provider;Lbo/app/y1;Lcom/braze/storage/ICardStorageProvider;Lbo/app/a2;)Ljava/util/List;

    move-result-object p1

    :goto_0
    move-object v1, p1

    .line 38
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/braze/models/cards/Card;

    .line 39
    iget-object v2, p0, Lbo/app/l1;->c:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/braze/models/cards/Card;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    .line 40
    invoke-virtual {v0, v3}, Lcom/braze/models/cards/Card;->setViewed(Z)V

    .line 42
    invoke-virtual {v0, v3}, Lcom/braze/models/cards/Card;->setIndicatorHighlighted(Z)V

    .line 44
    :cond_2
    iget-object v2, p0, Lbo/app/l1;->d:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/braze/models/cards/Card;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 45
    invoke-virtual {v0, v3}, Lcom/braze/models/cards/Card;->setIndicatorHighlighted(Z)V

    goto :goto_1

    .line 48
    :cond_3
    new-instance p1, Lcom/braze/events/FeedUpdatedEvent;

    move-object v0, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/braze/events/FeedUpdatedEvent;-><init>(Ljava/util/List;Ljava/lang/String;ZJ)V

    return-object p1
.end method

.method private final a(Lbo/app/l1$a;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbo/app/l1$a;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 49
    invoke-virtual {p1}, Lbo/app/l1$a;->b()Ljava/lang/String;

    move-result-object v0

    .line 51
    iget-object v1, p0, Lbo/app/l1;->b:Landroid/content/SharedPreferences;

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 52
    iget-object v1, p0, Lbo/app/l1;->b:Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 53
    sget-object v2, Lbo/app/l1;->f:Lbo/app/l1$b;

    invoke-virtual {v2, v1}, Lbo/app/l1$b;->a(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    .line 56
    :cond_0
    iget-object v1, p0, Lbo/app/l1;->b:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 57
    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 58
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-eqz v2, :cond_1

    .line 62
    invoke-virtual {p0, v2, p1}, Lbo/app/l1;->a(Ljava/util/Set;Lbo/app/l1$a;)V

    return-object v2

    .line 67
    :cond_1
    invoke-virtual {p1}, Lbo/app/l1$a;->c()Ljava/lang/String;

    move-result-object p1

    .line 68
    iget-object v0, p0, Lbo/app/l1;->b:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    .line 73
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-direct {v0, p1}, Ljava/util/concurrent/ConcurrentSkipListSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method private final a(Ljava/lang/String;)V
    .locals 2

    .line 82
    iget-object v0, p0, Lbo/app/l1;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 83
    const-string v1, "uid"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 84
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private final a(Lorg/json/JSONArray;J)V
    .locals 3

    .line 74
    iget-object v0, p0, Lbo/app/l1;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 75
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    const-string v2, "cards"

    if-nez v1, :cond_0

    .line 76
    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 78
    :cond_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 80
    :goto_0
    const-string p1, "cards_timestamp"

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 81
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method public a()Lcom/braze/events/FeedUpdatedEvent;
    .locals 9

    .line 1
    iget-object v0, p0, Lbo/app/l1;->b:Landroid/content/SharedPreferences;

    const-string v1, "uid"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2
    iget-object v0, p0, Lbo/app/l1;->b:Landroid/content/SharedPreferences;

    const-string v1, "cards"

    const-string v2, "[]"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lbo/app/l1;->b:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    sget-object v1, Lorg/conscrypt/io/fMC/nEChR;->gAkHHsMFM:Ljava/lang/String;

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    const/4 v6, 0x1

    move-object v3, p0

    .line 5
    invoke-direct/range {v3 .. v8}, Lbo/app/l1;->a(Lorg/json/JSONArray;Ljava/lang/String;ZJ)Lcom/braze/events/FeedUpdatedEvent;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lorg/json/JSONArray;Ljava/lang/String;)Lcom/braze/events/FeedUpdatedEvent;
    .locals 7

    const-string v0, "cardsArray"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, ""

    if-nez p2, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    move-object v1, p2

    .line 7
    :goto_0
    iget-object v2, p0, Lbo/app/l1;->b:Landroid/content/SharedPreferences;

    const-string v3, "uid"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v2, Lcom/braze/support/BrazeLogger$Priority;->I:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v4, Lbo/app/l1$c;

    invoke-direct {v4, p2}, Lbo/app/l1$c;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v6}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 10
    invoke-static {}, Lcom/braze/support/DateTimeUtils;->nowInSeconds()J

    move-result-wide v4

    .line 11
    invoke-direct {p0, p1, v4, v5}, Lbo/app/l1;->a(Lorg/json/JSONArray;J)V

    .line 12
    iget-object v0, p0, Lbo/app/l1;->c:Ljava/util/Set;

    sget-object v1, Lbo/app/l1;->f:Lbo/app/l1$b;

    invoke-virtual {v1, p1}, Lbo/app/l1$b;->a(Lorg/json/JSONArray;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 13
    iget-object v0, p0, Lbo/app/l1;->c:Ljava/util/Set;

    sget-object v2, Lbo/app/l1$a;->e:Lbo/app/l1$a;

    invoke-virtual {p0, v0, v2}, Lbo/app/l1;->a(Ljava/util/Set;Lbo/app/l1$a;)V

    .line 14
    iget-object v0, p0, Lbo/app/l1;->d:Ljava/util/Set;

    invoke-virtual {v1, p1}, Lbo/app/l1$b;->a(Lorg/json/JSONArray;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 15
    iget-object v0, p0, Lbo/app/l1;->d:Ljava/util/Set;

    sget-object v1, Lbo/app/l1$a;->d:Lbo/app/l1$a;

    invoke-virtual {p0, v0, v1}, Lbo/app/l1;->a(Ljava/util/Set;Lbo/app/l1$a;)V

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 16
    invoke-direct/range {v0 .. v5}, Lbo/app/l1;->a(Lorg/json/JSONArray;Ljava/lang/String;ZJ)Lcom/braze/events/FeedUpdatedEvent;

    move-result-object v0

    goto :goto_1

    .line 18
    :cond_1
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    new-instance v4, Lbo/app/l1$d;

    invoke-direct {v4, p2, v0}, Lbo/app/l1$d;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, v1

    move-object v1, p0

    invoke-static/range {v0 .. v6}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method public final a(Ljava/util/Set;Lbo/app/l1$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lbo/app/l1$a;",
            ")V"
        }
    .end annotation

    const-string v0, "cardIds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "property"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    invoke-virtual {p2}, Lbo/app/l1$a;->c()Ljava/lang/String;

    move-result-object p2

    .line 86
    iget-object v0, p0, Lbo/app/l1;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 87
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    invoke-interface {v0, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 90
    :cond_0
    invoke-interface {v0, p2, p1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 92
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public bridge synthetic getCachedCardsAsEvent()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lbo/app/l1;->a()Lcom/braze/events/FeedUpdatedEvent;

    move-result-object v0

    return-object v0
.end method

.method public markCardAsClicked(Ljava/lang/String;)V
    .locals 1

    const-string v0, "cardId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public markCardAsDismissed(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    sget-object v0, Lcom/google/android/datatransport/backend/cct/DL/Umhi;->jASvajDbuhqo:Ljava/lang/String;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public markCardAsViewed(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    sget-object v0, Landroidx/documentfile/provider/ee/zVjgszcQMGytd;->ipTSMRsgIUoOC:Ljava/lang/String;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lbo/app/l1;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lbo/app/l1;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object p1, p0, Lbo/app/l1;->c:Ljava/util/Set;

    sget-object v0, Lbo/app/l1$a;->e:Lbo/app/l1$a;

    invoke-virtual {p0, p1, v0}, Lbo/app/l1;->a(Ljava/util/Set;Lbo/app/l1$a;)V

    return-void
.end method

.method public markCardAsVisuallyRead(Ljava/lang/String;)V
    .locals 1

    const-string v0, "cardId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lbo/app/l1;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lbo/app/l1;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object p1, p0, Lbo/app/l1;->d:Ljava/util/Set;

    sget-object v0, Lbo/app/l1$a;->d:Lbo/app/l1$a;

    invoke-virtual {p0, p1, v0}, Lbo/app/l1;->a(Ljava/util/Set;Lbo/app/l1$a;)V

    return-void
.end method
