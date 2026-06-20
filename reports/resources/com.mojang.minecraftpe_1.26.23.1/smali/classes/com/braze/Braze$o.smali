.class final Lcom/braze/Braze$o;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/braze/Braze;->changeUser(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0008\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "",
        "a",
        "()V"
    }
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/braze/Braze;

.field final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/braze/Braze;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/braze/Braze$o;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/braze/Braze$o;->c:Lcom/braze/Braze;

    iput-object p3, p0, Lcom/braze/Braze$o;->d:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 19

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/braze/Braze$o;->b:Ljava/lang/String;

    if-eqz v1, :cond_e

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_5

    .line 5
    :cond_0
    iget-object v1, v0, Lcom/braze/Braze$o;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/braze/support/StringUtils;->getByteSize(Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, 0x3e5

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    .line 6
    sget-object v2, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    iget-object v3, v0, Lcom/braze/Braze$o;->c:Lcom/braze/Braze;

    sget-object v4, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v6, Lcom/braze/Braze$o$b;

    iget-object v1, v0, Lcom/braze/Braze$o;->b:Ljava/lang/String;

    invoke-direct {v6, v1}, Lcom/braze/Braze$o$b;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void

    .line 13
    :cond_1
    iget-object v1, v0, Lcom/braze/Braze$o;->c:Lcom/braze/Braze;

    invoke-static {v1}, Lcom/braze/Braze;->access$getBrazeUser$p(Lcom/braze/Braze;)Lcom/braze/BrazeUser;

    move-result-object v1

    const-string v2, "brazeUser"

    const/4 v3, 0x0

    if-nez v1, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v3

    :cond_2
    invoke-virtual {v1}, Lcom/braze/BrazeUser;->getUserId()Ljava/lang/String;

    move-result-object v1

    .line 14
    iget-object v4, v0, Lcom/braze/Braze$o;->b:Ljava/lang/String;

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 15
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    iget-object v6, v0, Lcom/braze/Braze$o;->c:Lcom/braze/Braze;

    sget-object v7, Lcom/braze/support/BrazeLogger$Priority;->I:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v9, Lcom/braze/Braze$o$c;

    iget-object v2, v0, Lcom/braze/Braze$o;->b:Ljava/lang/String;

    invoke-direct {v9, v2}, Lcom/braze/Braze$o$c;-><init>(Ljava/lang/String;)V

    const/4 v10, 0x2

    const/4 v11, 0x0

    const/4 v8, 0x0

    move-object v5, v1

    invoke-static/range {v5 .. v11}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 18
    iget-object v2, v0, Lcom/braze/Braze$o;->d:Ljava/lang/String;

    if-eqz v2, :cond_d

    invoke-static {v2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_4

    .line 19
    :cond_3
    iget-object v6, v0, Lcom/braze/Braze$o;->c:Lcom/braze/Braze;

    new-instance v9, Lcom/braze/Braze$o$d;

    iget-object v2, v0, Lcom/braze/Braze$o;->d:Ljava/lang/String;

    invoke-direct {v9, v2}, Lcom/braze/Braze$o$d;-><init>(Ljava/lang/String;)V

    const/4 v10, 0x3

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v5, v1

    invoke-static/range {v5 .. v11}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 20
    iget-object v1, v0, Lcom/braze/Braze$o;->c:Lcom/braze/Braze;

    invoke-virtual {v1}, Lcom/braze/Braze;->getUdm$android_sdk_base_release()Lbo/app/y2;

    move-result-object v1

    invoke-interface {v1}, Lbo/app/y2;->o()Lbo/app/u4;

    move-result-object v1

    iget-object v2, v0, Lcom/braze/Braze$o;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lbo/app/u4;->a(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 23
    :cond_4
    iget-object v4, v0, Lcom/braze/Braze$o;->c:Lcom/braze/Braze;

    invoke-virtual {v4}, Lcom/braze/Braze;->getUdm$android_sdk_base_release()Lbo/app/y2;

    move-result-object v4

    invoke-interface {v4}, Lbo/app/y2;->k()Lbo/app/a1;

    move-result-object v4

    invoke-virtual {v4}, Lbo/app/a1;->b()V

    .line 25
    const-string v4, ""

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "offlineUserStorageProvider"

    if-eqz v4, :cond_7

    .line 43
    sget-object v6, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    iget-object v7, v0, Lcom/braze/Braze$o;->c:Lcom/braze/Braze;

    sget-object v8, Lcom/braze/support/BrazeLogger$Priority;->I:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v10, Lcom/braze/Braze$o$e;

    iget-object v1, v0, Lcom/braze/Braze$o;->b:Ljava/lang/String;

    invoke-direct {v10, v1}, Lcom/braze/Braze$o$e;-><init>(Ljava/lang/String;)V

    const/4 v11, 0x2

    const/4 v12, 0x0

    const/4 v9, 0x0

    invoke-static/range {v6 .. v12}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 50
    iget-object v1, v0, Lcom/braze/Braze$o;->c:Lcom/braze/Braze;

    invoke-static {v1}, Lcom/braze/Braze;->access$getOfflineUserStorageProvider$p(Lcom/braze/Braze;)Lbo/app/r3;

    move-result-object v1

    if-nez v1, :cond_5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v3

    :cond_5
    iget-object v4, v0, Lcom/braze/Braze$o;->b:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lbo/app/r3;->a(Ljava/lang/String;)V

    .line 51
    iget-object v1, v0, Lcom/braze/Braze$o;->c:Lcom/braze/Braze;

    invoke-static {v1}, Lcom/braze/Braze;->access$getBrazeUser$p(Lcom/braze/Braze;)Lcom/braze/BrazeUser;

    move-result-object v1

    if-nez v1, :cond_6

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v3

    :cond_6
    iget-object v2, v0, Lcom/braze/Braze$o;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/braze/BrazeUser;->setUserId(Ljava/lang/String;)V

    goto :goto_0

    .line 53
    :cond_7
    sget-object v6, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    iget-object v7, v0, Lcom/braze/Braze$o;->c:Lcom/braze/Braze;

    sget-object v8, Lcom/braze/support/BrazeLogger$Priority;->I:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v10, Lcom/braze/Braze$o$f;

    iget-object v2, v0, Lcom/braze/Braze$o;->b:Ljava/lang/String;

    invoke-direct {v10, v1, v2}, Lcom/braze/Braze$o$f;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v11, 0x2

    const/4 v12, 0x0

    const/4 v9, 0x0

    invoke-static/range {v6 .. v12}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 55
    new-instance v1, Lcom/braze/events/FeedUpdatedEvent;

    .line 56
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 57
    iget-object v15, v0, Lcom/braze/Braze$o;->b:Ljava/lang/String;

    .line 59
    invoke-static {}, Lcom/braze/support/DateTimeUtils;->nowInSeconds()J

    move-result-wide v17

    const/16 v16, 0x0

    move-object v13, v1

    .line 60
    invoke-direct/range {v13 .. v18}, Lcom/braze/events/FeedUpdatedEvent;-><init>(Ljava/util/List;Ljava/lang/String;ZJ)V

    .line 66
    iget-object v2, v0, Lcom/braze/Braze$o;->c:Lcom/braze/Braze;

    invoke-virtual {v2}, Lcom/braze/Braze;->getExternalIEventMessenger$android_sdk_base_release()Lbo/app/g2;

    move-result-object v2

    const-class v4, Lcom/braze/events/FeedUpdatedEvent;

    invoke-interface {v2, v1, v4}, Lbo/app/g2;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 69
    :goto_0
    iget-object v1, v0, Lcom/braze/Braze$o;->c:Lcom/braze/Braze;

    invoke-virtual {v1}, Lcom/braze/Braze;->getUdm$android_sdk_base_release()Lbo/app/y2;

    move-result-object v1

    invoke-interface {v1}, Lbo/app/y2;->m()Lbo/app/y1;

    move-result-object v1

    invoke-interface {v1}, Lbo/app/y1;->e()V

    .line 73
    iget-object v1, v0, Lcom/braze/Braze$o;->c:Lcom/braze/Braze;

    invoke-static {v1}, Lcom/braze/Braze;->access$getOfflineUserStorageProvider$p(Lcom/braze/Braze;)Lbo/app/r3;

    move-result-object v1

    if-nez v1, :cond_8

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v3

    :cond_8
    iget-object v2, v0, Lcom/braze/Braze$o;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lbo/app/r3;->a(Ljava/lang/String;)V

    .line 77
    iget-object v1, v0, Lcom/braze/Braze$o;->c:Lcom/braze/Braze;

    invoke-virtual {v1}, Lcom/braze/Braze;->getUdm$android_sdk_base_release()Lbo/app/y2;

    move-result-object v1

    .line 80
    new-instance v2, Lbo/app/n6;

    .line 81
    iget-object v4, v0, Lcom/braze/Braze$o;->c:Lcom/braze/Braze;

    invoke-static {v4}, Lcom/braze/Braze;->access$getApplicationContext$p(Lcom/braze/Braze;)Landroid/content/Context;

    move-result-object v7

    .line 82
    iget-object v4, v0, Lcom/braze/Braze$o;->c:Lcom/braze/Braze;

    invoke-static {v4}, Lcom/braze/Braze;->access$getOfflineUserStorageProvider$p(Lcom/braze/Braze;)Lbo/app/r3;

    move-result-object v4

    if-nez v4, :cond_9

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v8, v3

    goto :goto_1

    :cond_9
    move-object v8, v4

    .line 83
    :goto_1
    iget-object v4, v0, Lcom/braze/Braze$o;->c:Lcom/braze/Braze;

    invoke-virtual {v4}, Lcom/braze/Braze;->getConfigurationProvider$android_sdk_base_release()Lcom/braze/configuration/BrazeConfigurationProvider;

    move-result-object v9

    .line 84
    iget-object v4, v0, Lcom/braze/Braze$o;->c:Lcom/braze/Braze;

    invoke-virtual {v4}, Lcom/braze/Braze;->getExternalIEventMessenger$android_sdk_base_release()Lbo/app/g2;

    move-result-object v10

    .line 85
    iget-object v4, v0, Lcom/braze/Braze$o;->c:Lcom/braze/Braze;

    invoke-virtual {v4}, Lcom/braze/Braze;->getDeviceIdReader$android_sdk_base_release()Lbo/app/d2;

    move-result-object v11

    .line 86
    iget-object v4, v0, Lcom/braze/Braze$o;->c:Lcom/braze/Braze;

    invoke-static {v4}, Lcom/braze/Braze;->access$getRegistrationDataProvider$p(Lcom/braze/Braze;)Lbo/app/j2;

    move-result-object v4

    if-nez v4, :cond_a

    const-string v4, "registrationDataProvider"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v12, v3

    goto :goto_2

    :cond_a
    move-object v12, v4

    .line 87
    :goto_2
    invoke-static {}, Lcom/braze/Braze;->access$getShouldMockNetworkRequestsAndDropEvents$cp()Z

    move-result v13

    .line 88
    invoke-static {}, Lcom/braze/Braze;->access$getAreOutboundNetworkRequestsOffline$cp()Z

    move-result v14

    move-object v6, v2

    .line 89
    invoke-direct/range {v6 .. v14}, Lbo/app/n6;-><init>(Landroid/content/Context;Lbo/app/r3;Lcom/braze/configuration/BrazeConfigurationProvider;Lbo/app/g2;Lbo/app/d2;Lbo/app/j2;ZZ)V

    .line 102
    iget-object v3, v0, Lcom/braze/Braze$o;->c:Lcom/braze/Braze;

    invoke-static {v3, v2}, Lcom/braze/Braze;->access$setUserSpecificMemberVariablesAndStartDispatch(Lcom/braze/Braze;Lbo/app/n6;)V

    .line 105
    iget-object v2, v0, Lcom/braze/Braze$o;->d:Ljava/lang/String;

    if-eqz v2, :cond_c

    invoke-static {v2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    goto :goto_3

    .line 106
    :cond_b
    sget-object v3, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    iget-object v4, v0, Lcom/braze/Braze$o;->c:Lcom/braze/Braze;

    new-instance v7, Lcom/braze/Braze$o$g;

    iget-object v2, v0, Lcom/braze/Braze$o;->d:Ljava/lang/String;

    invoke-direct {v7, v2}, Lcom/braze/Braze$o$g;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v9}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 107
    iget-object v2, v0, Lcom/braze/Braze$o;->c:Lcom/braze/Braze;

    invoke-virtual {v2}, Lcom/braze/Braze;->getUdm$android_sdk_base_release()Lbo/app/y2;

    move-result-object v2

    invoke-interface {v2}, Lbo/app/y2;->o()Lbo/app/u4;

    move-result-object v2

    iget-object v3, v0, Lcom/braze/Braze$o;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lbo/app/u4;->a(Ljava/lang/String;)V

    .line 111
    :cond_c
    :goto_3
    iget-object v2, v0, Lcom/braze/Braze$o;->c:Lcom/braze/Braze;

    invoke-virtual {v2}, Lcom/braze/Braze;->getUdm$android_sdk_base_release()Lbo/app/y2;

    move-result-object v2

    invoke-interface {v2}, Lbo/app/y2;->b()Lbo/app/m6;

    move-result-object v2

    invoke-virtual {v2}, Lbo/app/m6;->h()V

    .line 114
    iget-object v2, v0, Lcom/braze/Braze$o;->c:Lcom/braze/Braze;

    invoke-virtual {v2}, Lcom/braze/Braze;->getUdm$android_sdk_base_release()Lbo/app/y2;

    move-result-object v2

    invoke-interface {v2}, Lbo/app/y2;->m()Lbo/app/y1;

    move-result-object v2

    invoke-interface {v2}, Lbo/app/y1;->d()V

    .line 117
    iget-object v2, v0, Lcom/braze/Braze$o;->c:Lcom/braze/Braze;

    invoke-virtual {v2}, Lcom/braze/Braze;->getUdm$android_sdk_base_release()Lbo/app/y2;

    move-result-object v2

    invoke-interface {v2}, Lbo/app/y2;->m()Lbo/app/y1;

    move-result-object v2

    new-instance v10, Lbo/app/w3$a;

    const/16 v8, 0xf

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lbo/app/w3$a;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Lbo/app/v3;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v10}, Lbo/app/w3$a;->b()Lbo/app/w3$a;

    move-result-object v3

    invoke-interface {v2, v3}, Lbo/app/y1;->a(Lbo/app/w3$a;)V

    .line 119
    iget-object v2, v0, Lcom/braze/Braze$o;->c:Lcom/braze/Braze;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/braze/Braze;->requestContentCardsRefresh(Z)V

    .line 120
    invoke-interface {v1}, Lbo/app/y2;->a()V

    :cond_d
    :goto_4
    return-void

    .line 2
    :cond_e
    :goto_5
    sget-object v4, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    iget-object v5, v0, Lcom/braze/Braze$o;->c:Lcom/braze/Braze;

    sget-object v6, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    sget-object v8, Lcom/braze/Braze$o$a;->b:Lcom/braze/Braze$o$a;

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v7, 0x0

    invoke-static/range {v4 .. v10}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/braze/Braze$o;->a()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
