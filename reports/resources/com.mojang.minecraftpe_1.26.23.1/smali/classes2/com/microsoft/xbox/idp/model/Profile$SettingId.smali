.class public final enum Lcom/microsoft/xbox/idp/model/Profile$SettingId;
.super Ljava/lang/Enum;
.source "Profile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/idp/model/Profile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SettingId"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/xbox/idp/model/Profile$SettingId;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/xbox/idp/model/Profile$SettingId;

.field public static final enum AccountTier:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

.field public static final enum AppDisplayName:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

.field public static final enum AppDisplayPicRaw:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

.field public static final enum Background:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

.field public static final enum FirstName:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

.field public static final enum GameDisplayName:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

.field public static final enum GameDisplayPicRaw:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

.field public static final enum Gamerscore:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

.field public static final enum Gamertag:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

.field public static final enum LastName:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

.field public static final enum PreferredColor:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

.field public static final enum PublicGamerpicType:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

.field public static final enum RealName:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

.field public static final enum ShowUserAsAvatar:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

.field public static final enum TenureLevel:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

.field public static final enum TileTransparency:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

.field public static final enum Watermarks:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

.field public static final enum XboxOneRep:Lcom/microsoft/xbox/idp/model/Profile$SettingId;


# direct methods
.method static constructor <clinit>()V
    .locals 21

    .line 63
    new-instance v1, Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    move-object v0, v1

    const-string v2, "AppDisplayName"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/microsoft/xbox/idp/model/Profile$SettingId;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/microsoft/xbox/idp/model/Profile$SettingId;->AppDisplayName:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    .line 64
    new-instance v2, Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    move-object v1, v2

    const-string v3, "GameDisplayName"

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lcom/microsoft/xbox/idp/model/Profile$SettingId;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/microsoft/xbox/idp/model/Profile$SettingId;->GameDisplayName:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    .line 65
    new-instance v3, Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    move-object v2, v3

    const/4 v4, 0x0

    sget-object v4, Lorg/apache/http/impl/ioGi/maoGUKggpn;->eDPxAFcdwn:Ljava/lang/String;

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5}, Lcom/microsoft/xbox/idp/model/Profile$SettingId;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/microsoft/xbox/idp/model/Profile$SettingId;->Gamertag:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    .line 66
    new-instance v4, Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    move-object v3, v4

    const-string v5, "RealName"

    const/4 v6, 0x3

    invoke-direct {v4, v5, v6}, Lcom/microsoft/xbox/idp/model/Profile$SettingId;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/microsoft/xbox/idp/model/Profile$SettingId;->RealName:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    .line 67
    new-instance v5, Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    move-object v4, v5

    const-string v6, "FirstName"

    const/4 v7, 0x4

    invoke-direct {v5, v6, v7}, Lcom/microsoft/xbox/idp/model/Profile$SettingId;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/microsoft/xbox/idp/model/Profile$SettingId;->FirstName:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    .line 68
    new-instance v6, Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    move-object v5, v6

    const/4 v7, 0x0

    sget-object v7, Lcom/google/android/gms/common/internal/service/MT/quLs;->BMULBEZsqqglHQe:Ljava/lang/String;

    const/4 v8, 0x5

    invoke-direct {v6, v7, v8}, Lcom/microsoft/xbox/idp/model/Profile$SettingId;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/microsoft/xbox/idp/model/Profile$SettingId;->LastName:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    .line 69
    new-instance v7, Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    move-object v6, v7

    const-string v8, "AppDisplayPicRaw"

    const/4 v9, 0x6

    invoke-direct {v7, v8, v9}, Lcom/microsoft/xbox/idp/model/Profile$SettingId;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/microsoft/xbox/idp/model/Profile$SettingId;->AppDisplayPicRaw:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    .line 70
    new-instance v8, Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    move-object v7, v8

    const-string v9, "GameDisplayPicRaw"

    const/4 v10, 0x7

    invoke-direct {v8, v9, v10}, Lcom/microsoft/xbox/idp/model/Profile$SettingId;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/microsoft/xbox/idp/model/Profile$SettingId;->GameDisplayPicRaw:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    .line 71
    new-instance v9, Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    move-object v8, v9

    const-string v10, "AccountTier"

    const/16 v11, 0x8

    invoke-direct {v9, v10, v11}, Lcom/microsoft/xbox/idp/model/Profile$SettingId;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/microsoft/xbox/idp/model/Profile$SettingId;->AccountTier:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    .line 72
    new-instance v10, Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    move-object v9, v10

    const-string v11, "TenureLevel"

    const/16 v12, 0x9

    invoke-direct {v10, v11, v12}, Lcom/microsoft/xbox/idp/model/Profile$SettingId;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/microsoft/xbox/idp/model/Profile$SettingId;->TenureLevel:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    .line 73
    new-instance v11, Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    move-object v10, v11

    const-string v12, "Gamerscore"

    const/16 v13, 0xa

    invoke-direct {v11, v12, v13}, Lcom/microsoft/xbox/idp/model/Profile$SettingId;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/microsoft/xbox/idp/model/Profile$SettingId;->Gamerscore:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    .line 74
    new-instance v12, Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    move-object v11, v12

    const-string v13, "PreferredColor"

    const/16 v14, 0xb

    invoke-direct {v12, v13, v14}, Lcom/microsoft/xbox/idp/model/Profile$SettingId;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/microsoft/xbox/idp/model/Profile$SettingId;->PreferredColor:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    .line 75
    new-instance v13, Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    move-object v12, v13

    const-string v14, "Watermarks"

    const/16 v15, 0xc

    invoke-direct {v13, v14, v15}, Lcom/microsoft/xbox/idp/model/Profile$SettingId;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/microsoft/xbox/idp/model/Profile$SettingId;->Watermarks:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    .line 76
    new-instance v14, Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    move-object v13, v14

    const-string v15, "XboxOneRep"

    move-object/from16 v18, v0

    const/16 v0, 0xd

    invoke-direct {v14, v15, v0}, Lcom/microsoft/xbox/idp/model/Profile$SettingId;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/microsoft/xbox/idp/model/Profile$SettingId;->XboxOneRep:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    .line 77
    new-instance v0, Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    move-object v14, v0

    const-string v15, "Background"

    move-object/from16 v19, v1

    const/16 v1, 0xe

    invoke-direct {v0, v15, v1}, Lcom/microsoft/xbox/idp/model/Profile$SettingId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/idp/model/Profile$SettingId;->Background:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    .line 78
    new-instance v0, Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    move-object v15, v0

    const-string v1, "PublicGamerpicType"

    move-object/from16 v20, v2

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/idp/model/Profile$SettingId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/idp/model/Profile$SettingId;->PublicGamerpicType:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    .line 79
    new-instance v0, Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    move-object/from16 v16, v0

    const-string v1, "ShowUserAsAvatar"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/idp/model/Profile$SettingId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/idp/model/Profile$SettingId;->ShowUserAsAvatar:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    .line 80
    new-instance v0, Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    move-object/from16 v17, v0

    const-string v1, "TileTransparency"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/idp/model/Profile$SettingId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/idp/model/Profile$SettingId;->TileTransparency:Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    .line 62
    filled-new-array/range {v0 .. v17}, [Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    move-result-object v0

    sput-object v0, Lcom/microsoft/xbox/idp/model/Profile$SettingId;->$VALUES:[Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 62
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/xbox/idp/model/Profile$SettingId;
    .locals 1

    .line 62
    const-class v0, Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/xbox/idp/model/Profile$SettingId;
    .locals 1

    .line 62
    sget-object v0, Lcom/microsoft/xbox/idp/model/Profile$SettingId;->$VALUES:[Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    invoke-virtual {v0}, [Lcom/microsoft/xbox/idp/model/Profile$SettingId;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/xbox/idp/model/Profile$SettingId;

    return-object v0
.end method
