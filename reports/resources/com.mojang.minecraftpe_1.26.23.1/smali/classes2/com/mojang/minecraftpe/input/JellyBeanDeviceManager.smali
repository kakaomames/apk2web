.class public Lcom/mojang/minecraftpe/input/JellyBeanDeviceManager;
.super Lcom/mojang/minecraftpe/input/InputDeviceManager;
.source "JellyBeanDeviceManager.java"

# interfaces
.implements Landroid/hardware/input/InputManager$InputDeviceListener;


# instance fields
.field private final inputManager:Landroid/hardware/input/InputManager;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 17
    invoke-direct {p0}, Lcom/mojang/minecraftpe/input/InputDeviceManager;-><init>()V

    .line 18
    const-string v0, "input"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/input/InputManager;

    iput-object p1, p0, Lcom/mojang/minecraftpe/input/JellyBeanDeviceManager;->inputManager:Landroid/hardware/input/InputManager;

    return-void
.end method


# virtual methods
.method public checkForXboxAndPlaystationController()V
    .locals 8

    .line 72
    iget-object v0, p0, Lcom/mojang/minecraftpe/input/JellyBeanDeviceManager;->inputManager:Landroid/hardware/input/InputManager;

    invoke-virtual {v0}, Landroid/hardware/input/InputManager;->getInputDeviceIds()[I

    move-result-object v0

    .line 76
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v2, v1, :cond_1

    aget v6, v0, v2

    .line 77
    invoke-static {v6}, Lcom/mojang/minecraftpe/input/InputCharacteristics;->isXboxController(I)Z

    move-result v7

    or-int/2addr v3, v7

    .line 78
    invoke-static {v6}, Lcom/mojang/minecraftpe/input/InputCharacteristics;->isPlaystationController(I)Z

    move-result v7

    or-int/2addr v4, v7

    .line 79
    invoke-static {v6}, Lcom/mojang/minecraftpe/input/InputCharacteristics;->isDualsenseController(I)Z

    move-result v6

    or-int/2addr v5, v6

    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 84
    :cond_1
    :goto_1
    invoke-virtual {p0, v3}, Lcom/mojang/minecraftpe/input/JellyBeanDeviceManager;->setFoundXboxControllerNative(Z)V

    .line 85
    invoke-virtual {p0, v4}, Lcom/mojang/minecraftpe/input/JellyBeanDeviceManager;->setFoundPlaystationControllerNative(Z)V

    .line 86
    invoke-virtual {p0, v5}, Lcom/mojang/minecraftpe/input/JellyBeanDeviceManager;->setFoundDualsenseControllerNative(Z)V

    return-void
.end method

.method public onInputDeviceAdded(I)V
    .locals 2

    .line 41
    invoke-virtual {p0, p1}, Lcom/mojang/minecraftpe/input/JellyBeanDeviceManager;->onInputDeviceAddedNative(I)V

    .line 42
    invoke-static {}, Lcom/mojang/minecraftpe/input/InputCharacteristics;->allControllersHaveDoubleTriggers()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mojang/minecraftpe/input/JellyBeanDeviceManager;->setDoubleTriggersSupportedNative(Z)V

    .line 43
    invoke-static {p1}, Lcom/mojang/minecraftpe/input/InputCharacteristics;->isCreteController(I)Z

    move-result v0

    invoke-static {p1}, Lcom/mojang/minecraftpe/input/InputCharacteristics;->supportsAnalogTriggers(I)Z

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/mojang/minecraftpe/input/JellyBeanDeviceManager;->setControllerDetailsNative(IZZ)V

    .line 44
    invoke-static {p1}, Lcom/mojang/minecraftpe/input/InputCharacteristics;->isXboxController(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {p0, v1}, Lcom/mojang/minecraftpe/input/JellyBeanDeviceManager;->setFoundXboxControllerNative(Z)V

    goto :goto_0

    .line 47
    :cond_0
    invoke-static {p1}, Lcom/mojang/minecraftpe/input/InputCharacteristics;->isPlaystationController(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 48
    invoke-virtual {p0, v1}, Lcom/mojang/minecraftpe/input/JellyBeanDeviceManager;->setFoundPlaystationControllerNative(Z)V

    .line 49
    invoke-static {p1}, Lcom/mojang/minecraftpe/input/InputCharacteristics;->isDualsenseController(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 50
    invoke-virtual {p0, v1}, Lcom/mojang/minecraftpe/input/JellyBeanDeviceManager;->setFoundDualsenseControllerNative(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method native onInputDeviceAddedNative(I)V
.end method

.method public onInputDeviceChanged(I)V
    .locals 2

    .line 57
    invoke-virtual {p0, p1}, Lcom/mojang/minecraftpe/input/JellyBeanDeviceManager;->onInputDeviceChangedNative(I)V

    .line 58
    invoke-static {}, Lcom/mojang/minecraftpe/input/InputCharacteristics;->allControllersHaveDoubleTriggers()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mojang/minecraftpe/input/JellyBeanDeviceManager;->setDoubleTriggersSupportedNative(Z)V

    .line 59
    invoke-static {p1}, Lcom/mojang/minecraftpe/input/InputCharacteristics;->isCreteController(I)Z

    move-result v0

    invoke-static {p1}, Lcom/mojang/minecraftpe/input/InputCharacteristics;->supportsAnalogTriggers(I)Z

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/mojang/minecraftpe/input/JellyBeanDeviceManager;->setControllerDetailsNative(IZZ)V

    .line 60
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/input/JellyBeanDeviceManager;->checkForXboxAndPlaystationController()V

    return-void
.end method

.method native onInputDeviceChangedNative(I)V
.end method

.method public onInputDeviceRemoved(I)V
    .locals 2

    .line 65
    invoke-virtual {p0, p1}, Lcom/mojang/minecraftpe/input/JellyBeanDeviceManager;->onInputDeviceRemovedNative(I)V

    .line 66
    invoke-static {}, Lcom/mojang/minecraftpe/input/InputCharacteristics;->allControllersHaveDoubleTriggers()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mojang/minecraftpe/input/JellyBeanDeviceManager;->setDoubleTriggersSupportedNative(Z)V

    .line 67
    invoke-static {p1}, Lcom/mojang/minecraftpe/input/InputCharacteristics;->isCreteController(I)Z

    move-result v0

    invoke-static {p1}, Lcom/mojang/minecraftpe/input/InputCharacteristics;->supportsAnalogTriggers(I)Z

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/mojang/minecraftpe/input/JellyBeanDeviceManager;->setControllerDetailsNative(IZZ)V

    .line 68
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/input/JellyBeanDeviceManager;->checkForXboxAndPlaystationController()V

    return-void
.end method

.method native onInputDeviceRemovedNative(I)V
.end method

.method public register()V
    .locals 5

    .line 24
    iget-object v0, p0, Lcom/mojang/minecraftpe/input/JellyBeanDeviceManager;->inputManager:Landroid/hardware/input/InputManager;

    invoke-virtual {v0}, Landroid/hardware/input/InputManager;->getInputDeviceIds()[I

    move-result-object v0

    .line 25
    iget-object v1, p0, Lcom/mojang/minecraftpe/input/JellyBeanDeviceManager;->inputManager:Landroid/hardware/input/InputManager;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    .line 26
    invoke-static {}, Lcom/mojang/minecraftpe/input/InputCharacteristics;->allControllersHaveDoubleTriggers()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/mojang/minecraftpe/input/JellyBeanDeviceManager;->setDoubleTriggersSupportedNative(Z)V

    const/4 v1, 0x0

    .line 28
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 29
    aget v2, v0, v1

    invoke-static {v2}, Lcom/mojang/minecraftpe/input/InputCharacteristics;->isCreteController(I)Z

    move-result v3

    aget v4, v0, v1

    invoke-static {v4}, Lcom/mojang/minecraftpe/input/InputCharacteristics;->supportsAnalogTriggers(I)Z

    move-result v4

    invoke-virtual {p0, v2, v3, v4}, Lcom/mojang/minecraftpe/input/JellyBeanDeviceManager;->setControllerDetailsNative(IZZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/input/JellyBeanDeviceManager;->checkForXboxAndPlaystationController()V

    return-void
.end method

.method native setControllerDetailsNative(IZZ)V
.end method

.method native setDoubleTriggersSupportedNative(Z)V
.end method

.method native setFoundDualsenseControllerNative(Z)V
.end method

.method native setFoundPlaystationControllerNative(Z)V
.end method

.method native setFoundXboxControllerNative(Z)V
.end method

.method public unregister()V
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/mojang/minecraftpe/input/JellyBeanDeviceManager;->inputManager:Landroid/hardware/input/InputManager;

    invoke-virtual {v0, p0}, Landroid/hardware/input/InputManager;->unregisterInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;)V

    return-void
.end method
