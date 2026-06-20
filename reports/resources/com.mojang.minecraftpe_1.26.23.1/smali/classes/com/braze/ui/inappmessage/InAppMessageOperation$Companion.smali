.class public final Lcom/braze/ui/inappmessage/InAppMessageOperation$Companion;
.super Ljava/lang/Object;
.source "InAppMessageOperation.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/braze/ui/inappmessage/InAppMessageOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nInAppMessageOperation.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InAppMessageOperation.kt\ncom/braze/ui/inappmessage/InAppMessageOperation$Companion\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,16:1\n1275#2,2:17\n*S KotlinDebug\n*F\n+ 1 InAppMessageOperation.kt\ncom/braze/ui/inappmessage/InAppMessageOperation$Companion\n*L\n13#1:17,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0087\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0014\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0007\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/braze/ui/inappmessage/InAppMessageOperation$Companion;",
        "",
        "()V",
        "fromValue",
        "Lcom/braze/ui/inappmessage/InAppMessageOperation;",
        "value",
        "",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/braze/ui/inappmessage/InAppMessageOperation$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromValue(Ljava/lang/String;)Lcom/braze/ui/inappmessage/InAppMessageOperation;
    .locals 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 13
    invoke-static {}, Lcom/braze/ui/inappmessage/InAppMessageOperation;->values()[Lcom/braze/ui/inappmessage/InAppMessageOperation;

    move-result-object v0

    .line 17
    array-length v1, v0

    const/4 v2, 0x0

    :cond_0
    const/4 v3, 0x0

    if-ge v2, v1, :cond_2

    aget-object v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    .line 13
    invoke-virtual {v4}, Lcom/braze/ui/inappmessage/InAppMessageOperation;->name()Ljava/lang/String;

    move-result-object v5

    if-eqz p1, :cond_1

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "US"

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "this as java.lang.String).toUpperCase(locale)"

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v4

    :cond_2
    return-object v3
.end method
