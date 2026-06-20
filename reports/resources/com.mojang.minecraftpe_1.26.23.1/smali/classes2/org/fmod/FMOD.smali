.class public Lorg/fmod/FMOD;
.super Ljava/lang/Object;
.source "FMOD.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fmod/FMOD$PluginAudioDeviceCallback;,
        Lorg/fmod/FMOD$PluginBroadcastReceiver;
    }
.end annotation


# static fields
.field private static gContext:Landroid/content/Context;

.field private static gPluginAudioDeviceCallback:Lorg/fmod/FMOD$PluginAudioDeviceCallback;

.field private static gPluginBroadcastReceiver:Lorg/fmod/FMOD$PluginBroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 246
    new-instance v0, Lorg/fmod/FMOD$PluginBroadcastReceiver;

    invoke-direct {v0}, Lorg/fmod/FMOD$PluginBroadcastReceiver;-><init>()V

    sput-object v0, Lorg/fmod/FMOD;->gPluginBroadcastReceiver:Lorg/fmod/FMOD$PluginBroadcastReceiver;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native OutputAAudioHeadphonesChanged()V
.end method

.method private static native SetInputEnumerationChanged()V
.end method

.method private static native SetOutputEnumerationChanged()V
.end method

.method static synthetic access$000()V
    .locals 0

    .line 22
    invoke-static {}, Lorg/fmod/FMOD;->OutputAAudioHeadphonesChanged()V

    return-void
.end method

.method static synthetic access$100()V
    .locals 0

    .line 22
    invoke-static {}, Lorg/fmod/FMOD;->SetInputEnumerationChanged()V

    return-void
.end method

.method static synthetic access$200()V
    .locals 0

    .line 22
    invoke-static {}, Lorg/fmod/FMOD;->SetOutputEnumerationChanged()V

    return-void
.end method

.method public static checkInit()Z
    .locals 1

    .line 65
    sget-object v0, Lorg/fmod/FMOD;->gContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static close()V
    .locals 2

    .line 48
    sget-object v0, Lorg/fmod/FMOD;->gContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 50
    sget-object v1, Lorg/fmod/FMOD;->gPluginBroadcastReceiver:Lorg/fmod/FMOD$PluginBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 53
    sget-object v0, Lorg/fmod/FMOD;->gContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 54
    sget-object v1, Lorg/fmod/FMOD;->gPluginAudioDeviceCallback:Lorg/fmod/FMOD$PluginAudioDeviceCallback;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->unregisterAudioDeviceCallback(Landroid/media/AudioDeviceCallback;)V

    :cond_0
    const/4 v0, 0x0

    .line 57
    sput-object v0, Lorg/fmod/FMOD;->gContext:Landroid/content/Context;

    return-void
.end method

.method public static fileDescriptorFromUri(Ljava/lang/String;)I
    .locals 3

    .line 216
    sget-object v0, Lorg/fmod/FMOD;->gContext:Landroid/content/Context;

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 218
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 222
    :try_start_0
    sget-object v0, Lorg/fmod/FMOD;->gContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "r"

    invoke-virtual {v0, p0, v2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    .line 228
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    move-result p0

    return p0

    :catch_0
    :cond_0
    return v1
.end method

.method public static getAssetManager()Landroid/content/res/AssetManager;
    .locals 1

    .line 70
    sget-object v0, Lorg/fmod/FMOD;->gContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static getDeviceName(I)Ljava/lang/String;
    .locals 3

    .line 157
    sget-object v0, Lorg/fmod/FMOD;->gContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 159
    sget-object v0, Lorg/fmod/FMOD;->gContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x3

    .line 160
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getDevices(I)[Landroid/media/AudioDeviceInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 163
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 165
    aget-object v2, v0, v1

    invoke-virtual {v2}, Landroid/media/AudioDeviceInfo;->getId()I

    move-result v2

    if-ne v2, p0, :cond_0

    .line 167
    aget-object p0, v0, v1

    invoke-virtual {p0}, Landroid/media/AudioDeviceInfo;->getProductName()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 172
    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method public static getDeviceType(I)I
    .locals 4

    .line 177
    sget-object v0, Lorg/fmod/FMOD;->gContext:Landroid/content/Context;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 179
    sget-object v0, Lorg/fmod/FMOD;->gContext:Landroid/content/Context;

    const/4 v2, 0x0

    sget-object v2, Lorg/spongycastle/math/field/TKPd/fRDYVDRbWIVvS;->MfmfjLaJKeNzrkZ:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v2, 0x3

    .line 180
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getDevices(I)[Landroid/media/AudioDeviceInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    move v2, v1

    .line 183
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 185
    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/media/AudioDeviceInfo;->getId()I

    move-result v3

    if-ne v3, p0, :cond_0

    .line 187
    aget-object p0, v0, v2

    invoke-virtual {p0}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result p0

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static getDevices(I)[I
    .locals 3

    .line 197
    sget-object v0, Lorg/fmod/FMOD;->gContext:Landroid/content/Context;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 199
    sget-object v0, Lorg/fmod/FMOD;->gContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 200
    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->getDevices(I)[Landroid/media/AudioDeviceInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 203
    array-length v0, p0

    new-array v0, v0, [I

    .line 204
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 206
    aget-object v2, p0, v1

    invoke-virtual {v2}, Landroid/media/AudioDeviceInfo;->getId()I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    .line 211
    :cond_1
    new-array p0, v1, [I

    return-object p0
.end method

.method public static getOutputBlockSize()I
    .locals 2

    .line 129
    sget-object v0, Lorg/fmod/FMOD;->gContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 131
    sget-object v0, Lorg/fmod/FMOD;->gContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 133
    const-string v1, "android.media.property.OUTPUT_FRAMES_PER_BUFFER"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 136
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static getOutputSampleRate()I
    .locals 2

    .line 113
    sget-object v0, Lorg/fmod/FMOD;->gContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 115
    sget-object v0, Lorg/fmod/FMOD;->gContext:Landroid/content/Context;

    const/4 v1, 0x0

    sget-object v1, Lorg/apache/http/impl/ioGi/maoGUKggpn;->aQYUhAKYXny:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 117
    const-string v1, "android.media.property.OUTPUT_SAMPLE_RATE"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 120
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2

    .line 31
    sput-object p0, Lorg/fmod/FMOD;->gContext:Landroid/content/Context;

    if-eqz p0, :cond_0

    .line 34
    new-instance p0, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.HEADSET_PLUG"

    invoke-direct {p0, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 35
    sget-object v0, Lorg/fmod/FMOD;->gContext:Landroid/content/Context;

    sget-object v1, Lorg/fmod/FMOD;->gPluginBroadcastReceiver:Lorg/fmod/FMOD$PluginBroadcastReceiver;

    invoke-virtual {v0, v1, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 39
    sget-object p0, Lorg/fmod/FMOD;->gContext:Landroid/content/Context;

    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    .line 40
    new-instance v0, Lorg/fmod/FMOD$PluginAudioDeviceCallback;

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Landroid/media/AudioManager;->getDevices(I)[Landroid/media/AudioDeviceInfo;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/fmod/FMOD$PluginAudioDeviceCallback;-><init>([Landroid/media/AudioDeviceInfo;)V

    sput-object v0, Lorg/fmod/FMOD;->gPluginAudioDeviceCallback:Lorg/fmod/FMOD$PluginAudioDeviceCallback;

    const/4 v1, 0x0

    .line 41
    invoke-virtual {p0, v0, v1}, Landroid/media/AudioManager;->registerAudioDeviceCallback(Landroid/media/AudioDeviceCallback;Landroid/os/Handler;)V

    :cond_0
    return-void
.end method

.method public static isBluetoothOn()Z
    .locals 3

    .line 145
    sget-object v0, Lorg/fmod/FMOD;->gContext:Landroid/content/Context;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 147
    const-string v2, "audio"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 149
    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static lowLatencyFlag()Z
    .locals 2

    .line 88
    sget-object v0, Lorg/fmod/FMOD;->gContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 90
    sget-object v0, Lorg/fmod/FMOD;->gContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.audio.low_latency"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static proAudioFlag()Z
    .locals 2

    .line 97
    sget-object v0, Lorg/fmod/FMOD;->gContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 99
    sget-object v0, Lorg/fmod/FMOD;->gContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.audio.pro"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static supportsAAudio()Z
    .locals 2

    .line 108
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static supportsLowLatency()Z
    .locals 9

    .line 75
    invoke-static {}, Lorg/fmod/FMOD;->getOutputBlockSize()I

    move-result v0

    .line 76
    invoke-static {}, Lorg/fmod/FMOD;->lowLatencyFlag()Z

    move-result v1

    .line 77
    invoke-static {}, Lorg/fmod/FMOD;->proAudioFlag()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lez v0, :cond_0

    const/16 v5, 0x400

    if-gt v0, v5, :cond_0

    move v5, v3

    goto :goto_0

    :cond_0
    move v5, v4

    .line 79
    :goto_0
    invoke-static {}, Lorg/fmod/FMOD;->isBluetoothOn()Z

    move-result v6

    .line 81
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "FMOD::supportsLowLatency                 : Low latency = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", Pro Audio = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, ", Bluetooth On = "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, ", Acceptable Block Size = "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, " ("

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "fmod"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_1

    if-eqz v1, :cond_1

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    return v3
.end method
