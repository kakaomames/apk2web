.class public Lcom/microsoft/xbox/telemetry/utc/PageView;
.super Lcom/microsoft/xbox/telemetry/utc/CommonData;
.source "PageView.java"


# static fields
.field private static final PAGEVIEWVERSION:I = 0x1


# instance fields
.field public fromPage:Ljava/lang/String;

.field public pageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    .line 15
    invoke-direct {p0, v0}, Lcom/microsoft/xbox/telemetry/utc/CommonData;-><init>(I)V

    return-void
.end method
