.class final enum Ljp/co/neilo/inapppurchase/IAPResult;
.super Ljava/lang/Enum;
.source "IAPResult.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ljp/co/neilo/inapppurchase/IAPResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljp/co/neilo/inapppurchase/IAPResult;

.field public static final enum Busy:Ljp/co/neilo/inapppurchase/IAPResult;

.field public static final enum Denied:Ljp/co/neilo/inapppurchase/IAPResult;

.field public static final enum Failed:Ljp/co/neilo/inapppurchase/IAPResult;

.field public static final enum InvalidArgument:Ljp/co/neilo/inapppurchase/IAPResult;

.field public static final enum Success:Ljp/co/neilo/inapppurchase/IAPResult;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 14
    new-instance v0, Ljp/co/neilo/inapppurchase/IAPResult;

    const-string v1, "Success"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Ljp/co/neilo/inapppurchase/IAPResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ljp/co/neilo/inapppurchase/IAPResult;->Success:Ljp/co/neilo/inapppurchase/IAPResult;

    .line 15
    new-instance v0, Ljp/co/neilo/inapppurchase/IAPResult;

    const-string v1, "Busy"

    const/4 v3, 0x1

    const/16 v4, 0x2710

    invoke-direct {v0, v1, v3, v4}, Ljp/co/neilo/inapppurchase/IAPResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ljp/co/neilo/inapppurchase/IAPResult;->Busy:Ljp/co/neilo/inapppurchase/IAPResult;

    .line 16
    new-instance v0, Ljp/co/neilo/inapppurchase/IAPResult;

    const-string v1, "Denied"

    const/4 v4, 0x2

    const/16 v5, 0x2711

    invoke-direct {v0, v1, v4, v5}, Ljp/co/neilo/inapppurchase/IAPResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ljp/co/neilo/inapppurchase/IAPResult;->Denied:Ljp/co/neilo/inapppurchase/IAPResult;

    .line 17
    new-instance v0, Ljp/co/neilo/inapppurchase/IAPResult;

    const-string v1, "InvalidArgument"

    const/4 v5, 0x3

    const/16 v6, 0x4e20

    invoke-direct {v0, v1, v5, v6}, Ljp/co/neilo/inapppurchase/IAPResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ljp/co/neilo/inapppurchase/IAPResult;->InvalidArgument:Ljp/co/neilo/inapppurchase/IAPResult;

    .line 18
    new-instance v0, Ljp/co/neilo/inapppurchase/IAPResult;

    const-string v1, "Failed"

    const/4 v6, 0x4

    const v7, 0x15f90

    invoke-direct {v0, v1, v6, v7}, Ljp/co/neilo/inapppurchase/IAPResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ljp/co/neilo/inapppurchase/IAPResult;->Failed:Ljp/co/neilo/inapppurchase/IAPResult;

    const/4 v1, 0x5

    new-array v1, v1, [Ljp/co/neilo/inapppurchase/IAPResult;

    .line 12
    sget-object v7, Ljp/co/neilo/inapppurchase/IAPResult;->Success:Ljp/co/neilo/inapppurchase/IAPResult;

    aput-object v7, v1, v2

    sget-object v2, Ljp/co/neilo/inapppurchase/IAPResult;->Busy:Ljp/co/neilo/inapppurchase/IAPResult;

    aput-object v2, v1, v3

    sget-object v2, Ljp/co/neilo/inapppurchase/IAPResult;->Denied:Ljp/co/neilo/inapppurchase/IAPResult;

    aput-object v2, v1, v4

    sget-object v2, Ljp/co/neilo/inapppurchase/IAPResult;->InvalidArgument:Ljp/co/neilo/inapppurchase/IAPResult;

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    sput-object v1, Ljp/co/neilo/inapppurchase/IAPResult;->$VALUES:[Ljp/co/neilo/inapppurchase/IAPResult;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 25
    iput p3, p0, Ljp/co/neilo/inapppurchase/IAPResult;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljp/co/neilo/inapppurchase/IAPResult;
    .locals 1

    .line 12
    const-class v0, Ljp/co/neilo/inapppurchase/IAPResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ljp/co/neilo/inapppurchase/IAPResult;

    return-object p0
.end method

.method public static values()[Ljp/co/neilo/inapppurchase/IAPResult;
    .locals 1

    .line 12
    sget-object v0, Ljp/co/neilo/inapppurchase/IAPResult;->$VALUES:[Ljp/co/neilo/inapppurchase/IAPResult;

    invoke-virtual {v0}, [Ljp/co/neilo/inapppurchase/IAPResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljp/co/neilo/inapppurchase/IAPResult;

    return-object v0
.end method


# virtual methods
.method public GetValue()I
    .locals 1

    .line 28
    iget v0, p0, Ljp/co/neilo/inapppurchase/IAPResult;->value:I

    return v0
.end method
