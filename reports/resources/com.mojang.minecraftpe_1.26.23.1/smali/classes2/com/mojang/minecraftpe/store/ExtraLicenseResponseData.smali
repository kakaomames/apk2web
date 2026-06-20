.class public Lcom/mojang/minecraftpe/store/ExtraLicenseResponseData;
.super Ljava/lang/Object;
.source "ExtraLicenseResponseData.java"


# instance fields
.field private mRetryAttempts:J

.field private mRetryUntilTime:J

.field private mValidationTime:J


# direct methods
.method public constructor <init>(JJJ)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-wide p1, p0, Lcom/mojang/minecraftpe/store/ExtraLicenseResponseData;->mValidationTime:J

    .line 10
    iput-wide p3, p0, Lcom/mojang/minecraftpe/store/ExtraLicenseResponseData;->mRetryUntilTime:J

    .line 11
    iput-wide p5, p0, Lcom/mojang/minecraftpe/store/ExtraLicenseResponseData;->mRetryAttempts:J

    return-void
.end method


# virtual methods
.method public getRetryAttempts()J
    .locals 2

    .line 23
    iget-wide v0, p0, Lcom/mojang/minecraftpe/store/ExtraLicenseResponseData;->mRetryAttempts:J

    return-wide v0
.end method

.method public getRetryUntilTime()J
    .locals 2

    .line 19
    iget-wide v0, p0, Lcom/mojang/minecraftpe/store/ExtraLicenseResponseData;->mRetryUntilTime:J

    return-wide v0
.end method

.method public getValidationTime()J
    .locals 2

    .line 15
    iget-wide v0, p0, Lcom/mojang/minecraftpe/store/ExtraLicenseResponseData;->mValidationTime:J

    return-wide v0
.end method
