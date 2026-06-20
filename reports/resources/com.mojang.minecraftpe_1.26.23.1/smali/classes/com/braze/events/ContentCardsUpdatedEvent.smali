.class public final Lcom/braze/events/ContentCardsUpdatedEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/braze/events/ContentCardsUpdatedEvent$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0010\u0008\u0007\u0018\u0000  2\u00020\u0001:\u0001 B-\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\n\u00a2\u0006\u0002\u0010\u000bJ\u0008\u0010\u001c\u001a\u00020\u0008H\u0007J\u000e\u0010\u001d\u001a\u00020\n2\u0006\u0010\u001e\u001a\u00020\u0008J\u0008\u0010\u001f\u001a\u00020\u0006H\u0016R\u0017\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00040\r8F\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0010\u001a\u00020\u00118F\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u0013R\u0014\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0014\u001a\u00020\n8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\u0015R\u0011\u0010\t\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\u0015R\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017R\u0011\u0010\u0018\u001a\u00020\u00118F\u00a2\u0006\u0006\u001a\u0004\u0008\u0019\u0010\u0013R\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u001b\u00a8\u0006!"
    }
    d2 = {
        "Lcom/braze/events/ContentCardsUpdatedEvent;",
        "",
        "contentCards",
        "",
        "Lcom/braze/models/cards/Card;",
        "userId",
        "",
        "timestampSeconds",
        "",
        "isFromOfflineStorage",
        "",
        "(Ljava/util/List;Ljava/lang/String;JZ)V",
        "allCards",
        "",
        "getAllCards",
        "()Ljava/util/List;",
        "cardCount",
        "",
        "getCardCount",
        "()I",
        "isEmpty",
        "()Z",
        "getTimestampSeconds",
        "()J",
        "unviewedCardCount",
        "getUnviewedCardCount",
        "getUserId",
        "()Ljava/lang/String;",
        "getLastUpdatedInSecondsFromEpoch",
        "isTimestampOlderThan",
        "ageSeconds",
        "toString",
        "Companion",
        "android-sdk-base_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/braze/events/ContentCardsUpdatedEvent$Companion;


# instance fields
.field private final contentCards:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/braze/models/cards/Card;",
            ">;"
        }
    .end annotation
.end field

.field private final isFromOfflineStorage:Z

.field private final timestampSeconds:J

.field private final userId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/braze/events/ContentCardsUpdatedEvent$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/braze/events/ContentCardsUpdatedEvent$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/braze/events/ContentCardsUpdatedEvent;->Companion:Lcom/braze/events/ContentCardsUpdatedEvent$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/lang/String;JZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/braze/models/cards/Card;",
            ">;",
            "Ljava/lang/String;",
            "JZ)V"
        }
    .end annotation

    const-string v0, "contentCards"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/braze/events/ContentCardsUpdatedEvent;->contentCards:Ljava/util/List;

    .line 5
    iput-object p2, p0, Lcom/braze/events/ContentCardsUpdatedEvent;->userId:Ljava/lang/String;

    .line 6
    iput-wide p3, p0, Lcom/braze/events/ContentCardsUpdatedEvent;->timestampSeconds:J

    .line 7
    iput-boolean p5, p0, Lcom/braze/events/ContentCardsUpdatedEvent;->isFromOfflineStorage:Z

    return-void
.end method

.method public static final getEmptyUpdate()Lcom/braze/events/ContentCardsUpdatedEvent;
    .locals 1

    sget-object v0, Lcom/braze/events/ContentCardsUpdatedEvent;->Companion:Lcom/braze/events/ContentCardsUpdatedEvent$Companion;

    invoke-virtual {v0}, Lcom/braze/events/ContentCardsUpdatedEvent$Companion;->getEmptyUpdate()Lcom/braze/events/ContentCardsUpdatedEvent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final getAllCards()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/braze/models/cards/Card;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/braze/events/ContentCardsUpdatedEvent;->contentCards:Ljava/util/List;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getCardCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/braze/events/ContentCardsUpdatedEvent;->contentCards:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getLastUpdatedInSecondsFromEpoch()J
    .locals 2
    .annotation runtime Lkotlin/Deprecated;
        message = "Use getTimestampSeconds() (Java) or timestampSeconds (Kotlin)"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "timestampSeconds"
            imports = {}
        .end subannotation
    .end annotation

    .line 1
    iget-wide v0, p0, Lcom/braze/events/ContentCardsUpdatedEvent;->timestampSeconds:J

    return-wide v0
.end method

.method public final getTimestampSeconds()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/braze/events/ContentCardsUpdatedEvent;->timestampSeconds:J

    return-wide v0
.end method

.method public final getUnviewedCardCount()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/braze/events/ContentCardsUpdatedEvent;->contentCards:Ljava/util/List;

    .line 36
    instance-of v1, v0, Ljava/util/Collection;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 38
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/braze/models/cards/Card;

    .line 39
    invoke-virtual {v1}, Lcom/braze/models/cards/Card;->getViewed()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1}, Lcom/braze/models/cards/Card;->isControl()Z

    move-result v1

    if-nez v1, :cond_1

    add-int/lit8 v2, v2, 0x1

    if-gez v2, :cond_1

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwCountOverflow()V

    goto :goto_0

    :cond_2
    :goto_1
    return v2
.end method

.method public final getUserId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/braze/events/ContentCardsUpdatedEvent;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public final isEmpty()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/braze/events/ContentCardsUpdatedEvent;->contentCards:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final isFromOfflineStorage()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/braze/events/ContentCardsUpdatedEvent;->isFromOfflineStorage:Z

    return v0
.end method

.method public final isTimestampOlderThan(J)Z
    .locals 3

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v1, p0, Lcom/braze/events/ContentCardsUpdatedEvent;->timestampSeconds:J

    add-long/2addr v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    cmp-long p1, p1, v0

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ContentCardsUpdatedEvent{userId=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/braze/events/ContentCardsUpdatedEvent;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', timestampSeconds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/braze/events/ContentCardsUpdatedEvent;->timestampSeconds:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isFromOfflineStorage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-boolean v1, p0, Lcom/braze/events/ContentCardsUpdatedEvent;->isFromOfflineStorage:Z

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", card count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Lcom/braze/events/ContentCardsUpdatedEvent;->getCardCount()I

    move-result v1

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
