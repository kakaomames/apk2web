.class public final Lcom/braze/events/BrazeNetworkFailureEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/braze/events/BrazeNetworkFailureEvent$RequestType;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0087\u0008\u0018\u00002\u00020\u0001:\u0001\"B\u001b\u0012\n\u0010\u0007\u001a\u00060\u0002j\u0002`\u0003\u0012\u0006\u0010\u0008\u001a\u00020\u0005\u00a2\u0006\u0004\u0008 \u0010!J\r\u0010\u0004\u001a\u00060\u0002j\u0002`\u0003H\u00c2\u0003J\t\u0010\u0006\u001a\u00020\u0005H\u00c2\u0003J!\u0010\t\u001a\u00020\u00002\u000c\u0008\u0002\u0010\u0007\u001a\u00060\u0002j\u0002`\u00032\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0005H\u00c6\u0001J\t\u0010\u000b\u001a\u00020\nH\u00d6\u0001J\t\u0010\r\u001a\u00020\u000cH\u00d6\u0001J\u0013\u0010\u0010\u001a\u00020\u000f2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003R\u0018\u0010\u0007\u001a\u00060\u0002j\u0002`\u00038\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010\u0011R\u0019\u0010\u0012\u001a\u0004\u0018\u00010\n8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u0014\u0010\u0015R\u0019\u0010\u0017\u001a\u0004\u0018\u00010\u00168\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0017\u0010\u0018\u001a\u0004\u0008\u0019\u0010\u001aR\u0017\u0010\u001c\u001a\u00020\u001b8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001c\u0010\u001d\u001a\u0004\u0008\u001e\u0010\u001f\u00a8\u0006#"
    }
    d2 = {
        "Lcom/braze/events/BrazeNetworkFailureEvent;",
        "",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "component1",
        "Lbo/app/z1;",
        "component2",
        "originalException",
        "brazeRequest",
        "copy",
        "",
        "toString",
        "",
        "hashCode",
        "other",
        "",
        "equals",
        "Ljava/lang/Exception;",
        "networkExceptionMessage",
        "Ljava/lang/String;",
        "getNetworkExceptionMessage",
        "()Ljava/lang/String;",
        "",
        "requestInitiationTime",
        "Ljava/lang/Long;",
        "getRequestInitiationTime",
        "()Ljava/lang/Long;",
        "Lcom/braze/events/BrazeNetworkFailureEvent$RequestType;",
        "requestType",
        "Lcom/braze/events/BrazeNetworkFailureEvent$RequestType;",
        "getRequestType",
        "()Lcom/braze/events/BrazeNetworkFailureEvent$RequestType;",
        "<init>",
        "(Ljava/lang/Exception;Lbo/app/z1;)V",
        "RequestType",
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
.field private final brazeRequest:Lbo/app/z1;

.field private final networkExceptionMessage:Ljava/lang/String;

.field private final originalException:Ljava/lang/Exception;

.field private final requestInitiationTime:Ljava/lang/Long;

.field private final requestType:Lcom/braze/events/BrazeNetworkFailureEvent$RequestType;


# direct methods
.method public constructor <init>(Ljava/lang/Exception;Lbo/app/z1;)V
    .locals 1

    const-string v0, "originalException"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "brazeRequest"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/braze/events/BrazeNetworkFailureEvent;->originalException:Ljava/lang/Exception;

    iput-object p2, p0, Lcom/braze/events/BrazeNetworkFailureEvent;->brazeRequest:Lbo/app/z1;

    .line 8
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/braze/events/BrazeNetworkFailureEvent;->networkExceptionMessage:Ljava/lang/String;

    .line 9
    invoke-interface {p2}, Lbo/app/z1;->j()Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/braze/events/BrazeNetworkFailureEvent;->requestInitiationTime:Ljava/lang/Long;

    .line 12
    instance-of p1, p2, Lbo/app/c0;

    if-eqz p1, :cond_0

    .line 13
    sget-object p1, Lcom/braze/events/BrazeNetworkFailureEvent$RequestType;->CONTENT_CARDS_SYNC:Lcom/braze/events/BrazeNetworkFailureEvent$RequestType;

    goto :goto_0

    .line 15
    :cond_0
    instance-of p1, p2, Lbo/app/j0;

    if-eqz p1, :cond_2

    .line 17
    invoke-interface {p2}, Lbo/app/z1;->c()Lbo/app/w3;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lbo/app/w3;->x()Z

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    .line 18
    sget-object p1, Lcom/braze/events/BrazeNetworkFailureEvent$RequestType;->NEWS_FEED_SYNC:Lcom/braze/events/BrazeNetworkFailureEvent$RequestType;

    goto :goto_0

    .line 21
    :cond_1
    sget-object p1, Lcom/braze/events/BrazeNetworkFailureEvent$RequestType;->OTHER:Lcom/braze/events/BrazeNetworkFailureEvent$RequestType;

    goto :goto_0

    .line 26
    :cond_2
    sget-object p1, Lcom/braze/events/BrazeNetworkFailureEvent$RequestType;->OTHER:Lcom/braze/events/BrazeNetworkFailureEvent$RequestType;

    .line 27
    :goto_0
    iput-object p1, p0, Lcom/braze/events/BrazeNetworkFailureEvent;->requestType:Lcom/braze/events/BrazeNetworkFailureEvent$RequestType;

    return-void
.end method

.method private final component1()Ljava/lang/Exception;
    .locals 1

    iget-object v0, p0, Lcom/braze/events/BrazeNetworkFailureEvent;->originalException:Ljava/lang/Exception;

    return-object v0
.end method

.method private final component2()Lbo/app/z1;
    .locals 1

    iget-object v0, p0, Lcom/braze/events/BrazeNetworkFailureEvent;->brazeRequest:Lbo/app/z1;

    return-object v0
.end method

.method public static synthetic copy$default(Lcom/braze/events/BrazeNetworkFailureEvent;Ljava/lang/Exception;Lbo/app/z1;ILjava/lang/Object;)Lcom/braze/events/BrazeNetworkFailureEvent;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/braze/events/BrazeNetworkFailureEvent;->originalException:Ljava/lang/Exception;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/braze/events/BrazeNetworkFailureEvent;->brazeRequest:Lbo/app/z1;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/braze/events/BrazeNetworkFailureEvent;->copy(Ljava/lang/Exception;Lbo/app/z1;)Lcom/braze/events/BrazeNetworkFailureEvent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(Ljava/lang/Exception;Lbo/app/z1;)Lcom/braze/events/BrazeNetworkFailureEvent;
    .locals 1

    const-string v0, "originalException"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "brazeRequest"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/braze/events/BrazeNetworkFailureEvent;

    invoke-direct {v0, p1, p2}, Lcom/braze/events/BrazeNetworkFailureEvent;-><init>(Ljava/lang/Exception;Lbo/app/z1;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/braze/events/BrazeNetworkFailureEvent;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/braze/events/BrazeNetworkFailureEvent;

    iget-object v1, p0, Lcom/braze/events/BrazeNetworkFailureEvent;->originalException:Ljava/lang/Exception;

    iget-object v3, p1, Lcom/braze/events/BrazeNetworkFailureEvent;->originalException:Ljava/lang/Exception;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/braze/events/BrazeNetworkFailureEvent;->brazeRequest:Lbo/app/z1;

    iget-object p1, p1, Lcom/braze/events/BrazeNetworkFailureEvent;->brazeRequest:Lbo/app/z1;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getNetworkExceptionMessage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/braze/events/BrazeNetworkFailureEvent;->networkExceptionMessage:Ljava/lang/String;

    return-object v0
.end method

.method public final getRequestInitiationTime()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/braze/events/BrazeNetworkFailureEvent;->requestInitiationTime:Ljava/lang/Long;

    return-object v0
.end method

.method public final getRequestType()Lcom/braze/events/BrazeNetworkFailureEvent$RequestType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/braze/events/BrazeNetworkFailureEvent;->requestType:Lcom/braze/events/BrazeNetworkFailureEvent$RequestType;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/braze/events/BrazeNetworkFailureEvent;->originalException:Ljava/lang/Exception;

    invoke-virtual {v0}, Ljava/lang/Exception;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/braze/events/BrazeNetworkFailureEvent;->brazeRequest:Lbo/app/z1;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BrazeNetworkFailureEvent(originalException="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/braze/events/BrazeNetworkFailureEvent;->originalException:Ljava/lang/Exception;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", brazeRequest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/braze/events/BrazeNetworkFailureEvent;->brazeRequest:Lbo/app/z1;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
