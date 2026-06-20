.class public final enum Lcom/microsoft/xbox/toolkit/AsyncActionStatus;
.super Ljava/lang/Enum;
.source "AsyncActionStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/xbox/toolkit/AsyncActionStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

.field public static final enum FAIL:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

.field private static final MERGE_MATRIX:[[Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

.field public static final enum NO_CHANGE:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

.field public static final enum NO_OP_FAIL:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

.field public static final enum NO_OP_SUCCESS:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

.field public static final enum SUCCESS:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 4
    new-instance v0, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    const-string v1, "SUCCESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->SUCCESS:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    new-instance v1, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    const-string v2, "FAIL"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->FAIL:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    new-instance v2, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    const/4 v3, 0x0

    sget-object v3, Landroidx/documentfile/provider/ee/zVjgszcQMGytd;->LpXbvif:Ljava/lang/String;

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->NO_CHANGE:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    new-instance v3, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    const-string v4, "NO_OP_SUCCESS"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->NO_OP_SUCCESS:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    new-instance v4, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    const-string v5, "NO_OP_FAIL"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->NO_OP_FAIL:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    .line 3
    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    move-result-object v5

    sput-object v5, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->$VALUES:[Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    .line 11
    filled-new-array {v0, v1, v0, v0, v1}, [Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    move-result-object v5

    filled-new-array {v1, v1, v1, v1, v1}, [Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    move-result-object v6

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    move-result-object v2

    filled-new-array {v0, v1, v3, v3, v4}, [Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    move-result-object v0

    filled-new-array {v1, v1, v4, v4, v4}, [Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    move-result-object v1

    filled-new-array {v5, v6, v2, v0, v1}, [[Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    move-result-object v0

    sput-object v0, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->MERGE_MATRIX:[[Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

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

.method public static getIsFail(Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)Z
    .locals 1

    .line 7
    sget-object v0, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->FAIL:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->NO_OP_FAIL:Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static varargs merge(Lcom/microsoft/xbox/toolkit/AsyncActionStatus;[Lcom/microsoft/xbox/toolkit/AsyncActionStatus;)Lcom/microsoft/xbox/toolkit/AsyncActionStatus;
    .locals 4

    .line 32
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 33
    sget-object v3, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->MERGE_MATRIX:[[Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->ordinal()I

    move-result p0

    aget-object p0, v3, p0

    invoke-virtual {v2}, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->ordinal()I

    move-result v2

    aget-object p0, p0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/xbox/toolkit/AsyncActionStatus;
    .locals 1

    .line 3
    const-class v0, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/xbox/toolkit/AsyncActionStatus;
    .locals 1

    .line 3
    sget-object v0, Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->$VALUES:[Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    invoke-virtual {v0}, [Lcom/microsoft/xbox/toolkit/AsyncActionStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/xbox/toolkit/AsyncActionStatus;

    return-object v0
.end method
