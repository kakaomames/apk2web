.class final enum Ljp/co/neilo/snsshare/SnsShare$IntentType;
.super Ljava/lang/Enum;
.source "SnsShare.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljp/co/neilo/snsshare/SnsShare;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "IntentType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ljp/co/neilo/snsshare/SnsShare$IntentType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljp/co/neilo/snsshare/SnsShare$IntentType;

.field public static final enum ImageJpg:Ljp/co/neilo/snsshare/SnsShare$IntentType;

.field public static final enum ImagePng:Ljp/co/neilo/snsshare/SnsShare$IntentType;

.field public static final enum TextPlain:Ljp/co/neilo/snsshare/SnsShare$IntentType;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 39
    new-instance v0, Ljp/co/neilo/snsshare/SnsShare$IntentType;

    const-string v1, "TextPlain"

    const/4 v2, 0x0

    const-string v3, "text/plain"

    invoke-direct {v0, v1, v2, v3}, Ljp/co/neilo/snsshare/SnsShare$IntentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Ljp/co/neilo/snsshare/SnsShare$IntentType;->TextPlain:Ljp/co/neilo/snsshare/SnsShare$IntentType;

    .line 40
    new-instance v0, Ljp/co/neilo/snsshare/SnsShare$IntentType;

    const-string v1, "ImagePng"

    const/4 v3, 0x1

    const-string v4, "image/png"

    invoke-direct {v0, v1, v3, v4}, Ljp/co/neilo/snsshare/SnsShare$IntentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Ljp/co/neilo/snsshare/SnsShare$IntentType;->ImagePng:Ljp/co/neilo/snsshare/SnsShare$IntentType;

    .line 41
    new-instance v0, Ljp/co/neilo/snsshare/SnsShare$IntentType;

    const-string v1, "ImageJpg"

    const/4 v4, 0x2

    const-string v5, "image/jpg"

    invoke-direct {v0, v1, v4, v5}, Ljp/co/neilo/snsshare/SnsShare$IntentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Ljp/co/neilo/snsshare/SnsShare$IntentType;->ImageJpg:Ljp/co/neilo/snsshare/SnsShare$IntentType;

    const/4 v1, 0x3

    new-array v1, v1, [Ljp/co/neilo/snsshare/SnsShare$IntentType;

    .line 37
    sget-object v5, Ljp/co/neilo/snsshare/SnsShare$IntentType;->TextPlain:Ljp/co/neilo/snsshare/SnsShare$IntentType;

    aput-object v5, v1, v2

    sget-object v2, Ljp/co/neilo/snsshare/SnsShare$IntentType;->ImagePng:Ljp/co/neilo/snsshare/SnsShare$IntentType;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Ljp/co/neilo/snsshare/SnsShare$IntentType;->$VALUES:[Ljp/co/neilo/snsshare/SnsShare$IntentType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 48
    iput-object p3, p0, Ljp/co/neilo/snsshare/SnsShare$IntentType;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljp/co/neilo/snsshare/SnsShare$IntentType;
    .locals 1

    .line 37
    const-class v0, Ljp/co/neilo/snsshare/SnsShare$IntentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ljp/co/neilo/snsshare/SnsShare$IntentType;

    return-object p0
.end method

.method public static values()[Ljp/co/neilo/snsshare/SnsShare$IntentType;
    .locals 1

    .line 37
    sget-object v0, Ljp/co/neilo/snsshare/SnsShare$IntentType;->$VALUES:[Ljp/co/neilo/snsshare/SnsShare$IntentType;

    invoke-virtual {v0}, [Ljp/co/neilo/snsshare/SnsShare$IntentType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljp/co/neilo/snsshare/SnsShare$IntentType;

    return-object v0
.end method


# virtual methods
.method public GetValue()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Ljp/co/neilo/snsshare/SnsShare$IntentType;->value:Ljava/lang/String;

    return-object v0
.end method
