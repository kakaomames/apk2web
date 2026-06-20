.class public final enum Lcom/microsoft/xbox/toolkit/anim/AnimationFunctionType;
.super Ljava/lang/Enum;
.source "AnimationFunctionType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/xbox/toolkit/anim/AnimationFunctionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/xbox/toolkit/anim/AnimationFunctionType;

.field public static final enum BackEase:Lcom/microsoft/xbox/toolkit/anim/AnimationFunctionType;

.field public static final enum Exponential:Lcom/microsoft/xbox/toolkit/anim/AnimationFunctionType;

.field public static final enum Linear:Lcom/microsoft/xbox/toolkit/anim/AnimationFunctionType;

.field public static final enum None:Lcom/microsoft/xbox/toolkit/anim/AnimationFunctionType;

.field public static final enum Sine:Lcom/microsoft/xbox/toolkit/anim/AnimationFunctionType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 4
    new-instance v0, Lcom/microsoft/xbox/toolkit/anim/AnimationFunctionType;

    const-string v1, "None"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/toolkit/anim/AnimationFunctionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/toolkit/anim/AnimationFunctionType;->None:Lcom/microsoft/xbox/toolkit/anim/AnimationFunctionType;

    new-instance v1, Lcom/microsoft/xbox/toolkit/anim/AnimationFunctionType;

    const-string v2, "Sine"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/microsoft/xbox/toolkit/anim/AnimationFunctionType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/microsoft/xbox/toolkit/anim/AnimationFunctionType;->Sine:Lcom/microsoft/xbox/toolkit/anim/AnimationFunctionType;

    new-instance v2, Lcom/microsoft/xbox/toolkit/anim/AnimationFunctionType;

    const-string v3, "Linear"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/microsoft/xbox/toolkit/anim/AnimationFunctionType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/microsoft/xbox/toolkit/anim/AnimationFunctionType;->Linear:Lcom/microsoft/xbox/toolkit/anim/AnimationFunctionType;

    new-instance v3, Lcom/microsoft/xbox/toolkit/anim/AnimationFunctionType;

    const-string v4, "BackEase"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/microsoft/xbox/toolkit/anim/AnimationFunctionType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/microsoft/xbox/toolkit/anim/AnimationFunctionType;->BackEase:Lcom/microsoft/xbox/toolkit/anim/AnimationFunctionType;

    new-instance v4, Lcom/microsoft/xbox/toolkit/anim/AnimationFunctionType;

    const-string v5, "Exponential"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/microsoft/xbox/toolkit/anim/AnimationFunctionType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/microsoft/xbox/toolkit/anim/AnimationFunctionType;->Exponential:Lcom/microsoft/xbox/toolkit/anim/AnimationFunctionType;

    .line 3
    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/microsoft/xbox/toolkit/anim/AnimationFunctionType;

    move-result-object v0

    sput-object v0, Lcom/microsoft/xbox/toolkit/anim/AnimationFunctionType;->$VALUES:[Lcom/microsoft/xbox/toolkit/anim/AnimationFunctionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/xbox/toolkit/anim/AnimationFunctionType;
    .locals 1

    .line 3
    const-class v0, Lcom/microsoft/xbox/toolkit/anim/AnimationFunctionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/xbox/toolkit/anim/AnimationFunctionType;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/xbox/toolkit/anim/AnimationFunctionType;
    .locals 1

    .line 3
    sget-object v0, Lcom/microsoft/xbox/toolkit/anim/AnimationFunctionType;->$VALUES:[Lcom/microsoft/xbox/toolkit/anim/AnimationFunctionType;

    invoke-virtual {v0}, [Lcom/microsoft/xbox/toolkit/anim/AnimationFunctionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/xbox/toolkit/anim/AnimationFunctionType;

    return-object v0
.end method
