.class public final enum Lcom/microsoft/applications/events/PiiKind;
.super Ljava/lang/Enum;
.source "PiiKind.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/applications/events/PiiKind;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/applications/events/PiiKind;

.field public static final enum CustomerContentKind_GenericData:Lcom/microsoft/applications/events/PiiKind;

.field public static final enum DistinguishedName:Lcom/microsoft/applications/events/PiiKind;

.field public static final enum Fqdn:Lcom/microsoft/applications/events/PiiKind;

.field public static final enum GenericData:Lcom/microsoft/applications/events/PiiKind;

.field public static final enum IPv4Address:Lcom/microsoft/applications/events/PiiKind;

.field public static final enum IPv4AddressLegacy:Lcom/microsoft/applications/events/PiiKind;

.field public static final enum IPv6Address:Lcom/microsoft/applications/events/PiiKind;

.field public static final enum Identity:Lcom/microsoft/applications/events/PiiKind;

.field public static final enum MailSubject:Lcom/microsoft/applications/events/PiiKind;

.field public static final enum None:Lcom/microsoft/applications/events/PiiKind;

.field public static final enum PhoneNumber:Lcom/microsoft/applications/events/PiiKind;

.field public static final enum QueryString:Lcom/microsoft/applications/events/PiiKind;

.field public static final enum SipAddress:Lcom/microsoft/applications/events/PiiKind;

.field public static final enum SmtpAddress:Lcom/microsoft/applications/events/PiiKind;

.field public static final enum Uri:Lcom/microsoft/applications/events/PiiKind;


# instance fields
.field private final m_value:I


# direct methods
.method static constructor <clinit>()V
    .locals 18

    .line 14
    new-instance v0, Lcom/microsoft/applications/events/PiiKind;

    const-string v1, "None"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/microsoft/applications/events/PiiKind;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/applications/events/PiiKind;->None:Lcom/microsoft/applications/events/PiiKind;

    .line 19
    new-instance v1, Lcom/microsoft/applications/events/PiiKind;

    const-string v2, "DistinguishedName"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/microsoft/applications/events/PiiKind;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/microsoft/applications/events/PiiKind;->DistinguishedName:Lcom/microsoft/applications/events/PiiKind;

    .line 24
    new-instance v2, Lcom/microsoft/applications/events/PiiKind;

    const-string v3, "GenericData"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/microsoft/applications/events/PiiKind;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/microsoft/applications/events/PiiKind;->GenericData:Lcom/microsoft/applications/events/PiiKind;

    .line 29
    new-instance v3, Lcom/microsoft/applications/events/PiiKind;

    const-string v4, "IPv4Address"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lcom/microsoft/applications/events/PiiKind;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/microsoft/applications/events/PiiKind;->IPv4Address:Lcom/microsoft/applications/events/PiiKind;

    .line 34
    new-instance v4, Lcom/microsoft/applications/events/PiiKind;

    const/4 v5, 0x0

    sget-object v5, Lcom/google/common/reflect/Jpj/datTWqqIbIAFj;->WCdeSXuEfVthg:Ljava/lang/String;

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, Lcom/microsoft/applications/events/PiiKind;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/microsoft/applications/events/PiiKind;->IPv6Address:Lcom/microsoft/applications/events/PiiKind;

    .line 39
    new-instance v5, Lcom/microsoft/applications/events/PiiKind;

    const-string v6, "MailSubject"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7, v7}, Lcom/microsoft/applications/events/PiiKind;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/microsoft/applications/events/PiiKind;->MailSubject:Lcom/microsoft/applications/events/PiiKind;

    .line 44
    new-instance v6, Lcom/microsoft/applications/events/PiiKind;

    const-string v7, "PhoneNumber"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8, v8}, Lcom/microsoft/applications/events/PiiKind;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/microsoft/applications/events/PiiKind;->PhoneNumber:Lcom/microsoft/applications/events/PiiKind;

    .line 49
    new-instance v7, Lcom/microsoft/applications/events/PiiKind;

    const/4 v8, 0x0

    sget-object v8, Lorg/spongycastle/pqc/jcajce/provider/AB/GpZWhhfo;->cInoT:Ljava/lang/String;

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9, v9}, Lcom/microsoft/applications/events/PiiKind;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/microsoft/applications/events/PiiKind;->QueryString:Lcom/microsoft/applications/events/PiiKind;

    .line 54
    new-instance v8, Lcom/microsoft/applications/events/PiiKind;

    const-string v9, "SipAddress"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10, v10}, Lcom/microsoft/applications/events/PiiKind;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/microsoft/applications/events/PiiKind;->SipAddress:Lcom/microsoft/applications/events/PiiKind;

    .line 59
    new-instance v9, Lcom/microsoft/applications/events/PiiKind;

    const-string v10, "SmtpAddress"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11, v11}, Lcom/microsoft/applications/events/PiiKind;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/microsoft/applications/events/PiiKind;->SmtpAddress:Lcom/microsoft/applications/events/PiiKind;

    .line 64
    new-instance v10, Lcom/microsoft/applications/events/PiiKind;

    const-string v11, "Identity"

    const/16 v12, 0xa

    invoke-direct {v10, v11, v12, v12}, Lcom/microsoft/applications/events/PiiKind;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/microsoft/applications/events/PiiKind;->Identity:Lcom/microsoft/applications/events/PiiKind;

    .line 69
    new-instance v11, Lcom/microsoft/applications/events/PiiKind;

    const-string v12, "Uri"

    const/16 v13, 0xb

    invoke-direct {v11, v12, v13, v13}, Lcom/microsoft/applications/events/PiiKind;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/microsoft/applications/events/PiiKind;->Uri:Lcom/microsoft/applications/events/PiiKind;

    .line 74
    new-instance v12, Lcom/microsoft/applications/events/PiiKind;

    const-string v13, "Fqdn"

    const/16 v14, 0xc

    invoke-direct {v12, v13, v14, v14}, Lcom/microsoft/applications/events/PiiKind;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/microsoft/applications/events/PiiKind;->Fqdn:Lcom/microsoft/applications/events/PiiKind;

    .line 79
    new-instance v13, Lcom/microsoft/applications/events/PiiKind;

    const-string v14, "IPv4AddressLegacy"

    const/16 v15, 0xd

    invoke-direct {v13, v14, v15, v15}, Lcom/microsoft/applications/events/PiiKind;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/microsoft/applications/events/PiiKind;->IPv4AddressLegacy:Lcom/microsoft/applications/events/PiiKind;

    .line 81
    new-instance v14, Lcom/microsoft/applications/events/PiiKind;

    const/16 v15, 0xe

    move-object/from16 v16, v13

    const/16 v13, 0x20

    move-object/from16 v17, v12

    const/4 v12, 0x0

    sget-object v12, Landroidx/documentfile/provider/ee/zVjgszcQMGytd;->GbHlQIvCpab:Ljava/lang/String;

    invoke-direct {v14, v12, v15, v13}, Lcom/microsoft/applications/events/PiiKind;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/microsoft/applications/events/PiiKind;->CustomerContentKind_GenericData:Lcom/microsoft/applications/events/PiiKind;

    move-object/from16 v12, v17

    move-object/from16 v13, v16

    .line 10
    filled-new-array/range {v0 .. v14}, [Lcom/microsoft/applications/events/PiiKind;

    move-result-object v0

    sput-object v0, Lcom/microsoft/applications/events/PiiKind;->$VALUES:[Lcom/microsoft/applications/events/PiiKind;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 85
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 86
    iput p3, p0, Lcom/microsoft/applications/events/PiiKind;->m_value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/applications/events/PiiKind;
    .locals 1

    .line 10
    const-class v0, Lcom/microsoft/applications/events/PiiKind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/applications/events/PiiKind;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/applications/events/PiiKind;
    .locals 1

    .line 10
    sget-object v0, Lcom/microsoft/applications/events/PiiKind;->$VALUES:[Lcom/microsoft/applications/events/PiiKind;

    invoke-virtual {v0}, [Lcom/microsoft/applications/events/PiiKind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/applications/events/PiiKind;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 90
    iget v0, p0, Lcom/microsoft/applications/events/PiiKind;->m_value:I

    return v0
.end method
