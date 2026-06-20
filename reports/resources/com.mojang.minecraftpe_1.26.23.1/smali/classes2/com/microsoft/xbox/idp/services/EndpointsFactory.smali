.class public Lcom/microsoft/xbox/idp/services/EndpointsFactory;
.super Ljava/lang/Object;
.source "EndpointsFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/microsoft/xbox/idp/services/Endpoints;
    .locals 2

    .line 8
    sget-object v0, Lcom/microsoft/xbox/idp/services/EndpointsFactory$1;->$SwitchMap$com$microsoft$xbox$idp$services$Endpoints$Type:[I

    sget-object v1, Lcom/microsoft/xbox/idp/services/Config;->endpointType:Lcom/microsoft/xbox/idp/services/Endpoints$Type;

    invoke-virtual {v1}, Lcom/microsoft/xbox/idp/services/Endpoints$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 12
    :cond_0
    new-instance v0, Lcom/microsoft/xbox/idp/services/EndpointsDnet;

    invoke-direct {v0}, Lcom/microsoft/xbox/idp/services/EndpointsDnet;-><init>()V

    return-object v0

    .line 10
    :cond_1
    new-instance v0, Lcom/microsoft/xbox/idp/services/EndpointsProd;

    invoke-direct {v0}, Lcom/microsoft/xbox/idp/services/EndpointsProd;-><init>()V

    return-object v0
.end method
