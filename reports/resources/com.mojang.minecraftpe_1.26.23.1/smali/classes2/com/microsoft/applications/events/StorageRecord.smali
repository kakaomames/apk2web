.class public Lcom/microsoft/applications/events/StorageRecord;
.super Ljava/lang/Object;
.source "StorageRecord.java"


# static fields
.field public static final EventLatency_Normal:I = 0x1

.field public static final EventLatency_RealTime:I = 0x3

.field public static final EventLatency_Unspecified:I = -0x1

.field public static final EventPersistence_Normal:I = 0x1


# instance fields
.field public blob:[B

.field public id:J

.field public latency:I

.field public persistence:I

.field public reservedUntil:J

.field public retryCount:I

.field public tenantToken:Ljava/lang/String;

.field public timestamp:J


# direct methods
.method public constructor <init>(JLjava/lang/String;IIJIJ[B)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-wide p1, p0, Lcom/microsoft/applications/events/StorageRecord;->id:J

    .line 34
    iput-object p3, p0, Lcom/microsoft/applications/events/StorageRecord;->tenantToken:Ljava/lang/String;

    .line 35
    iput p4, p0, Lcom/microsoft/applications/events/StorageRecord;->latency:I

    .line 36
    iput p5, p0, Lcom/microsoft/applications/events/StorageRecord;->persistence:I

    .line 37
    iput-wide p6, p0, Lcom/microsoft/applications/events/StorageRecord;->timestamp:J

    .line 38
    iput p8, p0, Lcom/microsoft/applications/events/StorageRecord;->retryCount:I

    .line 39
    iput-wide p9, p0, Lcom/microsoft/applications/events/StorageRecord;->reservedUntil:J

    .line 40
    iput-object p11, p0, Lcom/microsoft/applications/events/StorageRecord;->blob:[B

    return-void
.end method
