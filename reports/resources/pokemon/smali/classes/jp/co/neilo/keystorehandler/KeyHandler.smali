.class public Ljp/co/neilo/keystorehandler/KeyHandler;
.super Ljava/lang/Object;
.source "KeyHandler.java"


# static fields
.field private static s_Context:Landroid/content/Context; = null

.field public static s_LockObject:Ljava/lang/Object;

.field public static s_ReqeustedKey:Ljava/lang/String; = ""

.field private static s_Thread:Ljp/co/neilo/keystorehandler/GetKeyThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 264
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ljp/co/neilo/keystorehandler/KeyHandler;->s_LockObject:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 265
    sput-object v0, Ljp/co/neilo/keystorehandler/KeyHandler;->s_Thread:Ljp/co/neilo/keystorehandler/GetKeyThread;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static GenerateIv()[B
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 121
    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 1
        -0x70t
        -0x2ft
        0x58t
        -0x1dt
        -0x4at
        -0x4at
        -0x1t
        -0x14t
        0x6ft
        0x20t
        0x2bt
        -0x7bt
        0x58t
        0x1ft
        -0x2bt
        -0x56t
    .end array-data
.end method

.method private static GenerateRandom16ByteStr(I)Ljava/lang/String;
    .locals 7

    const/16 v0, 0x20

    new-array v0, v0, [B

    .line 104
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0x8

    if-ge v3, v4, :cond_0

    const/4 v4, 0x4

    .line 106
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    mul-int/lit8 v6, v3, 0x4

    .line 107
    invoke-static {v5, v2, v0, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 109
    :cond_0
    invoke-static {v0, p0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x10

    .line 110
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static GetKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 258
    sget-object v0, Ljp/co/neilo/keystorehandler/KeyHandler;->s_Context:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 259
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Ljp/co/neilo/keystorehandler/KeyHandler;->s_Context:Landroid/content/Context;

    .line 260
    :cond_0
    invoke-static {p0}, Ljp/co/neilo/keystorehandler/KeyHandler;->GetKeyImpl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static GetKeyImpl(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "KeyHandler"

    const-string v1, "Start GetKeyImpl"

    .line 36
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    sget-object v1, Ljp/co/neilo/keystorehandler/KeyHandler;->s_Context:Landroid/content/Context;

    const-string v2, "pqdata"

    const/4 v3, 0x0

    .line 39
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "pqskey2"

    const-string v3, ""

    .line 40
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "pqskey3"

    .line 41
    invoke-interface {v1, v5, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 43
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    const-string v7, "AES/CBC/PKCS5Padding"

    const-string v8, "AES"

    const/4 v9, 0x2

    if-eqz v6, :cond_1

    .line 44
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_0

    goto :goto_0

    .line 81
    :cond_0
    new-instance p0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {p0, v1, v8}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 82
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-static {}, Ljp/co/neilo/keystorehandler/KeyHandler;->GenerateIv()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 83
    invoke-static {v7}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 84
    invoke-virtual {v2, v9, p0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 85
    invoke-static {v4, v9}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    .line 86
    invoke-virtual {v2, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    .line 87
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0}, Ljava/lang/String;-><init>([B)V

    goto :goto_2

    .line 46
    :cond_1
    :goto_0
    invoke-static {p0}, Ljp/co/neilo/keystorehandler/KeyHandler;->GetKeyImpl_v100(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    goto :goto_1

    .line 55
    :cond_2
    invoke-static {v9}, Ljp/co/neilo/keystorehandler/KeyHandler;->GenerateRandom16ByteStr(I)Ljava/lang/String;

    move-result-object p0

    .line 60
    :goto_1
    invoke-static {v9}, Ljp/co/neilo/keystorehandler/KeyHandler;->GenerateRandom16ByteStr(I)Ljava/lang/String;

    move-result-object v3

    .line 63
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-direct {v4, v6, v8}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 64
    new-instance v6, Ljavax/crypto/spec/IvParameterSpec;

    invoke-static {}, Ljp/co/neilo/keystorehandler/KeyHandler;->GenerateIv()[B

    move-result-object v8

    invoke-direct {v6, v8}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 65
    invoke-static {v7}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v7

    const/4 v8, 0x1

    .line 66
    invoke-virtual {v7, v8, v4, v6}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 67
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 68
    invoke-virtual {v7, v4}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v4

    .line 69
    invoke-static {v4, v9}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    .line 72
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 73
    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 74
    invoke-interface {v1, v5, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 75
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-object v1, p0

    :goto_2
    const-string p0, "Finish GetKeyImpl"

    .line 92
    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public static GetKeyImpl_v100(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string p0, "KeyHandler"

    const-string v0, "Start GetKeyImpl_v100"

    .line 132
    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "From Android Plugin : "

    .line 134
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 136
    sget-object v2, Ljp/co/neilo/keystorehandler/KeyHandler;->s_Context:Landroid/content/Context;

    const-string v3, "GetKeyPair GetKeyImpl_v100"

    .line 138
    invoke-static {p0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "AndroidKeyStore"

    .line 139
    invoke-static {v3}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v3

    const/4 v4, 0x0

    .line 140
    invoke-virtual {v3, v4}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    const-string v5, "pqalias"

    .line 141
    invoke-virtual {v3, v5, v4}, Ljava/security/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object v3

    .line 143
    instance-of v5, v3, Ljava/security/KeyStore$PrivateKeyEntry;

    if-eqz v5, :cond_1

    .line 145
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "LoadPrivateKey : "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 146
    check-cast v3, Ljava/security/KeyStore$PrivateKeyEntry;

    invoke-virtual {v3}, Ljava/security/KeyStore$PrivateKeyEntry;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object v3

    const-string v5, "GetKey From SharedPreferences"

    .line 174
    invoke-static {p0, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "pqdata"

    .line 175
    invoke-virtual {v2, v5, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v5, "pqskey"

    const-string v6, ""

    .line 176
    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 178
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_0

    const-string v0, "Finish GetKeyImpl_v100 : SharedPreferences Old Key None"

    .line 211
    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    .line 215
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "GetKeyFromPreferences : "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 216
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const-string v1, "Decryption Key"

    .line 218
    invoke-static {p0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "RSA/ECB/PKCS1Padding"

    .line 221
    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    const/4 v4, 0x2

    .line 222
    invoke-virtual {v1, v4, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 223
    invoke-static {v2, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 224
    invoke-virtual {v1, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    .line 225
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    const-string v0, "Finish GetKeyImpl_v100 : Old Key Exist"

    .line 228
    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1
    const-string v0, "Finish GetKeyImpl_v100 : KeyStore Old Key None"

    .line 169
    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4
.end method

.method public static GetRequestedKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string p0, "KeyHandler"

    const-string v0, "Start GetRequestedKey"

    .line 278
    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    sget-object p0, Ljp/co/neilo/keystorehandler/KeyHandler;->s_LockObject:Ljava/lang/Object;

    monitor-enter p0

    .line 282
    :try_start_0
    sget-object v0, Ljp/co/neilo/keystorehandler/KeyHandler;->s_ReqeustedKey:Ljava/lang/String;

    const-string v1, ""

    if-eq v0, v1, :cond_0

    const-string v1, ""

    .line 285
    sput-object v1, Ljp/co/neilo/keystorehandler/KeyHandler;->s_ReqeustedKey:Ljava/lang/String;

    const/4 v1, 0x0

    .line 286
    sput-object v1, Ljp/co/neilo/keystorehandler/KeyHandler;->s_Thread:Ljp/co/neilo/keystorehandler/GetKeyThread;

    .line 288
    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static RemoveKey()V
    .locals 4

    const-string v0, "KeyHandler"

    const-string v1, "Start RemoveKey"

    .line 241
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    sget-object v1, Ljp/co/neilo/keystorehandler/KeyHandler;->s_Context:Landroid/content/Context;

    const-string v2, "pqdata"

    const/4 v3, 0x0

    .line 246
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 249
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 250
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 251
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string v1, "Finish RemoveKey"

    .line 253
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static RequestKey(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "KeyHandler"

    const-string v1, "Start RequestKey"

    .line 269
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    sget-object v0, Ljp/co/neilo/keystorehandler/KeyHandler;->s_Context:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 271
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Ljp/co/neilo/keystorehandler/KeyHandler;->s_Context:Landroid/content/Context;

    .line 272
    :cond_0
    new-instance v0, Ljp/co/neilo/keystorehandler/GetKeyThread;

    invoke-direct {v0, p0}, Ljp/co/neilo/keystorehandler/GetKeyThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljp/co/neilo/keystorehandler/KeyHandler;->s_Thread:Ljp/co/neilo/keystorehandler/GetKeyThread;

    .line 273
    invoke-virtual {v0}, Ljp/co/neilo/keystorehandler/GetKeyThread;->start()V

    return-void
.end method
