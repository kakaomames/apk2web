.class public Lcom/microsoft/xbox/service/network/managers/NeverListResultContainer$NeverUser;
.super Ljava/lang/Object;
.source "NeverListResultContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/service/network/managers/NeverListResultContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NeverUser"
.end annotation


# instance fields
.field public xuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/microsoft/xbox/service/network/managers/NeverListResultContainer$NeverUser;->xuid:Ljava/lang/String;

    return-void
.end method
