.class public Lcom/microsoft/xbox/idp/interop/XboxLiveAppConfig;
.super Ljava/lang/Object;
.source "XboxLiveAppConfig.java"


# instance fields
.field private final id:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    invoke-static {}, Lcom/microsoft/xbox/idp/interop/XboxLiveAppConfig;->create()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/microsoft/xbox/idp/interop/XboxLiveAppConfig;->id:J

    return-void
.end method

.method private static native create()J
.end method

.method private static native delete(J)V
.end method

.method private static native getEnvironment(J)Ljava/lang/String;
.end method

.method private static native getOverrideTitleId(J)I
.end method

.method private static native getSandbox(J)Ljava/lang/String;
.end method

.method private static native getScid(J)Ljava/lang/String;
.end method

.method private static native getTitleId(J)I
.end method


# virtual methods
.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 36
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 37
    iget-wide v0, p0, Lcom/microsoft/xbox/idp/interop/XboxLiveAppConfig;->id:J

    invoke-static {v0, v1}, Lcom/microsoft/xbox/idp/interop/XboxLiveAppConfig;->delete(J)V

    return-void
.end method

.method public getEnvironment()Ljava/lang/String;
    .locals 2

    .line 27
    iget-wide v0, p0, Lcom/microsoft/xbox/idp/interop/XboxLiveAppConfig;->id:J

    invoke-static {v0, v1}, Lcom/microsoft/xbox/idp/interop/XboxLiveAppConfig;->getEnvironment(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOverrideTitleId()I
    .locals 2

    .line 19
    iget-wide v0, p0, Lcom/microsoft/xbox/idp/interop/XboxLiveAppConfig;->id:J

    invoke-static {v0, v1}, Lcom/microsoft/xbox/idp/interop/XboxLiveAppConfig;->getOverrideTitleId(J)I

    move-result v0

    return v0
.end method

.method public getSandbox()Ljava/lang/String;
    .locals 2

    .line 31
    iget-wide v0, p0, Lcom/microsoft/xbox/idp/interop/XboxLiveAppConfig;->id:J

    invoke-static {v0, v1}, Lcom/microsoft/xbox/idp/interop/XboxLiveAppConfig;->getSandbox(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScid()Ljava/lang/String;
    .locals 2

    .line 23
    iget-wide v0, p0, Lcom/microsoft/xbox/idp/interop/XboxLiveAppConfig;->id:J

    invoke-static {v0, v1}, Lcom/microsoft/xbox/idp/interop/XboxLiveAppConfig;->getScid(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitleId()I
    .locals 2

    .line 15
    iget-wide v0, p0, Lcom/microsoft/xbox/idp/interop/XboxLiveAppConfig;->id:J

    invoke-static {v0, v1}, Lcom/microsoft/xbox/idp/interop/XboxLiveAppConfig;->getTitleId(J)I

    move-result v0

    return v0
.end method
