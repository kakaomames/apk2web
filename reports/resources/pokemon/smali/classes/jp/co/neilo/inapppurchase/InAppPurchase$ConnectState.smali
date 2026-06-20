.class final enum Ljp/co/neilo/inapppurchase/InAppPurchase$ConnectState;
.super Ljava/lang/Enum;
.source "InAppPurchase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljp/co/neilo/inapppurchase/InAppPurchase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ConnectState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ljp/co/neilo/inapppurchase/InAppPurchase$ConnectState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljp/co/neilo/inapppurchase/InAppPurchase$ConnectState;

.field public static final enum Connected:Ljp/co/neilo/inapppurchase/InAppPurchase$ConnectState;

.field public static final enum Connecting:Ljp/co/neilo/inapppurchase/InAppPurchase$ConnectState;

.field public static final enum Disconnected:Ljp/co/neilo/inapppurchase/InAppPurchase$ConnectState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 25
    new-instance v0, Ljp/co/neilo/inapppurchase/InAppPurchase$ConnectState;

    const-string v1, "Disconnected"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljp/co/neilo/inapppurchase/InAppPurchase$ConnectState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljp/co/neilo/inapppurchase/InAppPurchase$ConnectState;->Disconnected:Ljp/co/neilo/inapppurchase/InAppPurchase$ConnectState;

    .line 26
    new-instance v0, Ljp/co/neilo/inapppurchase/InAppPurchase$ConnectState;

    const-string v1, "Connecting"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Ljp/co/neilo/inapppurchase/InAppPurchase$ConnectState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljp/co/neilo/inapppurchase/InAppPurchase$ConnectState;->Connecting:Ljp/co/neilo/inapppurchase/InAppPurchase$ConnectState;

    .line 27
    new-instance v0, Ljp/co/neilo/inapppurchase/InAppPurchase$ConnectState;

    const-string v1, "Connected"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Ljp/co/neilo/inapppurchase/InAppPurchase$ConnectState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljp/co/neilo/inapppurchase/InAppPurchase$ConnectState;->Connected:Ljp/co/neilo/inapppurchase/InAppPurchase$ConnectState;

    const/4 v1, 0x3

    new-array v1, v1, [Ljp/co/neilo/inapppurchase/InAppPurchase$ConnectState;

    .line 23
    sget-object v5, Ljp/co/neilo/inapppurchase/InAppPurchase$ConnectState;->Disconnected:Ljp/co/neilo/inapppurchase/InAppPurchase$ConnectState;

    aput-object v5, v1, v2

    sget-object v2, Ljp/co/neilo/inapppurchase/InAppPurchase$ConnectState;->Connecting:Ljp/co/neilo/inapppurchase/InAppPurchase$ConnectState;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Ljp/co/neilo/inapppurchase/InAppPurchase$ConnectState;->$VALUES:[Ljp/co/neilo/inapppurchase/InAppPurchase$ConnectState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljp/co/neilo/inapppurchase/InAppPurchase$ConnectState;
    .locals 1

    .line 23
    const-class v0, Ljp/co/neilo/inapppurchase/InAppPurchase$ConnectState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ljp/co/neilo/inapppurchase/InAppPurchase$ConnectState;

    return-object p0
.end method

.method public static values()[Ljp/co/neilo/inapppurchase/InAppPurchase$ConnectState;
    .locals 1

    .line 23
    sget-object v0, Ljp/co/neilo/inapppurchase/InAppPurchase$ConnectState;->$VALUES:[Ljp/co/neilo/inapppurchase/InAppPurchase$ConnectState;

    invoke-virtual {v0}, [Ljp/co/neilo/inapppurchase/InAppPurchase$ConnectState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljp/co/neilo/inapppurchase/InAppPurchase$ConnectState;

    return-object v0
.end method
