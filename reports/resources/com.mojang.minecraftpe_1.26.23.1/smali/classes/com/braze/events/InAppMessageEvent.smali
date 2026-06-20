.class public final Lcom/braze/events/InAppMessageEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0010\u0008\u0087\u0008\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\u000b\u001a\u00020\u0004\u0012\u0006\u0010\u000c\u001a\u00020\u0006\u0012\u0006\u0010\r\u001a\u00020\u0008\u0012\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u0008!\u0010\"J\u0008\u0010\u0003\u001a\u00020\u0002H\u0016J\t\u0010\u0005\u001a\u00020\u0004H\u00c6\u0003J\t\u0010\u0007\u001a\u00020\u0006H\u00c6\u0003J\t\u0010\t\u001a\u00020\u0008H\u00c6\u0003J\u000b\u0010\n\u001a\u0004\u0018\u00010\u0002H\u00c6\u0003J3\u0010\u000f\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u00062\u0008\u0008\u0002\u0010\r\u001a\u00020\u00082\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0002H\u00c6\u0001J\t\u0010\u0011\u001a\u00020\u0010H\u00d6\u0001J\u0013\u0010\u0014\u001a\u00020\u00132\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003R\u0017\u0010\r\u001a\u00020\u00088\u0006\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u0015\u001a\u0004\u0008\u0016\u0010\u0017R\u0019\u0010\u000e\u001a\u0004\u0018\u00010\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u0018\u001a\u0004\u0008\u0019\u0010\u001aR\u0017\u0010\u000b\u001a\u00020\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u001b\u001a\u0004\u0008\u001c\u0010\u001dR\u0017\u0010\u000c\u001a\u00020\u00068\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\u001e\u001a\u0004\u0008\u001f\u0010 \u00a8\u0006#"
    }
    d2 = {
        "Lcom/braze/events/InAppMessageEvent;",
        "",
        "",
        "toString",
        "Lbo/app/s2;",
        "component1",
        "Lbo/app/x2;",
        "component2",
        "Lcom/braze/models/inappmessage/IInAppMessage;",
        "component3",
        "component4",
        "triggerEvent",
        "triggerAction",
        "inAppMessage",
        "userId",
        "copy",
        "",
        "hashCode",
        "other",
        "",
        "equals",
        "Lcom/braze/models/inappmessage/IInAppMessage;",
        "getInAppMessage",
        "()Lcom/braze/models/inappmessage/IInAppMessage;",
        "Ljava/lang/String;",
        "getUserId",
        "()Ljava/lang/String;",
        "Lbo/app/s2;",
        "getTriggerEvent",
        "()Lbo/app/s2;",
        "Lbo/app/x2;",
        "getTriggerAction",
        "()Lbo/app/x2;",
        "<init>",
        "(Lbo/app/s2;Lbo/app/x2;Lcom/braze/models/inappmessage/IInAppMessage;Ljava/lang/String;)V",
        "android-sdk-base_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# instance fields
.field private final inAppMessage:Lcom/braze/models/inappmessage/IInAppMessage;

.field private final triggerAction:Lbo/app/x2;

.field private final triggerEvent:Lbo/app/s2;

.field private final userId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lbo/app/s2;Lbo/app/x2;Lcom/braze/models/inappmessage/IInAppMessage;Ljava/lang/String;)V
    .locals 1

    const-string v0, "triggerEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "triggerAction"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inAppMessage"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/braze/events/InAppMessageEvent;->triggerEvent:Lbo/app/s2;

    .line 4
    iput-object p2, p0, Lcom/braze/events/InAppMessageEvent;->triggerAction:Lbo/app/x2;

    .line 5
    iput-object p3, p0, Lcom/braze/events/InAppMessageEvent;->inAppMessage:Lcom/braze/models/inappmessage/IInAppMessage;

    .line 6
    iput-object p4, p0, Lcom/braze/events/InAppMessageEvent;->userId:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/braze/events/InAppMessageEvent;Lbo/app/s2;Lbo/app/x2;Lcom/braze/models/inappmessage/IInAppMessage;Ljava/lang/String;ILjava/lang/Object;)Lcom/braze/events/InAppMessageEvent;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lcom/braze/events/InAppMessageEvent;->triggerEvent:Lbo/app/s2;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lcom/braze/events/InAppMessageEvent;->triggerAction:Lbo/app/x2;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-object p3, p0, Lcom/braze/events/InAppMessageEvent;->inAppMessage:Lcom/braze/models/inappmessage/IInAppMessage;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Lcom/braze/events/InAppMessageEvent;->userId:Ljava/lang/String;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/braze/events/InAppMessageEvent;->copy(Lbo/app/s2;Lbo/app/x2;Lcom/braze/models/inappmessage/IInAppMessage;Ljava/lang/String;)Lcom/braze/events/InAppMessageEvent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lbo/app/s2;
    .locals 1

    iget-object v0, p0, Lcom/braze/events/InAppMessageEvent;->triggerEvent:Lbo/app/s2;

    return-object v0
.end method

.method public final component2()Lbo/app/x2;
    .locals 1

    iget-object v0, p0, Lcom/braze/events/InAppMessageEvent;->triggerAction:Lbo/app/x2;

    return-object v0
.end method

.method public final component3()Lcom/braze/models/inappmessage/IInAppMessage;
    .locals 1

    iget-object v0, p0, Lcom/braze/events/InAppMessageEvent;->inAppMessage:Lcom/braze/models/inappmessage/IInAppMessage;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/braze/events/InAppMessageEvent;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Lbo/app/s2;Lbo/app/x2;Lcom/braze/models/inappmessage/IInAppMessage;Ljava/lang/String;)Lcom/braze/events/InAppMessageEvent;
    .locals 1

    const-string v0, "triggerEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "triggerAction"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inAppMessage"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/braze/events/InAppMessageEvent;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/braze/events/InAppMessageEvent;-><init>(Lbo/app/s2;Lbo/app/x2;Lcom/braze/models/inappmessage/IInAppMessage;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/braze/events/InAppMessageEvent;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/braze/events/InAppMessageEvent;

    iget-object v1, p0, Lcom/braze/events/InAppMessageEvent;->triggerEvent:Lbo/app/s2;

    iget-object v3, p1, Lcom/braze/events/InAppMessageEvent;->triggerEvent:Lbo/app/s2;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/braze/events/InAppMessageEvent;->triggerAction:Lbo/app/x2;

    iget-object v3, p1, Lcom/braze/events/InAppMessageEvent;->triggerAction:Lbo/app/x2;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/braze/events/InAppMessageEvent;->inAppMessage:Lcom/braze/models/inappmessage/IInAppMessage;

    iget-object v3, p1, Lcom/braze/events/InAppMessageEvent;->inAppMessage:Lcom/braze/models/inappmessage/IInAppMessage;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/braze/events/InAppMessageEvent;->userId:Ljava/lang/String;

    iget-object p1, p1, Lcom/braze/events/InAppMessageEvent;->userId:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getInAppMessage()Lcom/braze/models/inappmessage/IInAppMessage;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/braze/events/InAppMessageEvent;->inAppMessage:Lcom/braze/models/inappmessage/IInAppMessage;

    return-object v0
.end method

.method public final getTriggerAction()Lbo/app/x2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/braze/events/InAppMessageEvent;->triggerAction:Lbo/app/x2;

    return-object v0
.end method

.method public final getTriggerEvent()Lbo/app/s2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/braze/events/InAppMessageEvent;->triggerEvent:Lbo/app/s2;

    return-object v0
.end method

.method public final getUserId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/braze/events/InAppMessageEvent;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/braze/events/InAppMessageEvent;->triggerEvent:Lbo/app/s2;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/braze/events/InAppMessageEvent;->triggerAction:Lbo/app/x2;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/braze/events/InAppMessageEvent;->inAppMessage:Lcom/braze/models/inappmessage/IInAppMessage;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/braze/events/InAppMessageEvent;->userId:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/braze/events/InAppMessageEvent;->inAppMessage:Lcom/braze/models/inappmessage/IInAppMessage;

    invoke-interface {v0}, Lcom/braze/models/IPutIntoJson;->forJsonPut()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/braze/support/JsonUtils;->getPrettyPrintedString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
