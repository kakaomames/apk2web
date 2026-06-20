.class public Lcom/googleplay/licensing/ServerManagedPolicy;
.super Ljava/lang/Object;
.source "ServerManagedPolicy.java"

# interfaces
.implements Lcom/googleplay/licensing/Policy;


# static fields
.field private static final DEFAULT_MAX_RETRIES:Ljava/lang/String; = "0"

.field private static final DEFAULT_RETRY_COUNT:Ljava/lang/String; = "0"

.field private static final DEFAULT_RETRY_UNTIL:Ljava/lang/String; = "0"

.field private static final DEFAULT_VALIDITY_TIMESTAMP:Ljava/lang/String; = "0"

.field private static final MILLIS_PER_MINUTE:J = 0xea60L

.field private static final PREFS_FILE:Ljava/lang/String; = "com.android.vending.licensing.ServerManagedPolicy"

.field private static final PREF_LAST_RESPONSE:Ljava/lang/String; = "lastResponse"

.field private static final PREF_MAX_RETRIES:Ljava/lang/String; = "maxRetries"

.field private static final PREF_RETRY_COUNT:Ljava/lang/String; = "retryCount"

.field private static final PREF_RETRY_UNTIL:Ljava/lang/String; = "retryUntil"

.field private static final PREF_VALIDITY_TIMESTAMP:Ljava/lang/String; = "validityTimestamp"

.field private static final TAG:Ljava/lang/String; = "ServerManagedPolicy"

.field private static isServerResponse:Z = false


# instance fields
.field private mLastResponse:I

.field private mLastResponseTime:J

.field private mMaxRetries:J

.field private mOriginalGT:J

.field private mOriginalRetries:J

.field private mOriginalVT:J

.field private mPreferences:Lcom/googleplay/licensing/PreferenceObfuscator;

.field private mRetryCount:J

.field private mRetryUntil:J

.field private mValidityTimestamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/googleplay/licensing/Obfuscator;)V
    .locals 2

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0xea60

    .line 64
    iput-wide v0, p0, Lcom/googleplay/licensing/ServerManagedPolicy;->mOriginalVT:J

    const-wide/16 v0, 0x0

    .line 65
    iput-wide v0, p0, Lcom/googleplay/licensing/ServerManagedPolicy;->mOriginalGT:J

    .line 66
    iput-wide v0, p0, Lcom/googleplay/licensing/ServerManagedPolicy;->mOriginalRetries:J

    .line 72
    iput-wide v0, p0, Lcom/googleplay/licensing/ServerManagedPolicy;->mLastResponseTime:J

    .line 82
    const-string v0, "com.android.vending.licensing.ServerManagedPolicy"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 83
    new-instance v0, Lcom/googleplay/licensing/PreferenceObfuscator;

    invoke-direct {v0, p1, p2}, Lcom/googleplay/licensing/PreferenceObfuscator;-><init>(Landroid/content/SharedPreferences;Lcom/googleplay/licensing/Obfuscator;)V

    iput-object v0, p0, Lcom/googleplay/licensing/ServerManagedPolicy;->mPreferences:Lcom/googleplay/licensing/PreferenceObfuscator;

    const/16 p1, 0x123

    .line 85
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "lastResponse"

    invoke-virtual {v0, p2, p1}, Lcom/googleplay/licensing/PreferenceObfuscator;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 84
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/googleplay/licensing/ServerManagedPolicy;->mLastResponse:I

    .line 86
    iget-object p1, p0, Lcom/googleplay/licensing/ServerManagedPolicy;->mPreferences:Lcom/googleplay/licensing/PreferenceObfuscator;

    const-string/jumbo p2, "validityTimestamp"

    const-string v0, "0"

    invoke-virtual {p1, p2, v0}, Lcom/googleplay/licensing/PreferenceObfuscator;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/googleplay/licensing/ServerManagedPolicy;->mValidityTimestamp:J

    .line 88
    iget-object p1, p0, Lcom/googleplay/licensing/ServerManagedPolicy;->mPreferences:Lcom/googleplay/licensing/PreferenceObfuscator;

    const-string p2, "retryUntil"

    invoke-virtual {p1, p2, v0}, Lcom/googleplay/licensing/PreferenceObfuscator;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/googleplay/licensing/ServerManagedPolicy;->mRetryUntil:J

    .line 89
    iget-object p1, p0, Lcom/googleplay/licensing/ServerManagedPolicy;->mPreferences:Lcom/googleplay/licensing/PreferenceObfuscator;

    const-string p2, "maxRetries"

    invoke-virtual {p1, p2, v0}, Lcom/googleplay/licensing/PreferenceObfuscator;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/googleplay/licensing/ServerManagedPolicy;->mMaxRetries:J

    .line 90
    iget-object p1, p0, Lcom/googleplay/licensing/ServerManagedPolicy;->mPreferences:Lcom/googleplay/licensing/PreferenceObfuscator;

    const-string p2, "retryCount"

    invoke-virtual {p1, p2, v0}, Lcom/googleplay/licensing/PreferenceObfuscator;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/googleplay/licensing/ServerManagedPolicy;->mRetryCount:J

    return-void
.end method

.method private decodeExtras(Ljava/lang/String;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "?"

    .line 290
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 292
    :try_start_0
    new-instance v2, Ljava/net/URI;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 293
    const-string p1, "UTF-8"

    invoke-static {v2, p1}, Lorg/apache/http/client/utils/URLEncodedUtils;->parse(Ljava/net/URI;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 294
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/NameValuePair;

    .line 295
    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 298
    :catch_0
    const-string p1, "ServerManagedPolicy"

    const-string v0, "Invalid syntax error while decoding extras data from server."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v1
.end method

.method private setLastResponse(I)V
    .locals 2

    .line 144
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/googleplay/licensing/ServerManagedPolicy;->mLastResponseTime:J

    .line 145
    iput p1, p0, Lcom/googleplay/licensing/ServerManagedPolicy;->mLastResponse:I

    .line 146
    iget-object v0, p0, Lcom/googleplay/licensing/ServerManagedPolicy;->mPreferences:Lcom/googleplay/licensing/PreferenceObfuscator;

    const-string v1, "lastResponse"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/googleplay/licensing/PreferenceObfuscator;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setMaxRetries(Ljava/lang/String;)V
    .locals 4

    .line 235
    const-string v0, "ServerManagedPolicy"

    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 236
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/googleplay/licensing/ServerManagedPolicy;->mOriginalRetries:J

    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 239
    :catch_0
    const-string p1, "Licence retry count (GR) missing, grace period disabled"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v1, 0x0

    .line 241
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string p1, "0"

    .line 244
    :goto_0
    const-string v2, "license check retries = %d"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/googleplay/licensing/ServerManagedPolicy;->mMaxRetries:J

    .line 247
    iget-object v0, p0, Lcom/googleplay/licensing/ServerManagedPolicy;->mPreferences:Lcom/googleplay/licensing/PreferenceObfuscator;

    const-string v1, "maxRetries"

    invoke-virtual {v0, v1, p1}, Lcom/googleplay/licensing/PreferenceObfuscator;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setRetryCount(J)V
    .locals 2

    .line 156
    iput-wide p1, p0, Lcom/googleplay/licensing/ServerManagedPolicy;->mRetryCount:J

    .line 157
    iget-object v0, p0, Lcom/googleplay/licensing/ServerManagedPolicy;->mPreferences:Lcom/googleplay/licensing/PreferenceObfuscator;

    const-string v1, "retryCount"

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/googleplay/licensing/PreferenceObfuscator;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setRetryUntil(Ljava/lang/String;)V
    .locals 6

    .line 206
    const-string v0, "ServerManagedPolicy"

    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 207
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/googleplay/licensing/ServerManagedPolicy;->mOriginalGT:J

    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 210
    :catch_0
    const-string p1, "License retry timestamp (GT) missing, grace period disabled"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v1, 0x0

    .line 212
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string p1, "0"

    .line 215
    :goto_0
    const-string v2, "license retry until timestamp = %d"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/googleplay/licensing/ServerManagedPolicy;->mRetryUntil:J

    .line 218
    iget-object v0, p0, Lcom/googleplay/licensing/ServerManagedPolicy;->mPreferences:Lcom/googleplay/licensing/PreferenceObfuscator;

    const-string v1, "retryUntil"

    invoke-virtual {v0, v1, p1}, Lcom/googleplay/licensing/PreferenceObfuscator;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setValidityTimestamp(Ljava/lang/String;)V
    .locals 5

    .line 174
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 175
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/googleplay/licensing/ServerManagedPolicy;->mOriginalVT:J

    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 179
    :catch_0
    const-string p1, "ServerManagedPolicy"

    const-string v0, "License validity timestamp (VT) missing, caching for a minute"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0xea60

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 181
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    .line 184
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/googleplay/licensing/ServerManagedPolicy;->mValidityTimestamp:J

    .line 185
    iget-object v0, p0, Lcom/googleplay/licensing/ServerManagedPolicy;->mPreferences:Lcom/googleplay/licensing/PreferenceObfuscator;

    const-string/jumbo v1, "validityTimestamp"

    invoke-virtual {v0, v1, p1}, Lcom/googleplay/licensing/PreferenceObfuscator;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public allowAccess()Z
    .locals 8

    .line 265
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 266
    iget v2, p0, Lcom/googleplay/licensing/ServerManagedPolicy;->mLastResponse:I

    const/16 v3, 0x100

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v2, v3, :cond_1

    .line 268
    iget-wide v2, p0, Lcom/googleplay/licensing/ServerManagedPolicy;->mValidityTimestamp:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_4

    .line 270
    sget-boolean v0, Lcom/googleplay/licensing/ServerManagedPolicy;->isServerResponse:Z

    const-string v1, "ServerManagedPolicy"

    if-eqz v0, :cond_0

    .line 271
    const-string v0, "Server license response"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 274
    :cond_0
    const-string v0, "Cached license response"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v4

    :cond_1
    const/16 v3, 0x123

    if-ne v2, v3, :cond_4

    .line 280
    iget-wide v2, p0, Lcom/googleplay/licensing/ServerManagedPolicy;->mLastResponseTime:J

    const-wide/32 v6, 0xea60

    add-long/2addr v2, v6

    cmp-long v2, v0, v2

    if-gez v2, :cond_4

    .line 284
    iget-wide v2, p0, Lcom/googleplay/licensing/ServerManagedPolicy;->mRetryUntil:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    iget-wide v0, p0, Lcom/googleplay/licensing/ServerManagedPolicy;->mRetryCount:J

    iget-wide v2, p0, Lcom/googleplay/licensing/ServerManagedPolicy;->mMaxRetries:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2

    goto :goto_1

    :cond_2
    move v4, v5

    :cond_3
    :goto_1
    return v4

    :cond_4
    return v5
.end method

.method public getExtraLicenseData()[J
    .locals 8

    .line 193
    iget-wide v0, p0, Lcom/googleplay/licensing/ServerManagedPolicy;->mOriginalVT:J

    iget-wide v2, p0, Lcom/googleplay/licensing/ServerManagedPolicy;->mOriginalGT:J

    iget-wide v4, p0, Lcom/googleplay/licensing/ServerManagedPolicy;->mOriginalRetries:J

    const/4 v6, 0x3

    new-array v6, v6, [J

    const/4 v7, 0x0

    aput-wide v0, v6, v7

    const/4 v0, 0x1

    aput-wide v2, v6, v0

    const/4 v0, 0x2

    aput-wide v4, v6, v0

    return-object v6
.end method

.method public getMaxRetries()J
    .locals 2

    .line 251
    iget-wide v0, p0, Lcom/googleplay/licensing/ServerManagedPolicy;->mMaxRetries:J

    return-wide v0
.end method

.method public getRetryCount()J
    .locals 2

    .line 161
    iget-wide v0, p0, Lcom/googleplay/licensing/ServerManagedPolicy;->mRetryCount:J

    return-wide v0
.end method

.method public getRetryUntil()J
    .locals 2

    .line 222
    iget-wide v0, p0, Lcom/googleplay/licensing/ServerManagedPolicy;->mRetryUntil:J

    return-wide v0
.end method

.method public getValidityTimestamp()J
    .locals 2

    .line 189
    iget-wide v0, p0, Lcom/googleplay/licensing/ServerManagedPolicy;->mValidityTimestamp:J

    return-wide v0
.end method

.method public processServerResponse(ILcom/googleplay/licensing/ResponseData;)V
    .locals 4

    const/4 v0, 0x1

    .line 109
    sput-boolean v0, Lcom/googleplay/licensing/ServerManagedPolicy;->isServerResponse:Z

    const/16 v0, 0x123

    if-eq p1, v0, :cond_0

    const-wide/16 v0, 0x0

    .line 113
    invoke-direct {p0, v0, v1}, Lcom/googleplay/licensing/ServerManagedPolicy;->setRetryCount(J)V

    goto :goto_0

    .line 115
    :cond_0
    iget-wide v0, p0, Lcom/googleplay/licensing/ServerManagedPolicy;->mRetryCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lcom/googleplay/licensing/ServerManagedPolicy;->setRetryCount(J)V

    :goto_0
    const/16 v0, 0x100

    if-ne p1, v0, :cond_1

    .line 120
    iget-object p2, p2, Lcom/googleplay/licensing/ResponseData;->extra:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/googleplay/licensing/ServerManagedPolicy;->decodeExtras(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p2

    .line 121
    iput p1, p0, Lcom/googleplay/licensing/ServerManagedPolicy;->mLastResponse:I

    .line 122
    const-string v0, "VT"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/googleplay/licensing/ServerManagedPolicy;->setValidityTimestamp(Ljava/lang/String;)V

    .line 123
    const-string v0, "GT"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/googleplay/licensing/ServerManagedPolicy;->setRetryUntil(Ljava/lang/String;)V

    .line 124
    const-string v0, "GR"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/googleplay/licensing/ServerManagedPolicy;->setMaxRetries(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const/16 p2, 0x231

    if-ne p1, p2, :cond_2

    .line 127
    const-string p2, "0"

    invoke-direct {p0, p2}, Lcom/googleplay/licensing/ServerManagedPolicy;->setValidityTimestamp(Ljava/lang/String;)V

    .line 128
    invoke-direct {p0, p2}, Lcom/googleplay/licensing/ServerManagedPolicy;->setRetryUntil(Ljava/lang/String;)V

    .line 129
    invoke-direct {p0, p2}, Lcom/googleplay/licensing/ServerManagedPolicy;->setMaxRetries(Ljava/lang/String;)V

    .line 132
    :cond_2
    :goto_1
    invoke-direct {p0, p1}, Lcom/googleplay/licensing/ServerManagedPolicy;->setLastResponse(I)V

    .line 133
    iget-object p1, p0, Lcom/googleplay/licensing/ServerManagedPolicy;->mPreferences:Lcom/googleplay/licensing/PreferenceObfuscator;

    invoke-virtual {p1}, Lcom/googleplay/licensing/PreferenceObfuscator;->commit()V

    return-void
.end method
