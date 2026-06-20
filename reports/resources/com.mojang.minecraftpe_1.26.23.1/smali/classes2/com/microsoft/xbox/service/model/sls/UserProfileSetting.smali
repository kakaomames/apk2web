.class public final enum Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;
.super Ljava/lang/Enum;
.source "UserProfileSetting.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

.field public static final enum AccountTier:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

.field public static final enum AppDisplayName:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

.field public static final enum AppDisplayPicRaw:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

.field public static final enum Bio:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

.field public static final enum GameDisplayName:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

.field public static final enum GameDisplayPicRaw:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

.field public static final enum Gamerscore:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

.field public static final enum Gamertag:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

.field public static final enum Location:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

.field public static final enum PreferredColor:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

.field public static final enum RealName:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

.field public static final enum TenureLevel:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

.field public static final enum Watermarks:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

.field public static final enum XboxOneRep:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 4
    new-instance v0, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    const-string v1, "RealName"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->RealName:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    new-instance v1, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    const-string v2, "GameDisplayName"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->GameDisplayName:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    new-instance v2, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    const-string v3, "AppDisplayName"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->AppDisplayName:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    new-instance v3, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    const-string v4, "AppDisplayPicRaw"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->AppDisplayPicRaw:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    new-instance v4, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    const-string v5, "Gamerscore"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->Gamerscore:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    new-instance v5, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    const-string v6, "Gamertag"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->Gamertag:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    new-instance v6, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    const-string v7, "GameDisplayPicRaw"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->GameDisplayPicRaw:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    new-instance v7, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    const-string v8, "AccountTier"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->AccountTier:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    new-instance v8, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    const-string v9, "TenureLevel"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->TenureLevel:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    new-instance v9, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    const-string v10, "XboxOneRep"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11}, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->XboxOneRep:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    new-instance v10, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    const-string v11, "PreferredColor"

    const/16 v12, 0xa

    invoke-direct {v10, v11, v12}, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->PreferredColor:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    new-instance v11, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    const-string v12, "Location"

    const/16 v13, 0xb

    invoke-direct {v11, v12, v13}, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->Location:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    new-instance v12, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    const-string v13, "Bio"

    const/16 v14, 0xc

    invoke-direct {v12, v13, v14}, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->Bio:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    new-instance v13, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    const-string v14, "Watermarks"

    const/16 v15, 0xd

    invoke-direct {v13, v14, v15}, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->Watermarks:Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    .line 3
    filled-new-array/range {v0 .. v13}, [Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    move-result-object v0

    sput-object v0, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->$VALUES:[Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

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

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;
    .locals 1

    .line 3
    const-class v0, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;
    .locals 1

    .line 3
    sget-object v0, Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->$VALUES:[Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    invoke-virtual {v0}, [Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/xbox/service/model/sls/UserProfileSetting;

    return-object v0
.end method
