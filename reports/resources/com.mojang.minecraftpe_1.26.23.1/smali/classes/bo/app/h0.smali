.class public final Lbo/app/h0;
.super Lcom/braze/configuration/BrazeConfigurationProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbo/app/h0$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001:\u0001\u0003B\u000f\u0012\u0006\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0005\u001a\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008\u0003\u0010\u0004R\u0011\u0010\u0007\u001a\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0004R\u0011\u0010\t\u001a\u00020\u00028F\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\u0004\u00a8\u0006\u000e"
    }
    d2 = {
        "Lbo/app/h0;",
        "Lcom/braze/configuration/BrazeConfigurationProvider;",
        "",
        "a",
        "()J",
        "badNetworkFlushIntervalInMilliseconds",
        "b",
        "goodNetworkFlushIntervalInMilliseconds",
        "c",
        "greatNetworkFlushIntervalInMilliseconds",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
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
.field public static final a:Lbo/app/h0$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lbo/app/h0$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbo/app/h0$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lbo/app/h0;->a:Lbo/app/h0$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lcom/braze/configuration/BrazeConfigurationProvider;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 4

    .line 1
    sget-object v0, Lcom/braze/configuration/BrazeConfigurationProvider$b;->P:Lcom/braze/configuration/BrazeConfigurationProvider$b;

    invoke-virtual {v0}, Lcom/braze/configuration/BrazeConfigurationProvider$b;->b()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3c

    .line 2
    invoke-virtual {p0, v0, v1}, Lcom/braze/configuration/CachedConfigurationProvider;->getIntValue(Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public final b()J
    .locals 4

    .line 1
    sget-object v0, Lcom/braze/configuration/BrazeConfigurationProvider$b;->Q:Lcom/braze/configuration/BrazeConfigurationProvider$b;

    invoke-virtual {v0}, Lcom/braze/configuration/BrazeConfigurationProvider$b;->b()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1e

    .line 2
    invoke-virtual {p0, v0, v1}, Lcom/braze/configuration/CachedConfigurationProvider;->getIntValue(Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public final c()J
    .locals 4

    .line 1
    sget-object v0, Lcom/braze/configuration/BrazeConfigurationProvider$b;->R:Lcom/braze/configuration/BrazeConfigurationProvider$b;

    invoke-virtual {v0}, Lcom/braze/configuration/BrazeConfigurationProvider$b;->b()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    .line 2
    invoke-virtual {p0, v0, v1}, Lcom/braze/configuration/CachedConfigurationProvider;->getIntValue(Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    return-wide v0
.end method
