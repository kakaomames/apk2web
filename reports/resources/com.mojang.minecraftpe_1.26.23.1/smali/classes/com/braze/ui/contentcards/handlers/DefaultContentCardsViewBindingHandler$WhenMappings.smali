.class public final synthetic Lcom/braze/ui/contentcards/handlers/DefaultContentCardsViewBindingHandler$WhenMappings;
.super Ljava/lang/Object;
.source "DefaultContentCardsViewBindingHandler.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/braze/ui/contentcards/handlers/DefaultContentCardsViewBindingHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "WhenMappings"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/braze/enums/CardType;->values()[Lcom/braze/enums/CardType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcom/braze/enums/CardType;->BANNER:Lcom/braze/enums/CardType;

    invoke-virtual {v1}, Lcom/braze/enums/CardType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lcom/braze/enums/CardType;->CAPTIONED_IMAGE:Lcom/braze/enums/CardType;

    invoke-virtual {v1}, Lcom/braze/enums/CardType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sget-object v1, Lcom/braze/enums/CardType;->SHORT_NEWS:Lcom/braze/enums/CardType;

    invoke-virtual {v1}, Lcom/braze/enums/CardType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    sget-object v1, Lcom/braze/enums/CardType;->TEXT_ANNOUNCEMENT:Lcom/braze/enums/CardType;

    invoke-virtual {v1}, Lcom/braze/enums/CardType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1

    sput-object v0, Lcom/braze/ui/contentcards/handlers/DefaultContentCardsViewBindingHandler$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method
