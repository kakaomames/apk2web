.class public final Lbo/app/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbo/app/i2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbo/app/o$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u0001:\u0001\u000eB\u001f\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0008\u0010\u0005\u001a\u00020\u0004H\u0016\u00a8\u0006\u000f"
    }
    d2 = {
        "Lbo/app/o;",
        "Lbo/app/i2;",
        "Lcom/braze/models/IBrazeLocation;",
        "location",
        "",
        "a",
        "Landroid/content/Context;",
        "context",
        "Lbo/app/y1;",
        "brazeManager",
        "Lcom/braze/configuration/BrazeConfigurationProvider;",
        "appConfigurationProvider",
        "<init>",
        "(Landroid/content/Context;Lbo/app/y1;Lcom/braze/configuration/BrazeConfigurationProvider;)V",
        "b",
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
.field public static final d:Lbo/app/o$b;


# instance fields
.field private final a:Lbo/app/y1;

.field private final b:Lcom/braze/configuration/BrazeConfigurationProvider;

.field private c:Lbo/app/n;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lbo/app/o$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbo/app/o$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lbo/app/o;->d:Lbo/app/o$b;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lbo/app/y1;Lcom/braze/configuration/BrazeConfigurationProvider;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "brazeManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appConfigurationProvider"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p2, p0, Lbo/app/o;->a:Lbo/app/y1;

    .line 5
    iput-object p3, p0, Lbo/app/o;->b:Lcom/braze/configuration/BrazeConfigurationProvider;

    .line 8
    new-instance p2, Lbo/app/n;

    sget-object v0, Lbo/app/o;->d:Lbo/app/o$b;

    invoke-virtual {v0, p3}, Lbo/app/o$b;->a(Lcom/braze/configuration/BrazeConfigurationProvider;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-direct {p2, p1, v0, p3}, Lbo/app/n;-><init>(Landroid/content/Context;Ljava/util/EnumSet;Lcom/braze/configuration/BrazeConfigurationProvider;)V

    iput-object p2, p0, Lbo/app/o;->c:Lbo/app/n;

    .line 11
    invoke-virtual {p2}, Lbo/app/n;->a()Z

    move-result p1

    if-nez p1, :cond_0

    .line 12
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v2, Lcom/braze/support/BrazeLogger$Priority;->I:Lcom/braze/support/BrazeLogger$Priority;

    sget-object v4, Lbo/app/o$a;->b:Lbo/app/o$a;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v6}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 2

    .line 5
    iget-object v0, p0, Lbo/app/o;->c:Lbo/app/n;

    new-instance v1, Lbo/app/o$d;

    invoke-direct {v1, p0}, Lbo/app/o$d;-><init>(Lbo/app/o;)V

    invoke-virtual {v0, v1}, Lbo/app/n;->a(Lkotlin/jvm/functions/Function1;)Z

    move-result v0

    return v0
.end method

.method public a(Lcom/braze/models/IBrazeLocation;)Z
    .locals 3

    const-string v0, "location"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    sget-object v0, Lbo/app/j;->h:Lbo/app/j$a;

    invoke-virtual {v0, p1}, Lbo/app/j$a;->a(Lcom/braze/models/IBrazeLocation;)Lbo/app/w1;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lbo/app/o;->a:Lbo/app/y1;

    invoke-interface {v0, p1}, Lbo/app/y1;->a(Lbo/app/w1;)Z

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v1, Lcom/braze/support/BrazeLogger$Priority;->E:Lcom/braze/support/BrazeLogger$Priority;

    sget-object v2, Lbo/app/o$c;->b:Lbo/app/o$c;

    invoke-virtual {v0, p0, v1, p1, v2}, Lcom/braze/support/BrazeLogger;->brazelog(Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;)V

    const/4 p1, 0x0

    :goto_0
    return p1
.end method
