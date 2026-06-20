.class public final enum Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;
.super Ljava/lang/Enum;
.source "PrivacySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/service/model/privacy/PrivacySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PrivacySettingId"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

.field public static final enum CanShareIdentity:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

.field public static final enum CollectVoiceData:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

.field public static final enum CommunicateUsingTextAndVoice:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

.field public static final enum CommunicateUsingVideo:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

.field public static final enum None:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

.field public static final enum ShareExerciseInfo:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

.field public static final enum ShareFriendList:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

.field public static final enum ShareGameHistory:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

.field public static final enum ShareIdentity:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

.field public static final enum ShareIdentityTransitively:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

.field public static final enum SharePresence:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

.field public static final enum ShareProfile:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

.field public static final enum ShareRecordedGameSessions:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

.field public static final enum ShareVideoAndMusicStatus:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

.field public static final enum ShareXboxMusicActivity:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 5
    new-instance v0, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

    const-string v1, "None"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;->None:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

    .line 6
    new-instance v1, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

    const-string v2, "ShareFriendList"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;->ShareFriendList:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

    .line 7
    new-instance v2, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

    const-string v3, "ShareGameHistory"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;->ShareGameHistory:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

    .line 8
    new-instance v3, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

    const-string v4, "CommunicateUsingTextAndVoice"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;->CommunicateUsingTextAndVoice:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

    .line 9
    new-instance v4, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

    const-string v5, "SharePresence"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;->SharePresence:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

    .line 10
    new-instance v5, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

    const-string v6, "ShareProfile"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;->ShareProfile:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

    .line 11
    new-instance v6, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

    const-string v7, "ShareVideoAndMusicStatus"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;->ShareVideoAndMusicStatus:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

    .line 12
    new-instance v7, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

    const-string v8, "CommunicateUsingVideo"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;->CommunicateUsingVideo:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

    .line 13
    new-instance v8, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

    const-string v9, "CollectVoiceData"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;->CollectVoiceData:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

    .line 14
    new-instance v9, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

    const-string v10, "ShareXboxMusicActivity"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11}, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;->ShareXboxMusicActivity:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

    .line 15
    new-instance v10, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

    const-string v11, "ShareExerciseInfo"

    const/16 v12, 0xa

    invoke-direct {v10, v11, v12}, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;->ShareExerciseInfo:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

    .line 16
    new-instance v11, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

    const-string v12, "ShareIdentity"

    const/16 v13, 0xb

    invoke-direct {v11, v12, v13}, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;->ShareIdentity:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

    .line 17
    new-instance v12, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

    const-string v13, "ShareRecordedGameSessions"

    const/16 v14, 0xc

    invoke-direct {v12, v13, v14}, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;->ShareRecordedGameSessions:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

    .line 18
    new-instance v13, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

    const-string v14, "ShareIdentityTransitively"

    const/16 v15, 0xd

    invoke-direct {v13, v14, v15}, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;->ShareIdentityTransitively:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

    .line 19
    new-instance v14, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

    const-string v15, "CanShareIdentity"

    move-object/from16 v16, v13

    const/16 v13, 0xe

    invoke-direct {v14, v15, v13}, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;->CanShareIdentity:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

    move-object/from16 v13, v16

    .line 4
    filled-new-array/range {v0 .. v14}, [Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

    move-result-object v0

    sput-object v0, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;->$VALUES:[Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 4
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getPrivacySettingId(Ljava/lang/String;)Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;
    .locals 5

    .line 23
    invoke-static {}, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;->values()[Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 24
    invoke-virtual {v3}, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 28
    :cond_1
    sget-object p0, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;->None:Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;
    .locals 1

    .line 4
    const-class v0, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;
    .locals 1

    .line 4
    sget-object v0, Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;->$VALUES:[Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

    invoke-virtual {v0}, [Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/xbox/service/model/privacy/PrivacySettings$PrivacySettingId;

    return-object v0
.end method
