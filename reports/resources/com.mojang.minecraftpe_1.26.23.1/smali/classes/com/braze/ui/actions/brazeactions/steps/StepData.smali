.class public final Lcom/braze/ui/actions/brazeactions/steps/StepData;
.super Ljava/lang/Object;
.source "StepData.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/braze/ui/actions/brazeactions/steps/StepData$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0080\u0008\u0018\u0000 -2\u00020\u0001:\u0001-B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\u0018\u001a\u0004\u0018\u00010\u00192\u0006\u0010\u001a\u001a\u00020\u001bJ\t\u0010\u001c\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001d\u001a\u00020\u0005H\u00c6\u0003J\u001d\u0010\u001e\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u001f\u001a\u00020 2\u0008\u0010!\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\u0017\u0010\"\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u001a\u001a\u00020\u001bH\u0001\u00a2\u0006\u0002\u0008#J\t\u0010$\u001a\u00020\u001bH\u00d6\u0001J\u001c\u0010%\u001a\u00020 2\u0008\u0008\u0002\u0010&\u001a\u00020\u001b2\n\u0008\u0002\u0010\'\u001a\u0004\u0018\u00010(J\u000e\u0010)\u001a\u00020 2\u0006\u0010\u001a\u001a\u00020\u001bJ\u000e\u0010*\u001a\u00020 2\u0006\u0010\u001a\u001a\u00020\u001bJ\u0008\u0010+\u001a\u00020,H\u0016R!\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u00088BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u001d\u0010\u000f\u001a\u0004\u0018\u00010\u00018FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\u000c\u001a\u0004\u0008\u0010\u0010\u0011R\u001d\u0010\u0013\u001a\u0004\u0018\u00010\u00018FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010\u000c\u001a\u0004\u0008\u0014\u0010\u0011R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017\u00a8\u0006."
    }
    d2 = {
        "Lcom/braze/ui/actions/brazeactions/steps/StepData;",
        "",
        "srcJson",
        "Lorg/json/JSONObject;",
        "channel",
        "Lcom/braze/enums/Channel;",
        "(Lorg/json/JSONObject;Lcom/braze/enums/Channel;)V",
        "args",
        "",
        "getArgs",
        "()Ljava/util/List;",
        "args$delegate",
        "Lkotlin/Lazy;",
        "getChannel",
        "()Lcom/braze/enums/Channel;",
        "firstArg",
        "getFirstArg",
        "()Ljava/lang/Object;",
        "firstArg$delegate",
        "secondArg",
        "getSecondArg",
        "secondArg$delegate",
        "getSrcJson",
        "()Lorg/json/JSONObject;",
        "coerceArgToPropertiesOrNull",
        "Lcom/braze/models/outgoing/BrazeProperties;",
        "index",
        "",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "getArg",
        "getArg$android_sdk_ui_release",
        "hashCode",
        "isArgCountInBounds",
        "fixedArgCount",
        "rangedArgCount",
        "Lkotlin/ranges/IntRange;",
        "isArgOptionalJsonObject",
        "isArgString",
        "toString",
        "",
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
.field public static final ARGS:Ljava/lang/String; = "args"

.field public static final Companion:Lcom/braze/ui/actions/brazeactions/steps/StepData$Companion;


# instance fields
.field private final args$delegate:Lkotlin/Lazy;

.field private final channel:Lcom/braze/enums/Channel;

.field private final firstArg$delegate:Lkotlin/Lazy;

.field private final secondArg$delegate:Lkotlin/Lazy;

.field private final srcJson:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/braze/ui/actions/brazeactions/steps/StepData$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/braze/ui/actions/brazeactions/steps/StepData$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/braze/ui/actions/brazeactions/steps/StepData;->Companion:Lcom/braze/ui/actions/brazeactions/steps/StepData$Companion;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;Lcom/braze/enums/Channel;)V
    .locals 1

    const-string v0, "srcJson"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "channel"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/braze/ui/actions/brazeactions/steps/StepData;->srcJson:Lorg/json/JSONObject;

    .line 17
    iput-object p2, p0, Lcom/braze/ui/actions/brazeactions/steps/StepData;->channel:Lcom/braze/enums/Channel;

    .line 19
    new-instance p1, Lcom/braze/ui/actions/brazeactions/steps/StepData$args$2;

    invoke-direct {p1, p0}, Lcom/braze/ui/actions/brazeactions/steps/StepData$args$2;-><init>(Lcom/braze/ui/actions/brazeactions/steps/StepData;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/braze/ui/actions/brazeactions/steps/StepData;->args$delegate:Lkotlin/Lazy;

    .line 26
    new-instance p1, Lcom/braze/ui/actions/brazeactions/steps/StepData$firstArg$2;

    invoke-direct {p1, p0}, Lcom/braze/ui/actions/brazeactions/steps/StepData$firstArg$2;-><init>(Lcom/braze/ui/actions/brazeactions/steps/StepData;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/braze/ui/actions/brazeactions/steps/StepData;->firstArg$delegate:Lkotlin/Lazy;

    .line 27
    new-instance p1, Lcom/braze/ui/actions/brazeactions/steps/StepData$secondArg$2;

    invoke-direct {p1, p0}, Lcom/braze/ui/actions/brazeactions/steps/StepData$secondArg$2;-><init>(Lcom/braze/ui/actions/brazeactions/steps/StepData;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/braze/ui/actions/brazeactions/steps/StepData;->secondArg$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/json/JSONObject;Lcom/braze/enums/Channel;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 17
    sget-object p2, Lcom/braze/enums/Channel;->UNKNOWN:Lcom/braze/enums/Channel;

    .line 15
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/braze/ui/actions/brazeactions/steps/StepData;-><init>(Lorg/json/JSONObject;Lcom/braze/enums/Channel;)V

    return-void
.end method

.method public static final synthetic access$getArgs(Lcom/braze/ui/actions/brazeactions/steps/StepData;)Ljava/util/List;
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/braze/ui/actions/brazeactions/steps/StepData;->getArgs()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic copy$default(Lcom/braze/ui/actions/brazeactions/steps/StepData;Lorg/json/JSONObject;Lcom/braze/enums/Channel;ILjava/lang/Object;)Lcom/braze/ui/actions/brazeactions/steps/StepData;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/braze/ui/actions/brazeactions/steps/StepData;->srcJson:Lorg/json/JSONObject;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/braze/ui/actions/brazeactions/steps/StepData;->channel:Lcom/braze/enums/Channel;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/braze/ui/actions/brazeactions/steps/StepData;->copy(Lorg/json/JSONObject;Lcom/braze/enums/Channel;)Lcom/braze/ui/actions/brazeactions/steps/StepData;

    move-result-object p0

    return-object p0
.end method

.method private final getArgs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/braze/ui/actions/brazeactions/steps/StepData;->args$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public static synthetic isArgCountInBounds$default(Lcom/braze/ui/actions/brazeactions/steps/StepData;ILkotlin/ranges/IntRange;ILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/4 p1, -0x1

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 p2, 0x0

    .line 49
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/braze/ui/actions/brazeactions/steps/StepData;->isArgCountInBounds(ILkotlin/ranges/IntRange;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final coerceArgToPropertiesOrNull(I)Lcom/braze/models/outgoing/BrazeProperties;
    .locals 1

    .line 37
    invoke-direct {p0}, Lcom/braze/ui/actions/brazeactions/steps/StepData;->getArgs()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 38
    instance-of v0, p1, Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    .line 39
    new-instance v0, Lcom/braze/models/outgoing/BrazeProperties;

    check-cast p1, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lcom/braze/models/outgoing/BrazeProperties;-><init>(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 41
    move-object p1, v0

    check-cast p1, Lcom/braze/models/outgoing/BrazeProperties;

    :goto_0
    return-object v0
.end method

.method public final component1()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/braze/ui/actions/brazeactions/steps/StepData;->srcJson:Lorg/json/JSONObject;

    return-object v0
.end method

.method public final component2()Lcom/braze/enums/Channel;
    .locals 1

    iget-object v0, p0, Lcom/braze/ui/actions/brazeactions/steps/StepData;->channel:Lcom/braze/enums/Channel;

    return-object v0
.end method

.method public final copy(Lorg/json/JSONObject;Lcom/braze/enums/Channel;)Lcom/braze/ui/actions/brazeactions/steps/StepData;
    .locals 1

    const-string v0, "srcJson"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "channel"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/braze/ui/actions/brazeactions/steps/StepData;

    invoke-direct {v0, p1, p2}, Lcom/braze/ui/actions/brazeactions/steps/StepData;-><init>(Lorg/json/JSONObject;Lcom/braze/enums/Channel;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/braze/ui/actions/brazeactions/steps/StepData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/braze/ui/actions/brazeactions/steps/StepData;

    iget-object v1, p0, Lcom/braze/ui/actions/brazeactions/steps/StepData;->srcJson:Lorg/json/JSONObject;

    iget-object v3, p1, Lcom/braze/ui/actions/brazeactions/steps/StepData;->srcJson:Lorg/json/JSONObject;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/braze/ui/actions/brazeactions/steps/StepData;->channel:Lcom/braze/enums/Channel;

    iget-object p1, p1, Lcom/braze/ui/actions/brazeactions/steps/StepData;->channel:Lcom/braze/enums/Channel;

    if-eq v1, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getArg$android_sdk_ui_release(I)Ljava/lang/Object;
    .locals 1

    .line 30
    invoke-direct {p0}, Lcom/braze/ui/actions/brazeactions/steps/StepData;->getArgs()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getChannel()Lcom/braze/enums/Channel;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/braze/ui/actions/brazeactions/steps/StepData;->channel:Lcom/braze/enums/Channel;

    return-object v0
.end method

.method public final getFirstArg()Ljava/lang/Object;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/braze/ui/actions/brazeactions/steps/StepData;->firstArg$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getSecondArg()Ljava/lang/Object;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/braze/ui/actions/brazeactions/steps/StepData;->secondArg$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getSrcJson()Lorg/json/JSONObject;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/braze/ui/actions/brazeactions/steps/StepData;->srcJson:Lorg/json/JSONObject;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/braze/ui/actions/brazeactions/steps/StepData;->srcJson:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/braze/ui/actions/brazeactions/steps/StepData;->channel:Lcom/braze/enums/Channel;

    invoke-virtual {v1}, Lcom/braze/enums/Channel;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final isArgCountInBounds(ILkotlin/ranges/IntRange;)Z
    .locals 9

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    .line 54
    invoke-direct {p0}, Lcom/braze/ui/actions/brazeactions/steps/StepData;->getArgs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 55
    sget-object v2, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    new-instance p2, Lcom/braze/ui/actions/brazeactions/steps/StepData$isArgCountInBounds$1;

    invoke-direct {p2, p1, p0}, Lcom/braze/ui/actions/brazeactions/steps/StepData$isArgCountInBounds$1;-><init>(ILcom/braze/ui/actions/brazeactions/steps/StepData;)V

    move-object v6, p2

    check-cast v6, Lkotlin/jvm/functions/Function0;

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p0

    invoke-static/range {v2 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return v1

    :cond_0
    if-eqz p2, :cond_1

    .line 60
    invoke-direct {p0}, Lcom/braze/ui/actions/brazeactions/steps/StepData;->getArgs()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p2, p1}, Lkotlin/ranges/IntRange;->contains(I)Z

    move-result p1

    if-nez p1, :cond_1

    .line 61
    sget-object v2, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    new-instance p1, Lcom/braze/ui/actions/brazeactions/steps/StepData$isArgCountInBounds$2;

    invoke-direct {p1, p2, p0}, Lcom/braze/ui/actions/brazeactions/steps/StepData$isArgCountInBounds$2;-><init>(Lkotlin/ranges/IntRange;Lcom/braze/ui/actions/brazeactions/steps/StepData;)V

    move-object v6, p1

    check-cast v6, Lkotlin/jvm/functions/Function0;

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p0

    invoke-static/range {v2 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return v1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public final isArgOptionalJsonObject(I)Z
    .locals 8

    .line 81
    invoke-virtual {p0, p1}, Lcom/braze/ui/actions/brazeactions/steps/StepData;->getArg$android_sdk_ui_release(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 82
    instance-of v0, v0, Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 85
    :cond_0
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    new-instance v0, Lcom/braze/ui/actions/brazeactions/steps/StepData$isArgOptionalJsonObject$1;

    invoke-direct {v0, p1, p0}, Lcom/braze/ui/actions/brazeactions/steps/StepData$isArgOptionalJsonObject$1;-><init>(ILcom/braze/ui/actions/brazeactions/steps/StepData;)V

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function0;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public final isArgString(I)Z
    .locals 7

    .line 69
    invoke-virtual {p0, p1}, Lcom/braze/ui/actions/brazeactions/steps/StepData;->getArg$android_sdk_ui_release(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    .line 72
    :cond_0
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    new-instance v1, Lcom/braze/ui/actions/brazeactions/steps/StepData$isArgString$1;

    invoke-direct {v1, p1, p0}, Lcom/braze/ui/actions/brazeactions/steps/StepData$isArgString$1;-><init>(ILcom/braze/ui/actions/brazeactions/steps/StepData;)V

    move-object v4, v1

    check-cast v4, Lkotlin/jvm/functions/Function0;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v6}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Channel "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/braze/ui/actions/brazeactions/steps/StepData;->channel:Lcom/braze/enums/Channel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and json\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/braze/ui/actions/brazeactions/steps/StepData;->srcJson:Lorg/json/JSONObject;

    invoke-static {v1}, Lcom/braze/support/JsonUtils;->getPrettyPrintedString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
