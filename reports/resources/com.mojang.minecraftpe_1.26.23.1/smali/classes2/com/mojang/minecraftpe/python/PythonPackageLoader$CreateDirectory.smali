.class final enum Lcom/mojang/minecraftpe/python/PythonPackageLoader$CreateDirectory;
.super Ljava/lang/Enum;
.source "PythonPackageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mojang/minecraftpe/python/PythonPackageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "CreateDirectory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mojang/minecraftpe/python/PythonPackageLoader$CreateDirectory;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mojang/minecraftpe/python/PythonPackageLoader$CreateDirectory;

.field public static final enum Created:Lcom/mojang/minecraftpe/python/PythonPackageLoader$CreateDirectory;

.field public static final enum Exists:Lcom/mojang/minecraftpe/python/PythonPackageLoader$CreateDirectory;


# direct methods
.method private static synthetic $values()[Lcom/mojang/minecraftpe/python/PythonPackageLoader$CreateDirectory;
    .locals 2

    .line 98
    sget-object v0, Lcom/mojang/minecraftpe/python/PythonPackageLoader$CreateDirectory;->Created:Lcom/mojang/minecraftpe/python/PythonPackageLoader$CreateDirectory;

    sget-object v1, Lcom/mojang/minecraftpe/python/PythonPackageLoader$CreateDirectory;->Exists:Lcom/mojang/minecraftpe/python/PythonPackageLoader$CreateDirectory;

    filled-new-array {v0, v1}, [Lcom/mojang/minecraftpe/python/PythonPackageLoader$CreateDirectory;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 99
    new-instance v0, Lcom/mojang/minecraftpe/python/PythonPackageLoader$CreateDirectory;

    const-string v1, "Created"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/mojang/minecraftpe/python/PythonPackageLoader$CreateDirectory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mojang/minecraftpe/python/PythonPackageLoader$CreateDirectory;->Created:Lcom/mojang/minecraftpe/python/PythonPackageLoader$CreateDirectory;

    .line 100
    new-instance v0, Lcom/mojang/minecraftpe/python/PythonPackageLoader$CreateDirectory;

    const-string v1, "Exists"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/mojang/minecraftpe/python/PythonPackageLoader$CreateDirectory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mojang/minecraftpe/python/PythonPackageLoader$CreateDirectory;->Exists:Lcom/mojang/minecraftpe/python/PythonPackageLoader$CreateDirectory;

    .line 98
    invoke-static {}, Lcom/mojang/minecraftpe/python/PythonPackageLoader$CreateDirectory;->$values()[Lcom/mojang/minecraftpe/python/PythonPackageLoader$CreateDirectory;

    move-result-object v0

    sput-object v0, Lcom/mojang/minecraftpe/python/PythonPackageLoader$CreateDirectory;->$VALUES:[Lcom/mojang/minecraftpe/python/PythonPackageLoader$CreateDirectory;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 98
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mojang/minecraftpe/python/PythonPackageLoader$CreateDirectory;
    .locals 1

    .line 98
    const-class v0, Lcom/mojang/minecraftpe/python/PythonPackageLoader$CreateDirectory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mojang/minecraftpe/python/PythonPackageLoader$CreateDirectory;

    return-object p0
.end method

.method public static values()[Lcom/mojang/minecraftpe/python/PythonPackageLoader$CreateDirectory;
    .locals 1

    .line 98
    sget-object v0, Lcom/mojang/minecraftpe/python/PythonPackageLoader$CreateDirectory;->$VALUES:[Lcom/mojang/minecraftpe/python/PythonPackageLoader$CreateDirectory;

    invoke-virtual {v0}, [Lcom/mojang/minecraftpe/python/PythonPackageLoader$CreateDirectory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mojang/minecraftpe/python/PythonPackageLoader$CreateDirectory;

    return-object v0
.end method
