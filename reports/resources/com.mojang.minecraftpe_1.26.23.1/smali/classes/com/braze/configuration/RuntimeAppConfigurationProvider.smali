.class public final Lcom/braze/configuration/RuntimeAppConfigurationProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/braze/configuration/RuntimeAppConfigurationProvider$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\"\n\u0002\u0010#\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0007\u0018\u0000 32\u00020\u0001:\u00014B\u000f\u0012\u0006\u00100\u001a\u00020/\u00a2\u0006\u0004\u00081\u00102J!\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J!\u0010\n\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0008\u0010\u0005\u001a\u0004\u0018\u00010\tH\u0002\u00a2\u0006\u0004\u0008\n\u0010\u000bJ2\u0010\u0010\u001a\u00020\u0006\"\u0010\u0008\u0000\u0010\r*\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u000c2\u000e\u0010\u000f\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u000e2\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u000e\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u0011J\u0006\u0010\u0014\u001a\u00020\u0006J\u001a\u0010\u0016\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0003\u001a\u00020\u00022\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0002J\u0016\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u0004J\u0016\u0010\u0018\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0015\u001a\u00020\tJ(\u0010\u001b\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u001a2\u0006\u0010\u0003\u001a\u00020\u00022\u0010\u0010\u0015\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0018\u00010\u0019J\u000e\u0010\u001c\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\u0002J\u001e\u0010\u001d\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u000c\u0010\u0005\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u000cH\u0007J\u0018\u0010\u001e\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0002J.\u0010 \u001a\u00020\u0006\"\u0010\u0008\u0000\u0010\r*\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u000c2\u0006\u0010\u0003\u001a\u00020\u00022\u000c\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u000eJ\u0006\u0010!\u001a\u00020\u0006J\u0006\u0010\"\u001a\u00020\u0006R\u0017\u0010$\u001a\u00020#8\u0006\u00a2\u0006\u000c\n\u0004\u0008$\u0010%\u001a\u0004\u0008&\u0010\'R$\u0010)\u001a\u0004\u0018\u00010(8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008)\u0010*\u001a\u0004\u0008+\u0010,\"\u0004\u0008-\u0010.\u00a8\u00065"
    }
    d2 = {
        "Lcom/braze/configuration/RuntimeAppConfigurationProvider;",
        "",
        "",
        "key",
        "",
        "value",
        "",
        "putInt",
        "(Ljava/lang/String;Ljava/lang/Integer;)V",
        "",
        "putBoolean",
        "(Ljava/lang/String;Ljava/lang/Boolean;)V",
        "",
        "T",
        "Ljava/util/EnumSet;",
        "enumSet",
        "putEnumSet",
        "Lcom/braze/configuration/BrazeConfig;",
        "config",
        "setConfiguration",
        "clearAllConfigurationValues",
        "defaultValue",
        "getStringValue",
        "getIntValue",
        "getBooleanValue",
        "",
        "",
        "getStringSetValue",
        "containsKey",
        "putEnumAsString",
        "putString",
        "updateValue",
        "updateEnumSetData",
        "startEdit",
        "applyEdit",
        "Landroid/content/SharedPreferences;",
        "storageMap",
        "Landroid/content/SharedPreferences;",
        "getStorageMap",
        "()Landroid/content/SharedPreferences;",
        "Landroid/content/SharedPreferences$Editor;",
        "editor",
        "Landroid/content/SharedPreferences$Editor;",
        "getEditor",
        "()Landroid/content/SharedPreferences$Editor;",
        "setEditor",
        "(Landroid/content/SharedPreferences$Editor;)V",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "Companion",
        "a",
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
.field public static final Companion:Lcom/braze/configuration/RuntimeAppConfigurationProvider$a;

.field private static final SHARED_PREFERENCES_NAME:Ljava/lang/String; = "com.appboy.override.configuration.cache"


# instance fields
.field private editor:Landroid/content/SharedPreferences$Editor;

.field private final storageMap:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/braze/configuration/RuntimeAppConfigurationProvider$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/braze/configuration/RuntimeAppConfigurationProvider$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/braze/configuration/RuntimeAppConfigurationProvider;->Companion:Lcom/braze/configuration/RuntimeAppConfigurationProvider$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, "com.appboy.override.configuration.cache"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "context.getSharedPrefere\u2026ME, Context.MODE_PRIVATE)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/braze/configuration/RuntimeAppConfigurationProvider;->storageMap:Landroid/content/SharedPreferences;

    return-void
.end method

.method private final putBoolean(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iget-object v0, p0, Lcom/braze/configuration/RuntimeAppConfigurationProvider;->editor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :cond_0
    return-void
.end method

.method private final putEnumSet(Ljava/util/EnumSet;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum<",
            "TT;>;>(",
            "Ljava/util/EnumSet<",
            "TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {p1}, Lbo/app/v0;->a(Ljava/util/EnumSet;)Ljava/util/Set;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/braze/configuration/RuntimeAppConfigurationProvider;->editor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_1

    invoke-interface {v0, p2, p1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    :cond_1
    return-void
.end method

.method private final putInt(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    iget-object v0, p0, Lcom/braze/configuration/RuntimeAppConfigurationProvider;->editor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :cond_0
    return-void
.end method


# virtual methods
.method public final applyEdit()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/braze/configuration/RuntimeAppConfigurationProvider;->editor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public final clearAllConfigurationValues()V
    .locals 7

    .line 1
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v4, Lcom/braze/configuration/RuntimeAppConfigurationProvider$b;->b:Lcom/braze/configuration/RuntimeAppConfigurationProvider$b;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v6}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/braze/configuration/RuntimeAppConfigurationProvider;->storageMap:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final containsKey(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/braze/configuration/RuntimeAppConfigurationProvider;->storageMap:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final getBooleanValue(Ljava/lang/String;Z)Z
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/braze/configuration/RuntimeAppConfigurationProvider;->storageMap:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public final getEditor()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/braze/configuration/RuntimeAppConfigurationProvider;->editor:Landroid/content/SharedPreferences$Editor;

    return-object v0
.end method

.method public final getIntValue(Ljava/lang/String;I)I
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/braze/configuration/RuntimeAppConfigurationProvider;->storageMap:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public final getStorageMap()Landroid/content/SharedPreferences;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/braze/configuration/RuntimeAppConfigurationProvider;->storageMap:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public final getStringSetValue(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/braze/configuration/RuntimeAppConfigurationProvider;->storageMap:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public final getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/braze/configuration/RuntimeAppConfigurationProvider;->storageMap:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final putEnumAsString(Ljava/lang/String;Ljava/lang/Enum;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Enum<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/braze/configuration/RuntimeAppConfigurationProvider;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 1
    iget-object v0, p0, Lcom/braze/configuration/RuntimeAppConfigurationProvider;->editor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_0
    return-void
.end method

.method public final setConfiguration(Lcom/braze/configuration/BrazeConfig;)V
    .locals 8

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v3, Lcom/braze/support/BrazeLogger$Priority;->I:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v5, Lcom/braze/configuration/RuntimeAppConfigurationProvider$c;

    invoke-direct {v5, p1}, Lcom/braze/configuration/RuntimeAppConfigurationProvider$c;-><init>(Lcom/braze/configuration/BrazeConfig;)V

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 2
    invoke-virtual {p0}, Lcom/braze/configuration/RuntimeAppConfigurationProvider;->startEdit()V

    .line 3
    sget-object v0, Lcom/braze/configuration/BrazeConfigurationProvider$b;->e:Lcom/braze/configuration/BrazeConfigurationProvider$b;

    invoke-virtual {v0}, Lcom/braze/configuration/BrazeConfigurationProvider$b;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/braze/configuration/BrazeConfig;->apiKey:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/braze/configuration/RuntimeAppConfigurationProvider;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    sget-object v0, Lcom/braze/configuration/BrazeConfigurationProvider$b;->f:Lcom/braze/configuration/BrazeConfigurationProvider$b;

    invoke-virtual {v0}, Lcom/braze/configuration/BrazeConfigurationProvider$b;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/braze/configuration/BrazeConfig;->serverTarget:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/braze/configuration/RuntimeAppConfigurationProvider;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    sget-object v0, Lcom/braze/configuration/BrazeConfigurationProvider$b;->p:Lcom/braze/configuration/BrazeConfigurationProvider$b;

    invoke-virtual {v0}, Lcom/braze/configuration/BrazeConfigurationProvider$b;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/braze/configuration/BrazeConfig;->sdkFlavor:Lcom/braze/enums/SdkFlavor;

    invoke-virtual {p0, v0, v1}, Lcom/braze/configuration/RuntimeAppConfigurationProvider;->putEnumAsString(Ljava/lang/String;Ljava/lang/Enum;)V

    .line 7
    sget-object v0, Lcom/braze/configuration/BrazeConfigurationProvider$b;->o:Lcom/braze/configuration/BrazeConfigurationProvider$b;

    invoke-virtual {v0}, Lcom/braze/configuration/BrazeConfigurationProvider$b;->b()Ljava/lang/String;

    move-result-object v0

    .line 8
    iget-object v1, p1, Lcom/braze/configuration/BrazeConfig;->isNewsFeedVisualIndicatorOn:Ljava/lang/Boolean;

    .line 9
    invoke-direct {p0, v0, v1}, Lcom/braze/configuration/RuntimeAppConfigurationProvider;->putBoolean(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 13
    sget-object v0, Lcom/braze/configuration/BrazeConfigurationProvider$b;->q:Lcom/braze/configuration/BrazeConfigurationProvider$b;

    invoke-virtual {v0}, Lcom/braze/configuration/BrazeConfigurationProvider$b;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/braze/configuration/BrazeConfig;->customEndpoint:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/braze/configuration/RuntimeAppConfigurationProvider;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    sget-object v0, Lcom/braze/configuration/BrazeConfigurationProvider$b;->h:Lcom/braze/configuration/BrazeConfigurationProvider$b;

    invoke-virtual {v0}, Lcom/braze/configuration/BrazeConfigurationProvider$b;->b()Ljava/lang/String;

    move-result-object v0

    .line 16
    iget-object v1, p1, Lcom/braze/configuration/BrazeConfig;->smallNotificationIcon:Ljava/lang/String;

    .line 17
    invoke-virtual {p0, v0, v1}, Lcom/braze/configuration/RuntimeAppConfigurationProvider;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    sget-object v0, Lcom/braze/configuration/BrazeConfigurationProvider$b;->i:Lcom/braze/configuration/BrazeConfigurationProvider$b;

    invoke-virtual {v0}, Lcom/braze/configuration/BrazeConfigurationProvider$b;->b()Ljava/lang/String;

    move-result-object v0

    .line 23
    iget-object v1, p1, Lcom/braze/configuration/BrazeConfig;->largeNotificationIcon:Ljava/lang/String;

    .line 24
    invoke-virtual {p0, v0, v1}, Lcom/braze/configuration/RuntimeAppConfigurationProvider;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    sget-object v0, Lcom/braze/configuration/BrazeConfigurationProvider$b;->j:Lcom/braze/configuration/BrazeConfigurationProvider$b;

    invoke-virtual {v0}, Lcom/braze/configuration/BrazeConfigurationProvider$b;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/braze/configuration/BrazeConfig;->sessionTimeout:Ljava/lang/Integer;

    invoke-direct {p0, v0, v1}, Lcom/braze/configuration/RuntimeAppConfigurationProvider;->putInt(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 30
    sget-object v0, Lcom/braze/configuration/BrazeConfigurationProvider$b;->l:Lcom/braze/configuration/BrazeConfigurationProvider$b;

    invoke-virtual {v0}, Lcom/braze/configuration/BrazeConfigurationProvider$b;->b()Ljava/lang/String;

    move-result-object v0

    .line 31
    iget-object v1, p1, Lcom/braze/configuration/BrazeConfig;->defaultNotificationAccentColor:Ljava/lang/Integer;

    .line 32
    invoke-direct {p0, v0, v1}, Lcom/braze/configuration/RuntimeAppConfigurationProvider;->putInt(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 37
    sget-object v0, Lcom/braze/configuration/BrazeConfigurationProvider$b;->m:Lcom/braze/configuration/BrazeConfigurationProvider$b;

    invoke-virtual {v0}, Lcom/braze/configuration/BrazeConfigurationProvider$b;->b()Ljava/lang/String;

    move-result-object v0

    .line 38
    iget-object v1, p1, Lcom/braze/configuration/BrazeConfig;->triggerActionMinimumTimeIntervalSeconds:Ljava/lang/Integer;

    .line 39
    invoke-direct {p0, v0, v1}, Lcom/braze/configuration/RuntimeAppConfigurationProvider;->putInt(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 44
    sget-object v0, Lcom/braze/configuration/BrazeConfigurationProvider$b;->g:Lcom/braze/configuration/BrazeConfigurationProvider$b;

    invoke-virtual {v0}, Lcom/braze/configuration/BrazeConfigurationProvider$b;->b()Ljava/lang/String;

    move-result-object v0

    .line 45
    iget-object v1, p1, Lcom/braze/configuration/BrazeConfig;->isAdmMessagingRegistrationEnabled:Ljava/lang/Boolean;

    .line 46
    invoke-direct {p0, v0, v1}, Lcom/braze/configuration/RuntimeAppConfigurationProvider;->putBoolean(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 51
    sget-object v0, Lcom/braze/configuration/BrazeConfigurationProvider$b;->n:Lcom/braze/configuration/BrazeConfigurationProvider$b;

    invoke-virtual {v0}, Lcom/braze/configuration/BrazeConfigurationProvider$b;->b()Ljava/lang/String;

    move-result-object v0

    .line 52
    iget-object v1, p1, Lcom/braze/configuration/BrazeConfig;->willHandlePushDeepLinksAutomatically:Ljava/lang/Boolean;

    .line 53
    invoke-direct {p0, v0, v1}, Lcom/braze/configuration/RuntimeAppConfigurationProvider;->putBoolean(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 58
    sget-object v0, Lcom/braze/configuration/BrazeConfigurationProvider$b;->k:Lcom/braze/configuration/BrazeConfigurationProvider$b;

    invoke-virtual {v0}, Lcom/braze/configuration/BrazeConfigurationProvider$b;->b()Ljava/lang/String;

    move-result-object v0

    .line 59
    iget-object v1, p1, Lcom/braze/configuration/BrazeConfig;->isLocationCollectionEnabled:Ljava/lang/Boolean;

    .line 60
    invoke-direct {p0, v0, v1}, Lcom/braze/configuration/RuntimeAppConfigurationProvider;->putBoolean(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 65
    sget-object v0, Lcom/braze/configuration/BrazeConfigurationProvider$b;->P:Lcom/braze/configuration/BrazeConfigurationProvider$b;

    invoke-virtual {v0}, Lcom/braze/configuration/BrazeConfigurationProvider$b;->b()Ljava/lang/String;

    move-result-object v0

    .line 66
    iget-object v1, p1, Lcom/braze/configuration/BrazeConfig;->badNetworkInterval:Ljava/lang/Integer;

    .line 67
    invoke-direct {p0, v0, v1}, Lcom/braze/configuration/RuntimeAppConfigurationProvider;->putInt(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 72
    sget-object v0, Lcom/braze/configuration/BrazeConfigurationProvider$b;->Q:Lcom/braze/configuration/BrazeConfigurationProvider$b;

    invoke-virtual {v0}, Lcom/braze/configuration/BrazeConfigurationProvider$b;->b()Ljava/lang/String;

    move-result-object v0

    .line 73
    iget-object v1, p1, Lcom/braze/configuration/BrazeConfig;->goodNetworkInterval:Ljava/lang/Integer;

    .line 74
    invoke-direct {p0, v0, v1}, Lcom/braze/configuration/RuntimeAppConfigurationProvider;->putInt(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 79
    sget-object v0, Lcom/braze/configuration/BrazeConfigurationProvider$b;->R:Lcom/braze/configuration/BrazeConfigurationProvider$b;

    invoke-virtual {v0}, Lcom/braze/configuration/BrazeConfigurationProvider$b;->b()Ljava/lang/String;

    move-result-object v0

    .line 80
    iget-object v1, p1, Lcom/braze/configuration/BrazeConfig;->greatNetworkInterval:Ljava/lang/Integer;

    .line 81
    invoke-direct {p0, v0, v1}, Lcom/braze/configuration/RuntimeAppConfigurationProvider;->putInt(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 86
    sget-object v0, Lcom/braze/configuration/BrazeConfigurationProvider$b;->r:Lcom/braze/configuration/BrazeConfigurationProvider$b;

    invoke-virtual {v0}, Lcom/braze/configuration/BrazeConfigurationProvider$b;->b()Ljava/lang/String;

    move-result-object v0

    .line 87
    iget-object v1, p1, Lcom/braze/configuration/BrazeConfig;->defaultNotificationChannelName:Ljava/lang/String;

    .line 88
    invoke-virtual {p0, v0, v1}, Lcom/braze/configuration/RuntimeAppConfigurationProvider;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    sget-object v0, Lcom/braze/configuration/BrazeConfigurationProvider$b;->s:Lcom/braze/configuration/BrazeConfigurationProvider$b;

    invoke-virtual {v0}, Lcom/braze/configuration/BrazeConfigurationProvider$b;->b()Ljava/lang/String;

    move-result-object v0

    .line 94
    iget-object v1, p1, Lcom/braze/configuration/BrazeConfig;->defaultNotificationChannelDescription:Ljava/lang/String;

    .line 95
    invoke-virtual {p0, v0, v1}, Lcom/braze/configuration/RuntimeAppConfigurationProvider;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    sget-object v0, Lcom/braze/configuration/BrazeConfigurationProvider$b;->t:Lcom/braze/configuration/BrazeConfigurationProvider$b;

    invoke-virtual {v0}, Lcom/braze/configuration/BrazeConfigurationProvider$b;->b()Ljava/lang/String;

    move-result-object v0

    .line 101
    iget-object v1, p1, Lcom/braze/configuration/BrazeConfig;->isPushDeepLinkBackStackActivityEnabled:Ljava/lang/Boolean;

    .line 102
    invoke-direct {p0, v0, v1}, Lcom/braze/configuration/RuntimeAppConfigurationProvider;->putBoolean(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 107
    sget-object v0, Lcom/braze/configuration/BrazeConfigurationProvider$b;->u:Lcom/braze/configuration/BrazeConfigurationProvider$b;

    invoke-virtual {v0}, Lcom/braze/configuration/BrazeConfigurationProvider$b;->b()Ljava/lang/String;

    move-result-object v0

    .line 108
    iget-object v1, p1, Lcom/braze/configuration/BrazeConfig;->pushDeepLinkBackStackActivityClassName:Ljava/lang/String;

    .line 109
    invoke-virtual {p0, v0, v1}, Lcom/braze/configuration/RuntimeAppConfigurationProvider;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    sget-object v0, Lcom/braze/configuration/BrazeConfigurationProvider$b;->v:Lcom/braze/configuration/BrazeConfigurationProvider$b;

    invoke-virtual {v0}, Lcom/braze/configuration/BrazeConfigurationProvider$b;->b()Ljava/lang/String;

    move-result-object v0

    .line 115
    iget-object v1, p1, Lcom/braze/configuration/BrazeConfig;->isSessionStartBasedTimeoutEnabled:Ljava/lang/Boolean;

    .line 116
    invoke-direct {p0, v0, v1}, Lcom/braze/configuration/RuntimeAppConfigurationProvider;->putBoolean(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 121
    sget-object v0, Lcom/braze/configuration/BrazeConfigurationProvider$b;->w:Lcom/braze/configuration/BrazeConfigurationProvider$b;

    invoke-virtual {v0}, Lcom/braze/configuration/BrazeConfigurationProvider$b;->b()Ljava/lang/String;

    move-result-object v0

    .line 122
    iget-object v1, p1, Lcom/braze/configuration/BrazeConfig;->isFirebaseCloudMessagingRegistrationEnabled:Ljava/lang/Boolean;

    .line 123
    invoke-direct {p0, v0, v1}, Lcom/braze/configuration/RuntimeAppConfigurationProvider;->putBoolean(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 128
    sget-object v0, Lcom/braze/configuration/BrazeConfigurationProvider$b;->x:Lcom/braze/configuration/BrazeConfigurationProvider$b;

    invoke-virtual {v0}, Lcom/braze/configuration/BrazeConfigurationProvider$b;->b()Ljava/lang/String;

    move-result-object v0

    .line 129
    iget-object v1, p1, Lcom/braze/configuration/BrazeConfig;->firebaseCloudMessagingSenderIdKey:Ljava/lang/String;

    .line 130
    invoke-virtual {p0, v0, v1}, Lcom/braze/configuration/RuntimeAppConfigurationProvider;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    sget-object v0, Lcom/braze/configuration/BrazeConfigurationProvider$b;->y:Lcom/braze/configuration/BrazeConfigurationProvider$b;

    invoke-virtual {v0}, Lcom/braze/configuration/BrazeConfigurationProvider$b;->b()Ljava/lang/String;

    move-result-object v0

    .line 136
    iget-object v1, p1, Lcom/braze/configuration/BrazeConfig;->isContentCardsUnreadVisualIndicatorEnabled:Ljava/lang/Boolean;

    .line 137
    invoke-direct {p0, v0, v1}, Lcom/braze/configuration/RuntimeAppConfigurationProvider;->putBoolean(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 142
    sget-object v0, Lcom/braze/configuration/BrazeConfigurationProvider$b;->z:Lcom/braze/configuration/BrazeConfigurationProvider$b;

    invoke-virtual {v0}, Lcom/braze/configuration/BrazeConfigurationProvider$b;->b()Ljava/lang/String;

    move-result-object v0

    .line 143
    iget-object v1, p1, Lcom/braze/configuration/BrazeConfig;->isDeviceObjectAllowlistEnabled:Ljava/lang/Boolean;

    .line 144
    invoke-direct {p0, v0, v1}, Lcom/braze/configuration/RuntimeAppConfigurationProvider;->putBoolean(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 149
    sget-object v0, Lcom/braze/configuration/BrazeConfigurationProvider$b;->B:Lcom/braze/configuration/BrazeConfigurationProvider$b;

    invoke-virtual {v0}, Lcom/braze/configuration/BrazeConfigurationProvider$b;->b()Ljava/lang/String;

    move-result-object v0

    .line 150
    iget-object v1, p1, Lcom/braze/configuration/BrazeConfig;->isInAppMessageAccessibilityExclusiveModeEnabled:Ljava/lang/Boolean;

    .line 151
    invoke-direct {p0, v0, v1}, Lcom/braze/configuration/RuntimeAppConfigurationProvider;->putBoolean(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 156
    sget-object v0, Lcom/braze/configuration/BrazeConfigurationProvider$b;->C:Lcom/braze/configuration/BrazeConfigurationProvider$b;

    invoke-virtual {v0}, Lcom/braze/configuration/BrazeConfigurationProvider$b;->b()Ljava/lang/String;

    move-result-object v0

    .line 157
    iget-object v1, p1, Lcom/braze/configuration/BrazeConfig;->isPushWakeScreenForNotificationEnabled:Ljava/lang/Boolean;

    .line 158
    invoke-direct {p0, v0, v1}, Lcom/braze/configuration/RuntimeAppConfigurationProvider;->putBoolean(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 163
    sget-object v0, Lcom/braze/configuration/BrazeConfigurationProvider$b;->D:Lcom/braze/configuration/BrazeConfigurationProvider$b;

    invoke-virtual {v0}, Lcom/braze/configuration/BrazeConfigurationProvider$b;->b()Ljava/lang/String;

    move-result-object v0

    .line 164
    iget-object v1, p1, Lcom/braze/configuration/BrazeConfig;->isPushHtmlRenderingEnabled:Ljava/lang/Boolean;

    .line 165
    invoke-direct {p0, v0, v1}, Lcom/braze/configuration/RuntimeAppConfigurationProvider;->putBoolean(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 170
    sget-object v0, Lcom/braze/configuration/BrazeConfigurationProvider$b;->E:Lcom/braze/configuration/BrazeConfigurationProvider$b;

    invoke-virtual {v0}, Lcom/braze/configuration/BrazeConfigurationProvider$b;->b()Ljava/lang/String;

    move-result-object v0

    .line 171
    iget-object v1, p1, Lcom/braze/configuration/BrazeConfig;->doesPushStoryDismissOnClick:Ljava/lang/Boolean;

    .line 172
    invoke-direct {p0, v0, v1}, Lcom/braze/configuration/RuntimeAppConfigurationProvider;->putBoolean(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 176
    sget-object v0, Lcom/braze/configuration/BrazeConfigurationProvider$b;->F:Lcom/braze/configuration/BrazeConfigurationProvider$b;

    invoke-virtual {v0}, Lcom/braze/configuration/BrazeConfigurationProvider$b;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/braze/configuration/BrazeConfig;->areGeofencesEnabled:Ljava/lang/Boolean;

    invoke-direct {p0, v0, v1}, Lcom/braze/configuration/RuntimeAppConfigurationProvider;->putBoolean(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 178
    sget-object v0, Lcom/braze/configuration/BrazeConfigurationProvider$b;->G:Lcom/braze/configuration/BrazeConfigurationProvider$b;

    invoke-virtual {v0}, Lcom/braze/configuration/BrazeConfigurationProvider$b;->b()Ljava/lang/String;

    move-result-object v0

    .line 179
    iget-object v1, p1, Lcom/braze/configuration/BrazeConfig;->isInAppMessageTestPushEagerDisplayEnabled:Ljava/lang/Boolean;

    .line 180
    invoke-direct {p0, v0, v1}, Lcom/braze/configuration/RuntimeAppConfigurationProvider;->putBoolean(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 185
    sget-object v0, Lcom/braze/configuration/BrazeConfigurationProvider$b;->I:Lcom/braze/configuration/BrazeConfigurationProvider$b;

    invoke-virtual {v0}, Lcom/braze/configuration/BrazeConfigurationProvider$b;->b()Ljava/lang/String;

    move-result-object v0

    .line 186
    iget-object v1, p1, Lcom/braze/configuration/BrazeConfig;->customHtmlWebViewActivityClassName:Ljava/lang/String;

    .line 187
    invoke-virtual {p0, v0, v1}, Lcom/braze/configuration/RuntimeAppConfigurationProvider;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    sget-object v0, Lcom/braze/configuration/BrazeConfigurationProvider$b;->J:Lcom/braze/configuration/BrazeConfigurationProvider$b;

    invoke-virtual {v0}, Lcom/braze/configuration/BrazeConfigurationProvider$b;->b()Ljava/lang/String;

    move-result-object v0

    .line 193
    iget-object v1, p1, Lcom/braze/configuration/BrazeConfig;->areAutomaticGeofenceRequestsEnabled:Ljava/lang/Boolean;

    .line 194
    invoke-direct {p0, v0, v1}, Lcom/braze/configuration/RuntimeAppConfigurationProvider;->putBoolean(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 199
    sget-object v0, Lcom/braze/configuration/BrazeConfigurationProvider$b;->L:Lcom/braze/configuration/BrazeConfigurationProvider$b;

    invoke-virtual {v0}, Lcom/braze/configuration/BrazeConfigurationProvider$b;->b()Ljava/lang/String;

    move-result-object v0

    .line 200
    iget-object v1, p1, Lcom/braze/configuration/BrazeConfig;->inAppMessageWebViewClientMaxOnPageFinishedWaitMs:Ljava/lang/Integer;

    .line 201
    invoke-direct {p0, v0, v1}, Lcom/braze/configuration/RuntimeAppConfigurationProvider;->putInt(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 206
    sget-object v0, Lcom/braze/configuration/BrazeConfigurationProvider$b;->M:Lcom/braze/configuration/BrazeConfigurationProvider$b;

    invoke-virtual {v0}, Lcom/braze/configuration/BrazeConfigurationProvider$b;->b()Ljava/lang/String;

    move-result-object v0

    .line 207
    iget-object v1, p1, Lcom/braze/configuration/BrazeConfig;->isFirebaseMessagingServiceOnNewTokenRegistrationEnabled:Ljava/lang/Boolean;

    .line 208
    invoke-direct {p0, v0, v1}, Lcom/braze/configuration/RuntimeAppConfigurationProvider;->putBoolean(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 212
    sget-object v0, Lcom/braze/configuration/BrazeConfigurationProvider$b;->N:Lcom/braze/configuration/BrazeConfigurationProvider$b;

    invoke-virtual {v0}, Lcom/braze/configuration/BrazeConfigurationProvider$b;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/braze/configuration/BrazeConfig;->isSdkAuthEnabled:Ljava/lang/Boolean;

    invoke-direct {p0, v0, v1}, Lcom/braze/configuration/RuntimeAppConfigurationProvider;->putBoolean(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 214
    sget-object v0, Lcom/braze/configuration/BrazeConfigurationProvider$b;->O:Lcom/braze/configuration/BrazeConfigurationProvider$b;

    invoke-virtual {v0}, Lcom/braze/configuration/BrazeConfigurationProvider$b;->b()Ljava/lang/String;

    move-result-object v0

    .line 215
    iget-object v1, p1, Lcom/braze/configuration/BrazeConfig;->isTouchModeRequiredForHtmlInAppMessages:Ljava/lang/Boolean;

    .line 216
    invoke-direct {p0, v0, v1}, Lcom/braze/configuration/RuntimeAppConfigurationProvider;->putBoolean(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 221
    sget-object v0, Lcom/braze/configuration/BrazeConfigurationProvider$b;->U:Lcom/braze/configuration/BrazeConfigurationProvider$b;

    invoke-virtual {v0}, Lcom/braze/configuration/BrazeConfigurationProvider$b;->b()Ljava/lang/String;

    move-result-object v0

    .line 222
    iget-object v1, p1, Lcom/braze/configuration/BrazeConfig;->isHtmlInAppMessageApplyWindowInsetsEnabled:Ljava/lang/Boolean;

    .line 223
    invoke-direct {p0, v0, v1}, Lcom/braze/configuration/RuntimeAppConfigurationProvider;->putBoolean(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 228
    iget-object v0, p1, Lcom/braze/configuration/BrazeConfig;->deviceObjectAllowlist:Ljava/util/EnumSet;

    .line 229
    sget-object v1, Lcom/braze/configuration/BrazeConfigurationProvider$b;->A:Lcom/braze/configuration/BrazeConfigurationProvider$b;

    invoke-virtual {v1}, Lcom/braze/configuration/BrazeConfigurationProvider$b;->b()Ljava/lang/String;

    move-result-object v1

    .line 230
    invoke-direct {p0, v0, v1}, Lcom/braze/configuration/RuntimeAppConfigurationProvider;->putEnumSet(Ljava/util/EnumSet;Ljava/lang/String;)V

    .line 235
    iget-object v0, p1, Lcom/braze/configuration/BrazeConfig;->customLocationProviderNames:Ljava/util/EnumSet;

    .line 236
    sget-object v1, Lcom/braze/configuration/BrazeConfigurationProvider$b;->K:Lcom/braze/configuration/BrazeConfigurationProvider$b;

    invoke-virtual {v1}, Lcom/braze/configuration/BrazeConfigurationProvider$b;->b()Ljava/lang/String;

    move-result-object v1

    .line 237
    invoke-direct {p0, v0, v1}, Lcom/braze/configuration/RuntimeAppConfigurationProvider;->putEnumSet(Ljava/util/EnumSet;Ljava/lang/String;)V

    .line 242
    iget-object p1, p1, Lcom/braze/configuration/BrazeConfig;->brazeSdkMetadata:Ljava/util/EnumSet;

    if-eqz p1, :cond_0

    .line 243
    sget-object v0, Lcom/braze/configuration/BrazeConfigurationProvider$b;->T:Lcom/braze/configuration/BrazeConfigurationProvider$b;

    invoke-virtual {v0}, Lcom/braze/configuration/BrazeConfigurationProvider$b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/braze/configuration/RuntimeAppConfigurationProvider;->updateEnumSetData(Ljava/lang/String;Ljava/util/EnumSet;)V

    .line 245
    :cond_0
    invoke-virtual {p0}, Lcom/braze/configuration/RuntimeAppConfigurationProvider;->applyEdit()V

    return-void
.end method

.method public final setEditor(Landroid/content/SharedPreferences$Editor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/braze/configuration/RuntimeAppConfigurationProvider;->editor:Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public final startEdit()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/braze/configuration/RuntimeAppConfigurationProvider;->storageMap:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/braze/configuration/RuntimeAppConfigurationProvider;->editor:Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public final updateEnumSetData(Ljava/lang/String;Ljava/util/EnumSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum<",
            "TT;>;>(",
            "Ljava/lang/String;",
            "Ljava/util/EnumSet<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "updateValue"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/braze/configuration/RuntimeAppConfigurationProvider;->getStringSetValue(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p2}, Lbo/app/v0;->a(Ljava/util/EnumSet;)Ljava/util/Set;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 3
    :cond_0
    iget-object p2, p0, Lcom/braze/configuration/RuntimeAppConfigurationProvider;->storageMap:Landroid/content/SharedPreferences;

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    .line 4
    invoke-interface {p2, p1, v0}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 5
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
