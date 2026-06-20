.class public final enum Lcom/microsoft/applications/events/DataConcernType;
.super Ljava/lang/Enum;
.source "DataConcernType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/applications/events/DataConcernType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/applications/events/DataConcernType;

.field public static final enum Content:Lcom/microsoft/applications/events/DataConcernType;

.field public static final enum DemographicInfoCountryRegion:Lcom/microsoft/applications/events/DataConcernType;

.field public static final enum DemographicInfoLanguage:Lcom/microsoft/applications/events/DataConcernType;

.field public static final enum Directory:Lcom/microsoft/applications/events/DataConcernType;

.field public static final enum ExternalEmailAddress:Lcom/microsoft/applications/events/DataConcernType;

.field public static final enum FieldNameImpliesLocation:Lcom/microsoft/applications/events/DataConcernType;

.field public static final enum FileNameOrExtension:Lcom/microsoft/applications/events/DataConcernType;

.field public static final enum FileSharingUrl:Lcom/microsoft/applications/events/DataConcernType;

.field public static final enum InScopeIdentifier:Lcom/microsoft/applications/events/DataConcernType;

.field public static final enum InScopeIdentifierActiveUser:Lcom/microsoft/applications/events/DataConcernType;

.field public static final enum InternalEmailAddress:Lcom/microsoft/applications/events/DataConcernType;

.field public static final enum IpAddress:Lcom/microsoft/applications/events/DataConcernType;

.field public static final enum Location:Lcom/microsoft/applications/events/DataConcernType;

.field public static final enum MachineName:Lcom/microsoft/applications/events/DataConcernType;

.field public static final enum None:Lcom/microsoft/applications/events/DataConcernType;

.field public static final enum OutOfScopeIdentifier:Lcom/microsoft/applications/events/DataConcernType;

.field public static final enum PIDKey:Lcom/microsoft/applications/events/DataConcernType;

.field public static final enum Security:Lcom/microsoft/applications/events/DataConcernType;

.field public static final enum Url:Lcom/microsoft/applications/events/DataConcernType;

.field public static final enum UserAlias:Lcom/microsoft/applications/events/DataConcernType;

.field public static final enum UserDomain:Lcom/microsoft/applications/events/DataConcernType;

.field public static final enum UserName:Lcom/microsoft/applications/events/DataConcernType;


# instance fields
.field private final m_value:I


# direct methods
.method static constructor <clinit>()V
    .locals 25

    .line 15
    new-instance v1, Lcom/microsoft/applications/events/DataConcernType;

    move-object v0, v1

    const-string v2, "None"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v3}, Lcom/microsoft/applications/events/DataConcernType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/microsoft/applications/events/DataConcernType;->None:Lcom/microsoft/applications/events/DataConcernType;

    .line 19
    new-instance v2, Lcom/microsoft/applications/events/DataConcernType;

    move-object v1, v2

    const-string v3, "Content"

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4, v4}, Lcom/microsoft/applications/events/DataConcernType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/microsoft/applications/events/DataConcernType;->Content:Lcom/microsoft/applications/events/DataConcernType;

    .line 23
    new-instance v3, Lcom/microsoft/applications/events/DataConcernType;

    move-object v2, v3

    const-string v4, "DemographicInfoCountryRegion"

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5, v5}, Lcom/microsoft/applications/events/DataConcernType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/microsoft/applications/events/DataConcernType;->DemographicInfoCountryRegion:Lcom/microsoft/applications/events/DataConcernType;

    .line 27
    new-instance v4, Lcom/microsoft/applications/events/DataConcernType;

    move-object v3, v4

    const-string v5, "DemographicInfoLanguage"

    const/4 v6, 0x3

    invoke-direct {v4, v5, v6, v6}, Lcom/microsoft/applications/events/DataConcernType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/microsoft/applications/events/DataConcernType;->DemographicInfoLanguage:Lcom/microsoft/applications/events/DataConcernType;

    .line 31
    new-instance v5, Lcom/microsoft/applications/events/DataConcernType;

    move-object v4, v5

    const/4 v6, 0x0

    sget-object v6, Lcom/google/android/datatransport/runtime/dagger/internal/TVW/fhjtYMsniW;->uJpGuKwQVeWSfj:Ljava/lang/String;

    const/4 v7, 0x4

    invoke-direct {v5, v6, v7, v7}, Lcom/microsoft/applications/events/DataConcernType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/microsoft/applications/events/DataConcernType;->Directory:Lcom/microsoft/applications/events/DataConcernType;

    .line 35
    new-instance v6, Lcom/microsoft/applications/events/DataConcernType;

    move-object v5, v6

    const-string v7, "ExternalEmailAddress"

    const/4 v8, 0x5

    invoke-direct {v6, v7, v8, v8}, Lcom/microsoft/applications/events/DataConcernType;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/microsoft/applications/events/DataConcernType;->ExternalEmailAddress:Lcom/microsoft/applications/events/DataConcernType;

    .line 39
    new-instance v7, Lcom/microsoft/applications/events/DataConcernType;

    move-object v6, v7

    const-string v8, "FieldNameImpliesLocation"

    const/4 v9, 0x6

    invoke-direct {v7, v8, v9, v9}, Lcom/microsoft/applications/events/DataConcernType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/microsoft/applications/events/DataConcernType;->FieldNameImpliesLocation:Lcom/microsoft/applications/events/DataConcernType;

    .line 43
    new-instance v8, Lcom/microsoft/applications/events/DataConcernType;

    move-object v7, v8

    const-string v9, "FileNameOrExtension"

    const/4 v10, 0x7

    invoke-direct {v8, v9, v10, v10}, Lcom/microsoft/applications/events/DataConcernType;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/microsoft/applications/events/DataConcernType;->FileNameOrExtension:Lcom/microsoft/applications/events/DataConcernType;

    .line 47
    new-instance v9, Lcom/microsoft/applications/events/DataConcernType;

    move-object v8, v9

    const-string v10, "FileSharingUrl"

    const/16 v11, 0x8

    invoke-direct {v9, v10, v11, v11}, Lcom/microsoft/applications/events/DataConcernType;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/microsoft/applications/events/DataConcernType;->FileSharingUrl:Lcom/microsoft/applications/events/DataConcernType;

    .line 51
    new-instance v10, Lcom/microsoft/applications/events/DataConcernType;

    move-object v9, v10

    const-string v11, "InScopeIdentifier"

    const/16 v12, 0x9

    invoke-direct {v10, v11, v12, v12}, Lcom/microsoft/applications/events/DataConcernType;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/microsoft/applications/events/DataConcernType;->InScopeIdentifier:Lcom/microsoft/applications/events/DataConcernType;

    .line 55
    new-instance v11, Lcom/microsoft/applications/events/DataConcernType;

    move-object v10, v11

    const-string v12, "InScopeIdentifierActiveUser"

    const/16 v13, 0xa

    invoke-direct {v11, v12, v13, v13}, Lcom/microsoft/applications/events/DataConcernType;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/microsoft/applications/events/DataConcernType;->InScopeIdentifierActiveUser:Lcom/microsoft/applications/events/DataConcernType;

    .line 59
    new-instance v12, Lcom/microsoft/applications/events/DataConcernType;

    move-object v11, v12

    const-string v13, "InternalEmailAddress"

    const/16 v14, 0xb

    invoke-direct {v12, v13, v14, v14}, Lcom/microsoft/applications/events/DataConcernType;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/microsoft/applications/events/DataConcernType;->InternalEmailAddress:Lcom/microsoft/applications/events/DataConcernType;

    .line 63
    new-instance v13, Lcom/microsoft/applications/events/DataConcernType;

    move-object v12, v13

    const-string v14, "IpAddress"

    const/16 v15, 0xc

    invoke-direct {v13, v14, v15, v15}, Lcom/microsoft/applications/events/DataConcernType;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/microsoft/applications/events/DataConcernType;->IpAddress:Lcom/microsoft/applications/events/DataConcernType;

    .line 67
    new-instance v14, Lcom/microsoft/applications/events/DataConcernType;

    move-object v13, v14

    const-string v15, "Location"

    move-object/from16 v22, v0

    const/16 v0, 0xd

    invoke-direct {v14, v15, v0, v0}, Lcom/microsoft/applications/events/DataConcernType;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/microsoft/applications/events/DataConcernType;->Location:Lcom/microsoft/applications/events/DataConcernType;

    .line 71
    new-instance v0, Lcom/microsoft/applications/events/DataConcernType;

    move-object v14, v0

    const-string v15, "MachineName"

    move-object/from16 v23, v1

    const/16 v1, 0xe

    invoke-direct {v0, v15, v1, v1}, Lcom/microsoft/applications/events/DataConcernType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/applications/events/DataConcernType;->MachineName:Lcom/microsoft/applications/events/DataConcernType;

    .line 75
    new-instance v0, Lcom/microsoft/applications/events/DataConcernType;

    move-object v15, v0

    const-string v1, "OutOfScopeIdentifier"

    move-object/from16 v24, v2

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2, v2}, Lcom/microsoft/applications/events/DataConcernType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/applications/events/DataConcernType;->OutOfScopeIdentifier:Lcom/microsoft/applications/events/DataConcernType;

    .line 79
    new-instance v0, Lcom/microsoft/applications/events/DataConcernType;

    move-object/from16 v16, v0

    const-string v1, "PIDKey"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2, v2}, Lcom/microsoft/applications/events/DataConcernType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/applications/events/DataConcernType;->PIDKey:Lcom/microsoft/applications/events/DataConcernType;

    .line 83
    new-instance v0, Lcom/microsoft/applications/events/DataConcernType;

    move-object/from16 v17, v0

    const-string v1, "Security"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2, v2}, Lcom/microsoft/applications/events/DataConcernType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/applications/events/DataConcernType;->Security:Lcom/microsoft/applications/events/DataConcernType;

    .line 87
    new-instance v0, Lcom/microsoft/applications/events/DataConcernType;

    move-object/from16 v18, v0

    const-string v1, "Url"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2, v2}, Lcom/microsoft/applications/events/DataConcernType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/applications/events/DataConcernType;->Url:Lcom/microsoft/applications/events/DataConcernType;

    .line 91
    new-instance v0, Lcom/microsoft/applications/events/DataConcernType;

    move-object/from16 v19, v0

    const-string v1, "UserAlias"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2, v2}, Lcom/microsoft/applications/events/DataConcernType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/applications/events/DataConcernType;->UserAlias:Lcom/microsoft/applications/events/DataConcernType;

    .line 95
    new-instance v0, Lcom/microsoft/applications/events/DataConcernType;

    move-object/from16 v20, v0

    const-string v1, "UserDomain"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2, v2}, Lcom/microsoft/applications/events/DataConcernType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/applications/events/DataConcernType;->UserDomain:Lcom/microsoft/applications/events/DataConcernType;

    .line 99
    new-instance v0, Lcom/microsoft/applications/events/DataConcernType;

    move-object/from16 v21, v0

    const-string v1, "UserName"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2, v2}, Lcom/microsoft/applications/events/DataConcernType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/applications/events/DataConcernType;->UserName:Lcom/microsoft/applications/events/DataConcernType;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    .line 11
    filled-new-array/range {v0 .. v21}, [Lcom/microsoft/applications/events/DataConcernType;

    move-result-object v0

    sput-object v0, Lcom/microsoft/applications/events/DataConcernType;->$VALUES:[Lcom/microsoft/applications/events/DataConcernType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 103
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 104
    iput p3, p0, Lcom/microsoft/applications/events/DataConcernType;->m_value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/applications/events/DataConcernType;
    .locals 1

    .line 11
    const-class v0, Lcom/microsoft/applications/events/DataConcernType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/applications/events/DataConcernType;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/applications/events/DataConcernType;
    .locals 1

    .line 11
    sget-object v0, Lcom/microsoft/applications/events/DataConcernType;->$VALUES:[Lcom/microsoft/applications/events/DataConcernType;

    invoke-virtual {v0}, [Lcom/microsoft/applications/events/DataConcernType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/applications/events/DataConcernType;

    return-object v0
.end method


# virtual methods
.method getValue()I
    .locals 1

    .line 108
    iget v0, p0, Lcom/microsoft/applications/events/DataConcernType;->m_value:I

    return v0
.end method
