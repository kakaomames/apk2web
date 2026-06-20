.class public final enum Lcom/microsoft/applications/events/PrivacyDiagnosticTag;
.super Ljava/lang/Enum;
.source "PrivacyDiagnosticTag.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/applications/events/PrivacyDiagnosticTag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/applications/events/PrivacyDiagnosticTag;

.field public static final enum BrowsingHistory:Lcom/microsoft/applications/events/PrivacyDiagnosticTag;

.field public static final enum DeviceConnectivityAndConfiguration:Lcom/microsoft/applications/events/PrivacyDiagnosticTag;

.field public static final enum InkingTypingAndSpeechUtterance:Lcom/microsoft/applications/events/PrivacyDiagnosticTag;

.field public static final enum ProductAndServicePerformance:Lcom/microsoft/applications/events/PrivacyDiagnosticTag;

.field public static final enum ProductAndServiceUsage:Lcom/microsoft/applications/events/PrivacyDiagnosticTag;

.field public static final enum SoftwareSetupAndInventory:Lcom/microsoft/applications/events/PrivacyDiagnosticTag;


# instance fields
.field private final m_value:J


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 11
    new-instance v0, Lcom/microsoft/applications/events/PrivacyDiagnosticTag;

    const/4 v1, 0x0

    const-wide/16 v2, 0x2

    const-string v4, "BrowsingHistory"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/microsoft/applications/events/PrivacyDiagnosticTag;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/microsoft/applications/events/PrivacyDiagnosticTag;->BrowsingHistory:Lcom/microsoft/applications/events/PrivacyDiagnosticTag;

    .line 13
    new-instance v1, Lcom/microsoft/applications/events/PrivacyDiagnosticTag;

    const/4 v2, 0x1

    const-wide/16 v3, 0x800

    const-string v5, "DeviceConnectivityAndConfiguration"

    invoke-direct {v1, v5, v2, v3, v4}, Lcom/microsoft/applications/events/PrivacyDiagnosticTag;-><init>(Ljava/lang/String;IJ)V

    sput-object v1, Lcom/microsoft/applications/events/PrivacyDiagnosticTag;->DeviceConnectivityAndConfiguration:Lcom/microsoft/applications/events/PrivacyDiagnosticTag;

    .line 15
    new-instance v2, Lcom/microsoft/applications/events/PrivacyDiagnosticTag;

    const/4 v3, 0x2

    const-wide/32 v4, 0x20000

    const-string v6, "InkingTypingAndSpeechUtterance"

    invoke-direct {v2, v6, v3, v4, v5}, Lcom/microsoft/applications/events/PrivacyDiagnosticTag;-><init>(Ljava/lang/String;IJ)V

    sput-object v2, Lcom/microsoft/applications/events/PrivacyDiagnosticTag;->InkingTypingAndSpeechUtterance:Lcom/microsoft/applications/events/PrivacyDiagnosticTag;

    .line 17
    new-instance v3, Lcom/microsoft/applications/events/PrivacyDiagnosticTag;

    const/4 v4, 0x3

    const-wide/32 v5, 0x1000000

    const-string v7, "ProductAndServicePerformance"

    invoke-direct {v3, v7, v4, v5, v6}, Lcom/microsoft/applications/events/PrivacyDiagnosticTag;-><init>(Ljava/lang/String;IJ)V

    sput-object v3, Lcom/microsoft/applications/events/PrivacyDiagnosticTag;->ProductAndServicePerformance:Lcom/microsoft/applications/events/PrivacyDiagnosticTag;

    .line 19
    new-instance v4, Lcom/microsoft/applications/events/PrivacyDiagnosticTag;

    const/4 v5, 0x4

    const-wide/32 v6, 0x2000000

    const-string v8, "ProductAndServiceUsage"

    invoke-direct {v4, v8, v5, v6, v7}, Lcom/microsoft/applications/events/PrivacyDiagnosticTag;-><init>(Ljava/lang/String;IJ)V

    sput-object v4, Lcom/microsoft/applications/events/PrivacyDiagnosticTag;->ProductAndServiceUsage:Lcom/microsoft/applications/events/PrivacyDiagnosticTag;

    .line 21
    new-instance v5, Lcom/microsoft/applications/events/PrivacyDiagnosticTag;

    const/4 v6, 0x5

    const-wide v7, 0x80000000L

    const-string v9, "SoftwareSetupAndInventory"

    invoke-direct {v5, v9, v6, v7, v8}, Lcom/microsoft/applications/events/PrivacyDiagnosticTag;-><init>(Ljava/lang/String;IJ)V

    sput-object v5, Lcom/microsoft/applications/events/PrivacyDiagnosticTag;->SoftwareSetupAndInventory:Lcom/microsoft/applications/events/PrivacyDiagnosticTag;

    .line 10
    filled-new-array/range {v0 .. v5}, [Lcom/microsoft/applications/events/PrivacyDiagnosticTag;

    move-result-object v0

    sput-object v0, Lcom/microsoft/applications/events/PrivacyDiagnosticTag;->$VALUES:[Lcom/microsoft/applications/events/PrivacyDiagnosticTag;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 26
    iput-wide p3, p0, Lcom/microsoft/applications/events/PrivacyDiagnosticTag;->m_value:J

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/applications/events/PrivacyDiagnosticTag;
    .locals 1

    .line 10
    const-class v0, Lcom/microsoft/applications/events/PrivacyDiagnosticTag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/applications/events/PrivacyDiagnosticTag;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/applications/events/PrivacyDiagnosticTag;
    .locals 1

    .line 10
    sget-object v0, Lcom/microsoft/applications/events/PrivacyDiagnosticTag;->$VALUES:[Lcom/microsoft/applications/events/PrivacyDiagnosticTag;

    invoke-virtual {v0}, [Lcom/microsoft/applications/events/PrivacyDiagnosticTag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/applications/events/PrivacyDiagnosticTag;

    return-object v0
.end method


# virtual methods
.method public getValue()J
    .locals 2

    .line 30
    iget-wide v0, p0, Lcom/microsoft/applications/events/PrivacyDiagnosticTag;->m_value:J

    return-wide v0
.end method
