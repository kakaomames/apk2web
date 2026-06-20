.class public Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;
.super Ljava/util/HashMap;
.source "ActivityParameters.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final FF_INFO_TYPE:Ljava/lang/String; = "InfoType"

.field private static final FORCE_RELOAD:Ljava/lang/String; = "ForceReload"

.field private static final FROM_SCREEN:Ljava/lang/String; = "FromScreen"

.field private static final ME_XUID:Ljava/lang/String; = "MeXuid"

.field private static final ORIGINATING_PAGE:Ljava/lang/String; = "OriginatingPage"

.field private static final PRIVILEGES:Ljava/lang/String; = "Privileges"

.field private static final SELECTED_PROFILE:Ljava/lang/String; = "SelectedProfile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-void
.end method


# virtual methods
.method public getMeXuid()Ljava/lang/String;
    .locals 1

    .line 21
    const-string v0, "MeXuid"

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getPrivileges()Ljava/lang/String;
    .locals 1

    .line 37
    const-string v0, "Privileges"

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSelectedProfile()Ljava/lang/String;
    .locals 1

    .line 29
    const-string v0, "SelectedProfile"

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public isForceReload()Z
    .locals 2

    .line 49
    const-string v0, "ForceReload"

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public putFromScreen(Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;)V
    .locals 1

    .line 45
    const-string v0, "FromScreen"

    invoke-virtual {p0, v0, p1}, Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public putMeXuid(Ljava/lang/String;)V
    .locals 1

    .line 25
    const-string v0, "MeXuid"

    invoke-virtual {p0, v0, p1}, Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public putPrivileges(Ljava/lang/String;)V
    .locals 1

    .line 41
    const-string v0, "Privileges"

    invoke-virtual {p0, v0, p1}, Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public putSelectedProfile(Ljava/lang/String;)V
    .locals 1

    .line 33
    const-string v0, "SelectedProfile"

    invoke-virtual {p0, v0, p1}, Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public putSourcePage(Ljava/lang/String;)V
    .locals 1

    .line 53
    const-string v0, "OriginatingPage"

    invoke-virtual {p0, v0, p1}, Lcom/microsoft/xbox/toolkit/ui/ActivityParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
