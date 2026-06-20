.class public Lcom/microsoft/xbox/idp/model/Privacy$Settings;
.super Ljava/lang/Object;
.source "Privacy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/idp/model/Privacy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Settings"
.end annotation


# instance fields
.field public settings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/microsoft/xbox/idp/model/Privacy$Key;",
            "Lcom/microsoft/xbox/idp/model/Privacy$Value;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newWithMap()Lcom/microsoft/xbox/idp/model/Privacy$Settings;
    .locals 2

    .line 53
    new-instance v0, Lcom/microsoft/xbox/idp/model/Privacy$Settings;

    invoke-direct {v0}, Lcom/microsoft/xbox/idp/model/Privacy$Settings;-><init>()V

    .line 54
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/microsoft/xbox/idp/model/Privacy$Settings;->settings:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public isSettingSet(Lcom/microsoft/xbox/idp/model/Privacy$Key;)Z
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/microsoft/xbox/idp/model/Privacy$Settings;->settings:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 61
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/microsoft/xbox/idp/model/Privacy$Value;

    if-eqz p1, :cond_0

    .line 62
    sget-object v0, Lcom/microsoft/xbox/idp/model/Privacy$Value;->NotSet:Lcom/microsoft/xbox/idp/model/Privacy$Value;

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
