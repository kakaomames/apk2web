.class public final synthetic Lcom/braze/ui/BrazeDeeplinkHandler$WhenMappings;
.super Ljava/lang/Object;
.source "BrazeDeeplinkHandler.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/braze/ui/BrazeDeeplinkHandler;
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

    invoke-static {}, Lcom/braze/IBrazeDeeplinkHandler$IntentFlagPurpose;->values()[Lcom/braze/IBrazeDeeplinkHandler$IntentFlagPurpose;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcom/braze/IBrazeDeeplinkHandler$IntentFlagPurpose;->NOTIFICATION_ACTION_WITH_DEEPLINK:Lcom/braze/IBrazeDeeplinkHandler$IntentFlagPurpose;

    invoke-virtual {v1}, Lcom/braze/IBrazeDeeplinkHandler$IntentFlagPurpose;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lcom/braze/IBrazeDeeplinkHandler$IntentFlagPurpose;->NOTIFICATION_PUSH_STORY_PAGE_CLICK:Lcom/braze/IBrazeDeeplinkHandler$IntentFlagPurpose;

    invoke-virtual {v1}, Lcom/braze/IBrazeDeeplinkHandler$IntentFlagPurpose;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sget-object v1, Lcom/braze/IBrazeDeeplinkHandler$IntentFlagPurpose;->URI_ACTION_OPEN_WITH_WEBVIEW_ACTIVITY:Lcom/braze/IBrazeDeeplinkHandler$IntentFlagPurpose;

    invoke-virtual {v1}, Lcom/braze/IBrazeDeeplinkHandler$IntentFlagPurpose;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    sget-object v1, Lcom/braze/IBrazeDeeplinkHandler$IntentFlagPurpose;->URI_ACTION_OPEN_WITH_ACTION_VIEW:Lcom/braze/IBrazeDeeplinkHandler$IntentFlagPurpose;

    invoke-virtual {v1}, Lcom/braze/IBrazeDeeplinkHandler$IntentFlagPurpose;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1

    sget-object v1, Lcom/braze/IBrazeDeeplinkHandler$IntentFlagPurpose;->URI_UTILS_GET_MAIN_ACTIVITY_INTENT:Lcom/braze/IBrazeDeeplinkHandler$IntentFlagPurpose;

    invoke-virtual {v1}, Lcom/braze/IBrazeDeeplinkHandler$IntentFlagPurpose;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1

    sget-object v1, Lcom/braze/IBrazeDeeplinkHandler$IntentFlagPurpose;->URI_ACTION_BACK_STACK_GET_ROOT_INTENT:Lcom/braze/IBrazeDeeplinkHandler$IntentFlagPurpose;

    invoke-virtual {v1}, Lcom/braze/IBrazeDeeplinkHandler$IntentFlagPurpose;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1

    sget-object v1, Lcom/braze/IBrazeDeeplinkHandler$IntentFlagPurpose;->URI_ACTION_BACK_STACK_ONLY_GET_TARGET_INTENT:Lcom/braze/IBrazeDeeplinkHandler$IntentFlagPurpose;

    invoke-virtual {v1}, Lcom/braze/IBrazeDeeplinkHandler$IntentFlagPurpose;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1

    sput-object v0, Lcom/braze/ui/BrazeDeeplinkHandler$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method
