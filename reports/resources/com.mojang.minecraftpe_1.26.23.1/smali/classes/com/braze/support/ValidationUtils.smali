.class public final Lcom/braze/support/ValidationUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0006\n\u0002\u0008\u0003\n\u0002\u0010\"\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008*\u0010\'J\u0012\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0007J\u0012\u0010\u0007\u001a\u00020\u00042\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0002H\u0007J\u0012\u0010\t\u001a\u00020\u00022\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0002H\u0007J6\u0010\u0012\u001a\u00020\u00042\u0008\u0010\n\u001a\u0004\u0018\u00010\u00022\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u00022\u0008\u0010\r\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u0010H\u0007J\u001a\u0010\u0014\u001a\u00020\u00042\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0011\u001a\u00020\u0010H\u0007J\u001c\u0010\u0017\u001a\u00020\u00042\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u00022\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0002H\u0007J\u0018\u0010\u001b\u001a\u00020\u00042\u0006\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u001a\u001a\u00020\u0018H\u0007R\u001d\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u001c8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001d\u0010\u001e\u001a\u0004\u0008\u001f\u0010 R\u0014\u0010\"\u001a\u00020!8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\"\u0010#R\u001a\u0010$\u001a\u00020\u000e8\u0006X\u0087T\u00a2\u0006\u000c\n\u0004\u0008$\u0010%\u0012\u0004\u0008&\u0010\'R\u0014\u0010(\u001a\u00020!8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008(\u0010#R\u0014\u0010)\u001a\u00020\u000e8\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008)\u0010%\u00a8\u0006+"
    }
    d2 = {
        "Lcom/braze/support/ValidationUtils;",
        "",
        "",
        "emailAddress",
        "",
        "isValidEmailAddress",
        "phoneNumber",
        "isValidPhoneNumber",
        "field",
        "ensureBrazeFieldLength",
        "productId",
        "currencyCode",
        "Ljava/math/BigDecimal;",
        "price",
        "",
        "quantity",
        "Lbo/app/a5;",
        "serverConfigStorageProvider",
        "isValidLogPurchaseInput",
        "eventName",
        "isValidLogCustomEventInput",
        "campaignId",
        "pageId",
        "isValidPushStoryClickInput",
        "",
        "latitude",
        "longitude",
        "isValidLocation",
        "",
        "VALID_CURRENCY_CODES",
        "Ljava/util/Set;",
        "getVALID_CURRENCY_CODES",
        "()Ljava/util/Set;",
        "Lkotlin/text/Regex;",
        "EMAIL_ADDRESS_REGEX",
        "Lkotlin/text/Regex;",
        "EMAIL_ADDRESS_MAX_LENGTH",
        "I",
        "getEMAIL_ADDRESS_MAX_LENGTH$annotations",
        "()V",
        "PHONE_NUMBER_REGEX",
        "BRAZE_STRING_MAX_LENGTH",
        "<init>",
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
.field public static final BRAZE_STRING_MAX_LENGTH:I = 0xff

.field public static final EMAIL_ADDRESS_MAX_LENGTH:I = 0xff

.field private static final EMAIL_ADDRESS_REGEX:Lkotlin/text/Regex;

.field public static final INSTANCE:Lcom/braze/support/ValidationUtils;

.field private static final PHONE_NUMBER_REGEX:Lkotlin/text/Regex;

.field private static final VALID_CURRENCY_CODES:Ljava/util/Set;
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
    .locals 3

    new-instance v0, Lcom/braze/support/ValidationUtils;

    invoke-direct {v0}, Lcom/braze/support/ValidationUtils;-><init>()V

    sput-object v0, Lcom/braze/support/ValidationUtils;->INSTANCE:Lcom/braze/support/ValidationUtils;

    const/16 v0, 0xab

    .line 1
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "AED"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "AFN"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "ALL"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "AMD"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "ANG"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "AOA"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "ARS"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "AUD"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "AWG"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "AZN"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "BAM"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const/4 v2, 0x0

    sget-object v2, Lorg/spongycastle/math/field/TKPd/fRDYVDRbWIVvS;->gdfIGO:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "BDT"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "BGN"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const/4 v2, 0x0

    sget-object v2, Lcom/google/android/datatransport/runtime/dagger/multibindings/LdZM/lcNKOYBQdOzfHI;->PuAXsSE:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    .line 2
    const-string v2, "BIF"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "BMD"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "BND"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "BOB"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "BRL"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const/4 v2, 0x0

    sget-object v2, Lcom/microsoft/xbox/toolkit/ui/iD/hzdAhZzniHN;->Lie:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "BTC"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "BTN"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "BWP"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "BYR"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "BZD"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "CAD"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "CDF"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "CHF"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "CLF"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    .line 3
    const-string v2, "CLP"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "CNY"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "COP"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "CRC"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "CUC"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "CUP"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "CVE"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "CZK"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "DJF"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "DKK"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "DOP"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "DZD"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "EEK"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "EGP"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "ERN"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    .line 4
    const-string v2, "ETB"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "EUR"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "FJD"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "FKP"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "GBP"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "GEL"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "GGP"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "GHS"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "GIP"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "GMD"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "GNF"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "GTQ"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "GYD"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "HKD"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "HNL"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    .line 5
    const-string v2, "HRK"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const/4 v2, 0x0

    sget-object v2, Lcom/google/android/datatransport/backend/cct/DL/Umhi;->nTQRtmkhPKMGbWB:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "HUF"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "IDR"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "ILS"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "IMP"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "INR"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "IQD"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "IRR"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "ISK"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "JEP"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, "JMD"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, "JOD"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, "JPY"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, "KES"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    .line 6
    const-string v2, "KGS"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, "KHR"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, "KMF"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, "KPW"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, "KRW"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, "KWD"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v2, "KYD"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string v2, "KZT"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string v2, "LAK"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string v2, "LBP"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string v2, "LKR"

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string v2, "LRD"

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string v2, "LSL"

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string v2, "LTL"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string v2, "LVL"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    .line 7
    const-string v2, "LYD"

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-string v2, "MAD"

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string v2, "MDL"

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const-string v2, "MGA"

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const-string v2, "MKD"

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    const-string v2, "MMK"

    aput-object v2, v0, v1

    const/16 v1, 0x60

    const-string v2, "MNT"

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const-string v2, "MOP"

    aput-object v2, v0, v1

    const/16 v1, 0x62

    const-string v2, "MRO"

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const-string v2, "MTL"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    const-string v2, "MUR"

    aput-object v2, v0, v1

    const/16 v1, 0x65

    const-string v2, "MVR"

    aput-object v2, v0, v1

    const/16 v1, 0x66

    const-string v2, "MWK"

    aput-object v2, v0, v1

    const/16 v1, 0x67

    const-string v2, "MXN"

    aput-object v2, v0, v1

    const/16 v1, 0x68

    const-string v2, "MYR"

    aput-object v2, v0, v1

    const/16 v1, 0x69

    .line 8
    const-string v2, "MZN"

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    const-string v2, "NAD"

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    const-string v2, "NGN"

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    const-string v2, "NIO"

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    const-string v2, "NOK"

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    const-string v2, "NPR"

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    const-string v2, "NZD"

    aput-object v2, v0, v1

    const/16 v1, 0x70

    const-string v2, "OMR"

    aput-object v2, v0, v1

    const/16 v1, 0x71

    const-string v2, "PAB"

    aput-object v2, v0, v1

    const/16 v1, 0x72

    const-string v2, "PEN"

    aput-object v2, v0, v1

    const/16 v1, 0x73

    const-string v2, "PGK"

    aput-object v2, v0, v1

    const/16 v1, 0x74

    const-string v2, "PHP"

    aput-object v2, v0, v1

    const/16 v1, 0x75

    const-string v2, "PKR"

    aput-object v2, v0, v1

    const/16 v1, 0x76

    const-string v2, "PLN"

    aput-object v2, v0, v1

    const/16 v1, 0x77

    const-string v2, "PYG"

    aput-object v2, v0, v1

    const/16 v1, 0x78

    .line 9
    const-string v2, "QAR"

    aput-object v2, v0, v1

    const/16 v1, 0x79

    const/4 v2, 0x0

    sget-object v2, Ljavax/annotation/concurrent/sZY/CUrDPLd;->FFXrzDuNxKQIOBt:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    const-string v2, "RSD"

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    const-string v2, "RUB"

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    const-string v2, "RWF"

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    const-string v2, "SAR"

    aput-object v2, v0, v1

    const/16 v1, 0x7e

    const-string v2, "SBD"

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    const-string v2, "SCR"

    aput-object v2, v0, v1

    const/16 v1, 0x80

    const-string v2, "SDG"

    aput-object v2, v0, v1

    const/16 v1, 0x81

    const-string v2, "SEK"

    aput-object v2, v0, v1

    const/16 v1, 0x82

    const-string v2, "SGD"

    aput-object v2, v0, v1

    const/16 v1, 0x83

    const-string v2, "SHP"

    aput-object v2, v0, v1

    const/16 v1, 0x84

    const-string v2, "SLL"

    aput-object v2, v0, v1

    const/16 v1, 0x85

    const-string v2, "SOS"

    aput-object v2, v0, v1

    const/16 v1, 0x86

    const-string v2, "SRD"

    aput-object v2, v0, v1

    const/16 v1, 0x87

    .line 10
    const-string v2, "STD"

    aput-object v2, v0, v1

    const/16 v1, 0x88

    const-string v2, "SVC"

    aput-object v2, v0, v1

    const/16 v1, 0x89

    const-string v2, "SYP"

    aput-object v2, v0, v1

    const/16 v1, 0x8a

    const-string v2, "SZL"

    aput-object v2, v0, v1

    const/16 v1, 0x8b

    const-string v2, "THB"

    aput-object v2, v0, v1

    const/16 v1, 0x8c

    const-string v2, "TJS"

    aput-object v2, v0, v1

    const/16 v1, 0x8d

    const-string v2, "TMT"

    aput-object v2, v0, v1

    const/16 v1, 0x8e

    const-string v2, "TND"

    aput-object v2, v0, v1

    const/16 v1, 0x8f

    const-string v2, "TOP"

    aput-object v2, v0, v1

    const/16 v1, 0x90

    const-string v2, "TRY"

    aput-object v2, v0, v1

    const/16 v1, 0x91

    const-string v2, "TTD"

    aput-object v2, v0, v1

    const/16 v1, 0x92

    const-string v2, "TWD"

    aput-object v2, v0, v1

    const/16 v1, 0x93

    const-string v2, "TZS"

    aput-object v2, v0, v1

    const/16 v1, 0x94

    const-string v2, "UAH"

    aput-object v2, v0, v1

    const/16 v1, 0x95

    const-string v2, "UGX"

    aput-object v2, v0, v1

    const/16 v1, 0x96

    .line 11
    const-string v2, "USD"

    aput-object v2, v0, v1

    const/16 v1, 0x97

    const-string v2, "UYU"

    aput-object v2, v0, v1

    const/16 v1, 0x98

    const-string v2, "UZS"

    aput-object v2, v0, v1

    const/16 v1, 0x99

    const-string v2, "VEF"

    aput-object v2, v0, v1

    const/16 v1, 0x9a

    const-string v2, "VND"

    aput-object v2, v0, v1

    const/16 v1, 0x9b

    const-string v2, "VUV"

    aput-object v2, v0, v1

    const/16 v1, 0x9c

    const-string v2, "WST"

    aput-object v2, v0, v1

    const/16 v1, 0x9d

    const-string v2, "XAF"

    aput-object v2, v0, v1

    const/16 v1, 0x9e

    const-string v2, "XAG"

    aput-object v2, v0, v1

    const/16 v1, 0x9f

    const-string v2, "XAU"

    aput-object v2, v0, v1

    const/16 v1, 0xa0

    const-string v2, "XCD"

    aput-object v2, v0, v1

    const/16 v1, 0xa1

    const-string v2, "XDR"

    aput-object v2, v0, v1

    const/16 v1, 0xa2

    const-string v2, "XOF"

    aput-object v2, v0, v1

    const/16 v1, 0xa3

    const-string v2, "XPD"

    aput-object v2, v0, v1

    const/16 v1, 0xa4

    const-string v2, "XPF"

    aput-object v2, v0, v1

    const/16 v1, 0xa5

    .line 12
    const-string v2, "XPT"

    aput-object v2, v0, v1

    const/16 v1, 0xa6

    const-string v2, "YER"

    aput-object v2, v0, v1

    const/16 v1, 0xa7

    const-string v2, "ZAR"

    aput-object v2, v0, v1

    const/16 v1, 0xa8

    const-string v2, "ZMK"

    aput-object v2, v0, v1

    const/16 v1, 0xa9

    const-string v2, "ZMW"

    aput-object v2, v0, v1

    const/16 v1, 0xaa

    const-string v2, "ZWL"

    aput-object v2, v0, v1

    .line 13
    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/braze/support/ValidationUtils;->VALID_CURRENCY_CODES:Ljava/util/Set;

    .line 33
    new-instance v0, Lkotlin/text/Regex;

    const-string v1, ".+@.+\\..+"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/braze/support/ValidationUtils;->EMAIL_ADDRESS_REGEX:Lkotlin/text/Regex;

    .line 36
    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "^[0-9 .\\(\\)\\+\\-]+$"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/braze/support/ValidationUtils;->PHONE_NUMBER_REGEX:Lkotlin/text/Regex;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final ensureBrazeFieldLength(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-eqz p0, :cond_2

    .line 1
    invoke-static {p0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    invoke-static {p0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    sget-object v2, Lcom/braze/support/ValidationUtils;->INSTANCE:Lcom/braze/support/ValidationUtils;

    const/16 v8, 0xff

    if-le p0, v8, :cond_1

    .line 6
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v3, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v5, Lcom/braze/support/ValidationUtils$a;

    invoke-direct {v5, v0}, Lcom/braze/support/ValidationUtils$a;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 9
    iget-object p0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string v1, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 11
    :cond_1
    iget-object p0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 2
    :cond_2
    :goto_0
    const-string p0, ""

    return-object p0
.end method

.method public static synthetic getEMAIL_ADDRESS_MAX_LENGTH$annotations()V
    .locals 0

    return-void
.end method

.method public static final isValidEmailAddress(Ljava/lang/String;)Z
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xff

    if-le v1, v2, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    sget-object v0, Lcom/braze/support/ValidationUtils;->EMAIL_ADDRESS_REGEX:Lkotlin/text/Regex;

    invoke-virtual {v0, p0}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    move-result v0

    :cond_2
    :goto_0
    return v0
.end method

.method public static final isValidLocation(DD)Z
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-wide v0, 0x4056800000000000L    # 90.0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_0

    const-wide v0, -0x3fa9800000000000L    # -90.0

    cmpl-double p0, p0, v0

    if-lez p0, :cond_0

    const-wide p0, 0x4066800000000000L    # 180.0

    cmpg-double p0, p2, p0

    if-gez p0, :cond_0

    const-wide p0, -0x3f99800000000000L    # -180.0

    cmpl-double p0, p2, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final isValidLogCustomEventInput(Ljava/lang/String;Lbo/app/a5;)Z
    .locals 8
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "serverConfigStorageProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 1
    invoke-static {p0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Lbo/app/a5;->c()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v2, Lcom/braze/support/ValidationUtils;->INSTANCE:Lcom/braze/support/ValidationUtils;

    sget-object v3, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v5, Lcom/braze/support/ValidationUtils$c;

    invoke-direct {v5, p0}, Lcom/braze/support/ValidationUtils$c;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    .line 2
    :cond_2
    :goto_0
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v2, Lcom/braze/support/ValidationUtils;->INSTANCE:Lcom/braze/support/ValidationUtils;

    sget-object v3, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    sget-object v5, Lcom/braze/support/ValidationUtils$b;->b:Lcom/braze/support/ValidationUtils$b;

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    :goto_1
    return v0
.end method

.method public static final isValidLogPurchaseInput(Ljava/lang/String;Ljava/lang/String;Ljava/math/BigDecimal;ILbo/app/a5;)Z
    .locals 18
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    const-string v3, "serverConfigStorageProvider"

    move-object/from16 v4, p4

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    if-eqz v0, :cond_8

    .line 1
    invoke-static/range {p0 .. p0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_1

    .line 5
    :cond_0
    invoke-virtual/range {p4 .. p4}, Lbo/app/a5;->d()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 6
    sget-object v5, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v6, Lcom/braze/support/ValidationUtils;->INSTANCE:Lcom/braze/support/ValidationUtils;

    sget-object v7, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v9, Lcom/braze/support/ValidationUtils$e;

    invoke-direct {v9, v0}, Lcom/braze/support/ValidationUtils$e;-><init>(Ljava/lang/String;)V

    const/4 v10, 0x2

    const/4 v11, 0x0

    const/4 v8, 0x0

    invoke-static/range {v5 .. v11}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    goto/16 :goto_2

    :cond_1
    if-eqz v1, :cond_7

    .line 9
    invoke-static/range {p1 .. p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 13
    :cond_2
    sget-object v5, Lcom/braze/support/ValidationUtils;->INSTANCE:Lcom/braze/support/ValidationUtils;

    sget-object v0, Lcom/braze/support/ValidationUtils;->VALID_CURRENCY_CODES:Ljava/util/Set;

    invoke-static/range {p1 .. p1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "US"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "this as java.lang.String).toUpperCase(locale)"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 14
    sget-object v4, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v6, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v8, Lcom/braze/support/ValidationUtils$g;

    invoke-direct {v8, v1}, Lcom/braze/support/ValidationUtils$g;-><init>(Ljava/lang/String;)V

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v7, 0x0

    invoke-static/range {v4 .. v10}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    goto :goto_2

    :cond_3
    if-nez p2, :cond_4

    .line 18
    sget-object v4, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v6, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    sget-object v8, Lcom/braze/support/ValidationUtils$h;->b:Lcom/braze/support/ValidationUtils$h;

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v7, 0x0

    invoke-static/range {v4 .. v10}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    goto :goto_2

    :cond_4
    if-gtz v2, :cond_5

    .line 22
    sget-object v4, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v6, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v8, Lcom/braze/support/ValidationUtils$i;

    invoke-direct {v8, v2}, Lcom/braze/support/ValidationUtils$i;-><init>(I)V

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v7, 0x0

    invoke-static/range {v4 .. v10}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    goto :goto_2

    :cond_5
    const/16 v0, 0x64

    if-le v2, v0, :cond_6

    .line 26
    sget-object v4, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v6, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v8, Lcom/braze/support/ValidationUtils$j;

    invoke-direct {v8, v2}, Lcom/braze/support/ValidationUtils$j;-><init>(I)V

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v7, 0x0

    invoke-static/range {v4 .. v10}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    goto :goto_2

    :cond_6
    const/4 v3, 0x1

    goto :goto_2

    .line 10
    :cond_7
    :goto_0
    sget-object v4, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v5, Lcom/braze/support/ValidationUtils;->INSTANCE:Lcom/braze/support/ValidationUtils;

    sget-object v6, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    sget-object v8, Lcom/braze/support/ValidationUtils$f;->b:Lcom/braze/support/ValidationUtils$f;

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v7, 0x0

    invoke-static/range {v4 .. v10}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    goto :goto_2

    .line 2
    :cond_8
    :goto_1
    sget-object v11, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v12, Lcom/braze/support/ValidationUtils;->INSTANCE:Lcom/braze/support/ValidationUtils;

    sget-object v13, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    sget-object v15, Lcom/braze/support/ValidationUtils$d;->b:Lcom/braze/support/ValidationUtils$d;

    const/16 v16, 0x2

    const/16 v17, 0x0

    const/4 v14, 0x0

    invoke-static/range {v11 .. v17}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    :goto_2
    return v3
.end method

.method public static final isValidPhoneNumber(Ljava/lang/String;)Z
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-eqz p0, :cond_0

    .line 1
    sget-object v0, Lcom/braze/support/ValidationUtils;->PHONE_NUMBER_REGEX:Lkotlin/text/Regex;

    invoke-virtual {v0, p0}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final isValidPushStoryClickInput(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 15
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 1
    invoke-static {p0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_2

    .line 5
    invoke-static/range {p1 .. p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_2

    .line 6
    :cond_2
    :goto_0
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v2, Lcom/braze/support/ValidationUtils;->INSTANCE:Lcom/braze/support/ValidationUtils;

    sget-object v3, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    sget-object v5, Lcom/braze/support/ValidationUtils$l;->b:Lcom/braze/support/ValidationUtils$l;

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    goto :goto_2

    .line 2
    :cond_3
    :goto_1
    sget-object v8, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v9, Lcom/braze/support/ValidationUtils;->INSTANCE:Lcom/braze/support/ValidationUtils;

    sget-object v10, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    sget-object v12, Lcom/braze/support/ValidationUtils$k;->b:Lcom/braze/support/ValidationUtils$k;

    const/4 v13, 0x2

    const/4 v14, 0x0

    const/4 v11, 0x0

    invoke-static/range {v8 .. v14}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    :goto_2
    return v0
.end method


# virtual methods
.method public final getVALID_CURRENCY_CODES()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/braze/support/ValidationUtils;->VALID_CURRENCY_CODES:Ljava/util/Set;

    return-object v0
.end method
