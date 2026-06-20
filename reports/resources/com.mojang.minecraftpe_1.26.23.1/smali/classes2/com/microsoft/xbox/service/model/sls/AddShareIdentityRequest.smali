.class public Lcom/microsoft/xbox/service/model/sls/AddShareIdentityRequest;
.super Ljava/lang/Object;
.source "AddShareIdentityRequest.java"


# instance fields
.field public xuids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/microsoft/xbox/service/model/sls/AddShareIdentityRequest;->xuids:Ljava/util/ArrayList;

    return-void
.end method

.method public static getAddShareIdentityRequestBody(Lcom/microsoft/xbox/service/model/sls/AddShareIdentityRequest;)Ljava/lang/String;
    .locals 0

    .line 14
    invoke-static {p0}, Lcom/microsoft/xbox/toolkit/GsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
