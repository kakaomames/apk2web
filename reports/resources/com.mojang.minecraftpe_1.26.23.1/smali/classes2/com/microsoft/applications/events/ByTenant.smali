.class public Lcom/microsoft/applications/events/ByTenant;
.super Ljava/lang/Object;
.source "ByTenant.java"


# instance fields
.field public count:J

.field public tenantToken:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Long;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/microsoft/applications/events/ByTenant;->tenantToken:Ljava/lang/String;

    .line 17
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/microsoft/applications/events/ByTenant;->count:J

    return-void
.end method
