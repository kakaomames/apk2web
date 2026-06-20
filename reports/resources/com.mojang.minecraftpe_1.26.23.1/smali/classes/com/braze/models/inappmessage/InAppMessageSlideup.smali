.class public final Lcom/braze/models/inappmessage/InAppMessageSlideup;
.super Lcom/braze/models/inappmessage/InAppMessageWithImageBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/braze/models/inappmessage/InAppMessageSlideup$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u0000 \u001f2\u00020\u0001:\u0001\u001fB\t\u0008\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0019B\u0019\u0008\u0016\u0012\u0006\u0010\u001a\u001a\u00020\u0004\u0012\u0006\u0010\u001c\u001a\u00020\u001b\u00a2\u0006\u0004\u0008\u0018\u0010\u001dB+\u0008\u0012\u0012\u0006\u0010\u001a\u001a\u00020\u0004\u0012\u0006\u0010\u001c\u001a\u00020\u001b\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\u000e\u001a\u00020\r\u00a2\u0006\u0004\u0008\u0018\u0010\u001eJ\u0008\u0010\u0003\u001a\u00020\u0002H\u0016J\u0008\u0010\u0005\u001a\u00020\u0004H\u0016R\"\u0010\u0007\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\"\u0010\u000e\u001a\u00020\r8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\u0014\u0010\u0017\u001a\u00020\u00148VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u0016\u00a8\u0006 "
    }
    d2 = {
        "Lcom/braze/models/inappmessage/InAppMessageSlideup;",
        "Lcom/braze/models/inappmessage/InAppMessageWithImageBase;",
        "",
        "enableDarkTheme",
        "Lorg/json/JSONObject;",
        "forJsonPut",
        "Lcom/braze/enums/inappmessage/SlideFrom;",
        "slideFrom",
        "Lcom/braze/enums/inappmessage/SlideFrom;",
        "getSlideFrom",
        "()Lcom/braze/enums/inappmessage/SlideFrom;",
        "setSlideFrom",
        "(Lcom/braze/enums/inappmessage/SlideFrom;)V",
        "",
        "chevronColor",
        "I",
        "getChevronColor",
        "()I",
        "setChevronColor",
        "(I)V",
        "Lcom/braze/enums/inappmessage/MessageType;",
        "getMessageType",
        "()Lcom/braze/enums/inappmessage/MessageType;",
        "messageType",
        "<init>",
        "()V",
        "jsonObject",
        "Lbo/app/y1;",
        "brazeManager",
        "(Lorg/json/JSONObject;Lbo/app/y1;)V",
        "(Lorg/json/JSONObject;Lbo/app/y1;Lcom/braze/enums/inappmessage/SlideFrom;I)V",
        "Companion",
        "android-sdk-base_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# static fields
.field private static final CHEVRON_COLOR:Ljava/lang/String; = "close_btn_color"

.field public static final Companion:Lcom/braze/models/inappmessage/InAppMessageSlideup$Companion;

.field private static final SLIDE_FROM:Ljava/lang/String; = "slide_from"


# instance fields
.field private chevronColor:I

.field private slideFrom:Lcom/braze/enums/inappmessage/SlideFrom;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/braze/models/inappmessage/InAppMessageSlideup$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/braze/models/inappmessage/InAppMessageSlideup$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/braze/models/inappmessage/InAppMessageSlideup;->Companion:Lcom/braze/models/inappmessage/InAppMessageSlideup$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/braze/models/inappmessage/InAppMessageWithImageBase;-><init>()V

    .line 2
    sget-object v0, Lcom/braze/enums/inappmessage/SlideFrom;->BOTTOM:Lcom/braze/enums/inappmessage/SlideFrom;

    iput-object v0, p0, Lcom/braze/models/inappmessage/InAppMessageSlideup;->slideFrom:Lcom/braze/enums/inappmessage/SlideFrom;

    .line 6
    const-string v0, "#9B9B9B"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/braze/models/inappmessage/InAppMessageSlideup;->chevronColor:I

    .line 7
    sget-object v0, Lcom/braze/enums/inappmessage/TextAlign;->START:Lcom/braze/enums/inappmessage/TextAlign;

    invoke-virtual {p0, v0}, Lcom/braze/models/inappmessage/InAppMessageBase;->setMessageTextAlign(Lcom/braze/enums/inappmessage/TextAlign;)V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;Lbo/app/y1;)V
    .locals 3

    const-string v0, "jsonObject"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "brazeManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    sget-object v0, Lcom/braze/enums/inappmessage/SlideFrom;->BOTTOM:Lcom/braze/enums/inappmessage/SlideFrom;

    const-string v1, "slide_from"

    const-class v2, Lcom/braze/enums/inappmessage/SlideFrom;

    invoke-static {p1, v1, v2, v0}, Lcom/braze/support/JsonUtils;->optEnum(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/braze/enums/inappmessage/SlideFrom;

    .line 9
    const-string v1, "close_btn_color"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 10
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/braze/models/inappmessage/InAppMessageSlideup;-><init>(Lorg/json/JSONObject;Lbo/app/y1;Lcom/braze/enums/inappmessage/SlideFrom;I)V

    return-void
.end method

.method private constructor <init>(Lorg/json/JSONObject;Lbo/app/y1;Lcom/braze/enums/inappmessage/SlideFrom;I)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2}, Lcom/braze/models/inappmessage/InAppMessageWithImageBase;-><init>(Lorg/json/JSONObject;Lbo/app/y1;)V

    .line 12
    sget-object p2, Lcom/braze/enums/inappmessage/SlideFrom;->BOTTOM:Lcom/braze/enums/inappmessage/SlideFrom;

    iput-object p2, p0, Lcom/braze/models/inappmessage/InAppMessageSlideup;->slideFrom:Lcom/braze/enums/inappmessage/SlideFrom;

    .line 16
    const-string p2, "#9B9B9B"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/braze/models/inappmessage/InAppMessageSlideup;->chevronColor:I

    if-eqz p3, :cond_0

    .line 46
    iput-object p3, p0, Lcom/braze/models/inappmessage/InAppMessageSlideup;->slideFrom:Lcom/braze/enums/inappmessage/SlideFrom;

    .line 48
    :cond_0
    iput p4, p0, Lcom/braze/models/inappmessage/InAppMessageSlideup;->chevronColor:I

    .line 49
    sget-object p2, Lcom/braze/enums/inappmessage/CropType;->FIT_CENTER:Lcom/braze/enums/inappmessage/CropType;

    const-string p3, "crop_type"

    const-class p4, Lcom/braze/enums/inappmessage/CropType;

    invoke-static {p1, p3, p4, p2}, Lcom/braze/support/JsonUtils;->optEnum(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object p2

    check-cast p2, Lcom/braze/enums/inappmessage/CropType;

    invoke-virtual {p0, p2}, Lcom/braze/models/inappmessage/InAppMessageBase;->setCropType(Lcom/braze/enums/inappmessage/CropType;)V

    .line 50
    sget-object p2, Lcom/braze/enums/inappmessage/TextAlign;->START:Lcom/braze/enums/inappmessage/TextAlign;

    const-string p3, "text_align_message"

    const-class p4, Lcom/braze/enums/inappmessage/TextAlign;

    invoke-static {p1, p3, p4, p2}, Lcom/braze/support/JsonUtils;->optEnum(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object p1

    check-cast p1, Lcom/braze/enums/inappmessage/TextAlign;

    invoke-virtual {p0, p1}, Lcom/braze/models/inappmessage/InAppMessageBase;->setMessageTextAlign(Lcom/braze/enums/inappmessage/TextAlign;)V

    return-void
.end method


# virtual methods
.method public enableDarkTheme()V
    .locals 8

    .line 1
    invoke-super {p0}, Lcom/braze/models/inappmessage/InAppMessageBase;->enableDarkTheme()V

    .line 2
    invoke-virtual {p0}, Lcom/braze/models/inappmessage/InAppMessageBase;->getInAppMessageDarkThemeWrapper()Lbo/app/d3;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v3, Lcom/braze/support/BrazeLogger$Priority;->D:Lcom/braze/support/BrazeLogger$Priority;

    sget-object v5, Lcom/braze/models/inappmessage/InAppMessageSlideup$a;->b:Lcom/braze/models/inappmessage/InAppMessageSlideup$a;

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void

    .line 7
    :cond_0
    invoke-virtual {v0}, Lbo/app/d3;->b()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    :goto_0
    invoke-virtual {v0}, Lbo/app/d3;->b()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 8
    invoke-virtual {v0}, Lbo/app/d3;->b()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/braze/models/inappmessage/InAppMessageSlideup;->chevronColor:I

    :cond_2
    return-void
.end method

.method public bridge synthetic forJsonPut()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/braze/models/inappmessage/InAppMessageSlideup;->forJsonPut()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public forJsonPut()Lorg/json/JSONObject;
    .locals 5

    .line 2
    invoke-virtual {p0}, Lcom/braze/models/inappmessage/InAppMessageBase;->getJsonObject()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 4
    :cond_0
    invoke-super {p0}, Lcom/braze/models/inappmessage/InAppMessageWithImageBase;->forJsonPut()Lorg/json/JSONObject;

    move-result-object v0

    .line 6
    :try_start_0
    const-string v1, "slide_from"

    iget-object v2, p0, Lcom/braze/models/inappmessage/InAppMessageSlideup;->slideFrom:Lcom/braze/enums/inappmessage/SlideFrom;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7
    const-string v1, "close_btn_color"

    iget v2, p0, Lcom/braze/models/inappmessage/InAppMessageSlideup;->chevronColor:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 8
    const-string v1, "type"

    invoke-virtual {p0}, Lcom/braze/models/inappmessage/InAppMessageSlideup;->getMessageType()Lcom/braze/enums/inappmessage/MessageType;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 11
    sget-object v2, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v3, Lcom/braze/support/BrazeLogger$Priority;->E:Lcom/braze/support/BrazeLogger$Priority;

    sget-object v4, Lcom/braze/models/inappmessage/InAppMessageSlideup$b;->b:Lcom/braze/models/inappmessage/InAppMessageSlideup$b;

    invoke-virtual {v2, p0, v3, v1, v4}, Lcom/braze/support/BrazeLogger;->brazelog(Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V

    :goto_0
    return-object v0
.end method

.method public final getChevronColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/braze/models/inappmessage/InAppMessageSlideup;->chevronColor:I

    return v0
.end method

.method public getMessageType()Lcom/braze/enums/inappmessage/MessageType;
    .locals 1

    .line 1
    sget-object v0, Lcom/braze/enums/inappmessage/MessageType;->SLIDEUP:Lcom/braze/enums/inappmessage/MessageType;

    return-object v0
.end method

.method public final getSlideFrom()Lcom/braze/enums/inappmessage/SlideFrom;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/braze/models/inappmessage/InAppMessageSlideup;->slideFrom:Lcom/braze/enums/inappmessage/SlideFrom;

    return-object v0
.end method

.method public final setChevronColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/braze/models/inappmessage/InAppMessageSlideup;->chevronColor:I

    return-void
.end method

.method public final setSlideFrom(Lcom/braze/enums/inappmessage/SlideFrom;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/braze/models/inappmessage/InAppMessageSlideup;->slideFrom:Lcom/braze/enums/inappmessage/SlideFrom;

    return-void
.end method
