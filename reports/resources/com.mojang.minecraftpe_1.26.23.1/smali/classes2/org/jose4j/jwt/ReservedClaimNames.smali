.class public Lorg/jose4j/jwt/ReservedClaimNames;
.super Ljava/lang/Object;
.source "ReservedClaimNames.java"


# static fields
.field public static final AUDIENCE:Ljava/lang/String; = "aud"

.field public static final EXPIRATION_TIME:Ljava/lang/String; = "exp"

.field public static final INITIAL_REGISTERED_CLAIM_NAMES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final ISSUED_AT:Ljava/lang/String; = "iat"

.field public static final ISSUER:Ljava/lang/String; = "iss"

.field public static final JWT_ID:Ljava/lang/String; = "jti"

.field public static final NOT_BEFORE:Ljava/lang/String; = "nbf"

.field public static final SUBJECT:Ljava/lang/String; = "sub"

.field public static final TYPE:Ljava/lang/String; = "typ"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 36
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "iss"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "sub"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "aud"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "exp"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "nbf"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "iat"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "jti"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lorg/jose4j/jwt/ReservedClaimNames;->INITIAL_REGISTERED_CLAIM_NAMES:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
