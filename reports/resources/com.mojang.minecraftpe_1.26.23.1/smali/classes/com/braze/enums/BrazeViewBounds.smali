.class public final enum Lcom/braze/enums/BrazeViewBounds;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/braze/enums/BrazeViewBounds;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000e\u0008\u0087\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0017\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0005R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\u0007j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/braze/enums/BrazeViewBounds;",
        "",
        "widthDp",
        "",
        "heightDp",
        "(Ljava/lang/String;III)V",
        "getHeightDp",
        "()I",
        "getWidthDp",
        "NOTIFICATION_EXPANDED_IMAGE",
        "NOTIFICATION_INLINE_PUSH_IMAGE",
        "NOTIFICATION_LARGE_ICON",
        "NOTIFICATION_ONE_IMAGE_STORY",
        "BASE_CARD_VIEW",
        "IN_APP_MESSAGE_MODAL",
        "IN_APP_MESSAGE_SLIDEUP",
        "NO_BOUNDS",
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
.field private static final synthetic $VALUES:[Lcom/braze/enums/BrazeViewBounds;

.field public static final enum BASE_CARD_VIEW:Lcom/braze/enums/BrazeViewBounds;

.field public static final enum IN_APP_MESSAGE_MODAL:Lcom/braze/enums/BrazeViewBounds;

.field public static final enum IN_APP_MESSAGE_SLIDEUP:Lcom/braze/enums/BrazeViewBounds;

.field public static final enum NOTIFICATION_EXPANDED_IMAGE:Lcom/braze/enums/BrazeViewBounds;

.field public static final enum NOTIFICATION_INLINE_PUSH_IMAGE:Lcom/braze/enums/BrazeViewBounds;

.field public static final enum NOTIFICATION_LARGE_ICON:Lcom/braze/enums/BrazeViewBounds;

.field public static final enum NOTIFICATION_ONE_IMAGE_STORY:Lcom/braze/enums/BrazeViewBounds;

.field public static final enum NO_BOUNDS:Lcom/braze/enums/BrazeViewBounds;


# instance fields
.field private final heightDp:I

.field private final widthDp:I


# direct methods
.method private static final synthetic $values()[Lcom/braze/enums/BrazeViewBounds;
    .locals 8

    sget-object v0, Lcom/braze/enums/BrazeViewBounds;->NOTIFICATION_EXPANDED_IMAGE:Lcom/braze/enums/BrazeViewBounds;

    sget-object v1, Lcom/braze/enums/BrazeViewBounds;->NOTIFICATION_INLINE_PUSH_IMAGE:Lcom/braze/enums/BrazeViewBounds;

    sget-object v2, Lcom/braze/enums/BrazeViewBounds;->NOTIFICATION_LARGE_ICON:Lcom/braze/enums/BrazeViewBounds;

    sget-object v3, Lcom/braze/enums/BrazeViewBounds;->NOTIFICATION_ONE_IMAGE_STORY:Lcom/braze/enums/BrazeViewBounds;

    sget-object v4, Lcom/braze/enums/BrazeViewBounds;->BASE_CARD_VIEW:Lcom/braze/enums/BrazeViewBounds;

    sget-object v5, Lcom/braze/enums/BrazeViewBounds;->IN_APP_MESSAGE_MODAL:Lcom/braze/enums/BrazeViewBounds;

    sget-object v6, Lcom/braze/enums/BrazeViewBounds;->IN_APP_MESSAGE_SLIDEUP:Lcom/braze/enums/BrazeViewBounds;

    sget-object v7, Lcom/braze/enums/BrazeViewBounds;->NO_BOUNDS:Lcom/braze/enums/BrazeViewBounds;

    filled-new-array/range {v0 .. v7}, [Lcom/braze/enums/BrazeViewBounds;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/braze/enums/BrazeViewBounds;

    const-string v1, "NOTIFICATION_EXPANDED_IMAGE"

    const/4 v2, 0x0

    const/16 v3, 0x1de

    const/16 v4, 0x100

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/braze/enums/BrazeViewBounds;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/braze/enums/BrazeViewBounds;->NOTIFICATION_EXPANDED_IMAGE:Lcom/braze/enums/BrazeViewBounds;

    .line 3
    new-instance v0, Lcom/braze/enums/BrazeViewBounds;

    const/4 v1, 0x1

    const/16 v3, 0x180

    const-string v5, "NOTIFICATION_INLINE_PUSH_IMAGE"

    invoke-direct {v0, v5, v1, v3, v4}, Lcom/braze/enums/BrazeViewBounds;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/braze/enums/BrazeViewBounds;->NOTIFICATION_INLINE_PUSH_IMAGE:Lcom/braze/enums/BrazeViewBounds;

    .line 9
    new-instance v0, Lcom/braze/enums/BrazeViewBounds;

    const/4 v1, 0x2

    const/16 v3, 0x40

    const-string v5, "NOTIFICATION_LARGE_ICON"

    invoke-direct {v0, v5, v1, v3, v3}, Lcom/braze/enums/BrazeViewBounds;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/braze/enums/BrazeViewBounds;->NOTIFICATION_LARGE_ICON:Lcom/braze/enums/BrazeViewBounds;

    .line 11
    new-instance v0, Lcom/braze/enums/BrazeViewBounds;

    const/4 v1, 0x3

    const/16 v3, 0x80

    const-string v5, "NOTIFICATION_ONE_IMAGE_STORY"

    invoke-direct {v0, v5, v1, v4, v3}, Lcom/braze/enums/BrazeViewBounds;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/braze/enums/BrazeViewBounds;->NOTIFICATION_ONE_IMAGE_STORY:Lcom/braze/enums/BrazeViewBounds;

    .line 12
    new-instance v0, Lcom/braze/enums/BrazeViewBounds;

    const/4 v1, 0x4

    const/16 v3, 0x200

    const-string v4, "BASE_CARD_VIEW"

    invoke-direct {v0, v4, v1, v3, v3}, Lcom/braze/enums/BrazeViewBounds;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/braze/enums/BrazeViewBounds;->BASE_CARD_VIEW:Lcom/braze/enums/BrazeViewBounds;

    .line 21
    new-instance v0, Lcom/braze/enums/BrazeViewBounds;

    const/4 v1, 0x5

    const/16 v3, 0x244

    const-string v4, "IN_APP_MESSAGE_MODAL"

    invoke-direct {v0, v4, v1, v3, v3}, Lcom/braze/enums/BrazeViewBounds;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/braze/enums/BrazeViewBounds;->IN_APP_MESSAGE_MODAL:Lcom/braze/enums/BrazeViewBounds;

    .line 23
    new-instance v0, Lcom/braze/enums/BrazeViewBounds;

    const/4 v1, 0x6

    const/16 v3, 0x64

    const-string v4, "IN_APP_MESSAGE_SLIDEUP"

    invoke-direct {v0, v4, v1, v3, v3}, Lcom/braze/enums/BrazeViewBounds;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/braze/enums/BrazeViewBounds;->IN_APP_MESSAGE_SLIDEUP:Lcom/braze/enums/BrazeViewBounds;

    .line 30
    new-instance v0, Lcom/braze/enums/BrazeViewBounds;

    const-string v1, "NO_BOUNDS"

    const/4 v3, 0x7

    invoke-direct {v0, v1, v3, v2, v2}, Lcom/braze/enums/BrazeViewBounds;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/braze/enums/BrazeViewBounds;->NO_BOUNDS:Lcom/braze/enums/BrazeViewBounds;

    invoke-static {}, Lcom/braze/enums/BrazeViewBounds;->$values()[Lcom/braze/enums/BrazeViewBounds;

    move-result-object v0

    sput-object v0, Lcom/braze/enums/BrazeViewBounds;->$VALUES:[Lcom/braze/enums/BrazeViewBounds;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 7
    iput p3, p0, Lcom/braze/enums/BrazeViewBounds;->widthDp:I

    .line 11
    iput p4, p0, Lcom/braze/enums/BrazeViewBounds;->heightDp:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/braze/enums/BrazeViewBounds;
    .locals 1

    const-class v0, Lcom/braze/enums/BrazeViewBounds;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/braze/enums/BrazeViewBounds;

    return-object p0
.end method

.method public static values()[Lcom/braze/enums/BrazeViewBounds;
    .locals 1

    sget-object v0, Lcom/braze/enums/BrazeViewBounds;->$VALUES:[Lcom/braze/enums/BrazeViewBounds;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/braze/enums/BrazeViewBounds;

    return-object v0
.end method


# virtual methods
.method public final getHeightDp()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/braze/enums/BrazeViewBounds;->heightDp:I

    return v0
.end method

.method public final getWidthDp()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/braze/enums/BrazeViewBounds;->widthDp:I

    return v0
.end method
