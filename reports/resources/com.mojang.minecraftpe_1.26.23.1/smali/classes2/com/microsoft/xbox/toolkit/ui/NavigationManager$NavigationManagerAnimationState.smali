.class final enum Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;
.super Ljava/lang/Enum;
.source "NavigationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/toolkit/ui/NavigationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "NavigationManagerAnimationState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;

.field public static final enum ANIMATING_IN:Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;

.field public static final enum ANIMATING_OUT:Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;

.field public static final enum COUNT:Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;

.field public static final enum NONE:Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 34
    new-instance v0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;->NONE:Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;

    new-instance v1, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;

    const-string v2, "ANIMATING_IN"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;->ANIMATING_IN:Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;

    new-instance v2, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;

    const-string v3, "ANIMATING_OUT"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;->ANIMATING_OUT:Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;

    new-instance v3, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;

    const-string v4, "COUNT"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;->COUNT:Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;

    .line 33
    filled-new-array {v0, v1, v2, v3}, [Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;

    move-result-object v0

    sput-object v0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;->$VALUES:[Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;
    .locals 1

    .line 33
    const-class v0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;
    .locals 1

    .line 33
    sget-object v0, Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;->$VALUES:[Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;

    invoke-virtual {v0}, [Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/xbox/toolkit/ui/NavigationManager$NavigationManagerAnimationState;

    return-object v0
.end method
