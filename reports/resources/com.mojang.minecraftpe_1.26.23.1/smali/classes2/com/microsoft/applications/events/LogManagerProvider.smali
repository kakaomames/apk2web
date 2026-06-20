.class public Lcom/microsoft/applications/events/LogManagerProvider;
.super Ljava/lang/Object;
.source "LogManagerProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/applications/events/LogManagerProvider$LogManagerImpl;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createLogManager(Lcom/microsoft/applications/events/ILogConfiguration;)Lcom/microsoft/applications/events/ILogManager;
    .locals 3

    .line 13
    new-instance v0, Lcom/microsoft/applications/events/LogManagerProvider$LogManagerImpl;

    invoke-static {p0}, Lcom/microsoft/applications/events/LogManagerProvider;->nativeCreateLogManager(Lcom/microsoft/applications/events/ILogConfiguration;)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/microsoft/applications/events/LogManagerProvider$LogManagerImpl;-><init>(J)V

    return-object v0
.end method

.method protected static native nativeCreateLogManager(Lcom/microsoft/applications/events/ILogConfiguration;)J
.end method
