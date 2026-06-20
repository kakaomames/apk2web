.class public Lcom/microsoft/xbox/idp/interop/Interop;
.super Ljava/lang/Object;
.source "Interop.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xbox/idp/interop/Interop$ErrorStatus;,
        Lcom/microsoft/xbox/idp/interop/Interop$ErrorType;,
        Lcom/microsoft/xbox/idp/interop/Interop$AuthFlowScreenStatus;,
        Lcom/microsoft/xbox/idp/interop/Interop$EventInitializationCallback;,
        Lcom/microsoft/xbox/idp/interop/Interop$ErrorCallback;
    }
.end annotation


# static fields
.field private static final DNET_SCOPE:Ljava/lang/String; = "open-user.auth.dnet.xboxlive.com"

.field private static final PACKAGE_NAME_TO_REMOVE:Ljava/lang/String; = "com.microsoft.onlineid.sample"

.field private static final POLICY:Ljava/lang/String; = "mbi_ssl"

.field private static final PROD_SCOPE:Ljava/lang/String; = "open-user.auth.xboxlive.com"

.field private static final TAG:Ljava/lang/String; = "Interop"

.field private static s_context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetLocalStoragePath(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 101
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static NotificationRegisterCallback(Ljava/lang/String;)V
    .locals 3

    .line 110
    sget-object v0, Lcom/microsoft/xbox/idp/interop/Interop;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "NotificationRegisterCallback, token:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-static {p0}, Lcom/microsoft/xbox/idp/interop/Interop;->notificiation_registration_callback(Ljava/lang/String;)V

    return-void
.end method

.method public static ReadConfigFile(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .line 75
    sput-object p0, Lcom/microsoft/xbox/idp/interop/Interop;->s_context:Landroid/content/Context;

    .line 77
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 78
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "raw"

    .line 79
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 78
    const-string/jumbo v3, "xboxservices"

    invoke-virtual {v1, v3, v2, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    .line 77
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p0

    .line 80
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x400

    .line 82
    new-array v1, v1, [B

    .line 86
    :goto_0
    :try_start_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v3, 0x0

    .line 88
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 90
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 91
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 96
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static RegisterWithGNS(Landroid/content/Context;)V
    .locals 3

    .line 115
    const/4 p0, 0x0

    sget-object p0, Lorg/conscrypt/io/fMC/nEChR;->jtowNPrkQjpfR:Ljava/lang/String;

    const-string/jumbo v0, "trying to register.."

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :try_start_0
    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->getInstance()Lcom/google/firebase/iid/FirebaseInstanceId;

    move-result-object p0

    .line 119
    invoke-virtual {p0}, Lcom/google/firebase/iid/FirebaseInstanceId;->getInstanceId()Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    new-instance v0, Lcom/microsoft/xbox/idp/interop/Interop$2;

    invoke-direct {v0}, Lcom/microsoft/xbox/idp/interop/Interop$2;-><init>()V

    .line 120
    invoke-virtual {p0, v0}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    new-instance v0, Lcom/microsoft/xbox/idp/interop/Interop$1;

    invoke-direct {v0}, Lcom/microsoft/xbox/idp/interop/Interop$1;-><init>()V

    .line 129
    invoke-virtual {p0, v0}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 137
    sget-object v0, Lcom/microsoft/xbox/idp/interop/Interop;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Gettting Firebase instance failed, message:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 17
    sget-object v0, Lcom/microsoft/xbox/idp/interop/Interop;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static native deinitializeInterop()Z
.end method

.method public static getApplicationContext()Landroid/content/Context;
    .locals 1

    .line 106
    sget-object v0, Lcom/microsoft/xbox/idp/interop/Interop;->s_context:Landroid/content/Context;

    return-object v0
.end method

.method public static getLocale()Ljava/lang/String;
    .locals 4

    .line 66
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    .line 67
    sget-object v1, Lcom/microsoft/xbox/idp/interop/Interop;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "locale is: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static getSystemProxy()Ljava/lang/String;
    .locals 4

    .line 51
    const-string v0, "http.proxyHost"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 54
    const-string v1, "http.proxyPort"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 57
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "http://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 58
    sget-object v1, Lcom/microsoft/xbox/idp/interop/Interop;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 62
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public static native initializeInterop(Landroid/content/Context;)Z
.end method

.method private static native notificiation_registration_callback(Ljava/lang/String;)V
.end method
