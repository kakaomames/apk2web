.class public Lcom/microsoft/xbox/service/model/sls/NeverListRequest;
.super Ljava/lang/Object;
.source "NeverListRequest.java"


# instance fields
.field public xuid:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-wide p1, p0, Lcom/microsoft/xbox/service/model/sls/NeverListRequest;->xuid:J

    return-void
.end method

.method public static getNeverListRequestBody(Lcom/microsoft/xbox/service/model/sls/NeverListRequest;)Ljava/lang/String;
    .locals 0

    .line 13
    invoke-static {p0}, Lcom/microsoft/xbox/toolkit/GsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
