.class public final Lcom/braze/ui/contentcards/handlers/DefaultContentCardsViewBindingHandler;
.super Ljava/lang/Object;
.source "DefaultContentCardsViewBindingHandler.kt"

# interfaces
.implements Lcom/braze/ui/contentcards/handlers/IContentCardsViewBindingHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/braze/ui/contentcards/handlers/DefaultContentCardsViewBindingHandler$Companion;,
        Lcom/braze/ui/contentcards/handlers/DefaultContentCardsViewBindingHandler$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 \u001e2\u00020\u0001:\u0001\u001eB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0007\u001a\u00020\u0008H\u0016J\u001c\u0010\t\u001a\u0006\u0012\u0002\u0008\u00030\u00062\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u0005H\u0007J&\u0010\r\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u000b2\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000f2\u0006\u0010\u0011\u001a\u00020\u0008H\u0016J.\u0010\u0012\u001a\u00020\u00132\u0006\u0010\n\u001a\u00020\u000b2\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000f2\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0011\u001a\u00020\u0008H\u0016J.\u0010\u0016\u001a\u00020\u00152\u0006\u0010\n\u001a\u00020\u000b2\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000f2\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u0008H\u0016J\u0018\u0010\u001a\u001a\u00020\u00132\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u0008H\u0016R\u001e\u0010\u0003\u001a\u0012\u0012\u0004\u0012\u00020\u0005\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u00060\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/braze/ui/contentcards/handlers/DefaultContentCardsViewBindingHandler;",
        "Lcom/braze/ui/contentcards/handlers/IContentCardsViewBindingHandler;",
        "()V",
        "contentCardViewCache",
        "",
        "Lcom/braze/enums/CardType;",
        "Lcom/braze/ui/contentcards/view/BaseContentCardView;",
        "describeContents",
        "",
        "getContentCardsViewFromCache",
        "context",
        "Landroid/content/Context;",
        "cardType",
        "getItemViewType",
        "cards",
        "",
        "Lcom/braze/models/cards/Card;",
        "adapterPosition",
        "onBindViewHolder",
        "",
        "viewHolder",
        "Lcom/braze/ui/contentcards/view/ContentCardViewHolder;",
        "onCreateViewHolder",
        "viewGroup",
        "Landroid/view/ViewGroup;",
        "viewType",
        "writeToParcel",
        "dest",
        "Landroid/os/Parcel;",
        "flags",
        "Companion",
        "android-sdk-ui_release"
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
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/braze/ui/contentcards/handlers/DefaultContentCardsViewBindingHandler;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/braze/ui/contentcards/handlers/DefaultContentCardsViewBindingHandler$Companion;


# instance fields
.field private final contentCardViewCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/braze/enums/CardType;",
            "Lcom/braze/ui/contentcards/view/BaseContentCardView<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/braze/ui/contentcards/handlers/DefaultContentCardsViewBindingHandler$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/braze/ui/contentcards/handlers/DefaultContentCardsViewBindingHandler$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/braze/ui/contentcards/handlers/DefaultContentCardsViewBindingHandler;->Companion:Lcom/braze/ui/contentcards/handlers/DefaultContentCardsViewBindingHandler$Companion;

    .line 100
    new-instance v0, Lcom/braze/ui/contentcards/handlers/DefaultContentCardsViewBindingHandler$Companion$CREATOR$1;

    invoke-direct {v0}, Lcom/braze/ui/contentcards/handlers/DefaultContentCardsViewBindingHandler$Companion$CREATOR$1;-><init>()V

    check-cast v0, Landroid/os/Parcelable$Creator;

    sput-object v0, Lcom/braze/ui/contentcards/handlers/DefaultContentCardsViewBindingHandler;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/braze/ui/contentcards/handlers/DefaultContentCardsViewBindingHandler;->contentCardViewCache:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getContentCardsViewFromCache(Landroid/content/Context;Lcom/braze/enums/CardType;)Lcom/braze/ui/contentcards/view/BaseContentCardView;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/braze/enums/CardType;",
            ")",
            "Lcom/braze/ui/contentcards/view/BaseContentCardView<",
            "*>;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cardType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/braze/ui/contentcards/handlers/DefaultContentCardsViewBindingHandler;->contentCardViewCache:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/braze/ui/contentcards/handlers/DefaultContentCardsViewBindingHandler;->contentCardViewCache:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_5

    .line 74
    :cond_0
    sget-object v0, Lcom/braze/ui/contentcards/handlers/DefaultContentCardsViewBindingHandler$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Lcom/braze/enums/CardType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    .line 79
    new-instance v0, Lcom/braze/ui/contentcards/view/DefaultContentCardView;

    invoke-direct {v0, p1}, Lcom/braze/ui/contentcards/view/DefaultContentCardView;-><init>(Landroid/content/Context;)V

    check-cast v0, Lcom/braze/ui/contentcards/view/BaseContentCardView;

    goto :goto_0

    .line 78
    :cond_1
    new-instance v0, Lcom/braze/ui/contentcards/view/TextAnnouncementContentCardView;

    invoke-direct {v0, p1}, Lcom/braze/ui/contentcards/view/TextAnnouncementContentCardView;-><init>(Landroid/content/Context;)V

    check-cast v0, Lcom/braze/ui/contentcards/view/BaseContentCardView;

    goto :goto_0

    .line 77
    :cond_2
    new-instance v0, Lcom/braze/ui/contentcards/view/ShortNewsContentCardView;

    invoke-direct {v0, p1}, Lcom/braze/ui/contentcards/view/ShortNewsContentCardView;-><init>(Landroid/content/Context;)V

    check-cast v0, Lcom/braze/ui/contentcards/view/BaseContentCardView;

    goto :goto_0

    .line 76
    :cond_3
    new-instance v0, Lcom/braze/ui/contentcards/view/CaptionedImageContentCardView;

    invoke-direct {v0, p1}, Lcom/braze/ui/contentcards/view/CaptionedImageContentCardView;-><init>(Landroid/content/Context;)V

    check-cast v0, Lcom/braze/ui/contentcards/view/BaseContentCardView;

    goto :goto_0

    .line 75
    :cond_4
    new-instance v0, Lcom/braze/ui/contentcards/view/BannerImageContentCardView;

    invoke-direct {v0, p1}, Lcom/braze/ui/contentcards/view/BannerImageContentCardView;-><init>(Landroid/content/Context;)V

    check-cast v0, Lcom/braze/ui/contentcards/view/BaseContentCardView;

    .line 81
    :goto_0
    iget-object v1, p0, Lcom/braze/ui/contentcards/handlers/DefaultContentCardsViewBindingHandler;->contentCardViewCache:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    :cond_5
    iget-object v0, p0, Lcom/braze/ui/contentcards/handlers/DefaultContentCardsViewBindingHandler;->contentCardViewCache:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/braze/ui/contentcards/view/BaseContentCardView;

    if-nez p2, :cond_6

    new-instance p2, Lcom/braze/ui/contentcards/view/DefaultContentCardView;

    invoke-direct {p2, p1}, Lcom/braze/ui/contentcards/view/DefaultContentCardView;-><init>(Landroid/content/Context;)V

    check-cast p2, Lcom/braze/ui/contentcards/view/BaseContentCardView;

    :cond_6
    return-object p2
.end method

.method public getItemViewType(Landroid/content/Context;Ljava/util/List;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "+",
            "Lcom/braze/models/cards/Card;",
            ">;I)I"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "cards"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-ltz p3, :cond_1

    .line 58
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-lt p3, p1, :cond_0

    goto :goto_0

    .line 61
    :cond_0
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/braze/models/cards/Card;

    .line 62
    invoke-virtual {p1}, Lcom/braze/models/cards/Card;->getCardType()Lcom/braze/enums/CardType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/braze/enums/CardType;->getValue()I

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, -0x1

    return p1
.end method

.method public onBindViewHolder(Landroid/content/Context;Ljava/util/List;Lcom/braze/ui/contentcards/view/ContentCardViewHolder;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "+",
            "Lcom/braze/models/cards/Card;",
            ">;",
            "Lcom/braze/ui/contentcards/view/ContentCardViewHolder;",
            "I)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cards"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewHolder"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-ltz p4, :cond_1

    .line 42
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lt p4, v0, :cond_0

    goto :goto_0

    .line 45
    :cond_0
    invoke-interface {p2, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/braze/models/cards/Card;

    .line 48
    invoke-virtual {p2}, Lcom/braze/models/cards/Card;->getCardType()Lcom/braze/enums/CardType;

    move-result-object p4

    .line 46
    invoke-virtual {p0, p1, p4}, Lcom/braze/ui/contentcards/handlers/DefaultContentCardsViewBindingHandler;->getContentCardsViewFromCache(Landroid/content/Context;Lcom/braze/enums/CardType;)Lcom/braze/ui/contentcards/view/BaseContentCardView;

    move-result-object p1

    .line 50
    invoke-virtual {p1, p3, p2}, Lcom/braze/ui/contentcards/view/BaseContentCardView;->bindViewHolder(Lcom/braze/ui/contentcards/view/ContentCardViewHolder;Lcom/braze/models/cards/Card;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/content/Context;Ljava/util/List;Landroid/view/ViewGroup;I)Lcom/braze/ui/contentcards/view/ContentCardViewHolder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "+",
            "Lcom/braze/models/cards/Card;",
            ">;",
            "Landroid/view/ViewGroup;",
            "I)",
            "Lcom/braze/ui/contentcards/view/ContentCardViewHolder;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cards"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "viewGroup"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    sget-object p2, Lcom/braze/enums/CardType;->Companion:Lcom/braze/enums/CardType$Companion;

    invoke-virtual {p2, p4}, Lcom/braze/enums/CardType$Companion;->fromValue(I)Lcom/braze/enums/CardType;

    move-result-object p2

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/braze/ui/contentcards/handlers/DefaultContentCardsViewBindingHandler;->getContentCardsViewFromCache(Landroid/content/Context;Lcom/braze/enums/CardType;)Lcom/braze/ui/contentcards/view/BaseContentCardView;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/braze/ui/contentcards/view/BaseContentCardView;->createViewHolder(Landroid/view/ViewGroup;)Lcom/braze/ui/contentcards/view/ContentCardViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    const-string p2, "dest"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
