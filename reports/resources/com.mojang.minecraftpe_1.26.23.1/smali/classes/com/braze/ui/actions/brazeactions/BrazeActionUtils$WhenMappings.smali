.class public final synthetic Lcom/braze/ui/actions/brazeactions/BrazeActionUtils$WhenMappings;
.super Ljava/lang/Object;
.source "BrazeActionUtils.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/braze/ui/actions/brazeactions/BrazeActionUtils;
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

    invoke-static {}, Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType;->values()[Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType;->CONTAINER:Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType;

    invoke-virtual {v1}, Lcom/braze/ui/actions/brazeactions/BrazeActionParser$ActionType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sput-object v0, Lcom/braze/ui/actions/brazeactions/BrazeActionUtils$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method
