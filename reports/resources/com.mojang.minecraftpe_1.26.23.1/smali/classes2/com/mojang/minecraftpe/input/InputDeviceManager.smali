.class public abstract Lcom/mojang/minecraftpe/input/InputDeviceManager;
.super Ljava/lang/Object;
.source "InputDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mojang/minecraftpe/input/InputDeviceManager$DefaultDeviceManager;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/mojang/minecraftpe/input/InputDeviceManager;
    .locals 1

    .line 19
    new-instance v0, Lcom/mojang/minecraftpe/input/JellyBeanDeviceManager;

    invoke-direct {v0, p0}, Lcom/mojang/minecraftpe/input/JellyBeanDeviceManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public abstract register()V
.end method

.method public abstract unregister()V
.end method
