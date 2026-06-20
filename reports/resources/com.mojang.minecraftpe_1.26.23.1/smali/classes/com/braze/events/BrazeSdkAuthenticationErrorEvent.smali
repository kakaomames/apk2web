.class public final Lcom/braze/events/BrazeSdkAuthenticationErrorEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0010\t\n\u0002\u0008\n\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\t\u0010\u0003\u001a\u00020\u0002H\u00c2\u0003J\u0008\u0010\u0005\u001a\u00020\u0004H\u0016J\u0013\u0010\u0007\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0002H\u00c6\u0001J\t\u0010\t\u001a\u00020\u0008H\u00d6\u0001J\u0013\u0010\u000c\u001a\u00020\u000b2\u0008\u0010\n\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003R\u0013\u0010\u000f\u001a\u0004\u0018\u00010\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0012\u001a\u00020\u00088F\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u0011R\u0013\u0010\u0016\u001a\u0004\u0018\u00010\u00138F\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\u0015R\u0013\u0010\u0018\u001a\u0004\u0018\u00010\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u0017\u0010\u000eR\u0013\u0010\u001a\u001a\u0004\u0018\u00010\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u0019\u0010\u000e\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/braze/events/BrazeSdkAuthenticationErrorEvent;",
        "",
        "Lbo/app/t4;",
        "component1",
        "",
        "toString",
        "sdkAuthError",
        "copy",
        "",
        "hashCode",
        "other",
        "",
        "equals",
        "getErrorReason",
        "()Ljava/lang/String;",
        "errorReason",
        "getErrorCode",
        "()I",
        "errorCode",
        "",
        "getRequestInitiationTime",
        "()Ljava/lang/Long;",
        "requestInitiationTime",
        "getSignature",
        "signature",
        "getUserId",
        "userId",
        "<init>",
        "(Lbo/app/t4;)V",
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
.field private final sdkAuthError:Lbo/app/t4;


# direct methods
.method public constructor <init>(Lbo/app/t4;)V
    .locals 1

    const-string v0, "sdkAuthError"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/braze/events/BrazeSdkAuthenticationErrorEvent;->sdkAuthError:Lbo/app/t4;

    return-void
.end method

.method private final component1()Lbo/app/t4;
    .locals 1

    iget-object v0, p0, Lcom/braze/events/BrazeSdkAuthenticationErrorEvent;->sdkAuthError:Lbo/app/t4;

    return-object v0
.end method

.method public static synthetic copy$default(Lcom/braze/events/BrazeSdkAuthenticationErrorEvent;Lbo/app/t4;ILjava/lang/Object;)Lcom/braze/events/BrazeSdkAuthenticationErrorEvent;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/braze/events/BrazeSdkAuthenticationErrorEvent;->sdkAuthError:Lbo/app/t4;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/braze/events/BrazeSdkAuthenticationErrorEvent;->copy(Lbo/app/t4;)Lcom/braze/events/BrazeSdkAuthenticationErrorEvent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(Lbo/app/t4;)Lcom/braze/events/BrazeSdkAuthenticationErrorEvent;
    .locals 1

    const-string v0, "sdkAuthError"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/braze/events/BrazeSdkAuthenticationErrorEvent;

    invoke-direct {v0, p1}, Lcom/braze/events/BrazeSdkAuthenticationErrorEvent;-><init>(Lbo/app/t4;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/braze/events/BrazeSdkAuthenticationErrorEvent;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/braze/events/BrazeSdkAuthenticationErrorEvent;

    iget-object v1, p0, Lcom/braze/events/BrazeSdkAuthenticationErrorEvent;->sdkAuthError:Lbo/app/t4;

    iget-object p1, p1, Lcom/braze/events/BrazeSdkAuthenticationErrorEvent;->sdkAuthError:Lbo/app/t4;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getErrorCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/braze/events/BrazeSdkAuthenticationErrorEvent;->sdkAuthError:Lbo/app/t4;

    invoke-virtual {v0}, Lbo/app/t4;->c()I

    move-result v0

    return v0
.end method

.method public final getErrorReason()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/braze/events/BrazeSdkAuthenticationErrorEvent;->sdkAuthError:Lbo/app/t4;

    invoke-virtual {v0}, Lbo/app/t4;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getRequestInitiationTime()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/braze/events/BrazeSdkAuthenticationErrorEvent;->sdkAuthError:Lbo/app/t4;

    invoke-virtual {v0}, Lbo/app/t4;->b()Lbo/app/z1;

    move-result-object v0

    invoke-interface {v0}, Lbo/app/z1;->j()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public final getSignature()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/braze/events/BrazeSdkAuthenticationErrorEvent;->sdkAuthError:Lbo/app/t4;

    invoke-virtual {v0}, Lbo/app/t4;->b()Lbo/app/z1;

    move-result-object v0

    invoke-interface {v0}, Lbo/app/z1;->k()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getUserId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/braze/events/BrazeSdkAuthenticationErrorEvent;->sdkAuthError:Lbo/app/t4;

    invoke-virtual {v0}, Lbo/app/t4;->b()Lbo/app/z1;

    move-result-object v0

    invoke-interface {v0}, Lbo/app/z1;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/braze/events/BrazeSdkAuthenticationErrorEvent;->sdkAuthError:Lbo/app/t4;

    invoke-virtual {v0}, Lbo/app/t4;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/braze/events/BrazeSdkAuthenticationErrorEvent;->sdkAuthError:Lbo/app/t4;

    invoke-virtual {v0}, Lbo/app/t4;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
