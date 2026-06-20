.class public final Lcom/braze/managers/BrazeGeofenceManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/braze/managers/IBrazeGeofenceLocationUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/braze/managers/BrazeGeofenceManager$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u00ac\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010!\n\u0002\u0008\u0017\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u0000 u2\u00020\u00012\u00020\u0002:\u0001uB7\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010n\u001a\u00020\u000e\u0012\u0006\u0010V\u001a\u00020U\u0012\u0006\u0010&\u001a\u00020%\u0012\u0006\u0010p\u001a\u00020o\u0012\u0006\u0010r\u001a\u00020q\u00a2\u0006\u0004\u0008s\u0010tJ\u0006\u0010\u0004\u001a\u00020\u0003J\u0010\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0007J\u0010\u0010\n\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u0007H\u0007J\u0012\u0010\r\u001a\u00020\u00032\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000bH\u0007J\u0018\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u0010H\u0007J\u0012\u0010\u0014\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u000f\u001a\u00020\u000eH\u0007J\u0018\u0010\u0016\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0015\u001a\u00020\u0010H\u0016J\u0010\u0010\u0019\u001a\u00020\u00032\u0006\u0010\u0018\u001a\u00020\u0017H\u0016J\u0010\u0010\u0019\u001a\u00020\u00032\u0006\u0010\u001a\u001a\u00020\u0007H\u0016J\u0010\u0010\u001d\u001a\u00020\u00032\u0006\u0010\u001c\u001a\u00020\u001bH\u0016J\u0016\u0010 \u001a\u00020\u00032\u000c\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u001eH\u0016J\u0008\u0010!\u001a\u00020\u0003H\u0016J\u0012\u0010\"\u001a\u00020\u00032\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0017H\u0016J\u0008\u0010#\u001a\u00020\u0003H\u0007J\u001e\u0010$\u001a\u00020\u00032\u000c\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u001e2\u0006\u0010\u000c\u001a\u00020\u000bH\u0007R\u0014\u0010&\u001a\u00020%8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008&\u0010\'R\u001c\u0010)\u001a\n (*\u0004\u0018\u00010\u00050\u00058\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008)\u0010*R\u0014\u0010,\u001a\u00020+8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008,\u0010-R \u0010/\u001a\u00020.8\u0006X\u0087\u0004\u00a2\u0006\u0012\n\u0004\u0008/\u00100\u0012\u0004\u00083\u00104\u001a\u0004\u00081\u00102R&\u00106\u001a\u0008\u0012\u0004\u0012\u00020\u0013058\u0006X\u0087\u0004\u00a2\u0006\u0012\n\u0004\u00086\u00107\u0012\u0004\u0008:\u00104\u001a\u0004\u00088\u00109R\"\u0010;\u001a\u0004\u0018\u00010\u000b8\u0006X\u0087\u0004\u00a2\u0006\u0012\n\u0004\u0008;\u0010<\u0012\u0004\u0008?\u00104\u001a\u0004\u0008=\u0010>R*\u0010@\u001a\u0004\u0018\u00010\u00178\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0018\n\u0004\u0008@\u0010A\u0012\u0004\u0008F\u00104\u001a\u0004\u0008B\u0010C\"\u0004\u0008D\u0010ER(\u0010G\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0018\n\u0004\u0008G\u0010H\u0012\u0004\u0008L\u00104\u001a\u0004\u0008G\u0010I\"\u0004\u0008J\u0010KR(\u0010N\u001a\u00020M8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0018\n\u0004\u0008N\u0010O\u0012\u0004\u0008T\u00104\u001a\u0004\u0008P\u0010Q\"\u0004\u0008R\u0010SR\u0017\u0010V\u001a\u00020U8\u0006\u00a2\u0006\u000c\n\u0004\u0008V\u0010W\u001a\u0004\u0008X\u0010YR \u0010[\u001a\u00020Z8\u0006X\u0087\u0004\u00a2\u0006\u0012\n\u0004\u0008[\u0010\\\u0012\u0004\u0008_\u00104\u001a\u0004\u0008]\u0010^R \u0010a\u001a\u00020`8\u0006X\u0087\u0004\u00a2\u0006\u0012\n\u0004\u0008a\u0010b\u0012\u0004\u0008e\u00104\u001a\u0004\u0008c\u0010dR(\u0010g\u001a\u00020f8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0018\n\u0004\u0008g\u0010h\u0012\u0004\u0008m\u00104\u001a\u0004\u0008i\u0010j\"\u0004\u0008k\u0010l\u00a8\u0006v"
    }
    d2 = {
        "Lcom/braze/managers/BrazeGeofenceManager;",
        "",
        "Lcom/braze/managers/IBrazeGeofenceLocationUpdateListener;",
        "",
        "initializeGeofences",
        "Landroid/content/Context;",
        "context",
        "",
        "isGeofencesEnabledFromEnvironment",
        "reRegisterGeofences",
        "setUpGeofences",
        "Landroid/app/PendingIntent;",
        "geofenceRequestIntent",
        "tearDownGeofences",
        "",
        "geofenceId",
        "Lcom/braze/enums/GeofenceTransitionType;",
        "geofenceTransitionType",
        "analyticsEnabledForGeofenceId",
        "Lcom/braze/models/BrazeGeofence;",
        "getBrazeGeofenceForGeofenceId",
        "transitionType",
        "postGeofenceReport",
        "Lcom/braze/models/IBrazeLocation;",
        "location",
        "requestGeofenceRefresh",
        "ignoreRateLimit",
        "Lbo/app/y4;",
        "serverConfig",
        "configureFromServerConfig",
        "",
        "geofenceList",
        "registerGeofences",
        "unregisterGeofences",
        "onLocationRequestComplete",
        "requestSingleLocationUpdateFromGooglePlay",
        "registerGeofencesWithGooglePlay",
        "Lcom/braze/configuration/BrazeConfigurationProvider;",
        "configurationProvider",
        "Lcom/braze/configuration/BrazeConfigurationProvider;",
        "kotlin.jvm.PlatformType",
        "applicationContext",
        "Landroid/content/Context;",
        "Ljava/util/concurrent/locks/ReentrantLock;",
        "geofenceListLock",
        "Ljava/util/concurrent/locks/ReentrantLock;",
        "Landroid/content/SharedPreferences;",
        "geofenceStorageSharedPreferences",
        "Landroid/content/SharedPreferences;",
        "getGeofenceStorageSharedPreferences",
        "()Landroid/content/SharedPreferences;",
        "getGeofenceStorageSharedPreferences$annotations",
        "()V",
        "",
        "brazeGeofences",
        "Ljava/util/List;",
        "getBrazeGeofences",
        "()Ljava/util/List;",
        "getBrazeGeofences$annotations",
        "geofenceTransitionPendingIntent",
        "Landroid/app/PendingIntent;",
        "getGeofenceTransitionPendingIntent",
        "()Landroid/app/PendingIntent;",
        "getGeofenceTransitionPendingIntent$annotations",
        "geofenceRequestLocation",
        "Lcom/braze/models/IBrazeLocation;",
        "getGeofenceRequestLocation",
        "()Lcom/braze/models/IBrazeLocation;",
        "setGeofenceRequestLocation",
        "(Lcom/braze/models/IBrazeLocation;)V",
        "getGeofenceRequestLocation$annotations",
        "isGeofencesEnabled",
        "Z",
        "()Z",
        "setGeofencesEnabled",
        "(Z)V",
        "isGeofencesEnabled$annotations",
        "",
        "maxNumToRegister",
        "I",
        "getMaxNumToRegister",
        "()I",
        "setMaxNumToRegister",
        "(I)V",
        "getMaxNumToRegister$annotations",
        "Lbo/app/y1;",
        "brazeManager",
        "Lbo/app/y1;",
        "getBrazeManager",
        "()Lbo/app/y1;",
        "Lbo/app/l;",
        "brazeGeofenceApi",
        "Lbo/app/l;",
        "getBrazeGeofenceApi",
        "()Lbo/app/l;",
        "getBrazeGeofenceApi$annotations",
        "Lbo/app/n;",
        "brazeLocationApi",
        "Lbo/app/n;",
        "getBrazeLocationApi",
        "()Lbo/app/n;",
        "getBrazeLocationApi$annotations",
        "Lbo/app/m;",
        "brazeGeofenceReEligibilityManager",
        "Lbo/app/m;",
        "getBrazeGeofenceReEligibilityManager",
        "()Lbo/app/m;",
        "setBrazeGeofenceReEligibilityManager",
        "(Lbo/app/m;)V",
        "getBrazeGeofenceReEligibilityManager$annotations",
        "apiKey",
        "Lbo/app/a5;",
        "serverConfigStorageProvider",
        "Lbo/app/g2;",
        "internalIEventMessenger",
        "<init>",
        "(Landroid/content/Context;Ljava/lang/String;Lbo/app/y1;Lcom/braze/configuration/BrazeConfigurationProvider;Lbo/app/a5;Lbo/app/g2;)V",
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
.field public static final Companion:Lcom/braze/managers/BrazeGeofenceManager$Companion;

.field private static final GEOFENCE_STORAGE_SHARED_PREFS_LOCATION:Ljava/lang/String; = "com.appboy.managers.geofences.storage"


# instance fields
.field private final applicationContext:Landroid/content/Context;

.field private final brazeGeofenceApi:Lbo/app/l;

.field private brazeGeofenceReEligibilityManager:Lbo/app/m;

.field private final brazeGeofences:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/braze/models/BrazeGeofence;",
            ">;"
        }
    .end annotation
.end field

.field private final brazeLocationApi:Lbo/app/n;

.field private final brazeManager:Lbo/app/y1;

.field private final configurationProvider:Lcom/braze/configuration/BrazeConfigurationProvider;

.field private final geofenceListLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private geofenceRequestLocation:Lcom/braze/models/IBrazeLocation;

.field private final geofenceStorageSharedPreferences:Landroid/content/SharedPreferences;

.field private final geofenceTransitionPendingIntent:Landroid/app/PendingIntent;

.field private isGeofencesEnabled:Z

.field private maxNumToRegister:I

.field private final serverConfigStorageProvider:Lbo/app/a5;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/braze/managers/BrazeGeofenceManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/braze/managers/BrazeGeofenceManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/braze/managers/BrazeGeofenceManager;->Companion:Lcom/braze/managers/BrazeGeofenceManager$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lbo/app/y1;Lcom/braze/configuration/BrazeConfigurationProvider;Lbo/app/a5;Lbo/app/g2;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "apiKey"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "brazeManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configurationProvider"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serverConfigStorageProvider"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "internalIEventMessenger"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p3, p0, Lcom/braze/managers/BrazeGeofenceManager;->brazeManager:Lbo/app/y1;

    .line 3
    iput-object p4, p0, Lcom/braze/managers/BrazeGeofenceManager;->configurationProvider:Lcom/braze/configuration/BrazeConfigurationProvider;

    .line 4
    iput-object p5, p0, Lcom/braze/managers/BrazeGeofenceManager;->serverConfigStorageProvider:Lbo/app/a5;

    .line 5
    new-instance p3, Lbo/app/l;

    invoke-direct {p3}, Lbo/app/l;-><init>()V

    iput-object p3, p0, Lcom/braze/managers/BrazeGeofenceManager;->brazeGeofenceApi:Lbo/app/l;

    .line 6
    new-instance v0, Lbo/app/n;

    .line 7
    sget-object v1, Lbo/app/o;->d:Lbo/app/o$b;

    invoke-virtual {v1, p4}, Lbo/app/o$b;->a(Lcom/braze/configuration/BrazeConfigurationProvider;)Ljava/util/EnumSet;

    move-result-object v1

    .line 8
    invoke-direct {v0, p1, v1, p4}, Lbo/app/n;-><init>(Landroid/content/Context;Ljava/util/EnumSet;Lcom/braze/configuration/BrazeConfigurationProvider;)V

    iput-object v0, p0, Lcom/braze/managers/BrazeGeofenceManager;->brazeLocationApi:Lbo/app/n;

    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p4

    iput-object p4, p0, Lcom/braze/managers/BrazeGeofenceManager;->applicationContext:Landroid/content/Context;

    .line 10
    new-instance p4, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p4}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p4, p0, Lcom/braze/managers/BrazeGeofenceManager;->geofenceListLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 14
    sget-object p4, Lcom/braze/managers/BrazeGeofenceManager;->Companion:Lcom/braze/managers/BrazeGeofenceManager$Companion;

    invoke-virtual {p4, p2}, Lcom/braze/managers/BrazeGeofenceManager$Companion;->getGeofenceSharedPreferencesName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 15
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "context.getSharedPrefere\u2026ontext.MODE_PRIVATE\n    )"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/braze/managers/BrazeGeofenceManager;->geofenceStorageSharedPreferences:Landroid/content/SharedPreferences;

    .line 16
    invoke-virtual {p4, v0}, Lcom/braze/managers/BrazeGeofenceManager$Companion;->retrieveBrazeGeofencesFromLocalStorage(Landroid/content/SharedPreferences;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/braze/managers/BrazeGeofenceManager;->brazeGeofences:Ljava/util/List;

    .line 17
    invoke-virtual {p3, p1}, Lbo/app/l;->b(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/braze/managers/BrazeGeofenceManager;->geofenceTransitionPendingIntent:Landroid/app/PendingIntent;

    .line 18
    new-instance v0, Lbo/app/m;

    invoke-direct {v0, p1, p2, p5, p6}, Lbo/app/m;-><init>(Landroid/content/Context;Ljava/lang/String;Lbo/app/a5;Lbo/app/g2;)V

    iput-object v0, p0, Lcom/braze/managers/BrazeGeofenceManager;->brazeGeofenceReEligibilityManager:Lbo/app/m;

    .line 19
    invoke-virtual {p4, p5}, Lcom/braze/managers/BrazeGeofenceManager$Companion;->getGeofencesEnabledFromServerConfig(Lbo/app/a5;)Z

    move-result p2

    const/4 p6, 0x1

    if-eqz p2, :cond_0

    .line 20
    invoke-virtual {p0, p1}, Lcom/braze/managers/BrazeGeofenceManager;->isGeofencesEnabledFromEnvironment(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 21
    invoke-virtual {p3}, Lbo/app/l;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    move v1, p6

    .line 22
    :cond_0
    iput-boolean v1, p0, Lcom/braze/managers/BrazeGeofenceManager;->isGeofencesEnabled:Z

    .line 23
    invoke-virtual {p4, p5}, Lcom/braze/managers/BrazeGeofenceManager$Companion;->getMaxNumToRegister(Lbo/app/a5;)I

    move-result p1

    iput p1, p0, Lcom/braze/managers/BrazeGeofenceManager;->maxNumToRegister:I

    .line 24
    invoke-virtual {p3}, Lbo/app/l;->a()Z

    move-result p1

    if-nez p1, :cond_1

    .line 25
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v2, Lcom/braze/support/BrazeLogger$Priority;->I:Lcom/braze/support/BrazeLogger$Priority;

    sget-object v4, Lcom/braze/managers/BrazeGeofenceManager$a;->b:Lcom/braze/managers/BrazeGeofenceManager$a;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v6}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 28
    :cond_1
    invoke-virtual {p0, p6}, Lcom/braze/managers/BrazeGeofenceManager;->setUpGeofences(Z)V

    return-void
.end method

.method public static synthetic getBrazeGeofenceApi$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getBrazeGeofenceReEligibilityManager$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getBrazeGeofences$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getBrazeLocationApi$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getGeofenceRequestLocation$annotations()V
    .locals 0

    return-void
.end method

.method public static final getGeofenceSharedPreferencesName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/braze/managers/BrazeGeofenceManager;->Companion:Lcom/braze/managers/BrazeGeofenceManager$Companion;

    invoke-virtual {v0, p0}, Lcom/braze/managers/BrazeGeofenceManager$Companion;->getGeofenceSharedPreferencesName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getGeofenceStorageSharedPreferences$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getGeofenceTransitionPendingIntent$annotations()V
    .locals 0

    return-void
.end method

.method public static final getGeofencesEnabledFromConfiguration(Lcom/braze/configuration/BrazeConfigurationProvider;)Z
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/braze/managers/BrazeGeofenceManager;->Companion:Lcom/braze/managers/BrazeGeofenceManager$Companion;

    invoke-virtual {v0, p0}, Lcom/braze/managers/BrazeGeofenceManager$Companion;->getGeofencesEnabledFromConfiguration(Lcom/braze/configuration/BrazeConfigurationProvider;)Z

    move-result p0

    return p0
.end method

.method public static final getGeofencesEnabledFromServerConfig(Lbo/app/a5;)Z
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/braze/managers/BrazeGeofenceManager;->Companion:Lcom/braze/managers/BrazeGeofenceManager$Companion;

    invoke-virtual {v0, p0}, Lcom/braze/managers/BrazeGeofenceManager$Companion;->getGeofencesEnabledFromServerConfig(Lbo/app/a5;)Z

    move-result p0

    return p0
.end method

.method public static final getMaxNumToRegister(Lbo/app/a5;)I
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/braze/managers/BrazeGeofenceManager;->Companion:Lcom/braze/managers/BrazeGeofenceManager$Companion;

    invoke-virtual {v0, p0}, Lcom/braze/managers/BrazeGeofenceManager$Companion;->getMaxNumToRegister(Lbo/app/a5;)I

    move-result p0

    return p0
.end method

.method public static synthetic getMaxNumToRegister$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic isGeofencesEnabled$annotations()V
    .locals 0

    return-void
.end method

.method public static final retrieveBrazeGeofencesFromLocalStorage(Landroid/content/SharedPreferences;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences;",
            ")",
            "Ljava/util/List<",
            "Lcom/braze/models/BrazeGeofence;",
            ">;"
        }
    .end annotation
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/braze/managers/BrazeGeofenceManager;->Companion:Lcom/braze/managers/BrazeGeofenceManager$Companion;

    invoke-virtual {v0, p0}, Lcom/braze/managers/BrazeGeofenceManager$Companion;->retrieveBrazeGeofencesFromLocalStorage(Landroid/content/SharedPreferences;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final analyticsEnabledForGeofenceId(Ljava/lang/String;Lcom/braze/enums/GeofenceTransitionType;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    sget-object v0, Lcom/google/firebase/iid/EBY/WEjYEmdPgeUUZ;->EBu:Ljava/lang/String;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "geofenceTransitionType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/braze/managers/BrazeGeofenceManager;->geofenceListLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/braze/managers/BrazeGeofenceManager;->getBrazeGeofenceForGeofenceId(Ljava/lang/String;)Lcom/braze/models/BrazeGeofence;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4
    sget-object v1, Lcom/braze/enums/GeofenceTransitionType;->ENTER:Lcom/braze/enums/GeofenceTransitionType;

    if-ne p2, v1, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/braze/models/BrazeGeofence;->getAnalyticsEnabledEnter()Z

    move-result p1

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return p1

    .line 6
    :cond_0
    :try_start_1
    sget-object v1, Lcom/braze/enums/GeofenceTransitionType;->EXIT:Lcom/braze/enums/GeofenceTransitionType;

    if-ne p2, v1, :cond_1

    .line 7
    invoke-virtual {p1}, Lcom/braze/models/BrazeGeofence;->getAnalyticsEnabledExit()Z

    move-result p1

    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return p1

    .line 10
    :cond_1
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public configureFromServerConfig(Lbo/app/y4;)V
    .locals 11

    const-string v0, "serverConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lbo/app/y4;->h()Z

    move-result v0

    .line 2
    sget-object v8, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    new-instance v5, Lcom/braze/managers/BrazeGeofenceManager$b;

    invoke-direct {v5, v0}, Lcom/braze/managers/BrazeGeofenceManager$b;-><init>(Z)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, v8

    move-object v2, p0

    invoke-static/range {v1 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/braze/managers/BrazeGeofenceManager;->applicationContext:Landroid/content/Context;

    const-string v1, "applicationContext"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/braze/managers/BrazeGeofenceManager;->isGeofencesEnabledFromEnvironment(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/braze/managers/BrazeGeofenceManager;->brazeGeofenceApi:Lbo/app/l;

    invoke-virtual {v0}, Lbo/app/l;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v9

    goto :goto_0

    :cond_0
    move v0, v10

    .line 7
    :goto_0
    iget-boolean v1, p0, Lcom/braze/managers/BrazeGeofenceManager;->isGeofencesEnabled:Z

    if-eq v0, v1, :cond_2

    .line 8
    iput-boolean v0, p0, Lcom/braze/managers/BrazeGeofenceManager;->isGeofencesEnabled:Z

    .line 9
    sget-object v3, Lcom/braze/support/BrazeLogger$Priority;->I:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v5, Lcom/braze/managers/BrazeGeofenceManager$c;

    invoke-direct {v5, p0}, Lcom/braze/managers/BrazeGeofenceManager$c;-><init>(Lcom/braze/managers/BrazeGeofenceManager;)V

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object v1, v8

    move-object v2, p0

    invoke-static/range {v1 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 10
    iget-boolean v0, p0, Lcom/braze/managers/BrazeGeofenceManager;->isGeofencesEnabled:Z

    if-eqz v0, :cond_1

    .line 11
    invoke-virtual {p0, v10}, Lcom/braze/managers/BrazeGeofenceManager;->setUpGeofences(Z)V

    .line 12
    iget-object v0, p0, Lcom/braze/managers/BrazeGeofenceManager;->configurationProvider:Lcom/braze/configuration/BrazeConfigurationProvider;

    invoke-virtual {v0}, Lcom/braze/configuration/BrazeConfigurationProvider;->isAutomaticGeofenceRequestsEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 13
    invoke-virtual {p0, v9}, Lcom/braze/managers/BrazeGeofenceManager;->requestGeofenceRefresh(Z)V

    goto :goto_1

    .line 16
    :cond_1
    iget-object v0, p0, Lcom/braze/managers/BrazeGeofenceManager;->geofenceTransitionPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {p0, v0}, Lcom/braze/managers/BrazeGeofenceManager;->tearDownGeofences(Landroid/app/PendingIntent;)V

    goto :goto_1

    .line 19
    :cond_2
    new-instance v5, Lcom/braze/managers/BrazeGeofenceManager$d;

    invoke-direct {v5, v0}, Lcom/braze/managers/BrazeGeofenceManager$d;-><init>(Z)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, v8

    move-object v2, p0

    invoke-static/range {v1 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 21
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lbo/app/y4;->j()I

    move-result v0

    if-ltz v0, :cond_4

    .line 23
    iput v0, p0, Lcom/braze/managers/BrazeGeofenceManager;->maxNumToRegister:I

    .line 24
    sget-object v3, Lcom/braze/support/BrazeLogger$Priority;->I:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v5, Lcom/braze/managers/BrazeGeofenceManager$e;

    invoke-direct {v5, p0}, Lcom/braze/managers/BrazeGeofenceManager$e;-><init>(Lcom/braze/managers/BrazeGeofenceManager;)V

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object v1, v8

    move-object v2, p0

    invoke-static/range {v1 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 26
    :cond_4
    iget-object v0, p0, Lcom/braze/managers/BrazeGeofenceManager;->brazeGeofenceReEligibilityManager:Lbo/app/m;

    invoke-virtual {v0, p1}, Lbo/app/m;->a(Lbo/app/y4;)V

    return-void
.end method

.method public final getBrazeGeofenceApi()Lbo/app/l;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/braze/managers/BrazeGeofenceManager;->brazeGeofenceApi:Lbo/app/l;

    return-object v0
.end method

.method public final getBrazeGeofenceForGeofenceId(Ljava/lang/String;)Lcom/braze/models/BrazeGeofence;
    .locals 4

    const-string v0, "geofenceId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/braze/managers/BrazeGeofenceManager;->geofenceListLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/braze/managers/BrazeGeofenceManager;->brazeGeofences:Ljava/util/List;

    .line 257
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/braze/models/BrazeGeofence;

    .line 258
    invoke-virtual {v3}, Lcom/braze/models/BrazeGeofence;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 514
    :goto_0
    check-cast v2, Lcom/braze/models/BrazeGeofence;

    .line 515
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v2

    :catchall_0
    move-exception p1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public final getBrazeGeofenceReEligibilityManager()Lbo/app/m;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/braze/managers/BrazeGeofenceManager;->brazeGeofenceReEligibilityManager:Lbo/app/m;

    return-object v0
.end method

.method public final getBrazeGeofences()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/braze/models/BrazeGeofence;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/braze/managers/BrazeGeofenceManager;->brazeGeofences:Ljava/util/List;

    return-object v0
.end method

.method public final getBrazeLocationApi()Lbo/app/n;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/braze/managers/BrazeGeofenceManager;->brazeLocationApi:Lbo/app/n;

    return-object v0
.end method

.method public final getBrazeManager()Lbo/app/y1;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/braze/managers/BrazeGeofenceManager;->brazeManager:Lbo/app/y1;

    return-object v0
.end method

.method public final getGeofenceRequestLocation()Lcom/braze/models/IBrazeLocation;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/braze/managers/BrazeGeofenceManager;->geofenceRequestLocation:Lcom/braze/models/IBrazeLocation;

    return-object v0
.end method

.method public final getGeofenceStorageSharedPreferences()Landroid/content/SharedPreferences;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/braze/managers/BrazeGeofenceManager;->geofenceStorageSharedPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public final getGeofenceTransitionPendingIntent()Landroid/app/PendingIntent;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/braze/managers/BrazeGeofenceManager;->geofenceTransitionPendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public final getMaxNumToRegister()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/braze/managers/BrazeGeofenceManager;->maxNumToRegister:I

    return v0
.end method

.method public final initializeGeofences()V
    .locals 8

    .line 1
    sget-object v7, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v4, Lcom/braze/managers/BrazeGeofenceManager$f;->b:Lcom/braze/managers/BrazeGeofenceManager$f;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, v7

    move-object v1, p0

    invoke-static/range {v0 .. v6}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 3
    sget-object v0, Lcom/braze/managers/BrazeGeofenceManager;->Companion:Lcom/braze/managers/BrazeGeofenceManager$Companion;

    iget-object v1, p0, Lcom/braze/managers/BrazeGeofenceManager;->serverConfigStorageProvider:Lbo/app/a5;

    invoke-virtual {v0, v1}, Lcom/braze/managers/BrazeGeofenceManager$Companion;->getGeofencesEnabledFromServerConfig(Lbo/app/a5;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/braze/managers/BrazeGeofenceManager;->applicationContext:Landroid/content/Context;

    const-string v2, "applicationContext"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/braze/managers/BrazeGeofenceManager;->isGeofencesEnabledFromEnvironment(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/braze/managers/BrazeGeofenceManager;->brazeGeofenceApi:Lbo/app/l;

    invoke-virtual {v0}, Lbo/app/l;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 6
    :goto_0
    iput-boolean v0, p0, Lcom/braze/managers/BrazeGeofenceManager;->isGeofencesEnabled:Z

    .line 11
    iget-object v0, p0, Lcom/braze/managers/BrazeGeofenceManager;->configurationProvider:Lcom/braze/configuration/BrazeConfigurationProvider;

    invoke-virtual {v0}, Lcom/braze/configuration/BrazeConfigurationProvider;->isAutomaticGeofenceRequestsEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {p0, v1}, Lcom/braze/managers/BrazeGeofenceManager;->requestGeofenceRefresh(Z)V

    goto :goto_1

    .line 14
    :cond_1
    sget-object v4, Lcom/braze/managers/BrazeGeofenceManager$g;->b:Lcom/braze/managers/BrazeGeofenceManager$g;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, v7

    move-object v1, p0

    invoke-static/range {v0 .. v6}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public final isGeofencesEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/braze/managers/BrazeGeofenceManager;->isGeofencesEnabled:Z

    return v0
.end method

.method public final isGeofencesEnabledFromEnvironment(Landroid/content/Context;)Z
    .locals 9

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/braze/managers/BrazeGeofenceManager;->Companion:Lcom/braze/managers/BrazeGeofenceManager$Companion;

    iget-object v1, p0, Lcom/braze/managers/BrazeGeofenceManager;->configurationProvider:Lcom/braze/configuration/BrazeConfigurationProvider;

    invoke-virtual {v0, v1}, Lcom/braze/managers/BrazeGeofenceManager$Companion;->getGeofencesEnabledFromConfiguration(Lcom/braze/configuration/BrazeConfigurationProvider;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    sget-object v2, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v6, Lcom/braze/managers/BrazeGeofenceManager$h;->b:Lcom/braze/managers/BrazeGeofenceManager$h;

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p0

    invoke-static/range {v2 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return v1

    .line 5
    :cond_0
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p1, v0}, Lcom/braze/support/PermissionUtils;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    sget-object v2, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v4, Lcom/braze/support/BrazeLogger$Priority;->I:Lcom/braze/support/BrazeLogger$Priority;

    sget-object v6, Lcom/braze/managers/BrazeGeofenceManager$i;->b:Lcom/braze/managers/BrazeGeofenceManager$i;

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v5, 0x0

    move-object v3, p0

    invoke-static/range {v2 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return v1

    .line 9
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v0, v2, :cond_2

    const-string v0, "android.permission.ACCESS_BACKGROUND_LOCATION"

    invoke-static {p1, v0}, Lcom/braze/support/PermissionUtils;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 10
    sget-object v2, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v4, Lcom/braze/support/BrazeLogger$Priority;->I:Lcom/braze/support/BrazeLogger$Priority;

    sget-object v6, Lcom/braze/managers/BrazeGeofenceManager$j;->b:Lcom/braze/managers/BrazeGeofenceManager$j;

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v5, 0x0

    move-object v3, p0

    invoke-static/range {v2 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return v1

    .line 13
    :cond_2
    invoke-static {p1}, Lbo/app/r1;->a(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 14
    sget-object v2, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v6, Lcom/braze/managers/BrazeGeofenceManager$k;->b:Lcom/braze/managers/BrazeGeofenceManager$k;

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p0

    invoke-static/range {v2 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return v1

    .line 17
    :cond_3
    iget-object p1, p0, Lcom/braze/managers/BrazeGeofenceManager;->brazeGeofenceApi:Lbo/app/l;

    invoke-virtual {p1}, Lbo/app/l;->a()Z

    move-result p1

    if-nez p1, :cond_4

    .line 18
    sget-object v2, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v6, Lcom/braze/managers/BrazeGeofenceManager$l;->b:Lcom/braze/managers/BrazeGeofenceManager$l;

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p0

    invoke-static/range {v2 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return v1

    .line 23
    :cond_4
    :try_start_0
    const-string p1, "com.google.android.gms.location.LocationServices"

    .line 24
    const-class v0, Lcom/braze/managers/BrazeGeofenceManager;

    .line 25
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 26
    invoke-static {p1, v1, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 35
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sget-object v2, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v6, Lcom/braze/managers/BrazeGeofenceManager$n;->b:Lcom/braze/managers/BrazeGeofenceManager$n;

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p0

    invoke-static/range {v2 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    const/4 p1, 0x1

    return p1

    .line 36
    :catch_0
    sget-object v2, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v6, Lcom/braze/managers/BrazeGeofenceManager$m;->b:Lcom/braze/managers/BrazeGeofenceManager$m;

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p0

    invoke-static/range {v2 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return v1
.end method

.method public onLocationRequestComplete(Lcom/braze/models/IBrazeLocation;)V
    .locals 9

    if-eqz p1, :cond_0

    .line 1
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    new-instance v4, Lcom/braze/managers/BrazeGeofenceManager$o;

    invoke-direct {v4, p1}, Lcom/braze/managers/BrazeGeofenceManager$o;-><init>(Lcom/braze/models/IBrazeLocation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v6}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/braze/managers/BrazeGeofenceManager;->requestGeofenceRefresh(Lcom/braze/models/IBrazeLocation;)V

    .line 3
    iget-object p1, p0, Lcom/braze/managers/BrazeGeofenceManager;->brazeGeofenceReEligibilityManager:Lbo/app/m;

    invoke-static {}, Lcom/braze/support/DateTimeUtils;->nowInSeconds()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lbo/app/m;->a(J)V

    goto :goto_0

    .line 5
    :cond_0
    sget-object v2, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v6, Lcom/braze/managers/BrazeGeofenceManager$p;->b:Lcom/braze/managers/BrazeGeofenceManager$p;

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p0

    invoke-static/range {v2 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public postGeofenceReport(Ljava/lang/String;Lcom/braze/enums/GeofenceTransitionType;)V
    .locals 8

    const-string v0, "geofenceId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transitionType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Lcom/braze/managers/BrazeGeofenceManager;->isGeofencesEnabled:Z

    if-nez v0, :cond_0

    .line 2
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v3, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    sget-object v5, Lcom/braze/managers/BrazeGeofenceManager$q;->b:Lcom/braze/managers/BrazeGeofenceManager$q;

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void

    .line 6
    :cond_0
    sget-object v0, Lbo/app/j;->h:Lbo/app/j$a;

    .line 8
    invoke-virtual {p2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    .line 9
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "US"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "this as java.lang.String).toLowerCase(locale)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-virtual {v0, p1, v1}, Lbo/app/j$a;->c(Ljava/lang/String;Ljava/lang/String;)Lbo/app/w1;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 17
    invoke-virtual {p0, p1, p2}, Lcom/braze/managers/BrazeGeofenceManager;->analyticsEnabledForGeofenceId(Ljava/lang/String;Lcom/braze/enums/GeofenceTransitionType;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 18
    iget-object v1, p0, Lcom/braze/managers/BrazeGeofenceManager;->brazeManager:Lbo/app/y1;

    invoke-interface {v1, v0}, Lbo/app/y1;->a(Lbo/app/w1;)Z

    .line 20
    :cond_1
    invoke-virtual {p0, p1}, Lcom/braze/managers/BrazeGeofenceManager;->getBrazeGeofenceForGeofenceId(Ljava/lang/String;)Lcom/braze/models/BrazeGeofence;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 21
    iget-object v2, p0, Lcom/braze/managers/BrazeGeofenceManager;->brazeGeofenceReEligibilityManager:Lbo/app/m;

    .line 22
    invoke-static {}, Lcom/braze/support/DateTimeUtils;->nowInSeconds()J

    move-result-wide v3

    .line 23
    invoke-virtual {v2, v3, v4, v1, p2}, Lbo/app/m;->a(JLcom/braze/models/BrazeGeofence;Lcom/braze/enums/GeofenceTransitionType;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 30
    iget-object v1, p0, Lcom/braze/managers/BrazeGeofenceManager;->brazeManager:Lbo/app/y1;

    invoke-interface {v1, v0}, Lbo/app/y1;->b(Lbo/app/w1;)V

    .line 31
    :cond_2
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_4

    .line 46
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v3, Lcom/braze/support/BrazeLogger$Priority;->E:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v5, Lcom/braze/managers/BrazeGeofenceManager$r;

    invoke-direct {v5, p1, p2}, Lcom/braze/managers/BrazeGeofenceManager$r;-><init>(Ljava/lang/String;Lcom/braze/enums/GeofenceTransitionType;)V

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    :cond_4
    return-void
.end method

.method public registerGeofences(Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/braze/models/BrazeGeofence;",
            ">;)V"
        }
    .end annotation

    const-string v0, "geofenceList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    .line 2
    iget-boolean v0, p0, Lcom/braze/managers/BrazeGeofenceManager;->isGeofencesEnabled:Z

    if-nez v0, :cond_0

    .line 3
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v3, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    sget-object v5, Lcom/braze/managers/BrazeGeofenceManager$s;->b:Lcom/braze/managers/BrazeGeofenceManager$s;

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/braze/managers/BrazeGeofenceManager;->geofenceRequestLocation:Lcom/braze/models/IBrazeLocation;

    if-eqz v0, :cond_3

    .line 7
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/braze/models/BrazeGeofence;

    .line 8
    iget-object v2, p0, Lcom/braze/managers/BrazeGeofenceManager;->geofenceRequestLocation:Lcom/braze/models/IBrazeLocation;

    if-eqz v2, :cond_1

    .line 10
    invoke-interface {v2}, Lcom/braze/models/IBrazeLocation;->getLatitude()D

    move-result-wide v3

    invoke-interface {v2}, Lcom/braze/models/IBrazeLocation;->getLongitude()D

    move-result-wide v5

    .line 11
    invoke-virtual {v1}, Lcom/braze/models/BrazeGeofence;->getLatitude()D

    move-result-wide v7

    invoke-virtual {v1}, Lcom/braze/models/BrazeGeofence;->getLongitude()D

    move-result-wide v9

    .line 12
    invoke-static/range {v3 .. v10}, Lbo/app/h3;->a(DDDD)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/braze/models/BrazeGeofence;->setDistanceFromGeofenceRefresh(D)V

    goto :goto_0

    .line 18
    :cond_2
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->sort(Ljava/util/List;)V

    .line 20
    :cond_3
    iget-object v0, p0, Lcom/braze/managers/BrazeGeofenceManager;->geofenceListLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 21
    :try_start_0
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    new-instance v5, Lcom/braze/managers/BrazeGeofenceManager$t;

    invoke-direct {v5, p1}, Lcom/braze/managers/BrazeGeofenceManager$t;-><init>(Ljava/util/List;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 22
    iget-object v1, p0, Lcom/braze/managers/BrazeGeofenceManager;->geofenceStorageSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 23
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 24
    iget-object v2, p0, Lcom/braze/managers/BrazeGeofenceManager;->brazeGeofences:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 26
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/braze/models/BrazeGeofence;

    .line 27
    iget v5, p0, Lcom/braze/managers/BrazeGeofenceManager;->maxNumToRegister:I

    if-ne v3, v5, :cond_4

    .line 28
    sget-object v6, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    new-instance v10, Lcom/braze/managers/BrazeGeofenceManager$u;

    invoke-direct {v10, p0}, Lcom/braze/managers/BrazeGeofenceManager$u;-><init>(Lcom/braze/managers/BrazeGeofenceManager;)V

    const/4 v11, 0x3

    const/4 v12, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v7, p0

    invoke-static/range {v6 .. v12}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    goto :goto_2

    .line 31
    :cond_4
    iget-object v5, p0, Lcom/braze/managers/BrazeGeofenceManager;->brazeGeofences:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    sget-object v6, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    new-instance v10, Lcom/braze/managers/BrazeGeofenceManager$v;

    invoke-direct {v10, v4}, Lcom/braze/managers/BrazeGeofenceManager$v;-><init>(Lcom/braze/models/BrazeGeofence;)V

    const/4 v11, 0x3

    const/4 v12, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v7, p0

    invoke-static/range {v6 .. v12}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 33
    invoke-virtual {v4}, Lcom/braze/models/BrazeGeofence;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/braze/models/BrazeGeofence;->forJsonPut()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v5, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 36
    :cond_5
    :goto_2
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 37
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    new-instance v5, Lcom/braze/managers/BrazeGeofenceManager$w;

    invoke-direct {v5, p0}, Lcom/braze/managers/BrazeGeofenceManager$w;-><init>(Lcom/braze/managers/BrazeGeofenceManager;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 38
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 39
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 58
    iget-object v0, p0, Lcom/braze/managers/BrazeGeofenceManager;->brazeGeofenceReEligibilityManager:Lbo/app/m;

    invoke-virtual {v0, p1}, Lbo/app/m;->a(Ljava/util/List;)V

    const/4 p1, 0x1

    .line 59
    invoke-virtual {p0, p1}, Lcom/braze/managers/BrazeGeofenceManager;->setUpGeofences(Z)V

    return-void

    :catchall_0
    move-exception p1

    .line 60
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public final registerGeofencesWithGooglePlay(Ljava/util/List;Landroid/app/PendingIntent;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/braze/models/BrazeGeofence;",
            ">;",
            "Landroid/app/PendingIntent;",
            ")V"
        }
    .end annotation

    const-string v0, "geofenceList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "geofenceRequestIntent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/braze/managers/BrazeGeofenceManager;->brazeGeofenceApi:Lbo/app/l;

    .line 2
    iget-object v1, p0, Lcom/braze/managers/BrazeGeofenceManager;->applicationContext:Landroid/content/Context;

    const-string v2, "applicationContext"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, v1, p1, p2}, Lbo/app/l;->a(Landroid/content/Context;Ljava/util/List;Landroid/app/PendingIntent;)V

    return-void
.end method

.method public requestGeofenceRefresh(Lcom/braze/models/IBrazeLocation;)V
    .locals 8

    const-string v0, "location"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Lcom/braze/managers/BrazeGeofenceManager;->isGeofencesEnabled:Z

    if-nez v0, :cond_0

    .line 2
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v5, Lcom/braze/managers/BrazeGeofenceManager$x;->b:Lcom/braze/managers/BrazeGeofenceManager$x;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void

    .line 5
    :cond_0
    iput-object p1, p0, Lcom/braze/managers/BrazeGeofenceManager;->geofenceRequestLocation:Lcom/braze/models/IBrazeLocation;

    if-eqz p1, :cond_1

    .line 6
    iget-object v0, p0, Lcom/braze/managers/BrazeGeofenceManager;->brazeManager:Lbo/app/y1;

    invoke-interface {v0, p1}, Lbo/app/y1;->a(Lcom/braze/models/IBrazeLocation;)V

    :cond_1
    return-void
.end method

.method public requestGeofenceRefresh(Z)V
    .locals 8

    .line 7
    iget-boolean v0, p0, Lcom/braze/managers/BrazeGeofenceManager;->isGeofencesEnabled:Z

    if-nez v0, :cond_0

    .line 8
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v5, Lcom/braze/managers/BrazeGeofenceManager$y;->b:Lcom/braze/managers/BrazeGeofenceManager$y;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/braze/managers/BrazeGeofenceManager;->brazeGeofenceReEligibilityManager:Lbo/app/m;

    invoke-static {}, Lcom/braze/support/DateTimeUtils;->nowInSeconds()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lbo/app/m;->a(ZJ)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 12
    invoke-virtual {p0}, Lcom/braze/managers/BrazeGeofenceManager;->requestSingleLocationUpdateFromGooglePlay()V

    :cond_1
    return-void
.end method

.method public final requestSingleLocationUpdateFromGooglePlay()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/braze/managers/BrazeGeofenceManager;->brazeLocationApi:Lbo/app/n;

    new-instance v1, Lcom/braze/managers/BrazeGeofenceManager$z;

    invoke-direct {v1, p0}, Lcom/braze/managers/BrazeGeofenceManager$z;-><init>(Lcom/braze/managers/BrazeGeofenceManager;)V

    invoke-virtual {v0, v1}, Lbo/app/n;->a(Lkotlin/jvm/functions/Function1;)Z

    return-void
.end method

.method public final setBrazeGeofenceReEligibilityManager(Lbo/app/m;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/braze/managers/BrazeGeofenceManager;->brazeGeofenceReEligibilityManager:Lbo/app/m;

    return-void
.end method

.method public final setGeofenceRequestLocation(Lcom/braze/models/IBrazeLocation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/braze/managers/BrazeGeofenceManager;->geofenceRequestLocation:Lcom/braze/models/IBrazeLocation;

    return-void
.end method

.method public final setGeofencesEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/braze/managers/BrazeGeofenceManager;->isGeofencesEnabled:Z

    return-void
.end method

.method public final setMaxNumToRegister(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/braze/managers/BrazeGeofenceManager;->maxNumToRegister:I

    return-void
.end method

.method public final setUpGeofences(Z)V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/braze/managers/BrazeGeofenceManager;->isGeofencesEnabled:Z

    if-nez v0, :cond_0

    .line 2
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v5, Lcom/braze/managers/BrazeGeofenceManager$a0;->b:Lcom/braze/managers/BrazeGeofenceManager$a0;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/braze/managers/BrazeGeofenceManager;->geofenceTransitionPendingIntent:Landroid/app/PendingIntent;

    if-nez v0, :cond_1

    .line 7
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v5, Lcom/braze/managers/BrazeGeofenceManager$b0;->b:Lcom/braze/managers/BrazeGeofenceManager$b0;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void

    :cond_1
    if-eqz p1, :cond_2

    .line 11
    iget-object p1, p0, Lcom/braze/managers/BrazeGeofenceManager;->geofenceListLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 13
    :try_start_0
    iget-object v1, p0, Lcom/braze/managers/BrazeGeofenceManager;->brazeGeofences:Ljava/util/List;

    .line 14
    invoke-virtual {p0, v1, v0}, Lcom/braze/managers/BrazeGeofenceManager;->registerGeofencesWithGooglePlay(Ljava/util/List;Landroid/app/PendingIntent;)V

    .line 18
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 19
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_2
    :goto_0
    return-void
.end method

.method public final tearDownGeofences(Landroid/app/PendingIntent;)V
    .locals 8

    .line 1
    sget-object v7, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v4, Lcom/braze/managers/BrazeGeofenceManager$c0;->b:Lcom/braze/managers/BrazeGeofenceManager$c0;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, v7

    move-object v1, p0

    invoke-static/range {v0 .. v6}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    if-eqz p1, :cond_0

    .line 3
    sget-object v4, Lcom/braze/managers/BrazeGeofenceManager$d0;->b:Lcom/braze/managers/BrazeGeofenceManager$d0;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, v7

    move-object v1, p0

    invoke-static/range {v0 .. v6}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lcom/braze/managers/BrazeGeofenceManager;->brazeGeofenceApi:Lbo/app/l;

    iget-object v1, p0, Lcom/braze/managers/BrazeGeofenceManager;->applicationContext:Landroid/content/Context;

    const-string v2, "applicationContext"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p1}, Lbo/app/l;->a(Landroid/content/Context;Landroid/app/PendingIntent;)V

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/braze/managers/BrazeGeofenceManager;->geofenceListLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 8
    :try_start_0
    sget-object v4, Lcom/braze/managers/BrazeGeofenceManager$e0;->b:Lcom/braze/managers/BrazeGeofenceManager$e0;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, v7

    move-object v1, p0

    invoke-static/range {v0 .. v6}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 9
    iget-object v0, p0, Lcom/braze/managers/BrazeGeofenceManager;->geofenceStorageSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 10
    iget-object v0, p0, Lcom/braze/managers/BrazeGeofenceManager;->brazeGeofences:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 11
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public unregisterGeofences()V
    .locals 15

    .line 1
    iget-boolean v0, p0, Lcom/braze/managers/BrazeGeofenceManager;->isGeofencesEnabled:Z

    if-nez v0, :cond_0

    .line 2
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v5, Lcom/braze/managers/BrazeGeofenceManager$f0;->b:Lcom/braze/managers/BrazeGeofenceManager$f0;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void

    .line 5
    :cond_0
    sget-object v8, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v12, Lcom/braze/managers/BrazeGeofenceManager$g0;->b:Lcom/braze/managers/BrazeGeofenceManager$g0;

    const/4 v13, 0x3

    const/4 v14, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v9, p0

    invoke-static/range {v8 .. v14}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 6
    iget-object v0, p0, Lcom/braze/managers/BrazeGeofenceManager;->geofenceTransitionPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {p0, v0}, Lcom/braze/managers/BrazeGeofenceManager;->tearDownGeofences(Landroid/app/PendingIntent;)V

    return-void
.end method
