.class public Lcom/microsoft/xbox/service/model/serialization/UTCDateConverterGson;
.super Ljava/lang/Object;
.source "UTCDateConverterGson.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xbox/service/model/serialization/UTCDateConverterGson$UTCRoundtripDateConverterJSONDeserializer;,
        Lcom/microsoft/xbox/service/model/serialization/UTCDateConverterGson$UTCDateConverterShortDateAlternateFormatJSONDeserializer;,
        Lcom/microsoft/xbox/service/model/serialization/UTCDateConverterGson$UTCDateConverterShortDateFormatJSONDeserializer;,
        Lcom/microsoft/xbox/service/model/serialization/UTCDateConverterGson$UTCDateConverterJSONDeserializer;
    }
.end annotation


# static fields
.field private static final NO_MS_STRING_LENGTH:I = 0x13

.field private static defaultFormatMs:Ljava/text/SimpleDateFormat;

.field private static defaultFormatNoMs:Ljava/text/SimpleDateFormat;

.field private static shortDateAlternateFormat:Ljava/text/SimpleDateFormat;

.field private static shortDateFormat:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 20
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd\'T\'HH:mm:ss"

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/microsoft/xbox/service/model/serialization/UTCDateConverterGson;->defaultFormatNoMs:Ljava/text/SimpleDateFormat;

    .line 22
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSS"

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/microsoft/xbox/service/model/serialization/UTCDateConverterGson;->defaultFormatMs:Ljava/text/SimpleDateFormat;

    .line 24
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM/dd/yyyy HH:mm:ss"

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/microsoft/xbox/service/model/serialization/UTCDateConverterGson;->shortDateFormat:Ljava/text/SimpleDateFormat;

    .line 26
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy/MM/dd HH:mm:ss"

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/microsoft/xbox/service/model/serialization/UTCDateConverterGson;->shortDateAlternateFormat:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/text/SimpleDateFormat;
    .locals 1

    .line 15
    sget-object v0, Lcom/microsoft/xbox/service/model/serialization/UTCDateConverterGson;->shortDateFormat:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method static synthetic access$100()Ljava/text/SimpleDateFormat;
    .locals 1

    .line 15
    sget-object v0, Lcom/microsoft/xbox/service/model/serialization/UTCDateConverterGson;->shortDateAlternateFormat:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method static synthetic access$200()Ljava/text/SimpleDateFormat;
    .locals 1

    .line 15
    sget-object v0, Lcom/microsoft/xbox/service/model/serialization/UTCDateConverterGson;->defaultFormatNoMs:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method public static declared-synchronized convert(Ljava/lang/String;)Ljava/util/Date;
    .locals 5

    const-class v0, Lcom/microsoft/xbox/service/model/serialization/UTCDateConverterGson;

    monitor-enter v0

    .line 30
    :try_start_0
    invoke-static {p0}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 31
    monitor-exit v0

    return-object v2

    .line 35
    :cond_0
    :try_start_1
    const-string v1, "Z"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 36
    const-string v1, "Z"

    const-string v3, ""

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 41
    :cond_1
    const-string v1, "+00:00"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 42
    const-string v1, "+00:00"

    const-string v3, ""

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_2
    :goto_0
    move-object v1, v2

    goto :goto_1

    .line 43
    :cond_3
    const-string v1, "+01:00"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 44
    const-string v1, "+01:00"

    const-string v3, ""

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 45
    const-string v1, "GMT+01:00"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    goto :goto_1

    .line 46
    :cond_4
    const-string v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 47
    const-string v1, "([.][0-9]{3})[0-9]*$"

    const-string v3, "$1"

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 50
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x13

    if-ne v3, v4, :cond_5

    const/4 v3, 0x1

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    :goto_2
    if-nez v1, :cond_6

    .line 54
    const-string v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_6
    if-eqz v3, :cond_7

    .line 60
    :try_start_2
    sget-object v3, Lcom/microsoft/xbox/service/model/serialization/UTCDateConverterGson;->defaultFormatNoMs:Ljava/text/SimpleDateFormat;

    invoke-virtual {v3, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 61
    sget-object v1, Lcom/microsoft/xbox/service/model/serialization/UTCDateConverterGson;->defaultFormatNoMs:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    .line 62
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-object p0

    .line 64
    :cond_7
    :try_start_3
    sget-object v3, Lcom/microsoft/xbox/service/model/serialization/UTCDateConverterGson;->defaultFormatMs:Ljava/text/SimpleDateFormat;

    invoke-virtual {v3, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 65
    sget-object v1, Lcom/microsoft/xbox/service/model/serialization/UTCDateConverterGson;->defaultFormatMs:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    .line 66
    :try_end_3
    .catch Ljava/text/ParseException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v0

    return-object p0

    .line 69
    :catch_0
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p0

    :try_start_4
    monitor-exit v0

    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method
