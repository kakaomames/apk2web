.class public final enum Lcom/mojang/minecraftpe/MainActivity$MessageConnectionStatus;
.super Ljava/lang/Enum;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mojang/minecraftpe/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "MessageConnectionStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mojang/minecraftpe/MainActivity$MessageConnectionStatus;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/mojang/minecraftpe/MainActivity$MessageConnectionStatus;

.field public static final enum CONNECTED:Lcom/mojang/minecraftpe/MainActivity$MessageConnectionStatus;

.field public static final enum DISCONNECTED:Lcom/mojang/minecraftpe/MainActivity$MessageConnectionStatus;

.field public static final enum NOTSET:Lcom/mojang/minecraftpe/MainActivity$MessageConnectionStatus;


# direct methods
.method public static synthetic $values()[Lcom/mojang/minecraftpe/MainActivity$MessageConnectionStatus;
    .locals 3

    .line 571
    sget-object v0, Lcom/mojang/minecraftpe/MainActivity$MessageConnectionStatus;->NOTSET:Lcom/mojang/minecraftpe/MainActivity$MessageConnectionStatus;

    sget-object v1, Lcom/mojang/minecraftpe/MainActivity$MessageConnectionStatus;->CONNECTED:Lcom/mojang/minecraftpe/MainActivity$MessageConnectionStatus;

    sget-object v2, Lcom/mojang/minecraftpe/MainActivity$MessageConnectionStatus;->DISCONNECTED:Lcom/mojang/minecraftpe/MainActivity$MessageConnectionStatus;

    filled-new-array {v0, v1, v2}, [Lcom/mojang/minecraftpe/MainActivity$MessageConnectionStatus;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    .line 571
    new-instance v0, Lcom/mojang/minecraftpe/MainActivity$MessageConnectionStatus;

    const-string v1, "NOTSET"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/mojang/minecraftpe/MainActivity$MessageConnectionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mojang/minecraftpe/MainActivity$MessageConnectionStatus;->NOTSET:Lcom/mojang/minecraftpe/MainActivity$MessageConnectionStatus;

    new-instance v0, Lcom/mojang/minecraftpe/MainActivity$MessageConnectionStatus;

    const-string v1, "CONNECTED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/mojang/minecraftpe/MainActivity$MessageConnectionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mojang/minecraftpe/MainActivity$MessageConnectionStatus;->CONNECTED:Lcom/mojang/minecraftpe/MainActivity$MessageConnectionStatus;

    new-instance v0, Lcom/mojang/minecraftpe/MainActivity$MessageConnectionStatus;

    const-string v1, "DISCONNECTED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/mojang/minecraftpe/MainActivity$MessageConnectionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mojang/minecraftpe/MainActivity$MessageConnectionStatus;->DISCONNECTED:Lcom/mojang/minecraftpe/MainActivity$MessageConnectionStatus;

    invoke-static {}, Lcom/mojang/minecraftpe/MainActivity$MessageConnectionStatus;->$values()[Lcom/mojang/minecraftpe/MainActivity$MessageConnectionStatus;

    move-result-object v0

    sput-object v0, Lcom/mojang/minecraftpe/MainActivity$MessageConnectionStatus;->$VALUES:[Lcom/mojang/minecraftpe/MainActivity$MessageConnectionStatus;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 571
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mojang/minecraftpe/MainActivity$MessageConnectionStatus;
    .locals 1

    .line 571
    const-class v0, Lcom/mojang/minecraftpe/MainActivity$MessageConnectionStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mojang/minecraftpe/MainActivity$MessageConnectionStatus;

    return-object p0
.end method

.method public static values()[Lcom/mojang/minecraftpe/MainActivity$MessageConnectionStatus;
    .locals 1

    .line 571
    sget-object v0, Lcom/mojang/minecraftpe/MainActivity$MessageConnectionStatus;->$VALUES:[Lcom/mojang/minecraftpe/MainActivity$MessageConnectionStatus;

    invoke-virtual {v0}, [Lcom/mojang/minecraftpe/MainActivity$MessageConnectionStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mojang/minecraftpe/MainActivity$MessageConnectionStatus;

    return-object v0
.end method
