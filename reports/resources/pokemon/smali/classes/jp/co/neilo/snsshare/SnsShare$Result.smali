.class public final enum Ljp/co/neilo/snsshare/SnsShare$Result;
.super Ljava/lang/Enum;
.source "SnsShare.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljp/co/neilo/snsshare/SnsShare;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Result"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ljp/co/neilo/snsshare/SnsShare$Result;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljp/co/neilo/snsshare/SnsShare$Result;

.field public static final enum Error:Ljp/co/neilo/snsshare/SnsShare$Result;

.field public static final enum NotAvailable:Ljp/co/neilo/snsshare/SnsShare$Result;

.field public static final enum Success:Ljp/co/neilo/snsshare/SnsShare$Result;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 21
    new-instance v0, Ljp/co/neilo/snsshare/SnsShare$Result;

    const-string v1, "Success"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Ljp/co/neilo/snsshare/SnsShare$Result;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ljp/co/neilo/snsshare/SnsShare$Result;->Success:Ljp/co/neilo/snsshare/SnsShare$Result;

    .line 22
    new-instance v0, Ljp/co/neilo/snsshare/SnsShare$Result;

    const-string v1, "NotAvailable"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Ljp/co/neilo/snsshare/SnsShare$Result;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ljp/co/neilo/snsshare/SnsShare$Result;->NotAvailable:Ljp/co/neilo/snsshare/SnsShare$Result;

    .line 23
    new-instance v0, Ljp/co/neilo/snsshare/SnsShare$Result;

    const-string v1, "Error"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Ljp/co/neilo/snsshare/SnsShare$Result;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ljp/co/neilo/snsshare/SnsShare$Result;->Error:Ljp/co/neilo/snsshare/SnsShare$Result;

    const/4 v1, 0x3

    new-array v1, v1, [Ljp/co/neilo/snsshare/SnsShare$Result;

    .line 19
    sget-object v5, Ljp/co/neilo/snsshare/SnsShare$Result;->Success:Ljp/co/neilo/snsshare/SnsShare$Result;

    aput-object v5, v1, v2

    sget-object v2, Ljp/co/neilo/snsshare/SnsShare$Result;->NotAvailable:Ljp/co/neilo/snsshare/SnsShare$Result;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Ljp/co/neilo/snsshare/SnsShare$Result;->$VALUES:[Ljp/co/neilo/snsshare/SnsShare$Result;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 30
    iput p3, p0, Ljp/co/neilo/snsshare/SnsShare$Result;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljp/co/neilo/snsshare/SnsShare$Result;
    .locals 1

    .line 19
    const-class v0, Ljp/co/neilo/snsshare/SnsShare$Result;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ljp/co/neilo/snsshare/SnsShare$Result;

    return-object p0
.end method

.method public static values()[Ljp/co/neilo/snsshare/SnsShare$Result;
    .locals 1

    .line 19
    sget-object v0, Ljp/co/neilo/snsshare/SnsShare$Result;->$VALUES:[Ljp/co/neilo/snsshare/SnsShare$Result;

    invoke-virtual {v0}, [Ljp/co/neilo/snsshare/SnsShare$Result;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljp/co/neilo/snsshare/SnsShare$Result;

    return-object v0
.end method


# virtual methods
.method public GetValue()I
    .locals 1

    .line 33
    iget v0, p0, Ljp/co/neilo/snsshare/SnsShare$Result;->value:I

    return v0
.end method
