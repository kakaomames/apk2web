.class public final enum Lcom/microsoft/xal/logging/XalLogger$LogLevel;
.super Ljava/lang/Enum;
.source "XalLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xal/logging/XalLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LogLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/xal/logging/XalLogger$LogLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/xal/logging/XalLogger$LogLevel;

.field public static final enum Error:Lcom/microsoft/xal/logging/XalLogger$LogLevel;

.field public static final enum Important:Lcom/microsoft/xal/logging/XalLogger$LogLevel;

.field public static final enum Information:Lcom/microsoft/xal/logging/XalLogger$LogLevel;

.field public static final enum Verbose:Lcom/microsoft/xal/logging/XalLogger$LogLevel;

.field public static final enum Warning:Lcom/microsoft/xal/logging/XalLogger$LogLevel;


# instance fields
.field private final m_levelChar:C

.field private final m_val:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 16
    new-instance v0, Lcom/microsoft/xal/logging/XalLogger$LogLevel;

    const/16 v1, 0x45

    const/4 v2, 0x0

    sget-object v2, Lorg/junit/az/VQAQLthpAow;->DmMHnZujWNi:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x1    # '\u0001'

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/microsoft/xal/logging/XalLogger$LogLevel;-><init>(Ljava/lang/String;IIC)V

    sput-object v0, Lcom/microsoft/xal/logging/XalLogger$LogLevel;->Error:Lcom/microsoft/xal/logging/XalLogger$LogLevel;

    .line 17
    new-instance v1, Lcom/microsoft/xal/logging/XalLogger$LogLevel;

    const/16 v2, 0x57

    const-string v3, "Warning"

    const/4 v5, 0x2    # '\u0002'

    invoke-direct {v1, v3, v4, v5, v2}, Lcom/microsoft/xal/logging/XalLogger$LogLevel;-><init>(Ljava/lang/String;IIC)V

    sput-object v1, Lcom/microsoft/xal/logging/XalLogger$LogLevel;->Warning:Lcom/microsoft/xal/logging/XalLogger$LogLevel;

    .line 18
    new-instance v2, Lcom/microsoft/xal/logging/XalLogger$LogLevel;

    const/16 v3, 0x50

    const-string v4, "Important"

    const/4 v6, 0x3    # '\u0003'

    invoke-direct {v2, v4, v5, v6, v3}, Lcom/microsoft/xal/logging/XalLogger$LogLevel;-><init>(Ljava/lang/String;IIC)V

    sput-object v2, Lcom/microsoft/xal/logging/XalLogger$LogLevel;->Important:Lcom/microsoft/xal/logging/XalLogger$LogLevel;

    .line 19
    new-instance v3, Lcom/microsoft/xal/logging/XalLogger$LogLevel;

    const/16 v4, 0x49

    const-string v5, "Information"

    const/4 v7, 0x4    # '\u0004'

    invoke-direct {v3, v5, v6, v7, v4}, Lcom/microsoft/xal/logging/XalLogger$LogLevel;-><init>(Ljava/lang/String;IIC)V

    sput-object v3, Lcom/microsoft/xal/logging/XalLogger$LogLevel;->Information:Lcom/microsoft/xal/logging/XalLogger$LogLevel;

    .line 20
    new-instance v4, Lcom/microsoft/xal/logging/XalLogger$LogLevel;

    const/4 v5, 0x5

    const/16 v6, 0x56

    const-string v8, "Verbose"

    invoke-direct {v4, v8, v7, v5, v6}, Lcom/microsoft/xal/logging/XalLogger$LogLevel;-><init>(Ljava/lang/String;IIC)V

    sput-object v4, Lcom/microsoft/xal/logging/XalLogger$LogLevel;->Verbose:Lcom/microsoft/xal/logging/XalLogger$LogLevel;

    .line 14
    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/microsoft/xal/logging/XalLogger$LogLevel;

    move-result-object v0

    sput-object v0, Lcom/microsoft/xal/logging/XalLogger$LogLevel;->$VALUES:[Lcom/microsoft/xal/logging/XalLogger$LogLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIC)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IC)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27
    iput p3, p0, Lcom/microsoft/xal/logging/XalLogger$LogLevel;->m_val:I

    .line 28
    iput-char p4, p0, Lcom/microsoft/xal/logging/XalLogger$LogLevel;->m_levelChar:C

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/xal/logging/XalLogger$LogLevel;
    .locals 1

    .line 14
    const-class v0, Lcom/microsoft/xal/logging/XalLogger$LogLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/xal/logging/XalLogger$LogLevel;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/xal/logging/XalLogger$LogLevel;
    .locals 1

    .line 14
    sget-object v0, Lcom/microsoft/xal/logging/XalLogger$LogLevel;->$VALUES:[Lcom/microsoft/xal/logging/XalLogger$LogLevel;

    invoke-virtual {v0}, [Lcom/microsoft/xal/logging/XalLogger$LogLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/xal/logging/XalLogger$LogLevel;

    return-object v0
.end method


# virtual methods
.method public ToChar()C
    .locals 1

    .line 38
    iget-char v0, p0, Lcom/microsoft/xal/logging/XalLogger$LogLevel;->m_levelChar:C

    return v0
.end method

.method public ToInt()I
    .locals 1

    .line 33
    iget v0, p0, Lcom/microsoft/xal/logging/XalLogger$LogLevel;->m_val:I

    return v0
.end method
