.class public Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;
.super Ljava/lang/Object;
.source "XleProjectSpecificDataProvider.java"

# interfaces
.implements Lcom/microsoft/xbox/toolkit/IProjectSpecificDataProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider$ContentRestrictions;
    }
.end annotation


# static fields
.field private static final displayLocales:[[Ljava/lang/String;

.field private static instance:Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;


# instance fields
.field private androidId:Ljava/lang/String;

.field private blockFeaturedChild:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private gotSettings:Z

.field private isMeAdult:Z

.field private meXuid:Ljava/lang/String;

.field private musicBlocked:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private privileges:Ljava/lang/String;

.field private promotionalRestrictedRegions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private purchaseBlocked:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private scdRpsTicket:Ljava/lang/String;

.field private serviceLocaleMapTable:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private serviceLocales:[[Ljava/lang/String;

.field private videoBlocked:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 22
    new-instance v0, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;

    invoke-direct {v0}, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;-><init>()V

    sput-object v0, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->instance:Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;

    const/16 v0, 0x17

    .line 131
    new-array v0, v0, [[Ljava/lang/String;

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/String;

    const-string/jumbo v3, "zh_SG"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    const-string/jumbo v5, "zh"

    aput-object v5, v2, v3

    const/4 v6, 0x2

    const-string v7, "CN"

    aput-object v7, v2, v6

    aput-object v2, v0, v4

    new-array v2, v1, [Ljava/lang/String;

    const-string/jumbo v8, "zh_CN"

    aput-object v8, v2, v4

    aput-object v5, v2, v3

    aput-object v7, v2, v6

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string/jumbo v7, "zh_HK"

    aput-object v7, v2, v4

    aput-object v5, v2, v3

    const-string v7, "TW"

    aput-object v7, v2, v6

    aput-object v2, v0, v6

    new-array v2, v1, [Ljava/lang/String;

    const-string/jumbo v8, "zh_TW"

    aput-object v8, v2, v4

    aput-object v5, v2, v3

    aput-object v7, v2, v6

    aput-object v2, v0, v1

    new-array v2, v1, [Ljava/lang/String;

    const-string v5, "da"

    aput-object v5, v2, v4

    aput-object v5, v2, v3

    const-string v5, "DK"

    aput-object v5, v2, v6

    const/4 v5, 0x4

    aput-object v2, v0, v5

    new-array v2, v1, [Ljava/lang/String;

    const-string v5, "nl"

    aput-object v5, v2, v4

    aput-object v5, v2, v3

    const-string v5, "NL"

    aput-object v5, v2, v6

    const/4 v5, 0x5

    aput-object v2, v0, v5

    new-array v2, v1, [Ljava/lang/String;

    const-string v5, "en"

    aput-object v5, v2, v4

    aput-object v5, v2, v3

    const-string v7, "GB"

    aput-object v7, v2, v6

    const/4 v7, 0x6

    aput-object v2, v0, v7

    new-array v2, v1, [Ljava/lang/String;

    const-string v7, "en_US"

    aput-object v7, v2, v4

    aput-object v5, v2, v3

    const-string v5, "US"

    aput-object v5, v2, v6

    const/4 v5, 0x7

    aput-object v2, v0, v5

    new-array v2, v1, [Ljava/lang/String;

    const-string v5, "fi"

    aput-object v5, v2, v4

    aput-object v5, v2, v3

    const-string v5, "FI"

    aput-object v5, v2, v6

    const/16 v5, 0x8

    aput-object v2, v0, v5

    new-array v2, v1, [Ljava/lang/String;

    const-string v5, "fr"

    aput-object v5, v2, v4

    aput-object v5, v2, v3

    const-string v5, "FR"

    aput-object v5, v2, v6

    const/16 v5, 0x9

    aput-object v2, v0, v5

    new-array v2, v1, [Ljava/lang/String;

    const-string v5, "de"

    aput-object v5, v2, v4

    aput-object v5, v2, v3

    const-string v5, "DE"

    aput-object v5, v2, v6

    const/16 v5, 0xa

    aput-object v2, v0, v5

    new-array v2, v1, [Ljava/lang/String;

    const-string v5, "it"

    aput-object v5, v2, v4

    aput-object v5, v2, v3

    const-string v5, "IT"

    aput-object v5, v2, v6

    const/16 v5, 0xb

    aput-object v2, v0, v5

    new-array v2, v1, [Ljava/lang/String;

    const-string v5, "ja"

    aput-object v5, v2, v4

    aput-object v5, v2, v3

    const-string v5, "JP"

    aput-object v5, v2, v6

    const/16 v5, 0xc

    aput-object v2, v0, v5

    new-array v2, v1, [Ljava/lang/String;

    const-string v5, "ko"

    aput-object v5, v2, v4

    aput-object v5, v2, v3

    const-string v5, "KR"

    aput-object v5, v2, v6

    const/16 v5, 0xd

    aput-object v2, v0, v5

    new-array v2, v1, [Ljava/lang/String;

    const-string v5, "nb"

    aput-object v5, v2, v4

    aput-object v5, v2, v3

    const-string v5, "NO"

    aput-object v5, v2, v6

    const/16 v5, 0xe

    aput-object v2, v0, v5

    new-array v2, v1, [Ljava/lang/String;

    const-string v5, "pl"

    aput-object v5, v2, v4

    aput-object v5, v2, v3

    const/4 v5, 0x0

    sget-object v5, Lcom/google/android/datatransport/runtime/dagger/WBH/QNeSdHmyDdVMGk;->DZwmfwmiFVZ:Ljava/lang/String;

    aput-object v5, v2, v6

    const/16 v5, 0xf

    aput-object v2, v0, v5

    new-array v2, v1, [Ljava/lang/String;

    const-string v5, "pt_PT"

    aput-object v5, v2, v4

    const-string v5, "pt"

    aput-object v5, v2, v3

    const-string v7, "PT"

    aput-object v7, v2, v6

    const/16 v7, 0x10

    aput-object v2, v0, v7

    new-array v2, v1, [Ljava/lang/String;

    aput-object v5, v2, v4

    aput-object v5, v2, v3

    const-string v5, "BR"

    aput-object v5, v2, v6

    const/16 v5, 0x11

    aput-object v2, v0, v5

    new-array v2, v1, [Ljava/lang/String;

    const-string v5, "ru"

    aput-object v5, v2, v4

    aput-object v5, v2, v3

    const-string v5, "RU"

    aput-object v5, v2, v6

    const/16 v5, 0x12

    aput-object v2, v0, v5

    new-array v2, v1, [Ljava/lang/String;

    const-string v5, "es_ES"

    aput-object v5, v2, v4

    const-string v5, "es"

    aput-object v5, v2, v3

    const-string v7, "ES"

    aput-object v7, v2, v6

    const/16 v7, 0x13

    aput-object v2, v0, v7

    new-array v2, v1, [Ljava/lang/String;

    aput-object v5, v2, v4

    aput-object v5, v2, v3

    const-string v5, "MX"

    aput-object v5, v2, v6

    const/16 v5, 0x14

    aput-object v2, v0, v5

    new-array v2, v1, [Ljava/lang/String;

    const-string/jumbo v5, "sv"

    aput-object v5, v2, v4

    aput-object v5, v2, v3

    const-string v5, "SE"

    aput-object v5, v2, v6

    const/16 v5, 0x15

    aput-object v2, v0, v5

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "tr"

    aput-object v2, v1, v4

    const-string/jumbo v2, "tr"

    aput-object v2, v1, v3

    const-string v2, "TR"

    aput-object v2, v1, v6

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sput-object v0, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->displayLocales:[[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 7

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->serviceLocaleMapTable:Ljava/util/Hashtable;

    .line 26
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->musicBlocked:Ljava/util/Set;

    .line 27
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->videoBlocked:Ljava/util/Set;

    .line 28
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->purchaseBlocked:Ljava/util/Set;

    .line 29
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->blockFeaturedChild:Ljava/util/Set;

    .line 30
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->promotionalRestrictedRegions:Ljava/util/Set;

    const/16 v0, 0x59

    .line 39
    new-array v0, v0, [[Ljava/lang/String;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "es_AR"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    const-string v5, "es-AR"

    aput-object v5, v2, v3

    aput-object v2, v0, v4

    new-array v2, v1, [Ljava/lang/String;

    const-string v6, "AR"

    aput-object v6, v2, v4

    aput-object v5, v2, v3

    aput-object v2, v0, v3

    new-array v2, v1, [Ljava/lang/String;

    const-string v5, "en_AU"

    aput-object v5, v2, v4

    const-string v5, "en-AU"

    aput-object v5, v2, v3

    aput-object v2, v0, v1

    new-array v2, v1, [Ljava/lang/String;

    const-string v6, "AU"

    aput-object v6, v2, v4

    aput-object v5, v2, v3

    const/4 v5, 0x3

    aput-object v2, v0, v5

    new-array v2, v1, [Ljava/lang/String;

    const-string v5, "de_AT"

    aput-object v5, v2, v4

    const-string v5, "de-AT"

    aput-object v5, v2, v3

    const/4 v6, 0x4

    aput-object v2, v0, v6

    new-array v2, v1, [Ljava/lang/String;

    const-string v6, "AT"

    aput-object v6, v2, v4

    aput-object v5, v2, v3

    const/4 v5, 0x5

    aput-object v2, v0, v5

    new-array v2, v1, [Ljava/lang/String;

    const/4 v5, 0x0

    sget-object v5, Landroidx/startup/xeu/fpYJP;->ZdpTlzc:Ljava/lang/String;

    aput-object v5, v2, v4

    const-string v5, "fr-BE"

    aput-object v5, v2, v3

    const/4 v6, 0x6

    aput-object v2, v0, v6

    new-array v2, v1, [Ljava/lang/String;

    const-string v6, "nl_BE"

    aput-object v6, v2, v4

    const-string v6, "nl-BE"

    aput-object v6, v2, v3

    const/4 v6, 0x7

    aput-object v2, v0, v6

    new-array v2, v1, [Ljava/lang/String;

    const-string v6, "BE"

    aput-object v6, v2, v4

    aput-object v5, v2, v3

    const/16 v5, 0x8

    aput-object v2, v0, v5

    new-array v2, v1, [Ljava/lang/String;

    const-string v5, "pt_BR"

    aput-object v5, v2, v4

    const-string v5, "pt-BR"

    aput-object v5, v2, v3

    const/16 v6, 0x9

    aput-object v2, v0, v6

    new-array v2, v1, [Ljava/lang/String;

    const-string v6, "BR"

    aput-object v6, v2, v4

    aput-object v5, v2, v3

    const/16 v5, 0xa

    aput-object v2, v0, v5

    new-array v2, v1, [Ljava/lang/String;

    const-string v5, "en_CA"

    aput-object v5, v2, v4

    const-string v5, "en-CA"

    aput-object v5, v2, v3

    const/16 v6, 0xb

    aput-object v2, v0, v6

    new-array v2, v1, [Ljava/lang/String;

    const-string v6, "fr_CA"

    aput-object v6, v2, v4

    const-string v6, "fr-CA"

    aput-object v6, v2, v3

    const/16 v6, 0xc

    aput-object v2, v0, v6

    new-array v2, v1, [Ljava/lang/String;

    const-string v6, "CA"

    aput-object v6, v2, v4

    aput-object v5, v2, v3

    const/16 v5, 0xd

    aput-object v2, v0, v5

    new-array v2, v1, [Ljava/lang/String;

    const-string v5, "en_CZ"

    aput-object v5, v2, v4

    const-string v5, "en-CZ"

    aput-object v5, v2, v3

    const/16 v6, 0xe

    aput-object v2, v0, v6

    new-array v2, v1, [Ljava/lang/String;

    const-string v6, "CZ"

    aput-object v6, v2, v4

    aput-object v5, v2, v3

    const/16 v5, 0xf

    aput-object v2, v0, v5

    new-array v2, v1, [Ljava/lang/String;

    const-string v5, "da_DK"

    aput-object v5, v2, v4

    const-string v5, "da-DK"

    aput-object v5, v2, v3

    const/16 v6, 0x10

    aput-object v2, v0, v6

    new-array v2, v1, [Ljava/lang/String;

    const-string v6, "DK"

    aput-object v6, v2, v4

    aput-object v5, v2, v3

    const/16 v5, 0x11

    aput-object v2, v0, v5

    new-array v2, v1, [Ljava/lang/String;

    const-string v5, "fi_FI"

    aput-object v5, v2, v4

    const-string v5, "fi-FI"

    aput-object v5, v2, v3

    const/16 v6, 0x12

    aput-object v2, v0, v6

    new-array v2, v1, [Ljava/lang/String;

    const-string v6, "FI"

    aput-object v6, v2, v4

    aput-object v5, v2, v3

    const/16 v5, 0x13

    aput-object v2, v0, v5

    new-array v2, v1, [Ljava/lang/String;

    const-string v5, "fr_FR"

    aput-object v5, v2, v4

    const-string v5, "fr-FR"

    aput-object v5, v2, v3

    const/16 v6, 0x14

    aput-object v2, v0, v6

    new-array v2, v1, [Ljava/lang/String;

    const-string v6, "FR"

    aput-object v6, v2, v4

    aput-object v5, v2, v3

    const/16 v5, 0x15

    aput-object v2, v0, v5

    new-array v2, v1, [Ljava/lang/String;

    const-string v5, "de_DE"

    aput-object v5, v2, v4

    const-string v5, "de-DE"

    aput-object v5, v2, v3

    const/16 v6, 0x16

    aput-object v2, v0, v6

    new-array v2, v1, [Ljava/lang/String;

    const-string v6, "DE"

    aput-object v6, v2, v4

    aput-object v5, v2, v3

    const/16 v5, 0x17

    aput-object v2, v0, v5

    new-array v2, v1, [Ljava/lang/String;

    const-string v5, "en_GR"

    aput-object v5, v2, v4

    const-string v5, "en-GR"

    aput-object v5, v2, v3

    const/16 v6, 0x18

    aput-object v2, v0, v6

    new-array v2, v1, [Ljava/lang/String;

    const-string v6, "GR"

    aput-object v6, v2, v4

    aput-object v5, v2, v3

    const/16 v5, 0x19

    aput-object v2, v0, v5

    new-array v2, v1, [Ljava/lang/String;

    const-string v5, "en_HK"

    aput-object v5, v2, v4

    const-string v5, "en-HK"

    aput-object v5, v2, v3

    const/16 v6, 0x1a

    aput-object v2, v0, v6

    new-array v2, v1, [Ljava/lang/String;

    const-string/jumbo v6, "zh_HK"

    aput-object v6, v2, v4

    const-string/jumbo v6, "zh-HK"

    aput-object v6, v2, v3

    const/16 v6, 0x1b

    aput-object v2, v0, v6

    new-array v2, v1, [Ljava/lang/String;

    const-string v6, "HK"

    aput-object v6, v2, v4

    aput-object v5, v2, v3

    const/16 v5, 0x1c

    aput-object v2, v0, v5

    new-array v2, v1, [Ljava/lang/String;

    const-string v5, "en_HU"

    aput-object v5, v2, v4

    const-string v5, "en-HU"

    aput-object v5, v2, v3

    const/16 v6, 0x1d

    aput-object v2, v0, v6

    new-array v2, v1, [Ljava/lang/String;

    const/4 v6, 0x0

    sget-object v6, Landroidx/core/internal/view/aLy/wbXUZvT;->ddTIjGTHeThsM:Ljava/lang/String;

    aput-object v6, v2, v4

    aput-object v5, v2, v3

    const/16 v5, 0x1e

    aput-object v2, v0, v5

    new-array v2, v1, [Ljava/lang/String;

    const-string v5, "en_IN"

    aput-object v5, v2, v4

    const-string v5, "en-IN"

    aput-object v5, v2, v3

    const/16 v6, 0x1f

    aput-object v2, v0, v6

    new-array v2, v1, [Ljava/lang/String;

    const-string v6, "IN"

    aput-object v6, v2, v4

    aput-object v5, v2, v3

    const/16 v5, 0x20

    aput-object v2, v0, v5

    new-array v2, v1, [Ljava/lang/String;

    const-string v5, "en_GB"

    aput-object v5, v2, v4

    const-string v5, "en-GB"

    aput-object v5, v2, v3

    const/16 v6, 0x21

    aput-object v2, v0, v6

    new-array v2, v1, [Ljava/lang/String;

    const-string v6, "GB"

    aput-object v6, v2, v4

    aput-object v5, v2, v3

    const/16 v5, 0x22

    aput-object v2, v0, v5

    new-array v2, v1, [Ljava/lang/String;

    const-string v5, "en_IL"

    aput-object v5, v2, v4

    const-string v5, "en-IL"

    aput-object v5, v2, v3

    const/16 v6, 0x23

    aput-object v2, v0, v6

    new-array v2, v1, [Ljava/lang/String;

    const-string v6, "IL"

    aput-object v6, v2, v4

    aput-object v5, v2, v3

    const/16 v5, 0x24

    aput-object v2, v0, v5

    new-array v2, v1, [Ljava/lang/String;

    const-string v5, "it_IT"

    aput-object v5, v2, v4

    const-string v5, "it-IT"

    aput-object v5, v2, v3

    const/16 v6, 0x25

    aput-object v2, v0, v6

    new-array v2, v1, [Ljava/lang/String;

    const-string v6, "IT"

    aput-object v6, v2, v4

    aput-object v5, v2, v3

    const/16 v5, 0x26

    aput-object v2, v0, v5

    new-array v2, v1, [Ljava/lang/String;

    const-string v5, "ja_JP"

    aput-object v5, v2, v4

    const-string v5, "ja-JP"

    aput-object v5, v2, v3

    const/16 v6, 0x27

    aput-object v2, v0, v6

    new-array v2, v1, [Ljava/lang/String;

    const-string v6, "JP"

    aput-object v6, v2, v4

    aput-object v5, v2, v3

    const/16 v5, 0x28

    aput-object v2, v0, v5

    new-array v2, v1, [Ljava/lang/String;

    const-string/jumbo v5, "zh_CN"

    aput-object v5, v2, v4

    const-string/jumbo v5, "zh-CN"

    aput-object v5, v2, v3

    const/16 v5, 0x29

    aput-object v2, v0, v5

    new-array v2, v1, [Ljava/lang/String;

    const-string v5, "CN"

    aput-object v5, v2, v4

    const-string/jumbo v5, "zh-CN"

    aput-object v5, v2, v3

    const/16 v5, 0x2a

    aput-object v2, v0, v5

    new-array v2, v1, [Ljava/lang/String;

    const-string v5, "es_MX"

    aput-object v5, v2, v4

    const-string v5, "es-MX"

    aput-object v5, v2, v3

    const/16 v5, 0x2b

    aput-object v2, v0, v5

    new-array v2, v1, [Ljava/lang/String;

    const-string v5, "MX"

    aput-object v5, v2, v4

    const-string v5, "es-MX"

    aput-object v5, v2, v3

    const/16 v5, 0x2c

    aput-object v2, v0, v5

    new-array v2, v1, [Ljava/lang/String;

    const-string v5, "es_CL"

    aput-object v5, v2, v4

    const-string v5, "es-CL"

    aput-object v5, v2, v3

    const/16 v5, 0x2d

    aput-object v2, v0, v5

    new-array v2, v1, [Ljava/lang/String;

    const-string v5, "CL"

    aput-object v5, v2, v4

    const-string v5, "es-CL"

    aput-object v5, v2, v3

    const/16 v5, 0x2e

    aput-object v2, v0, v5

    new-array v2, v1, [Ljava/lang/String;

    const-string v5, "es_CO"

    aput-object v5, v2, v4

    const-string v5, "es-CO"

    aput-object v5, v2, v3

    const/16 v5, 0x2f

    aput-object v2, v0, v5

    new-array v2, v1, [Ljava/lang/String;

    const-string v5, "CO"

    aput-object v5, v2, v4

    const-string v5, "es-CO"

    aput-object v5, v2, v3

    const/16 v5, 0x30

    aput-object v2, v0, v5

    new-array v2, v1, [Ljava/lang/String;

    const-string v5, "nl_NL"

    aput-object v5, v2, v4

    const-string v5, "nl-NL"

    aput-object v5, v2, v3

    const/16 v5, 0x31

    aput-object v2, v0, v5

    new-array v2, v1, [Ljava/lang/String;

    const-string v5, "NL"

    aput-object v5, v2, v4

    const-string v5, "nl-NL"

    aput-object v5, v2, v3

    const/16 v5, 0x32

    aput-object v2, v0, v5

    new-array v2, v1, [Ljava/lang/String;

    const-string v5, "en_NZ"

    aput-object v5, v2, v4

    const-string v5, "en-NZ"

    aput-object v5, v2, v3

    const/16 v5, 0x33

    aput-object v2, v0, v5

    new-array v2, v1, [Ljava/lang/String;

    const-string v5, "NZ"

    aput-object v5, v2, v4

    const-string v5, "en-NZ"

    aput-object v5, v2, v3

    const/16 v5, 0x34

    aput-object v2, v0, v5

    new-array v2, v1, [Ljava/lang/String;

    const-string v5, "nb_NO"

    aput-object v5, v2, v4

    const-string v5, "nb-NO"

    aput-object v5, v2, v3

    const/16 v5, 0x35

    aput-object v2, v0, v5

    new-array v2, v1, [Ljava/lang/String;

    const-string v5, "NO"

    aput-object v5, v2, v4

    const-string v5, "nb-NO"

    aput-object v5, v2, v3

    const/16 v5, 0x36

    aput-object v2, v0, v5

    new-array v2, v1, [Ljava/lang/String;

    const-string v5, "pl_PL"

    aput-object v5, v2, v4

    const-string v5, "pl-PL"

    aput-object v5, v2, v3

    const/16 v5, 0x37

    aput-object v2, v0, v5

    new-array v2, v1, [Ljava/lang/String;

    const-string v5, "PL"

    aput-object v5, v2, v4

    const-string v5, "pl-PL"

    aput-object v5, v2, v3

    const/16 v5, 0x38

    aput-object v2, v0, v5

    new-array v2, v1, [Ljava/lang/String;

    const-string v5, "pt_PT"

    aput-object v5, v2, v4

    const-string v5, "pt-PT"

    aput-object v5, v2, v3

    const/16 v5, 0x39

    aput-object v2, v0, v5

    new-array v2, v1, [Ljava/lang/String;

    const-string v5, "PT"

    aput-object v5, v2, v4

    const-string v5, "pt-PT"

    aput-object v5, v2, v3

    const/16 v5, 0x3a

    aput-object v2, v0, v5

    new-array v2, v1, [Ljava/lang/String;

    const-string v5, "ru_RU"

    aput-object v5, v2, v4

    const-string v5, "ru-RU"

    aput-object v5, v2, v3

    const/16 v5, 0x3b

    aput-object v2, v0, v5

    new-array v2, v1, [Ljava/lang/String;

    const-string v5, "RU"

    aput-object v5, v2, v4

    const-string v5, "ru-RU"

    aput-object v5, v2, v3

    const/16 v5, 0x3c

    aput-object v2, v0, v5

    new-array v2, v1, [Ljava/lang/String;

    const-string v5, "en_SA"

    aput-object v5, v2, v4

    const-string v5, "en-SA"

    aput-object v5, v2, v3

    const/16 v5, 0x3d

    aput-object v2, v0, v5

    new-array v2, v1, [Ljava/lang/String;

    const-string v5, "SA"

    aput-object v5, v2, v4

    const-string v5, "en-SA"

    aput-object v5, v2, v3

    const/16 v5, 0x3e

    aput-object v2, v0, v5

    new-array v2, v1, [Ljava/lang/String;

    const-string v5, "en_SG"

    aput-object v5, v2, v4

    const/4 v5, 0x0

    sget-object v5, Lcom/google/android/gms/common/internal/service/MT/quLs;->hGXZ:Ljava/lang/String;

    aput-object v5, v2, v3

    const/16 v5, 0x3f

    aput-object v2, v0, v5

    new-array v2, v1, [Ljava/lang/String;

    const-string/jumbo v5, "zh_SG"

    aput-object v5, v2, v4

    const-string/jumbo v5, "zh-SG"

    aput-object v5, v2, v3

    const/16 v5, 0x40

    aput-object v2, v0, v5

    new-array v2, v1, [Ljava/lang/String;

    const-string v5, "SG"

    aput-object v5, v2, v4

    const-string v5, "en-SG"

    aput-object v5, v2, v3

    const/16 v5, 0x41

    aput-object v2, v0, v5

    new-array v2, v1, [Ljava/lang/String;

    const-string v5, "en_SK"

    aput-object v5, v2, v4

    const-string v5, "en-SK"

    aput-object v5, v2, v3

    const/16 v5, 0x42

    aput-object v2, v0, v5

    new-array v2, v1, [Ljava/lang/String;

    const-string v5, "SK"

    aput-object v5, v2, v4

    const/4 v5, 0x0

    sget-object v5, Lkotlin/streams/jdk8/Iq/XmnkEGmkvCpmts;->OvcyFJRBL:Ljava/lang/String;

    aput-object v5, v2, v3

    const/16 v5, 0x43

    aput-object v2, v0, v5

    new-array v2, v1, [Ljava/lang/String;

    const-string v5, "en_ZA"

    aput-object v5, v2, v4

    const-string v5, "en-ZA"

    aput-object v5, v2, v3

    const/16 v5, 0x44

    aput-object v2, v0, v5

    new-array v2, v1, [Ljava/lang/String;

    const-string v5, "ZA"

    aput-object v5, v2, v4

    const-string v5, "en-ZA"

    aput-object v5, v2, v3

    const/16 v5, 0x45

    aput-object v2, v0, v5

    new-array v2, v1, [Ljava/lang/String;

    const-string v5, "ko_KR"

    aput-object v5, v2, v4

    const-string v5, "ko-KR"

    aput-object v5, v2, v3

    const/16 v5, 0x46

    aput-object v2, v0, v5

    new-array v2, v1, [Ljava/lang/String;

    const-string v5, "KR"

    aput-object v5, v2, v4

    const-string v5, "ko-KR"

    aput-object v5, v2, v3

    const/16 v5, 0x47

    aput-object v2, v0, v5

    new-array v2, v1, [Ljava/lang/String;

    const-string v5, "es_ES"

    aput-object v5, v2, v4

    const-string v5, "es-ES"

    aput-object v5, v2, v3

    const/16 v5, 0x48

    aput-object v2, v0, v5

    new-array v2, v1, [Ljava/lang/String;

    const-string v5, "es"

    aput-object v5, v2, v4

    const/4 v5, 0x0

    sget-object v5, Landroidx/core/internal/view/aLy/wbXUZvT;->AEbHuDyImF:Ljava/lang/String;

    aput-object v5, v2, v3

    const/16 v5, 0x49

    aput-object v2, v0, v5

    new-array v2, v1, [Ljava/lang/String;

    const-string v5, "de_CH"

    aput-object v5, v2, v4

    const-string v5, "de-CH"

    aput-object v5, v2, v3

    const/16 v5, 0x4a

    aput-object v2, v0, v5

    new-array v2, v1, [Ljava/lang/String;

    const-string v5, "fr_CH"

    aput-object v5, v2, v4

    const-string v5, "fr-CH"

    aput-object v5, v2, v3

    const/16 v5, 0x4b

    aput-object v2, v0, v5

    new-array v2, v1, [Ljava/lang/String;

    const-string v5, "CH"

    aput-object v5, v2, v4

    const-string v5, "fr-CH"

    aput-object v5, v2, v3

    const/16 v5, 0x4c

    aput-object v2, v0, v5

    new-array v2, v1, [Ljava/lang/String;

    const-string/jumbo v5, "zh_TW"

    aput-object v5, v2, v4

    const-string/jumbo v5, "zh-TW"

    aput-object v5, v2, v3

    const/16 v5, 0x4d

    aput-object v2, v0, v5

    new-array v2, v1, [Ljava/lang/String;

    const-string v5, "TW"

    aput-object v5, v2, v4

    const-string/jumbo v5, "zh-TW"

    aput-object v5, v2, v3

    const/16 v5, 0x4e

    aput-object v2, v0, v5

    new-array v2, v1, [Ljava/lang/String;

    const-string v5, "en_AE"

    aput-object v5, v2, v4

    const-string v5, "en-AE"

    aput-object v5, v2, v3

    const/16 v5, 0x4f

    aput-object v2, v0, v5

    new-array v2, v1, [Ljava/lang/String;

    const-string v5, "AE"

    aput-object v5, v2, v4

    const-string v5, "en-AE"

    aput-object v5, v2, v3

    const/16 v5, 0x50

    aput-object v2, v0, v5

    new-array v2, v1, [Ljava/lang/String;

    const-string v5, "en_US"

    aput-object v5, v2, v4

    const-string v5, "en-US"

    aput-object v5, v2, v3

    const/16 v5, 0x51

    aput-object v2, v0, v5

    new-array v2, v1, [Ljava/lang/String;

    const-string v5, "US"

    aput-object v5, v2, v4

    const-string v5, "en-US"

    aput-object v5, v2, v3

    const/16 v5, 0x52

    aput-object v2, v0, v5

    new-array v2, v1, [Ljava/lang/String;

    const-string/jumbo v5, "sv_SE"

    aput-object v5, v2, v4

    const-string/jumbo v5, "sv-SE"

    aput-object v5, v2, v3

    const/16 v5, 0x53

    aput-object v2, v0, v5

    new-array v2, v1, [Ljava/lang/String;

    const/4 v5, 0x0

    sget-object v5, Lcom/google/android/datatransport/runtime/dagger/multibindings/LdZM/lcNKOYBQdOzfHI;->psfusREaFpsQ:Ljava/lang/String;

    aput-object v5, v2, v4

    const-string/jumbo v5, "sv-SE"

    aput-object v5, v2, v3

    const/16 v5, 0x54

    aput-object v2, v0, v5

    new-array v2, v1, [Ljava/lang/String;

    const-string/jumbo v5, "tr_Tr"

    aput-object v5, v2, v4

    const-string/jumbo v5, "tr-TR"

    aput-object v5, v2, v3

    const/16 v5, 0x55

    aput-object v2, v0, v5

    new-array v2, v1, [Ljava/lang/String;

    const-string v5, "Tr"

    aput-object v5, v2, v4

    const-string/jumbo v5, "tr-TR"

    aput-object v5, v2, v3

    const/16 v5, 0x56

    aput-object v2, v0, v5

    new-array v2, v1, [Ljava/lang/String;

    const-string v5, "en_IE"

    aput-object v5, v2, v4

    const-string v5, "en-IE"

    aput-object v5, v2, v3

    const/16 v5, 0x57

    aput-object v2, v0, v5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "IE"

    aput-object v2, v1, v4

    const-string v2, "en-IE"

    aput-object v2, v1, v3

    const/16 v2, 0x58

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->serviceLocales:[[Ljava/lang/String;

    move v0, v4

    .line 158
    :goto_0
    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->serviceLocales:[[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 159
    iget-object v2, p0, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->serviceLocaleMapTable:Ljava/util/Hashtable;

    aget-object v1, v1, v0

    aget-object v5, v1, v4

    aget-object v1, v1, v3

    invoke-virtual {v2, v5, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 162
    iput-object v0, p0, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->serviceLocales:[[Ljava/lang/String;

    return-void
.end method

.method private addRegions(Ljava/lang/String;Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 208
    invoke-static {p1}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 209
    const-string v0, "[|]"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 210
    invoke-static {p1}, Lcom/microsoft/xbox/xle/app/XLEUtil;->isNullOrEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 211
    invoke-interface {p2}, Ljava/util/Set;->clear()V

    .line 212
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 213
    invoke-static {v2}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 214
    invoke-interface {p2, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private getDeviceLocale()Ljava/lang/String;
    .locals 3

    .line 401
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 402
    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    .line 403
    iget-object v2, p0, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->serviceLocaleMapTable:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 404
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->serviceLocaleMapTable:Ljava/util/Hashtable;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 406
    :cond_0
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 407
    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->serviceLocaleMapTable:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 408
    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->serviceLocaleMapTable:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 412
    :cond_1
    const-string v0, "en-US"

    return-object v0
.end method

.method public static getInstance()Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;
    .locals 1

    .line 166
    sget-object v0, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->instance:Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;

    return-object v0
.end method


# virtual methods
.method public ensureDisplayLocale()V
    .locals 9

    .line 171
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 172
    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    .line 173
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 174
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    move v4, v3

    .line 177
    :goto_0
    sget-object v5, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->displayLocales:[[Ljava/lang/String;

    array-length v6, v5

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-ge v4, v6, :cond_2

    .line 178
    aget-object v6, v5, v4

    aget-object v6, v6, v3

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 179
    aget-object v1, v5, v4

    aget-object v1, v1, v8

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    aget-object v1, v5, v4

    aget-object v1, v1, v7

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 182
    :cond_0
    new-instance v0, Ljava/util/Locale;

    aget-object v1, v5, v4

    aget-object v4, v1, v8

    aget-object v1, v1, v7

    invoke-direct {v0, v4, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_4

    move v1, v3

    .line 190
    :goto_2
    sget-object v4, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->displayLocales:[[Ljava/lang/String;

    array-length v5, v4

    if-ge v1, v5, :cond_4

    .line 191
    aget-object v5, v4, v1

    aget-object v5, v5, v3

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 192
    new-instance v0, Ljava/util/Locale;

    aget-object v1, v4, v1

    aget-object v2, v1, v8

    aget-object v1, v1, v7

    invoke-direct {v0, v2, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    if-eqz v0, :cond_5

    .line 200
    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 201
    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 202
    iput-object v0, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 203
    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    :cond_5
    return-void
.end method

.method public getAllowExplicitContent()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getAutoSuggestdDataSource()Ljava/lang/String;
    .locals 1

    .line 382
    const-string v0, "bbxall2"

    return-object v0
.end method

.method public getCombinedContentRating()Ljava/lang/String;
    .locals 1

    .line 314
    const-string v0, ""

    return-object v0
.end method

.method public getConnectedLocale()Ljava/lang/String;
    .locals 1

    .line 436
    invoke-direct {p0}, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->getDeviceLocale()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConnectedLocale(Z)Ljava/lang/String;
    .locals 0

    .line 447
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->getConnectedLocale()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getContentRestrictions()Ljava/lang/String;
    .locals 4

    .line 476
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->getRegion()Ljava/lang/String;

    move-result-object v0

    .line 477
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->getMeMaturityLevel()I

    move-result v1

    .line 478
    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const/16 v2, 0xff

    if-eq v1, v2, :cond_0

    .line 479
    new-instance v2, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider$ContentRestrictions;

    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->isPromotionalRestricted()Z

    move-result v3

    invoke-direct {v2, p0, v0, v1, v3}, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider$ContentRestrictions;-><init>(Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;Ljava/lang/String;IZ)V

    .line 480
    invoke-static {v2}, Lcom/microsoft/xbox/toolkit/GsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 481
    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 482
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentSandboxID()Ljava/lang/String;
    .locals 1

    .line 397
    const-string v0, "PROD"

    return-object v0
.end method

.method public getInitializeComplete()Z
    .locals 1

    .line 335
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->getXuidString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getIsForXboxOne()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getIsFreeAccount()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getIsXboxMusicSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getLegalLocale()Ljava/lang/String;
    .locals 1

    .line 309
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->getConnectedLocale()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMeMaturityLevel()I
    .locals 1

    .line 243
    invoke-static {}, Lcom/microsoft/xbox/service/model/ProfileModel;->getMeProfileModel()Lcom/microsoft/xbox/service/model/ProfileModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 245
    invoke-virtual {v0}, Lcom/microsoft/xbox/service/model/ProfileModel;->getMaturityLevel()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getMembershipLevel()Ljava/lang/String;
    .locals 1

    .line 319
    invoke-static {}, Lcom/microsoft/xbox/service/model/ProfileModel;->getMeProfileModel()Lcom/microsoft/xbox/service/model/ProfileModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/service/model/ProfileModel;->getAccountTier()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 322
    const-string v0, "Gold"

    return-object v0

    .line 325
    :cond_0
    invoke-static {}, Lcom/microsoft/xbox/service/model/ProfileModel;->getMeProfileModel()Lcom/microsoft/xbox/service/model/ProfileModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/microsoft/xbox/service/model/ProfileModel;->getAccountTier()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrivileges()Ljava/lang/String;
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->privileges:Ljava/lang/String;

    return-object v0
.end method

.method public getRegion()Ljava/lang/String;
    .locals 1

    .line 252
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSCDRpsTicket()Ljava/lang/String;
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->scdRpsTicket:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionCheckUrl()Ljava/lang/String;
    .locals 2

    .line 366
    sget-object v0, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider$1;->$SwitchMap$com$microsoft$xbox$toolkit$network$XboxLiveEnvironment$Environment:[I

    invoke-static {}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->Instance()Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->getEnvironment()Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$Environment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$Environment;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 375
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 369
    :cond_1
    const-string v0, "http://www.rtm.vint.xbox.com/en-US/Platform/Android/XboxLIVE/sgversion"

    return-object v0

    .line 373
    :cond_2
    :goto_0
    const/4 v0, 0x0

    sget-object v0, Lorg/spongycastle/pqc/crypto/gmss/util/mbQq/agaLzgk;->wQqLrWcWiR:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionCode()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getWindowsLiveClientId()Ljava/lang/String;
    .locals 2

    .line 350
    sget-object v0, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider$1;->$SwitchMap$com$microsoft$xbox$toolkit$network$XboxLiveEnvironment$Environment:[I

    invoke-static {}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->Instance()Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment;->getEnvironment()Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$Environment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/microsoft/xbox/toolkit/network/XboxLiveEnvironment$Environment;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 360
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 358
    :cond_1
    :goto_0
    const-string v0, "0000000068036303"

    return-object v0

    .line 353
    :cond_2
    const-string v0, "0000000048093EE3"

    return-object v0
.end method

.method public getXuidString()Ljava/lang/String;
    .locals 1

    .line 279
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->meXuid:Ljava/lang/String;

    return-object v0
.end method

.method public gotSettings()Z
    .locals 1

    .line 231
    iget-boolean v0, p0, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->gotSettings:Z

    return v0
.end method

.method public isDeviceLocaleKnown()Z
    .locals 3

    .line 420
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 421
    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    .line 422
    iget-object v2, p0, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->serviceLocaleMapTable:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    .line 425
    :cond_0
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 426
    invoke-static {v0}, Lcom/microsoft/xbox/toolkit/JavaUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->serviceLocaleMapTable:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isFeaturedBlocked()Z
    .locals 2

    .line 270
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->isMeAdult()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->blockFeaturedChild:Ljava/util/Set;

    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->getRegion()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isMeAdult()Z
    .locals 1

    .line 239
    iget-boolean v0, p0, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->isMeAdult:Z

    return v0
.end method

.method public isMusicBlocked()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isPromotionalRestricted()Z
    .locals 2

    .line 274
    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->isMeAdult()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->promotionalRestrictedRegions:Ljava/util/Set;

    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->getRegion()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPurchaseBlocked()Z
    .locals 2

    .line 266
    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->purchaseBlocked:Ljava/util/Set;

    invoke-virtual {p0}, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->getRegion()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isVideoBlocked()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public processContentBlockedList(Lcom/microsoft/xbox/xle/app/SmartglassSettings;)V
    .locals 2

    .line 222
    iget-object v0, p1, Lcom/microsoft/xbox/xle/app/SmartglassSettings;->VIDEO_BLOCKED:Ljava/lang/String;

    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->videoBlocked:Ljava/util/Set;

    invoke-direct {p0, v0, v1}, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->addRegions(Ljava/lang/String;Ljava/util/Set;)V

    .line 223
    iget-object v0, p1, Lcom/microsoft/xbox/xle/app/SmartglassSettings;->MUSIC_BLOCKED:Ljava/lang/String;

    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->musicBlocked:Ljava/util/Set;

    invoke-direct {p0, v0, v1}, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->addRegions(Ljava/lang/String;Ljava/util/Set;)V

    .line 224
    iget-object v0, p1, Lcom/microsoft/xbox/xle/app/SmartglassSettings;->PURCHASE_BLOCKED:Ljava/lang/String;

    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->purchaseBlocked:Ljava/util/Set;

    invoke-direct {p0, v0, v1}, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->addRegions(Ljava/lang/String;Ljava/util/Set;)V

    .line 225
    iget-object v0, p1, Lcom/microsoft/xbox/xle/app/SmartglassSettings;->BLOCK_FEATURED_CHILD:Ljava/lang/String;

    iget-object v1, p0, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->blockFeaturedChild:Ljava/util/Set;

    invoke-direct {p0, v0, v1}, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->addRegions(Ljava/lang/String;Ljava/util/Set;)V

    .line 226
    iget-object p1, p1, Lcom/microsoft/xbox/xle/app/SmartglassSettings;->PROMOTIONAL_CONTENT_RESTRICTED_REGIONS:Ljava/lang/String;

    iget-object v0, p0, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->promotionalRestrictedRegions:Ljava/util/Set;

    invoke-direct {p0, p1, v0}, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->addRegions(Ljava/lang/String;Ljava/util/Set;)V

    const/4 p1, 0x1

    .line 227
    iput-boolean p1, p0, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->gotSettings:Z

    return-void
.end method

.method public resetModels(Z)V
    .locals 0

    .line 387
    invoke-static {}, Lcom/microsoft/xbox/service/model/ProfileModel;->reset()V

    return-void
.end method

.method public setIsMeAdult(Z)V
    .locals 0

    .line 235
    iput-boolean p1, p0, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->isMeAdult:Z

    return-void
.end method

.method public setPrivileges(Ljava/lang/String;)V
    .locals 0

    .line 294
    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->privileges:Ljava/lang/String;

    return-void
.end method

.method public setSCDRpsTicket(Ljava/lang/String;)V
    .locals 0

    .line 304
    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->scdRpsTicket:Ljava/lang/String;

    return-void
.end method

.method public setXuidString(Ljava/lang/String;)V
    .locals 0

    .line 284
    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;->meXuid:Ljava/lang/String;

    return-void
.end method
