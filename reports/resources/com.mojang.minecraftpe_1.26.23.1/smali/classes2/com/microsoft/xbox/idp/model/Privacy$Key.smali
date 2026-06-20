.class public final enum Lcom/microsoft/xbox/idp/model/Privacy$Key;
.super Ljava/lang/Enum;
.source "Privacy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/idp/model/Privacy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Key"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/xbox/idp/model/Privacy$Key;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/xbox/idp/model/Privacy$Key;

.field public static final enum CanShareIdentity:Lcom/microsoft/xbox/idp/model/Privacy$Key;

.field public static final enum CollectVoiceData:Lcom/microsoft/xbox/idp/model/Privacy$Key;

.field public static final enum CommunicateUsingTextAndVoice:Lcom/microsoft/xbox/idp/model/Privacy$Key;

.field public static final enum CommunicateUsingVideo:Lcom/microsoft/xbox/idp/model/Privacy$Key;

.field public static final enum None:Lcom/microsoft/xbox/idp/model/Privacy$Key;

.field public static final enum ShareExerciseInfo:Lcom/microsoft/xbox/idp/model/Privacy$Key;

.field public static final enum ShareFriendList:Lcom/microsoft/xbox/idp/model/Privacy$Key;

.field public static final enum ShareGameHistory:Lcom/microsoft/xbox/idp/model/Privacy$Key;

.field public static final enum ShareIdentity:Lcom/microsoft/xbox/idp/model/Privacy$Key;

.field public static final enum ShareIdentityTransitively:Lcom/microsoft/xbox/idp/model/Privacy$Key;

.field public static final enum SharePresence:Lcom/microsoft/xbox/idp/model/Privacy$Key;

.field public static final enum ShareProfile:Lcom/microsoft/xbox/idp/model/Privacy$Key;

.field public static final enum ShareRecordedGameSessions:Lcom/microsoft/xbox/idp/model/Privacy$Key;

.field public static final enum ShareVideoAndMusicStatus:Lcom/microsoft/xbox/idp/model/Privacy$Key;

.field public static final enum ShareXboxMusicActivity:Lcom/microsoft/xbox/idp/model/Privacy$Key;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 19
    new-instance v0, Lcom/microsoft/xbox/idp/model/Privacy$Key;

    const-string v1, "None"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/idp/model/Privacy$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/idp/model/Privacy$Key;->None:Lcom/microsoft/xbox/idp/model/Privacy$Key;

    .line 20
    new-instance v1, Lcom/microsoft/xbox/idp/model/Privacy$Key;

    const-string v2, "ShareFriendList"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/microsoft/xbox/idp/model/Privacy$Key;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/microsoft/xbox/idp/model/Privacy$Key;->ShareFriendList:Lcom/microsoft/xbox/idp/model/Privacy$Key;

    .line 21
    new-instance v2, Lcom/microsoft/xbox/idp/model/Privacy$Key;

    const-string v3, "ShareGameHistory"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/microsoft/xbox/idp/model/Privacy$Key;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/microsoft/xbox/idp/model/Privacy$Key;->ShareGameHistory:Lcom/microsoft/xbox/idp/model/Privacy$Key;

    .line 22
    new-instance v3, Lcom/microsoft/xbox/idp/model/Privacy$Key;

    const-string v4, "CommunicateUsingTextAndVoice"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/microsoft/xbox/idp/model/Privacy$Key;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/microsoft/xbox/idp/model/Privacy$Key;->CommunicateUsingTextAndVoice:Lcom/microsoft/xbox/idp/model/Privacy$Key;

    .line 23
    new-instance v4, Lcom/microsoft/xbox/idp/model/Privacy$Key;

    const-string v5, "SharePresence"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/microsoft/xbox/idp/model/Privacy$Key;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/microsoft/xbox/idp/model/Privacy$Key;->SharePresence:Lcom/microsoft/xbox/idp/model/Privacy$Key;

    .line 24
    new-instance v5, Lcom/microsoft/xbox/idp/model/Privacy$Key;

    const-string v6, "ShareProfile"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/microsoft/xbox/idp/model/Privacy$Key;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/microsoft/xbox/idp/model/Privacy$Key;->ShareProfile:Lcom/microsoft/xbox/idp/model/Privacy$Key;

    .line 25
    new-instance v6, Lcom/microsoft/xbox/idp/model/Privacy$Key;

    const-string v7, "ShareVideoAndMusicStatus"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/microsoft/xbox/idp/model/Privacy$Key;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/microsoft/xbox/idp/model/Privacy$Key;->ShareVideoAndMusicStatus:Lcom/microsoft/xbox/idp/model/Privacy$Key;

    .line 26
    new-instance v7, Lcom/microsoft/xbox/idp/model/Privacy$Key;

    const-string v8, "CommunicateUsingVideo"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lcom/microsoft/xbox/idp/model/Privacy$Key;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/microsoft/xbox/idp/model/Privacy$Key;->CommunicateUsingVideo:Lcom/microsoft/xbox/idp/model/Privacy$Key;

    .line 27
    new-instance v8, Lcom/microsoft/xbox/idp/model/Privacy$Key;

    const-string v9, "CollectVoiceData"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Lcom/microsoft/xbox/idp/model/Privacy$Key;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/microsoft/xbox/idp/model/Privacy$Key;->CollectVoiceData:Lcom/microsoft/xbox/idp/model/Privacy$Key;

    .line 28
    new-instance v9, Lcom/microsoft/xbox/idp/model/Privacy$Key;

    const-string v10, "ShareXboxMusicActivity"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11}, Lcom/microsoft/xbox/idp/model/Privacy$Key;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/microsoft/xbox/idp/model/Privacy$Key;->ShareXboxMusicActivity:Lcom/microsoft/xbox/idp/model/Privacy$Key;

    .line 29
    new-instance v10, Lcom/microsoft/xbox/idp/model/Privacy$Key;

    const-string v11, "ShareExerciseInfo"

    const/16 v12, 0xa

    invoke-direct {v10, v11, v12}, Lcom/microsoft/xbox/idp/model/Privacy$Key;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/microsoft/xbox/idp/model/Privacy$Key;->ShareExerciseInfo:Lcom/microsoft/xbox/idp/model/Privacy$Key;

    .line 30
    new-instance v11, Lcom/microsoft/xbox/idp/model/Privacy$Key;

    const/4 v12, 0x0

    sget-object v12, Lkotlin/streams/jdk8/Iq/XmnkEGmkvCpmts;->mybI:Ljava/lang/String;

    const/16 v13, 0xb

    invoke-direct {v11, v12, v13}, Lcom/microsoft/xbox/idp/model/Privacy$Key;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/microsoft/xbox/idp/model/Privacy$Key;->ShareIdentity:Lcom/microsoft/xbox/idp/model/Privacy$Key;

    .line 31
    new-instance v12, Lcom/microsoft/xbox/idp/model/Privacy$Key;

    const-string v13, "ShareRecordedGameSessions"

    const/16 v14, 0xc

    invoke-direct {v12, v13, v14}, Lcom/microsoft/xbox/idp/model/Privacy$Key;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/microsoft/xbox/idp/model/Privacy$Key;->ShareRecordedGameSessions:Lcom/microsoft/xbox/idp/model/Privacy$Key;

    .line 32
    new-instance v13, Lcom/microsoft/xbox/idp/model/Privacy$Key;

    const-string v14, "ShareIdentityTransitively"

    const/16 v15, 0xd

    invoke-direct {v13, v14, v15}, Lcom/microsoft/xbox/idp/model/Privacy$Key;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/microsoft/xbox/idp/model/Privacy$Key;->ShareIdentityTransitively:Lcom/microsoft/xbox/idp/model/Privacy$Key;

    .line 33
    new-instance v14, Lcom/microsoft/xbox/idp/model/Privacy$Key;

    const-string v15, "CanShareIdentity"

    move-object/from16 v16, v13

    const/16 v13, 0xe

    invoke-direct {v14, v15, v13}, Lcom/microsoft/xbox/idp/model/Privacy$Key;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/microsoft/xbox/idp/model/Privacy$Key;->CanShareIdentity:Lcom/microsoft/xbox/idp/model/Privacy$Key;

    move-object/from16 v13, v16

    .line 18
    filled-new-array/range {v0 .. v14}, [Lcom/microsoft/xbox/idp/model/Privacy$Key;

    move-result-object v0

    sput-object v0, Lcom/microsoft/xbox/idp/model/Privacy$Key;->$VALUES:[Lcom/microsoft/xbox/idp/model/Privacy$Key;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/xbox/idp/model/Privacy$Key;
    .locals 1

    .line 18
    const-class v0, Lcom/microsoft/xbox/idp/model/Privacy$Key;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/xbox/idp/model/Privacy$Key;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/xbox/idp/model/Privacy$Key;
    .locals 1

    .line 18
    sget-object v0, Lcom/microsoft/xbox/idp/model/Privacy$Key;->$VALUES:[Lcom/microsoft/xbox/idp/model/Privacy$Key;

    invoke-virtual {v0}, [Lcom/microsoft/xbox/idp/model/Privacy$Key;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/xbox/idp/model/Privacy$Key;

    return-object v0
.end method
