.class synthetic Ljp/co/neilo/inapppurchase/InAppPurchase$2;
.super Ljava/lang/Object;
.source "InAppPurchase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljp/co/neilo/inapppurchase/InAppPurchase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$jp$co$neilo$inapppurchase$InAppPurchase$ConnectState:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 109
    invoke-static {}, Ljp/co/neilo/inapppurchase/InAppPurchase$ConnectState;->values()[Ljp/co/neilo/inapppurchase/InAppPurchase$ConnectState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Ljp/co/neilo/inapppurchase/InAppPurchase$2;->$SwitchMap$jp$co$neilo$inapppurchase$InAppPurchase$ConnectState:[I

    :try_start_0
    sget-object v1, Ljp/co/neilo/inapppurchase/InAppPurchase$ConnectState;->Connected:Ljp/co/neilo/inapppurchase/InAppPurchase$ConnectState;

    invoke-virtual {v1}, Ljp/co/neilo/inapppurchase/InAppPurchase$ConnectState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Ljp/co/neilo/inapppurchase/InAppPurchase$2;->$SwitchMap$jp$co$neilo$inapppurchase$InAppPurchase$ConnectState:[I

    sget-object v1, Ljp/co/neilo/inapppurchase/InAppPurchase$ConnectState;->Connecting:Ljp/co/neilo/inapppurchase/InAppPurchase$ConnectState;

    invoke-virtual {v1}, Ljp/co/neilo/inapppurchase/InAppPurchase$ConnectState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Ljp/co/neilo/inapppurchase/InAppPurchase$2;->$SwitchMap$jp$co$neilo$inapppurchase$InAppPurchase$ConnectState:[I

    sget-object v1, Ljp/co/neilo/inapppurchase/InAppPurchase$ConnectState;->Disconnected:Ljp/co/neilo/inapppurchase/InAppPurchase$ConnectState;

    invoke-virtual {v1}, Ljp/co/neilo/inapppurchase/InAppPurchase$ConnectState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
