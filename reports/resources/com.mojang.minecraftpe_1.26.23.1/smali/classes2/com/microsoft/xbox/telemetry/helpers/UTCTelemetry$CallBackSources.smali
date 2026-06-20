.class public final enum Lcom/microsoft/xbox/telemetry/helpers/UTCTelemetry$CallBackSources;
.super Ljava/lang/Enum;
.source "UTCTelemetry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/telemetry/helpers/UTCTelemetry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CallBackSources"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/xbox/telemetry/helpers/UTCTelemetry$CallBackSources;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/xbox/telemetry/helpers/UTCTelemetry$CallBackSources;

.field public static final enum Account:Lcom/microsoft/xbox/telemetry/helpers/UTCTelemetry$CallBackSources;

.field public static final enum Ticket:Lcom/microsoft/xbox/telemetry/helpers/UTCTelemetry$CallBackSources;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 12
    new-instance v0, Lcom/microsoft/xbox/telemetry/helpers/UTCTelemetry$CallBackSources;

    const-string v1, "Account"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/microsoft/xbox/telemetry/helpers/UTCTelemetry$CallBackSources;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/xbox/telemetry/helpers/UTCTelemetry$CallBackSources;->Account:Lcom/microsoft/xbox/telemetry/helpers/UTCTelemetry$CallBackSources;

    .line 13
    new-instance v1, Lcom/microsoft/xbox/telemetry/helpers/UTCTelemetry$CallBackSources;

    const-string v2, "Ticket"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/microsoft/xbox/telemetry/helpers/UTCTelemetry$CallBackSources;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/microsoft/xbox/telemetry/helpers/UTCTelemetry$CallBackSources;->Ticket:Lcom/microsoft/xbox/telemetry/helpers/UTCTelemetry$CallBackSources;

    .line 10
    filled-new-array {v0, v1}, [Lcom/microsoft/xbox/telemetry/helpers/UTCTelemetry$CallBackSources;

    move-result-object v0

    sput-object v0, Lcom/microsoft/xbox/telemetry/helpers/UTCTelemetry$CallBackSources;->$VALUES:[Lcom/microsoft/xbox/telemetry/helpers/UTCTelemetry$CallBackSources;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/xbox/telemetry/helpers/UTCTelemetry$CallBackSources;
    .locals 1

    .line 10
    const-class v0, Lcom/microsoft/xbox/telemetry/helpers/UTCTelemetry$CallBackSources;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/xbox/telemetry/helpers/UTCTelemetry$CallBackSources;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/xbox/telemetry/helpers/UTCTelemetry$CallBackSources;
    .locals 1

    .line 10
    sget-object v0, Lcom/microsoft/xbox/telemetry/helpers/UTCTelemetry$CallBackSources;->$VALUES:[Lcom/microsoft/xbox/telemetry/helpers/UTCTelemetry$CallBackSources;

    invoke-virtual {v0}, [Lcom/microsoft/xbox/telemetry/helpers/UTCTelemetry$CallBackSources;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/xbox/telemetry/helpers/UTCTelemetry$CallBackSources;

    return-object v0
.end method
