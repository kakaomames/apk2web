.class public abstract Lcom/mojang/minecraftpe/platforms/Platform;
.super Ljava/lang/Object;
.source "Platform.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createPlatform(Z)Lcom/mojang/minecraftpe/platforms/Platform;
    .locals 1

    .line 9
    new-instance v0, Lcom/mojang/minecraftpe/platforms/Platform19;

    invoke-direct {v0, p0}, Lcom/mojang/minecraftpe/platforms/Platform19;-><init>(Z)V

    return-object v0
.end method


# virtual methods
.method public abstract getABIS()Ljava/lang/String;
.end method

.method public abstract onAppStart(Landroid/view/View;)V
.end method

.method public abstract onViewFocusChanged(Z)V
.end method

.method public abstract onVolumePressed()V
.end method
