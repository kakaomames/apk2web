.class public final Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface;
.super Ljava/lang/Object;
.source "InAppMessageUserJavascriptInterface.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nInAppMessageUserJavascriptInterface.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InAppMessageUserJavascriptInterface.kt\ncom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,289:1\n1#2:290\n37#3:291\n36#3,3:292\n*S KotlinDebug\n*F\n+ 1 InAppMessageUserJavascriptInterface.kt\ncom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface\n*L\n246#1:291\n246#1:292,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0006\n\u0002\u0008\u0017\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 ?2\u00020\u0001:\u0001?B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u0008H\u0007J\u0018\u0010\n\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\u0008H\u0007J\u0010\u0010\r\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u0008H\u0007J\u0010\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u0008H\u0007J\u0012\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0007J\u0012\u0010\u0015\u001a\u0004\u0018\u00010\u00162\u0006\u0010\u0017\u001a\u00020\u0008H\u0007J!\u0010\u0018\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0008\u0018\u00010\u00192\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0008H\u0007\u00a2\u0006\u0002\u0010\u001bJ\u0018\u0010\u001c\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\u0008H\u0007J\u0010\u0010\u001d\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u0008H\u0007J\u0012\u0010\u001e\u001a\u00020\u00062\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u0008H\u0007J \u0010 \u001a\u00020\u00062\u0006\u0010!\u001a\u00020\"2\u0006\u0010\u000b\u001a\u00020\u00082\u0006\u0010#\u001a\u00020\u0008H\u0007J \u0010$\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u00082\u0006\u0010%\u001a\u00020&2\u0006\u0010\'\u001a\u00020&H\u0007J\u001a\u0010(\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u00082\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0008H\u0007J\u0018\u0010)\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u00082\u0006\u0010#\u001a\u00020\u0008H\u0007J \u0010*\u001a\u00020\u00062\u0006\u0010+\u001a\u00020\u00142\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010,\u001a\u00020\u0014H\u0007J\u0012\u0010-\u001a\u00020\u00062\u0008\u0010.\u001a\u0004\u0018\u00010\u0008H\u0007J\u0010\u0010/\u001a\u00020\u00062\u0006\u00100\u001a\u00020\u0008H\u0007J\u0012\u00101\u001a\u00020\u00062\u0008\u00102\u001a\u0004\u0018\u00010\u0008H\u0007J\u0010\u00103\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u0008H\u0007J\u0012\u00104\u001a\u00020\u00062\u0008\u00105\u001a\u0004\u0018\u00010\u0008H\u0007J\u0012\u00106\u001a\u00020\u00062\u0008\u00107\u001a\u0004\u0018\u00010\u0008H\u0007J\u0012\u00108\u001a\u00020\u00062\u0008\u00109\u001a\u0004\u0018\u00010\u0008H\u0007J\u0012\u0010:\u001a\u00020\u00062\u0008\u0010;\u001a\u0004\u0018\u00010\u0008H\u0007J\u0010\u0010<\u001a\u00020\u00062\u0006\u00100\u001a\u00020\u0008H\u0007J\u0014\u0010=\u001a\u0004\u0018\u00010>2\u0008\u00100\u001a\u0004\u0018\u00010\u0008H\u0007R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006@"
    }
    d2 = {
        "Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface;",
        "",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "addAlias",
        "",
        "alias",
        "",
        "label",
        "addToCustomAttributeArray",
        "key",
        "value",
        "addToSubscriptionGroup",
        "subscriptionGroupId",
        "incrementCustomUserAttribute",
        "attribute",
        "monthFromInt",
        "Lcom/braze/enums/Month;",
        "monthInt",
        "",
        "parseGender",
        "Lcom/braze/enums/Gender;",
        "genderString",
        "parseStringArrayFromJsonString",
        "",
        "jsonArrayString",
        "(Ljava/lang/String;)[Ljava/lang/String;",
        "removeFromCustomAttributeArray",
        "removeFromSubscriptionGroup",
        "setCountry",
        "country",
        "setCustomAttribute",
        "user",
        "Lcom/braze/BrazeUser;",
        "jsonStringValue",
        "setCustomLocationAttribute",
        "latitude",
        "",
        "longitude",
        "setCustomUserAttributeArray",
        "setCustomUserAttributeJSON",
        "setDateOfBirth",
        "year",
        "day",
        "setEmail",
        "email",
        "setEmailNotificationSubscriptionType",
        "subscriptionType",
        "setFirstName",
        "firstName",
        "setGender",
        "setHomeCity",
        "homeCity",
        "setLanguage",
        "language",
        "setLastName",
        "lastName",
        "setPhoneNumber",
        "phoneNumber",
        "setPushNotificationSubscriptionType",
        "subscriptionTypeFromJavascriptString",
        "Lcom/braze/enums/NotificationSubscriptionType;",
        "Companion",
        "android-sdk-ui_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface$Companion;

.field public static final JS_BRIDGE_ATTRIBUTE_VALUE:Ljava/lang/String; = "value"


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface;->Companion:Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final addAlias(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "alias"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "label"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    sget-object v0, Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface;->Companion:Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface$Companion;

    sget-object v1, Lcom/braze/Braze;->Companion:Lcom/braze/Braze$Companion;

    iget-object v2, p0, Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/braze/Braze$Companion;->getInstance(Landroid/content/Context;)Lcom/braze/Braze;

    move-result-object v1

    new-instance v2, Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface$addAlias$1;

    invoke-direct {v2, p1, p2}, Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface$addAlias$1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1, v2}, Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface$Companion;->access$runOnUser(Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface$Companion;Lcom/braze/Braze;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final addToCustomAttributeArray(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    sget-object v0, Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface;->Companion:Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface$Companion;

    sget-object v1, Lcom/braze/Braze;->Companion:Lcom/braze/Braze$Companion;

    iget-object v2, p0, Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/braze/Braze$Companion;->getInstance(Landroid/content/Context;)Lcom/braze/Braze;

    move-result-object v1

    new-instance v2, Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface$addToCustomAttributeArray$1;

    invoke-direct {v2, p1, p2}, Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface$addToCustomAttributeArray$1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1, v2}, Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface$Companion;->access$runOnUser(Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface$Companion;Lcom/braze/Braze;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final addToSubscriptionGroup(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "subscriptionGroupId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    sget-object v0, Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface;->Companion:Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface$Companion;

    sget-object v1, Lcom/braze/Braze;->Companion:Lcom/braze/Braze$Companion;

    iget-object v2, p0, Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/braze/Braze$Companion;->getInstance(Landroid/content/Context;)Lcom/braze/Braze;

    move-result-object v1

    new-instance v2, Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface$addToSubscriptionGroup$1;

    invoke-direct {v2, p1}, Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface$addToSubscriptionGroup$1;-><init>(Ljava/lang/String;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1, v2}, Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface$Companion;->access$runOnUser(Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface$Companion;Lcom/braze/Braze;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final incrementCustomUserAttribute(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "attribute"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    sget-object v0, Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface;->Companion:Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface$Companion;

    sget-object v1, Lcom/braze/Braze;->Companion:Lcom/braze/Braze$Companion;

    iget-object v2, p0, Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/braze/Braze$Companion;->getInstance(Landroid/content/Context;)Lcom/braze/Braze;

    move-result-object v1

    new-instance v2, Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface$incrementCustomUserAttribute$1;

    invoke-direct {v2, p1}, Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface$incrementCustomUserAttribute$1;-><init>(Ljava/lang/String;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1, v2}, Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface$Companion;->access$runOnUser(Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface$Companion;Lcom/braze/Braze;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final monthFromInt(I)Lcom/braze/enums/Month;
    .locals 2

    const/4 v0, 0x1

    if-lt p1, v0, :cond_1

    const/16 v1, 0xc

    if-le p1, v1, :cond_0

    goto :goto_0

    .line 201
    :cond_0
    sget-object v1, Lcom/braze/enums/Month;->Companion:Lcom/braze/enums/Month$Companion;

    sub-int/2addr p1, v0

    invoke-virtual {v1, p1}, Lcom/braze/enums/Month$Companion;->getMonth(I)Lcom/braze/enums/Month;

    move-result-object p1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 200
    move-object v0, p1

    check-cast v0, Lcom/braze/enums/Month;

    :goto_1
    return-object p1
.end method

.method public final parseGender(Ljava/lang/String;)Lcom/braze/enums/Gender;
    .locals 2

    const-string v0, "genderString"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 256
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "US"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "this as java.lang.String).toLowerCase(locale)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 257
    sget-object v0, Lcom/braze/enums/Gender;->MALE:Lcom/braze/enums/Gender;

    invoke-virtual {v0}, Lcom/braze/enums/Gender;->forJsonPut()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    sget-object p1, Lcom/braze/enums/Gender;->MALE:Lcom/braze/enums/Gender;

    return-object p1

    .line 260
    :cond_0
    sget-object v0, Lcom/braze/enums/Gender;->FEMALE:Lcom/braze/enums/Gender;

    invoke-virtual {v0}, Lcom/braze/enums/Gender;->forJsonPut()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 261
    sget-object p1, Lcom/braze/enums/Gender;->FEMALE:Lcom/braze/enums/Gender;

    return-object p1

    .line 263
    :cond_1
    sget-object v0, Lcom/braze/enums/Gender;->OTHER:Lcom/braze/enums/Gender;

    invoke-virtual {v0}, Lcom/braze/enums/Gender;->forJsonPut()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 264
    sget-object p1, Lcom/braze/enums/Gender;->OTHER:Lcom/braze/enums/Gender;

    return-object p1

    .line 266
    :cond_2
    sget-object v0, Lcom/braze/enums/Gender;->UNKNOWN:Lcom/braze/enums/Gender;

    invoke-virtual {v0}, Lcom/braze/enums/Gender;->forJsonPut()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 267
    sget-object p1, Lcom/braze/enums/Gender;->UNKNOWN:Lcom/braze/enums/Gender;

    return-object p1

    .line 269
    :cond_3
    sget-object v0, Lcom/braze/enums/Gender;->NOT_APPLICABLE:Lcom/braze/enums/Gender;

    invoke-virtual {v0}, Lcom/braze/enums/Gender;->forJsonPut()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 270
    sget-object p1, Lcom/braze/enums/Gender;->NOT_APPLICABLE:Lcom/braze/enums/Gender;

    return-object p1

    .line 272
    :cond_4
    sget-object v0, Lcom/braze/enums/Gender;->PREFER_NOT_TO_SAY:Lcom/braze/enums/Gender;

    invoke-virtual {v0}, Lcom/braze/enums/Gender;->forJsonPut()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 273
    sget-object p1, Lcom/braze/enums/Gender;->PREFER_NOT_TO_SAY:Lcom/braze/enums/Gender;

    return-object p1

    :cond_5
    const/4 p1, 0x0

    return-object p1
.end method

.method public final parseStringArrayFromJsonString(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5

    .line 245
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 246
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result p1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, p1, :cond_0

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v3, v4

    goto :goto_0

    :cond_0
    check-cast v1, Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    .line 294
    new-array p1, v2, [Ljava/lang/String;

    invoke-interface {v1, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    check-cast p1, [Ljava/lang/String;

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 248
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v1, Lcom/braze/support/BrazeLogger$Priority;->E:Lcom/braze/support/BrazeLogger$Priority;

    check-cast p1, Ljava/lang/Throwable;

    sget-object v2, Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface$parseStringArrayFromJsonString$2;->INSTANCE:Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface$parseStringArrayFromJsonString$2;

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v0, p0, v1, p1, v2}, Lcom/braze/support/BrazeLogger;->brazelog(Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final removeFromCustomAttributeArray(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    sget-object v0, Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface;->Companion:Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface$Companion;

    sget-object v1, Lcom/braze/Braze;->Companion:Lcom/braze/Braze$Companion;

    iget-object v2, p0, Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/braze/Braze$Companion;->getInstance(Landroid/content/Context;)Lcom/braze/Braze;

    move-result-object v1

    new-instance v2, Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface$removeFromCustomAttributeArray$1;

    invoke-direct {v2, p1, p2}, Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface$removeFromCustomAttributeArray$1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1, v2}, Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface$Companion;->access$runOnUser(Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface$Companion;Lcom/braze/Braze;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final removeFromSubscriptionGroup(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "subscriptionGroupId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    sget-object v0, Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface;->Companion:Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface$Companion;

    sget-object v1, Lcom/braze/Braze;->Companion:Lcom/braze/Braze$Companion;

    iget-object v2, p0, Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/braze/Braze$Companion;->getInstance(Landroid/content/Context;)Lcom/braze/Braze;

    move-result-object v1

    new-instance v2, Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface$removeFromSubscriptionGroup$1;

    invoke-direct {v2, p1}, Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface$removeFromSubscriptionGroup$1;-><init>(Ljava/lang/String;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1, v2}, Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface$Companion;->access$runOnUser(Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface$Companion;Lcom/braze/Braze;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final setCountry(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 72
    sget-object v0, Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface;->Companion:Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface$Companion;

    sget-object v1, Lcom/braze/Braze;->Companion:Lcom/braze/Braze$Companion;

    iget-object v2, p0, Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/braze/Braze$Companion;->getInstance(Landroid/content/Context;)Lcom/braze/Braze;

    move-result-object v1

    new-instance v2, Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface$setCountry$1;

    invoke-direct {v2, p1}, Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface$setCountry$1;-><init>(Ljava/lang/String;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1, v2}, Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface$Companion;->access$runOnUser(Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface$Companion;Lcom/braze/Braze;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final setCustomAttribute(Lcom/braze/BrazeUser;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v0, 0x0

    sget-object v0, Ljavax/annotation/concurrent/sZY/CUrDPLd;->PGr:Ljava/lang/String;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "jsonStringValue"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 211
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 214
    const-string v1, "value"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 215
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 216
    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lcom/braze/BrazeUser;->setCustomUserAttribute(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 218
    :cond_0
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 219
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, p2, v0}, Lcom/braze/BrazeUser;->setCustomUserAttribute(Ljava/lang/String;Z)Z

    goto :goto_0

    .line 221
    :cond_1
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 222
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Lcom/braze/BrazeUser;->setCustomUserAttribute(Ljava/lang/String;I)Z

    goto :goto_0

    .line 224
    :cond_2
    instance-of v1, v0, Ljava/lang/Double;

    if-eqz v1, :cond_3

    .line 225
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Lcom/braze/BrazeUser;->setCustomUserAttribute(Ljava/lang/String;D)Z

    goto :goto_0

    .line 228
    :cond_3
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v2, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    new-instance p1, Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface$setCustomAttribute$1;

    invoke-direct {p1, p2, p3}, Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface$setCustomAttribute$1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, p1

    check-cast v4, Lkotlin/jvm/functions/Function0;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v6}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 235
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v1, Lcom/braze/support/BrazeLogger$Priority;->E:Lcom/braze/support/BrazeLogger$Priority;

    check-cast p1, Ljava/lang/Throwable;

    new-instance v2, Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface$setCustomAttribute$2;

    invoke-direct {v2, p2, p3}, Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface$setCustomAttribute$2;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v0, p0, v1, p1, v2}, Lcom/braze/support/BrazeLogger;->brazelog(Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V

    :goto_0
    return-void
.end method

.method public final setCustomLocationAttribute(Ljava/lang/String;DD)V
    .locals 9
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "attribute"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    sget-object v0, Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface;->Companion:Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface$Companion;

    sget-object v1, Lcom/braze/Braze;->Companion:Lcom/braze/Braze$Companion;

    iget-object v2, p0, Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/braze/Braze$Companion;->getInstance(Landroid/content/Context;)Lcom/braze/Braze;

    move-result-object v1

    new-instance v8, Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface$setCustomLocationAttribute$1;

    move-object v2, v8

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v2 .. v7}, Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface$setCustomLocationAttribute$1;-><init>(Ljava/lang/String;DD)V

    check-cast v8, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1, v8}, Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface$Companion;->access$runOnUser(Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface$Companion;Lcom/braze/Braze;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final setCustomUserAttributeArray(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    invoke-virtual {p0, p2}, Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface;->parseStringArrayFromJsonString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    .line 139
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v2, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    new-instance p2, Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface$setCustomUserAttributeArray$1;

    invoke-direct {p2, p1}, Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface$setCustomUserAttributeArray$1;-><init>(Ljava/lang/String;)V

    move-object v4, p2

    check-cast v4, Lkotlin/jvm/functions/Function0;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v6}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void

    .line 142
    :cond_0
    sget-object v0, Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface;->Companion:Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface$Companion;

    sget-object v1, Lcom/braze/Braze;->Companion:Lcom/braze/Braze$Companion;

    iget-object v2, p0, Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/braze/Braze$Companion;->getInstance(Landroid/content/Context;)Lcom/braze/Braze;

    move-result-object v1

    new-instance v2, Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface$setCustomUserAttributeArray$2;

    invoke-direct {v2, p1, p2}, Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface$setCustomUserAttributeArray$2;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1, v2}, Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface$Companion;->access$runOnUser(Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface$Companion;Lcom/braze/Braze;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final setCustomUserAttributeJSON(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "jsonStringValue"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    sget-object v0, Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface;->Companion:Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface$Companion;

    sget-object v1, Lcom/braze/Braze;->Companion:Lcom/braze/Braze$Companion;

    iget-object v2, p0, Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/braze/Braze$Companion;->getInstance(Landroid/content/Context;)Lcom/braze/Braze;

    move-result-object v1

    new-instance v2, Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface$setCustomUserAttributeJSON$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface$setCustomUserAttributeJSON$1;-><init>(Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface;Ljava/lang/String;Ljava/lang/String;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1, v2}, Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface$Companion;->access$runOnUser(Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface$Companion;Lcom/braze/Braze;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final setDateOfBirth(III)V
    .locals 8
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 60
    invoke-virtual {p0, p2}, Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface;->monthFromInt(I)Lcom/braze/enums/Month;

    move-result-object v0

    if-nez v0, :cond_0

    .line 62
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v3, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    new-instance p1, Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface$setDateOfBirth$1;

    invoke-direct {p1, p2}, Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface$setDateOfBirth$1;-><init>(I)V

    move-object v5, p1

    check-cast v5, Lkotlin/jvm/functions/Function0;

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void

    .line 65
    :cond_0
    sget-object p2, Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface;->Companion:Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface$Companion;

    sget-object v1, Lcom/braze/Braze;->Companion:Lcom/braze/Braze$Companion;

    iget-object v2, p0, Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/braze/Braze$Companion;->getInstance(Landroid/content/Context;)Lcom/braze/Braze;

    move-result-object v1

    new-instance v2, Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface$setDateOfBirth$2;

    invoke-direct {v2, p1, v0, p3}, Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface$setDateOfBirth$2;-><init>(ILcom/braze/enums/Month;I)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-static {p2, v1, v2}, Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface$Companion;->access$runOnUser(Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface$Companion;Lcom/braze/Braze;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final setEmail(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 38
    sget-object v0, Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface;->Companion:Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface$Companion;

    sget-object v1, Lcom/braze/Braze;->Companion:Lcom/braze/Braze$Companion;

    iget-object v2, p0, Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/braze/Braze$Companion;->getInstance(Landroid/content/Context;)Lcom/braze/Braze;

    move-result-object v1

    new-instance v2, Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface$setEmail$1;

    invoke-direct {v2, p1}, Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface$setEmail$1;-><init>(Ljava/lang/String;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1, v2}, Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface$Companion;->access$runOnUser(Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface$Companion;Lcom/braze/Braze;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final setEmailNotificationSubscriptionType(Ljava/lang/String;)V
    .locals 8
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "subscriptionType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0, p1}, Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface;->subscriptionTypeFromJavascriptString(Ljava/lang/String;)Lcom/braze/enums/NotificationSubscriptionType;

    move-result-object v0

    if-nez v0, :cond_0

    .line 95
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v3, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v0, Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface$setEmailNotificationSubscriptionType$1;

    invoke-direct {v0, p1}, Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface$setEmailNotificationSubscriptionType$1;-><init>(Ljava/lang/String;)V

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function0;

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void

    .line 101
    :cond_0
    sget-object p1, Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface;->Companion:Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface$Companion;

    sget-object v1, Lcom/braze/Braze;->Companion:Lcom/braze/Braze$Companion;

    iget-object v2, p0, Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/braze/Braze$Companion;->getInstance(Landroid/content/Context;)Lcom/braze/Braze;

    move-result-object v1

    new-instance v2, Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface$setEmailNotificationSubscriptionType$2;

    invoke-direct {v2, v0}, Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface$setEmailNotificationSubscriptionType$2;-><init>(Lcom/braze/enums/NotificationSubscriptionType;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-static {p1, v1, v2}, Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface$Companion;->access$runOnUser(Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface$Companion;Lcom/braze/Braze;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final setFirstName(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 24
    sget-object v0, Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface;->Companion:Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface$Companion;

    sget-object v1, Lcom/braze/Braze;->Companion:Lcom/braze/Braze$Companion;

    iget-object v2, p0, Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/braze/Braze$Companion;->getInstance(Landroid/content/Context;)Lcom/braze/Braze;

    move-result-object v1

    new-instance v2, Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface$setFirstName$1;

    invoke-direct {v2, p1}, Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface$setFirstName$1;-><init>(Ljava/lang/String;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1, v2}, Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface$Companion;->access$runOnUser(Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface$Companion;Lcom/braze/Braze;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final setGender(Ljava/lang/String;)V
    .locals 8
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "genderString"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-virtual {p0, p1}, Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface;->parseGender(Ljava/lang/String;)Lcom/braze/enums/Gender;

    move-result-object v0

    if-nez v0, :cond_0

    .line 47
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v3, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v0, Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface$setGender$1;

    invoke-direct {v0, p1}, Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface$setGender$1;-><init>(Ljava/lang/String;)V

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function0;

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    goto :goto_0

    .line 52
    :cond_0
    sget-object p1, Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface;->Companion:Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface$Companion;

    sget-object v1, Lcom/braze/Braze;->Companion:Lcom/braze/Braze$Companion;

    iget-object v2, p0, Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/braze/Braze$Companion;->getInstance(Landroid/content/Context;)Lcom/braze/Braze;

    move-result-object v1

    new-instance v2, Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface$setGender$2;

    invoke-direct {v2, v0}, Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface$setGender$2;-><init>(Lcom/braze/enums/Gender;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-static {p1, v1, v2}, Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface$Companion;->access$runOnUser(Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface$Companion;Lcom/braze/Braze;Lkotlin/jvm/functions/Function1;)V

    :goto_0
    return-void
.end method

.method public final setHomeCity(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 86
    sget-object v0, Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface;->Companion:Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface$Companion;

    sget-object v1, Lcom/braze/Braze;->Companion:Lcom/braze/Braze$Companion;

    iget-object v2, p0, Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/braze/Braze$Companion;->getInstance(Landroid/content/Context;)Lcom/braze/Braze;

    move-result-object v1

    new-instance v2, Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface$setHomeCity$1;

    invoke-direct {v2, p1}, Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface$setHomeCity$1;-><init>(Ljava/lang/String;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1, v2}, Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface$Companion;->access$runOnUser(Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface$Companion;Lcom/braze/Braze;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final setLanguage(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 79
    sget-object v0, Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface;->Companion:Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface$Companion;

    sget-object v1, Lcom/braze/Braze;->Companion:Lcom/braze/Braze$Companion;

    iget-object v2, p0, Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/braze/Braze$Companion;->getInstance(Landroid/content/Context;)Lcom/braze/Braze;

    move-result-object v1

    new-instance v2, Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface$setLanguage$1;

    invoke-direct {v2, p1}, Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface$setLanguage$1;-><init>(Ljava/lang/String;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1, v2}, Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface$Companion;->access$runOnUser(Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface$Companion;Lcom/braze/Braze;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final setLastName(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 31
    sget-object v0, Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface;->Companion:Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface$Companion;

    sget-object v1, Lcom/braze/Braze;->Companion:Lcom/braze/Braze$Companion;

    iget-object v2, p0, Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/braze/Braze$Companion;->getInstance(Landroid/content/Context;)Lcom/braze/Braze;

    move-result-object v1

    new-instance v2, Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface$setLastName$1;

    invoke-direct {v2, p1}, Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface$setLastName$1;-><init>(Ljava/lang/String;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1, v2}, Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface$Companion;->access$runOnUser(Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface$Companion;Lcom/braze/Braze;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final setPhoneNumber(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 123
    sget-object v0, Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface;->Companion:Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface$Companion;

    sget-object v1, Lcom/braze/Braze;->Companion:Lcom/braze/Braze$Companion;

    iget-object v2, p0, Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/braze/Braze$Companion;->getInstance(Landroid/content/Context;)Lcom/braze/Braze;

    move-result-object v1

    new-instance v2, Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface$setPhoneNumber$1;

    invoke-direct {v2, p1}, Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface$setPhoneNumber$1;-><init>(Ljava/lang/String;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1, v2}, Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface$Companion;->access$runOnUser(Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface$Companion;Lcom/braze/Braze;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final setPushNotificationSubscriptionType(Ljava/lang/String;)V
    .locals 8
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "subscriptionType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0, p1}, Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface;->subscriptionTypeFromJavascriptString(Ljava/lang/String;)Lcom/braze/enums/NotificationSubscriptionType;

    move-result-object v0

    if-nez v0, :cond_0

    .line 110
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v3, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v0, Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface$setPushNotificationSubscriptionType$1;

    invoke-direct {v0, p1}, Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface$setPushNotificationSubscriptionType$1;-><init>(Ljava/lang/String;)V

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function0;

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void

    .line 116
    :cond_0
    sget-object p1, Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface;->Companion:Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface$Companion;

    sget-object v1, Lcom/braze/Braze;->Companion:Lcom/braze/Braze$Companion;

    iget-object v2, p0, Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/braze/Braze$Companion;->getInstance(Landroid/content/Context;)Lcom/braze/Braze;

    move-result-object v1

    new-instance v2, Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface$setPushNotificationSubscriptionType$2;

    invoke-direct {v2, v0}, Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface$setPushNotificationSubscriptionType$2;-><init>(Lcom/braze/enums/NotificationSubscriptionType;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-static {p1, v1, v2}, Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface$Companion;->access$runOnUser(Lcom/braze/ui/inappmessage/jsinterface/InAppMessageUserJavascriptInterface$Companion;Lcom/braze/Braze;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final subscriptionTypeFromJavascriptString(Ljava/lang/String;)Lcom/braze/enums/NotificationSubscriptionType;
    .locals 1

    .line 206
    sget-object v0, Lcom/braze/enums/NotificationSubscriptionType;->Companion:Lcom/braze/enums/NotificationSubscriptionType$Companion;

    invoke-virtual {v0, p1}, Lcom/braze/enums/NotificationSubscriptionType$Companion;->fromValue(Ljava/lang/String;)Lcom/braze/enums/NotificationSubscriptionType;

    move-result-object p1

    return-object p1
.end method
