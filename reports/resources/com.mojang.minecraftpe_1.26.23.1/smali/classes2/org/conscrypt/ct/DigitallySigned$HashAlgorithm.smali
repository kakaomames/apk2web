.class public final enum Lorg/conscrypt/ct/DigitallySigned$HashAlgorithm;
.super Ljava/lang/Enum;
.source "DigitallySigned.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/conscrypt/ct/DigitallySigned;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HashAlgorithm"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/conscrypt/ct/DigitallySigned$HashAlgorithm;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/conscrypt/ct/DigitallySigned$HashAlgorithm;

.field public static final enum MD5:Lorg/conscrypt/ct/DigitallySigned$HashAlgorithm;

.field public static final enum NONE:Lorg/conscrypt/ct/DigitallySigned$HashAlgorithm;

.field public static final enum SHA1:Lorg/conscrypt/ct/DigitallySigned$HashAlgorithm;

.field public static final enum SHA224:Lorg/conscrypt/ct/DigitallySigned$HashAlgorithm;

.field public static final enum SHA256:Lorg/conscrypt/ct/DigitallySigned$HashAlgorithm;

.field public static final enum SHA384:Lorg/conscrypt/ct/DigitallySigned$HashAlgorithm;

.field public static final enum SHA512:Lorg/conscrypt/ct/DigitallySigned$HashAlgorithm;

.field private static values:[Lorg/conscrypt/ct/DigitallySigned$HashAlgorithm;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 29
    new-instance v0, Lorg/conscrypt/ct/DigitallySigned$HashAlgorithm;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/conscrypt/ct/DigitallySigned$HashAlgorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/conscrypt/ct/DigitallySigned$HashAlgorithm;->NONE:Lorg/conscrypt/ct/DigitallySigned$HashAlgorithm;

    .line 30
    new-instance v1, Lorg/conscrypt/ct/DigitallySigned$HashAlgorithm;

    const-string v2, "MD5"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/conscrypt/ct/DigitallySigned$HashAlgorithm;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/conscrypt/ct/DigitallySigned$HashAlgorithm;->MD5:Lorg/conscrypt/ct/DigitallySigned$HashAlgorithm;

    .line 31
    new-instance v2, Lorg/conscrypt/ct/DigitallySigned$HashAlgorithm;

    const-string v3, "SHA1"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/conscrypt/ct/DigitallySigned$HashAlgorithm;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/conscrypt/ct/DigitallySigned$HashAlgorithm;->SHA1:Lorg/conscrypt/ct/DigitallySigned$HashAlgorithm;

    .line 32
    new-instance v3, Lorg/conscrypt/ct/DigitallySigned$HashAlgorithm;

    const-string v4, "SHA224"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lorg/conscrypt/ct/DigitallySigned$HashAlgorithm;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/conscrypt/ct/DigitallySigned$HashAlgorithm;->SHA224:Lorg/conscrypt/ct/DigitallySigned$HashAlgorithm;

    .line 33
    new-instance v4, Lorg/conscrypt/ct/DigitallySigned$HashAlgorithm;

    const/4 v5, 0x0

    sget-object v5, Lorg/junit/az/VQAQLthpAow;->MNKVH:Ljava/lang/String;

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lorg/conscrypt/ct/DigitallySigned$HashAlgorithm;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/conscrypt/ct/DigitallySigned$HashAlgorithm;->SHA256:Lorg/conscrypt/ct/DigitallySigned$HashAlgorithm;

    .line 34
    new-instance v5, Lorg/conscrypt/ct/DigitallySigned$HashAlgorithm;

    const-string v6, "SHA384"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lorg/conscrypt/ct/DigitallySigned$HashAlgorithm;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/conscrypt/ct/DigitallySigned$HashAlgorithm;->SHA384:Lorg/conscrypt/ct/DigitallySigned$HashAlgorithm;

    .line 35
    new-instance v6, Lorg/conscrypt/ct/DigitallySigned$HashAlgorithm;

    const-string v7, "SHA512"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lorg/conscrypt/ct/DigitallySigned$HashAlgorithm;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lorg/conscrypt/ct/DigitallySigned$HashAlgorithm;->SHA512:Lorg/conscrypt/ct/DigitallySigned$HashAlgorithm;

    .line 28
    filled-new-array/range {v0 .. v6}, [Lorg/conscrypt/ct/DigitallySigned$HashAlgorithm;

    move-result-object v0

    sput-object v0, Lorg/conscrypt/ct/DigitallySigned$HashAlgorithm;->$VALUES:[Lorg/conscrypt/ct/DigitallySigned$HashAlgorithm;

    .line 37
    invoke-static {}, Lorg/conscrypt/ct/DigitallySigned$HashAlgorithm;->values()[Lorg/conscrypt/ct/DigitallySigned$HashAlgorithm;

    move-result-object v0

    sput-object v0, Lorg/conscrypt/ct/DigitallySigned$HashAlgorithm;->values:[Lorg/conscrypt/ct/DigitallySigned$HashAlgorithm;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(I)Lorg/conscrypt/ct/DigitallySigned$HashAlgorithm;
    .locals 4

    .line 40
    :try_start_0
    sget-object v0, Lorg/conscrypt/ct/DigitallySigned$HashAlgorithm;->values:[Lorg/conscrypt/ct/DigitallySigned$HashAlgorithm;

    aget-object p0, v0, p0

    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    .line 42
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid hash algorithm "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/conscrypt/ct/DigitallySigned$HashAlgorithm;
    .locals 1

    .line 28
    const-class v0, Lorg/conscrypt/ct/DigitallySigned$HashAlgorithm;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/conscrypt/ct/DigitallySigned$HashAlgorithm;

    return-object p0
.end method

.method public static values()[Lorg/conscrypt/ct/DigitallySigned$HashAlgorithm;
    .locals 1

    .line 28
    sget-object v0, Lorg/conscrypt/ct/DigitallySigned$HashAlgorithm;->$VALUES:[Lorg/conscrypt/ct/DigitallySigned$HashAlgorithm;

    invoke-virtual {v0}, [Lorg/conscrypt/ct/DigitallySigned$HashAlgorithm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/conscrypt/ct/DigitallySigned$HashAlgorithm;

    return-object v0
.end method
