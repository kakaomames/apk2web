.class public Lcom/microsoft/xbox/telemetry/utc/ClientError;
.super Lcom/microsoft/xbox/telemetry/utc/CommonData;
.source "ClientError.java"


# static fields
.field private static final CLIENTERRORVERSION:I = 0x1


# instance fields
.field public callStack:Ljava/lang/String;

.field public errorCode:Ljava/lang/String;

.field public errorName:Ljava/lang/String;

.field public errorText:Ljava/lang/String;

.field public pageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    .line 24
    invoke-direct {p0, v0}, Lcom/microsoft/xbox/telemetry/utc/CommonData;-><init>(I)V

    return-void
.end method
