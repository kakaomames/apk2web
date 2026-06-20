.class public final enum Lcom/braze/enums/Gender;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/braze/models/IPutIntoJson;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/braze/enums/Gender$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/braze/enums/Gender;",
        ">;",
        "Lcom/braze/models/IPutIntoJson<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\r\u0008\u0087\u0001\u0018\u0000 \u000f2\u0008\u0012\u0004\u0012\u00020\u00000\u00012\u0008\u0012\u0004\u0012\u00020\u00030\u0002:\u0001\u000fB\u000f\u0008\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0005J\u0008\u0010\u0008\u001a\u00020\u0003H\u0016R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000e\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/braze/enums/Gender;",
        "",
        "Lcom/braze/models/IPutIntoJson;",
        "",
        "value",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getValue",
        "()Ljava/lang/String;",
        "forJsonPut",
        "MALE",
        "FEMALE",
        "OTHER",
        "UNKNOWN",
        "NOT_APPLICABLE",
        "PREFER_NOT_TO_SAY",
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
.field private static final synthetic $VALUES:[Lcom/braze/enums/Gender;

.field public static final Companion:Lcom/braze/enums/Gender$Companion;

.field public static final enum FEMALE:Lcom/braze/enums/Gender;

.field public static final enum MALE:Lcom/braze/enums/Gender;

.field public static final enum NOT_APPLICABLE:Lcom/braze/enums/Gender;

.field public static final enum OTHER:Lcom/braze/enums/Gender;

.field public static final enum PREFER_NOT_TO_SAY:Lcom/braze/enums/Gender;

.field public static final enum UNKNOWN:Lcom/braze/enums/Gender;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/braze/enums/Gender;
    .locals 6

    sget-object v0, Lcom/braze/enums/Gender;->MALE:Lcom/braze/enums/Gender;

    sget-object v1, Lcom/braze/enums/Gender;->FEMALE:Lcom/braze/enums/Gender;

    sget-object v2, Lcom/braze/enums/Gender;->OTHER:Lcom/braze/enums/Gender;

    sget-object v3, Lcom/braze/enums/Gender;->UNKNOWN:Lcom/braze/enums/Gender;

    sget-object v4, Lcom/braze/enums/Gender;->NOT_APPLICABLE:Lcom/braze/enums/Gender;

    sget-object v5, Lcom/braze/enums/Gender;->PREFER_NOT_TO_SAY:Lcom/braze/enums/Gender;

    filled-new-array/range {v0 .. v5}, [Lcom/braze/enums/Gender;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/braze/enums/Gender;

    const/4 v1, 0x0

    const-string v2, "m"

    const-string v3, "MALE"

    invoke-direct {v0, v3, v1, v2}, Lcom/braze/enums/Gender;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/braze/enums/Gender;->MALE:Lcom/braze/enums/Gender;

    .line 2
    new-instance v0, Lcom/braze/enums/Gender;

    const/4 v1, 0x1

    const-string v2, "f"

    const-string v3, "FEMALE"

    invoke-direct {v0, v3, v1, v2}, Lcom/braze/enums/Gender;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/braze/enums/Gender;->FEMALE:Lcom/braze/enums/Gender;

    .line 3
    new-instance v0, Lcom/braze/enums/Gender;

    const/4 v1, 0x2

    const-string v2, "o"

    const-string v3, "OTHER"

    invoke-direct {v0, v3, v1, v2}, Lcom/braze/enums/Gender;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/braze/enums/Gender;->OTHER:Lcom/braze/enums/Gender;

    .line 4
    new-instance v0, Lcom/braze/enums/Gender;

    const/4 v1, 0x3

    const-string v2, "u"

    const-string v3, "UNKNOWN"

    invoke-direct {v0, v3, v1, v2}, Lcom/braze/enums/Gender;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/braze/enums/Gender;->UNKNOWN:Lcom/braze/enums/Gender;

    .line 5
    new-instance v0, Lcom/braze/enums/Gender;

    const/4 v1, 0x4

    const-string v2, "n"

    const-string v3, "NOT_APPLICABLE"

    invoke-direct {v0, v3, v1, v2}, Lcom/braze/enums/Gender;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/braze/enums/Gender;->NOT_APPLICABLE:Lcom/braze/enums/Gender;

    .line 6
    new-instance v0, Lcom/braze/enums/Gender;

    const/4 v1, 0x5

    const-string v2, "p"

    const-string v3, "PREFER_NOT_TO_SAY"

    invoke-direct {v0, v3, v1, v2}, Lcom/braze/enums/Gender;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/braze/enums/Gender;->PREFER_NOT_TO_SAY:Lcom/braze/enums/Gender;

    invoke-static {}, Lcom/braze/enums/Gender;->$values()[Lcom/braze/enums/Gender;

    move-result-object v0

    sput-object v0, Lcom/braze/enums/Gender;->$VALUES:[Lcom/braze/enums/Gender;

    new-instance v0, Lcom/braze/enums/Gender$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/braze/enums/Gender$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/braze/enums/Gender;->Companion:Lcom/braze/enums/Gender$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lcom/braze/enums/Gender;->value:Ljava/lang/String;

    return-void
.end method

.method public static final getGender(Ljava/lang/String;)Lcom/braze/enums/Gender;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/braze/enums/Gender;->Companion:Lcom/braze/enums/Gender$Companion;

    invoke-virtual {v0, p0}, Lcom/braze/enums/Gender$Companion;->getGender(Ljava/lang/String;)Lcom/braze/enums/Gender;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/braze/enums/Gender;
    .locals 1

    const-class v0, Lcom/braze/enums/Gender;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/braze/enums/Gender;

    return-object p0
.end method

.method public static values()[Lcom/braze/enums/Gender;
    .locals 1

    sget-object v0, Lcom/braze/enums/Gender;->$VALUES:[Lcom/braze/enums/Gender;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/braze/enums/Gender;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic forJsonPut()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/braze/enums/Gender;->forJsonPut()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public forJsonPut()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/braze/enums/Gender;->value:Ljava/lang/String;

    return-object v0
.end method

.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/braze/enums/Gender;->value:Ljava/lang/String;

    return-object v0
.end method
