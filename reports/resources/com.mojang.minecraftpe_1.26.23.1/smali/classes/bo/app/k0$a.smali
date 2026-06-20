.class public final Lbo/app/k0$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbo/app/k0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000c\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0018\u001a\u00020\u0017\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002J\u0010\u0010\u0006\u001a\u00020\u00002\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0002J\u0010\u0010\u0008\u001a\u00020\u00002\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0002J\u0010\u0010\n\u001a\u00020\u00002\u0008\u0010\t\u001a\u0004\u0018\u00010\u0002J\u0010\u0010\u000c\u001a\u00020\u00002\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0002J\u0010\u0010\u000e\u001a\u00020\u00002\u0008\u0010\r\u001a\u0004\u0018\u00010\u0002J\u0017\u0010\u0011\u001a\u00020\u00002\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000f\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0017\u0010\u0006\u001a\u00020\u00002\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u000f\u00a2\u0006\u0004\u0008\u0006\u0010\u0012J\u0010\u0010\u0011\u001a\u00020\u00002\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0002J\u0017\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u000f\u00a2\u0006\u0004\u0008\u0004\u0010\u0012J\u0006\u0010\u0004\u001a\u00020\u0016\u00a8\u0006\u001b"
    }
    d2 = {
        "Lbo/app/k0$a;",
        "",
        "",
        "androidVersion",
        "a",
        "carrier",
        "b",
        "model",
        "e",
        "localeLanguageAndCountry",
        "d",
        "timeZoneId",
        "g",
        "resolution",
        "f",
        "",
        "notificationsEnabled",
        "c",
        "(Ljava/lang/Boolean;)Lbo/app/k0$a;",
        "isBackgroundRestricted",
        "googleAdvertisingId",
        "isAdTrackingEnabled",
        "Lbo/app/k0;",
        "Lcom/braze/configuration/BrazeConfigurationProvider;",
        "configurationProvider",
        "<init>",
        "(Lcom/braze/configuration/BrazeConfigurationProvider;)V",
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
.field private final a:Lcom/braze/configuration/BrazeConfigurationProvider;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/Boolean;

.field private i:Ljava/lang/Boolean;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Lcom/braze/configuration/BrazeConfigurationProvider;)V
    .locals 1

    const-string v0, "configurationProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbo/app/k0$a;->a:Lcom/braze/configuration/BrazeConfigurationProvider;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Boolean;)Lbo/app/k0$a;
    .locals 0

    .line 2
    iput-object p1, p0, Lbo/app/k0$a;->k:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lbo/app/k0$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lbo/app/k0$a;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final a()Lbo/app/k0;
    .locals 13

    .line 3
    new-instance v12, Lbo/app/k0;

    .line 4
    iget-object v1, p0, Lbo/app/k0$a;->a:Lcom/braze/configuration/BrazeConfigurationProvider;

    .line 5
    iget-object v2, p0, Lbo/app/k0$a;->b:Ljava/lang/String;

    .line 6
    iget-object v3, p0, Lbo/app/k0$a;->c:Ljava/lang/String;

    .line 7
    iget-object v4, p0, Lbo/app/k0$a;->d:Ljava/lang/String;

    .line 8
    iget-object v5, p0, Lbo/app/k0$a;->e:Ljava/lang/String;

    .line 9
    iget-object v6, p0, Lbo/app/k0$a;->f:Ljava/lang/String;

    .line 10
    iget-object v7, p0, Lbo/app/k0$a;->g:Ljava/lang/String;

    .line 11
    iget-object v8, p0, Lbo/app/k0$a;->h:Ljava/lang/Boolean;

    .line 12
    iget-object v9, p0, Lbo/app/k0$a;->i:Ljava/lang/Boolean;

    .line 13
    iget-object v10, p0, Lbo/app/k0$a;->j:Ljava/lang/String;

    .line 14
    iget-object v11, p0, Lbo/app/k0$a;->k:Ljava/lang/Boolean;

    move-object v0, v12

    .line 15
    invoke-direct/range {v0 .. v11}, Lbo/app/k0;-><init>(Lcom/braze/configuration/BrazeConfigurationProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-object v12
.end method

.method public final b(Ljava/lang/Boolean;)Lbo/app/k0$a;
    .locals 0

    .line 2
    iput-object p1, p0, Lbo/app/k0$a;->i:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final b(Ljava/lang/String;)Lbo/app/k0$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lbo/app/k0$a;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final c(Ljava/lang/Boolean;)Lbo/app/k0$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lbo/app/k0$a;->h:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final c(Ljava/lang/String;)Lbo/app/k0$a;
    .locals 0

    .line 2
    iput-object p1, p0, Lbo/app/k0$a;->j:Ljava/lang/String;

    return-object p0
.end method

.method public final d(Ljava/lang/String;)Lbo/app/k0$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lbo/app/k0$a;->e:Ljava/lang/String;

    return-object p0
.end method

.method public final e(Ljava/lang/String;)Lbo/app/k0$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lbo/app/k0$a;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final f(Ljava/lang/String;)Lbo/app/k0$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lbo/app/k0$a;->g:Ljava/lang/String;

    return-object p0
.end method

.method public final g(Ljava/lang/String;)Lbo/app/k0$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lbo/app/k0$a;->f:Ljava/lang/String;

    return-object p0
.end method
