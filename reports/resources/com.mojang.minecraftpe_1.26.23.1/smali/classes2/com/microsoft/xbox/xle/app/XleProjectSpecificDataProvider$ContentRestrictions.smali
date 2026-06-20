.class Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider$ContentRestrictions;
.super Ljava/lang/Object;
.source "XleProjectSpecificDataProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContentRestrictions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider$ContentRestrictions$Data;
    }
.end annotation


# instance fields
.field public data:Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider$ContentRestrictions$Data;

.field final synthetic this$0:Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;

.field public version:I


# direct methods
.method public constructor <init>(Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;Ljava/lang/String;IZ)V
    .locals 0

    .line 466
    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider$ContentRestrictions;->this$0:Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x2

    .line 463
    iput p1, p0, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider$ContentRestrictions;->version:I

    .line 467
    new-instance p1, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider$ContentRestrictions$Data;

    invoke-direct {p1, p0}, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider$ContentRestrictions$Data;-><init>(Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider$ContentRestrictions;)V

    iput-object p1, p0, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider$ContentRestrictions;->data:Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider$ContentRestrictions$Data;

    .line 468
    iput-object p2, p1, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider$ContentRestrictions$Data;->geographicRegion:Ljava/lang/String;

    .line 469
    iget-object p1, p0, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider$ContentRestrictions;->data:Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider$ContentRestrictions$Data;

    iput p3, p1, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider$ContentRestrictions$Data;->preferredAgeRating:I

    iput p3, p1, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider$ContentRestrictions$Data;->maxAgeRating:I

    .line 470
    iget-object p1, p0, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider$ContentRestrictions;->data:Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider$ContentRestrictions$Data;

    iput-boolean p4, p1, Lcom/microsoft/xbox/xle/app/XleProjectSpecificDataProvider$ContentRestrictions$Data;->restrictPromotionalContent:Z

    return-void
.end method
