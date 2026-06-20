.class public final Lcom/braze/ui/actions/brazeactions/BrazeActionUtils;
.super Ljava/lang/Object;
.source "BrazeActionUtils.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/braze/ui/actions/brazeactions/BrazeActionUtils$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBrazeActionUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BrazeActionUtils.kt\ncom/braze/ui/actions/brazeactions/BrazeActionUtils\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 Iterators.kt\nkotlin/collections/CollectionsKt__IteratorsKt\n*L\n1#1,92:1\n1#2:93\n1#2:104\n1601#3,9:94\n1849#3:103\n1850#3:105\n1610#3:106\n764#3:109\n855#3,2:110\n1547#3:112\n1618#3,3:113\n1358#3:116\n1444#3,5:117\n1741#3,3:122\n32#4,2:107\n*S KotlinDebug\n*F\n+ 1 BrazeActionUtils.kt\ncom/braze/ui/actions/brazeactions/BrazeActionUtils\n*L\n57#1:104\n57#1:94,9\n57#1:103\n57#1:105\n57#1:106\n85#1:109\n85#1:110,2\n89#1:112\n89#1:113,3\n90#1:116\n90#1:117,5\n91#1:122,3\n71#1:107,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\u001e\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005H\u0000\u001a\u0016\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00052\u0006\u0010\u0008\u001a\u00020\tH\u0000\u001a\u000c\u0010\n\u001a\u00020\u0001*\u00020\u000bH\u0000\u001a\u000c\u0010\u000c\u001a\u00020\u0001*\u00020\rH\u0000\u001a\u000c\u0010\u000c\u001a\u00020\u0001*\u00020\u000bH\u0000\u001a\u0014\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005*\u0004\u0018\u00010\u000bH\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "doAnyTypesMatch",
        "",
        "actionType",
        "Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType;",
        "uriList",
        "",
        "Landroid/net/Uri;",
        "getAllBrazeActionStepTypes",
        "json",
        "Lorg/json/JSONObject;",
        "containsAnyPushPermissionBrazeActions",
        "Lcom/braze/models/inappmessage/IInAppMessage;",
        "containsInvalidBrazeAction",
        "Lcom/braze/models/cards/Card;",
        "getAllUris",
        "android-sdk-ui_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final containsAnyPushPermissionBrazeActions(Lcom/braze/models/inappmessage/IInAppMessage;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    sget-object v0, Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType;->REQUEST_PUSH_PERMISSION:Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType;

    invoke-static {p0}, Lcom/braze/ui/actions/brazeactions/BrazeActionUtils;->getAllUris(Lcom/braze/models/inappmessage/IInAppMessage;)Ljava/util/List;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/braze/ui/actions/brazeactions/BrazeActionUtils;->doAnyTypesMatch(Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType;Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method public static final containsInvalidBrazeAction(Lcom/braze/models/cards/Card;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-virtual {p0}, Lcom/braze/models/cards/Card;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 36
    sget-object v0, Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType;->INVALID:Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType;

    invoke-virtual {p0}, Lcom/braze/models/cards/Card;->getUrl()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/braze/ui/actions/brazeactions/BrazeActionUtils;->doAnyTypesMatch(Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType;Ljava/util/List;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final containsInvalidBrazeAction(Lcom/braze/models/inappmessage/IInAppMessage;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    sget-object v0, Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType;->INVALID:Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType;

    invoke-static {p0}, Lcom/braze/ui/actions/brazeactions/BrazeActionUtils;->getAllUris(Lcom/braze/models/inappmessage/IInAppMessage;)Ljava/util/List;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/braze/ui/actions/brazeactions/BrazeActionUtils;->doAnyTypesMatch(Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType;Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method public static final doAnyTypesMatch(Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType;Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType;",
            "Ljava/util/List<",
            "+",
            "Landroid/net/Uri;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "actionType"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uriList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    check-cast p1, Ljava/lang/Iterable;

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    .line 110
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/net/Uri;

    .line 85
    sget-object v3, Lcom/braze/ui/actions/brazeactions/BrazeActionParser;->INSTANCE:Lcom/braze/ui/actions/brazeactions/BrazeActionParser;

    invoke-virtual {v3, v2}, Lcom/braze/ui/actions/brazeactions/BrazeActionParser;->isBrazeActionUri(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 111
    :cond_1
    check-cast v0, Ljava/util/List;

    .line 109
    check-cast v0, Ljava/lang/Iterable;

    .line 112
    new-instance p1, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast p1, Ljava/util/Collection;

    .line 113
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 114
    check-cast v1, Landroid/net/Uri;

    .line 89
    sget-object v2, Lcom/braze/ui/actions/brazeactions/BrazeActionParser;->INSTANCE:Lcom/braze/ui/actions/brazeactions/BrazeActionParser;

    invoke-virtual {v2, v1}, Lcom/braze/ui/actions/brazeactions/BrazeActionParser;->getBrazeActionVersionAndJson$android_sdk_ui_release(Landroid/net/Uri;)Lkotlin/Pair;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    if-nez v1, :cond_3

    :cond_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :cond_3
    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 115
    :cond_4
    check-cast p1, Ljava/util/List;

    .line 112
    check-cast p1, Ljava/lang/Iterable;

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    .line 117
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 118
    check-cast v1, Lorg/json/JSONObject;

    .line 90
    invoke-static {v1}, Lcom/braze/ui/actions/brazeactions/BrazeActionUtils;->getAllBrazeActionStepTypes(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 119
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_2

    .line 121
    :cond_5
    check-cast v0, Ljava/util/List;

    .line 116
    check-cast v0, Ljava/lang/Iterable;

    .line 122
    instance-of p1, v0, Ljava/util/Collection;

    const/4 v1, 0x0

    if-eqz p1, :cond_6

    move-object p1, v0

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_3

    .line 123
    :cond_6
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType;

    if-ne v0, p0, :cond_7

    const/4 v1, 0x1

    :cond_8
    :goto_3
    return v1
.end method

.method public static final synthetic getAllBrazeActionStepTypes(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 4

    const-string v0, "json"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 66
    new-instance v1, Lcom/braze/ui/actions/brazeactions/steps/StepData;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v1, p0, v2, v3, v2}, Lcom/braze/ui/actions/brazeactions/steps/StepData;-><init>(Lorg/json/JSONObject;Lcom/braze/enums/Channel;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 67
    sget-object p0, Lcom/braze/ui/actions/brazeactions/BrazeActionParser;->INSTANCE:Lcom/braze/ui/actions/brazeactions/BrazeActionParser;

    invoke-virtual {p0, v1}, Lcom/braze/ui/actions/brazeactions/BrazeActionParser;->getActionType$android_sdk_ui_release(Lcom/braze/ui/actions/brazeactions/steps/StepData;)Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType;

    move-result-object p0

    sget-object v2, Lcom/braze/ui/actions/brazeactions/BrazeActionUtils$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 70
    sget-object p0, Lcom/braze/ui/actions/brazeactions/steps/ContainerStep;->INSTANCE:Lcom/braze/ui/actions/brazeactions/steps/ContainerStep;

    invoke-virtual {p0, v1}, Lcom/braze/ui/actions/brazeactions/steps/ContainerStep;->getChildStepIterator$android_sdk_ui_release(Lcom/braze/ui/actions/brazeactions/steps/StepData;)Ljava/util/Iterator;

    move-result-object p0

    .line 107
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    .line 71
    invoke-static {v1}, Lcom/braze/ui/actions/brazeactions/BrazeActionUtils;->getAllBrazeActionStepTypes(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 75
    :cond_0
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0
.end method

.method public static final synthetic getAllUris(Lcom/braze/models/inappmessage/IInAppMessage;)Ljava/util/List;
    .locals 3

    if-nez p0, :cond_0

    .line 48
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 49
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 52
    invoke-interface {p0}, Lcom/braze/models/inappmessage/IInAppMessage;->getUri()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    :cond_1
    instance-of v1, p0, Lcom/braze/models/inappmessage/IInAppMessageImmersive;

    if-eqz v1, :cond_4

    .line 57
    check-cast p0, Lcom/braze/models/inappmessage/IInAppMessageImmersive;

    invoke-interface {p0}, Lcom/braze/models/inappmessage/IInAppMessageImmersive;->getMessageButtons()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    .line 94
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 103
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 102
    check-cast v2, Lcom/braze/models/inappmessage/MessageButton;

    .line 57
    invoke-virtual {v2}, Lcom/braze/models/inappmessage/MessageButton;->getUri()Landroid/net/Uri;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_0

    .line 102
    :cond_2
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 106
    :cond_3
    check-cast v1, Ljava/util/List;

    .line 94
    check-cast v1, Ljava/util/Collection;

    .line 56
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_4
    return-object v0
.end method
