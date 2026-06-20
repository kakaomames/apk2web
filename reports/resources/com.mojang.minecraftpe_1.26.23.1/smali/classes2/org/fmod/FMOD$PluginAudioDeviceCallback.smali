.class Lorg/fmod/FMOD$PluginAudioDeviceCallback;
.super Landroid/media/AudioDeviceCallback;
.source "FMOD.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fmod/FMOD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PluginAudioDeviceCallback"
.end annotation


# static fields
.field private static deviceSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([Landroid/media/AudioDeviceInfo;)V
    .locals 3

    .line 253
    invoke-direct {p0}, Landroid/media/AudioDeviceCallback;-><init>()V

    .line 254
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/fmod/FMOD$PluginAudioDeviceCallback;->deviceSet:Ljava/util/HashSet;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 258
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 260
    sget-object v1, Lorg/fmod/FMOD$PluginAudioDeviceCallback;->deviceSet:Ljava/util/HashSet;

    aget-object v2, p1, v0

    invoke-virtual {v2}, Landroid/media/AudioDeviceInfo;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public onAudioDevicesAdded([Landroid/media/AudioDeviceInfo;)V
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    move v1, v0

    move v2, v1

    .line 273
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_3

    .line 275
    sget-object v3, Lorg/fmod/FMOD$PluginAudioDeviceCallback;->deviceSet:Ljava/util/HashSet;

    aget-object v4, p1, v0

    invoke-virtual {v4}, Landroid/media/AudioDeviceInfo;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 277
    aget-object v3, p1, v0

    invoke-virtual {v3}, Landroid/media/AudioDeviceInfo;->isSource()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    move v1, v4

    .line 281
    :cond_0
    aget-object v3, p1, v0

    invoke-virtual {v3}, Landroid/media/AudioDeviceInfo;->isSink()Z

    move-result v3

    if-eqz v3, :cond_1

    move v2, v4

    .line 285
    :cond_1
    sget-object v3, Lorg/fmod/FMOD$PluginAudioDeviceCallback;->deviceSet:Ljava/util/HashSet;

    aget-object v4, p1, v0

    invoke-virtual {v4}, Landroid/media/AudioDeviceInfo;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    move v2, v0

    :goto_1
    if-eqz v0, :cond_5

    .line 292
    invoke-static {}, Lorg/fmod/FMOD;->access$100()V

    :cond_5
    if-eqz v2, :cond_6

    .line 296
    invoke-static {}, Lorg/fmod/FMOD;->access$200()V

    :cond_6
    return-void
.end method

.method public onAudioDevicesRemoved([Landroid/media/AudioDeviceInfo;)V
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    move v1, v0

    move v2, v1

    .line 308
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_3

    .line 310
    sget-object v3, Lorg/fmod/FMOD$PluginAudioDeviceCallback;->deviceSet:Ljava/util/HashSet;

    aget-object v4, p1, v0

    invoke-virtual {v4}, Landroid/media/AudioDeviceInfo;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 312
    aget-object v3, p1, v0

    invoke-virtual {v3}, Landroid/media/AudioDeviceInfo;->isSource()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    move v1, v4

    .line 316
    :cond_0
    aget-object v3, p1, v0

    invoke-virtual {v3}, Landroid/media/AudioDeviceInfo;->isSink()Z

    move-result v3

    if-eqz v3, :cond_1

    move v2, v4

    .line 320
    :cond_1
    sget-object v3, Lorg/fmod/FMOD$PluginAudioDeviceCallback;->deviceSet:Ljava/util/HashSet;

    aget-object v4, p1, v0

    invoke-virtual {v4}, Landroid/media/AudioDeviceInfo;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    move v2, v0

    :goto_1
    if-eqz v0, :cond_5

    .line 327
    invoke-static {}, Lorg/fmod/FMOD;->access$100()V

    :cond_5
    if-eqz v2, :cond_6

    .line 331
    invoke-static {}, Lorg/fmod/FMOD;->access$200()V

    :cond_6
    return-void
.end method
