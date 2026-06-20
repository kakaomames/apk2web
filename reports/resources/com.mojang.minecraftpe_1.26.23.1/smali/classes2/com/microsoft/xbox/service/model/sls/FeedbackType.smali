.class public final enum Lcom/microsoft/xbox/service/model/sls/FeedbackType;
.super Ljava/lang/Enum;
.source "FeedbackType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/xbox/service/model/sls/FeedbackType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/xbox/service/model/sls/FeedbackType;

.field public static final enum Comms911:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

.field public static final enum CommsAbusiveVoice:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

.field public static final enum CommsInappropriateVideo:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

.field public static final enum CommsMuted:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

.field public static final enum CommsPhishing:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

.field public static final enum CommsPictureMessage:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

.field public static final enum CommsSpam:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

.field public static final enum CommsTextMessage:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

.field public static final enum CommsUnmuted:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

.field public static final enum CommsVoiceMessage:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

.field public static final enum FairPlayBlock:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

.field public static final enum FairPlayCheater:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

.field public static final enum FairPlayConsoleBanRequest:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

.field public static final enum FairPlayKicked:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

.field public static final enum FairPlayKillsTeammates:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

.field public static final enum FairPlayQuitter:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

.field public static final enum FairPlayTampering:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

.field public static final enum FairPlayUnblock:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

.field public static final enum FairPlayUserBanRequest:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

.field public static final enum FairplayIdler:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

.field public static final enum FairplayUnsporting:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

.field public static final enum InternalAmbassadorScoreUpdated:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

.field public static final enum InternalEnforcementDataUpdated:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

.field public static final enum InternalReputationReset:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

.field public static final enum InternalReputationUpdated:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

.field public static final enum PositiveHelpfulPlayer:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

.field public static final enum PositiveHighQualityUGC:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

.field public static final enum PositiveSkilledPlayer:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

.field public static final enum Unknown:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

.field public static final enum UserContentActivityFeed:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

.field public static final enum UserContentGameDVR:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

.field public static final enum UserContentGamerpic:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

.field public static final enum UserContentGamertag:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

.field public static final enum UserContentInappropriateUGC:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

.field public static final enum UserContentPersonalInfo:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

.field public static final enum UserContentRealName:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

.field public static final enum UserContentReviewRequest:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

.field public static final enum UserContentScreenshot:Lcom/microsoft/xbox/service/model/sls/FeedbackType;


# direct methods
.method static constructor <clinit>()V
    .locals 41

    .line 9
    new-instance v1, Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    move-object v0, v1

    const-string v2, "Unknown"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/microsoft/xbox/service/model/sls/FeedbackType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/microsoft/xbox/service/model/sls/FeedbackType;->Unknown:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    .line 10
    new-instance v2, Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    move-object v1, v2

    const-string v3, "FairPlayKillsTeammates"

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lcom/microsoft/xbox/service/model/sls/FeedbackType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/microsoft/xbox/service/model/sls/FeedbackType;->FairPlayKillsTeammates:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    .line 11
    new-instance v3, Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    move-object v2, v3

    const-string v4, "FairPlayCheater"

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5}, Lcom/microsoft/xbox/service/model/sls/FeedbackType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/microsoft/xbox/service/model/sls/FeedbackType;->FairPlayCheater:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    .line 12
    new-instance v4, Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    move-object v3, v4

    const-string v5, "FairPlayTampering"

    const/4 v6, 0x3

    invoke-direct {v4, v5, v6}, Lcom/microsoft/xbox/service/model/sls/FeedbackType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/microsoft/xbox/service/model/sls/FeedbackType;->FairPlayTampering:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    .line 13
    new-instance v5, Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    move-object v4, v5

    const-string v6, "FairPlayQuitter"

    const/4 v7, 0x4

    invoke-direct {v5, v6, v7}, Lcom/microsoft/xbox/service/model/sls/FeedbackType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/microsoft/xbox/service/model/sls/FeedbackType;->FairPlayQuitter:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    .line 14
    new-instance v6, Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    move-object v5, v6

    const-string v7, "FairPlayKicked"

    const/4 v8, 0x5

    invoke-direct {v6, v7, v8}, Lcom/microsoft/xbox/service/model/sls/FeedbackType;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/microsoft/xbox/service/model/sls/FeedbackType;->FairPlayKicked:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    .line 15
    new-instance v7, Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    move-object v6, v7

    const-string v8, "FairPlayBlock"

    const/4 v9, 0x6

    invoke-direct {v7, v8, v9}, Lcom/microsoft/xbox/service/model/sls/FeedbackType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/microsoft/xbox/service/model/sls/FeedbackType;->FairPlayBlock:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    .line 16
    new-instance v8, Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    move-object v7, v8

    const-string v9, "FairPlayUnblock"

    const/4 v10, 0x7

    invoke-direct {v8, v9, v10}, Lcom/microsoft/xbox/service/model/sls/FeedbackType;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/microsoft/xbox/service/model/sls/FeedbackType;->FairPlayUnblock:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    .line 17
    new-instance v9, Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    move-object v8, v9

    const-string v10, "FairPlayUserBanRequest"

    const/16 v11, 0x8

    invoke-direct {v9, v10, v11}, Lcom/microsoft/xbox/service/model/sls/FeedbackType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/microsoft/xbox/service/model/sls/FeedbackType;->FairPlayUserBanRequest:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    .line 18
    new-instance v10, Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    move-object v9, v10

    const-string v11, "FairPlayConsoleBanRequest"

    const/16 v12, 0x9

    invoke-direct {v10, v11, v12}, Lcom/microsoft/xbox/service/model/sls/FeedbackType;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/microsoft/xbox/service/model/sls/FeedbackType;->FairPlayConsoleBanRequest:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    .line 19
    new-instance v11, Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    move-object v10, v11

    const-string v12, "FairplayUnsporting"

    const/16 v13, 0xa

    invoke-direct {v11, v12, v13}, Lcom/microsoft/xbox/service/model/sls/FeedbackType;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/microsoft/xbox/service/model/sls/FeedbackType;->FairplayUnsporting:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    .line 20
    new-instance v12, Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    move-object v11, v12

    const-string v13, "FairplayIdler"

    const/16 v14, 0xb

    invoke-direct {v12, v13, v14}, Lcom/microsoft/xbox/service/model/sls/FeedbackType;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/microsoft/xbox/service/model/sls/FeedbackType;->FairplayIdler:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    .line 21
    new-instance v13, Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    move-object v12, v13

    const-string v14, "CommsTextMessage"

    const/16 v15, 0xc

    invoke-direct {v13, v14, v15}, Lcom/microsoft/xbox/service/model/sls/FeedbackType;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/microsoft/xbox/service/model/sls/FeedbackType;->CommsTextMessage:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    .line 22
    new-instance v14, Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    move-object v13, v14

    const-string v15, "CommsVoiceMessage"

    move-object/from16 v38, v0

    const/16 v0, 0xd

    invoke-direct {v14, v15, v0}, Lcom/microsoft/xbox/service/model/sls/FeedbackType;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/microsoft/xbox/service/model/sls/FeedbackType;->CommsVoiceMessage:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    .line 23
    new-instance v0, Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    move-object v14, v0

    const-string v15, "CommsPictureMessage"

    move-object/from16 v39, v1

    const/16 v1, 0xe

    invoke-direct {v0, v15, v1}, Lcom/microsoft/xbox/service/model/sls/FeedbackType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/service/model/sls/FeedbackType;->CommsPictureMessage:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    .line 24
    new-instance v0, Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    move-object v15, v0

    const-string v1, "CommsInappropriateVideo"

    move-object/from16 v40, v2

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/service/model/sls/FeedbackType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/service/model/sls/FeedbackType;->CommsInappropriateVideo:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    .line 25
    new-instance v0, Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    move-object/from16 v16, v0

    const-string v1, "CommsAbusiveVoice"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/service/model/sls/FeedbackType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/service/model/sls/FeedbackType;->CommsAbusiveVoice:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    .line 26
    new-instance v0, Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    move-object/from16 v17, v0

    const-string v1, "CommsSpam"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/service/model/sls/FeedbackType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/service/model/sls/FeedbackType;->CommsSpam:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    .line 27
    new-instance v0, Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    move-object/from16 v18, v0

    const-string v1, "CommsPhishing"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/service/model/sls/FeedbackType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/service/model/sls/FeedbackType;->CommsPhishing:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    .line 28
    new-instance v0, Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    move-object/from16 v19, v0

    const-string v1, "CommsMuted"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/service/model/sls/FeedbackType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/service/model/sls/FeedbackType;->CommsMuted:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    .line 29
    new-instance v0, Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    move-object/from16 v20, v0

    const-string v1, "CommsUnmuted"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/service/model/sls/FeedbackType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/service/model/sls/FeedbackType;->CommsUnmuted:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    .line 30
    new-instance v0, Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    move-object/from16 v21, v0

    const-string v1, "Comms911"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/service/model/sls/FeedbackType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/service/model/sls/FeedbackType;->Comms911:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    .line 31
    new-instance v0, Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    move-object/from16 v22, v0

    const-string v1, "UserContentActivityFeed"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/service/model/sls/FeedbackType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/service/model/sls/FeedbackType;->UserContentActivityFeed:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    .line 32
    new-instance v0, Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    move-object/from16 v23, v0

    const-string v1, "UserContentGameDVR"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/service/model/sls/FeedbackType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/service/model/sls/FeedbackType;->UserContentGameDVR:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    .line 33
    new-instance v0, Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    move-object/from16 v24, v0

    const-string v1, "UserContentGamertag"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/service/model/sls/FeedbackType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/service/model/sls/FeedbackType;->UserContentGamertag:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    .line 34
    new-instance v0, Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    move-object/from16 v25, v0

    const-string v1, "UserContentRealName"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/service/model/sls/FeedbackType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/service/model/sls/FeedbackType;->UserContentRealName:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    .line 35
    new-instance v0, Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    move-object/from16 v26, v0

    const-string v1, "UserContentGamerpic"

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/service/model/sls/FeedbackType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/service/model/sls/FeedbackType;->UserContentGamerpic:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    .line 36
    new-instance v0, Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    move-object/from16 v27, v0

    const-string v1, "UserContentPersonalInfo"

    const/16 v2, 0x1b

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/service/model/sls/FeedbackType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/service/model/sls/FeedbackType;->UserContentPersonalInfo:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    .line 37
    new-instance v0, Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    move-object/from16 v28, v0

    const-string v1, "UserContentInappropriateUGC"

    const/16 v2, 0x1c

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/service/model/sls/FeedbackType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/service/model/sls/FeedbackType;->UserContentInappropriateUGC:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    .line 38
    new-instance v0, Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    move-object/from16 v29, v0

    const-string v1, "UserContentReviewRequest"

    const/16 v2, 0x1d

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/service/model/sls/FeedbackType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/service/model/sls/FeedbackType;->UserContentReviewRequest:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    .line 39
    new-instance v0, Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    move-object/from16 v30, v0

    const-string v1, "UserContentScreenshot"

    const/16 v2, 0x1e

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/service/model/sls/FeedbackType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/service/model/sls/FeedbackType;->UserContentScreenshot:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    .line 40
    new-instance v0, Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    move-object/from16 v31, v0

    const-string v1, "PositiveSkilledPlayer"

    const/16 v2, 0x1f

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/service/model/sls/FeedbackType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/service/model/sls/FeedbackType;->PositiveSkilledPlayer:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    .line 41
    new-instance v0, Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    move-object/from16 v32, v0

    const-string v1, "PositiveHelpfulPlayer"

    const/16 v2, 0x20

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/service/model/sls/FeedbackType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/service/model/sls/FeedbackType;->PositiveHelpfulPlayer:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    .line 42
    new-instance v0, Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    move-object/from16 v33, v0

    const-string v1, "PositiveHighQualityUGC"

    const/16 v2, 0x21

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/service/model/sls/FeedbackType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/service/model/sls/FeedbackType;->PositiveHighQualityUGC:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    .line 43
    new-instance v0, Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    move-object/from16 v34, v0

    const-string v1, "InternalReputationUpdated"

    const/16 v2, 0x22

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/service/model/sls/FeedbackType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/service/model/sls/FeedbackType;->InternalReputationUpdated:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    .line 44
    new-instance v0, Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    move-object/from16 v35, v0

    const-string v1, "InternalAmbassadorScoreUpdated"

    const/16 v2, 0x23

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/service/model/sls/FeedbackType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/service/model/sls/FeedbackType;->InternalAmbassadorScoreUpdated:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    .line 45
    new-instance v0, Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    move-object/from16 v36, v0

    const-string v1, "InternalReputationReset"

    const/16 v2, 0x24

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/service/model/sls/FeedbackType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/service/model/sls/FeedbackType;->InternalReputationReset:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    .line 46
    new-instance v0, Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    move-object/from16 v37, v0

    const-string v1, "InternalEnforcementDataUpdated"

    const/16 v2, 0x25

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/service/model/sls/FeedbackType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/service/model/sls/FeedbackType;->InternalEnforcementDataUpdated:Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    move-object/from16 v2, v40

    .line 8
    filled-new-array/range {v0 .. v37}, [Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    move-result-object v0

    sput-object v0, Lcom/microsoft/xbox/service/model/sls/FeedbackType;->$VALUES:[Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/xbox/service/model/sls/FeedbackType;
    .locals 1

    .line 8
    const-class v0, Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/xbox/service/model/sls/FeedbackType;
    .locals 1

    .line 8
    sget-object v0, Lcom/microsoft/xbox/service/model/sls/FeedbackType;->$VALUES:[Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    invoke-virtual {v0}, [Lcom/microsoft/xbox/service/model/sls/FeedbackType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/xbox/service/model/sls/FeedbackType;

    return-object v0
.end method


# virtual methods
.method public getTitle()Ljava/lang/String;
    .locals 2

    .line 49
    sget-object v0, Lcom/microsoft/xbox/service/model/sls/FeedbackType$1;->$SwitchMap$com$microsoft$xbox$service$model$sls$FeedbackType:[I

    invoke-virtual {p0}, Lcom/microsoft/xbox/service/model/sls/FeedbackType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 67
    const-string v0, "No title implementation."

    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->fail(Ljava/lang/String;)V

    .line 68
    const-string v0, ""

    return-object v0

    .line 65
    :pswitch_0    # 0x8
    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/microsoft/xboxtcui/R$string;->ProfileCard_Report_VoiceComm:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 63
    :pswitch_1    # 0x7
    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/microsoft/xboxtcui/R$string;->ProfileCard_Report_Unsporting:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 61
    :pswitch_2    # 0x6
    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/microsoft/xboxtcui/R$string;->ProfileCard_Report_QuitEarly:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 59
    :pswitch_3    # 0x5
    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/microsoft/xboxtcui/R$string;->ProfileCard_Report_PlayerPic:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 57
    :pswitch_4    # 0x4
    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/microsoft/xboxtcui/R$string;->ProfileCard_Report_PlayerName:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 55
    :pswitch_5    # 0x3
    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/microsoft/xboxtcui/R$string;->ProfileCard_Report_PlayerName:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 53
    :pswitch_6    # 0x2
    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/microsoft/xboxtcui/R$string;->ProfileCard_Report_Cheating:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 51
    :pswitch_7    # 0x1
    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/microsoft/xboxtcui/R$string;->ProfileCard_Report_BioLoc:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7    # 0x1
        :pswitch_6    # 0x2
        :pswitch_5    # 0x3
        :pswitch_4    # 0x4
        :pswitch_3    # 0x5
        :pswitch_2    # 0x6
        :pswitch_1    # 0x7
        :pswitch_0    # 0x8
    .end packed-switch
.end method
