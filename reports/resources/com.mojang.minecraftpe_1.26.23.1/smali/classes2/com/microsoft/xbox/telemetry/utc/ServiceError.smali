.class public Lcom/microsoft/xbox/telemetry/utc/ServiceError;
.super Lcom/microsoft/xbox/telemetry/utc/CommonData;
.source "ServiceError.java"


# static fields
.field private static final SERVICEERRORVERSION:I = 0x1


# instance fields
.field public errorCode:Ljava/lang/String;

.field public errorName:Ljava/lang/String;

.field public errorText:Ljava/lang/String;

.field public pageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    .line 21
    invoke-direct {p0, v0}, Lcom/microsoft/xbox/telemetry/utc/CommonData;-><init>(I)V

    return-void
.end method
