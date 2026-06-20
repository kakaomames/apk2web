.class public Lcom/microsoft/xbox/service/network/managers/ProfilePreferredColor;
.super Ljava/lang/Object;
.source "ProfilePreferredColor.java"


# instance fields
.field private primary:I

.field private primaryColorString:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "primaryColor"
    .end annotation
.end field

.field private secondary:I

.field private secondaryColorString:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "secondaryColor"
    .end annotation
.end field

.field private tertiary:I

.field private tertiaryColorString:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "tertiaryColor"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 7
    iput v0, p0, Lcom/microsoft/xbox/service/network/managers/ProfilePreferredColor;->primary:I

    .line 8
    iput v0, p0, Lcom/microsoft/xbox/service/network/managers/ProfilePreferredColor;->secondary:I

    .line 9
    iput v0, p0, Lcom/microsoft/xbox/service/network/managers/ProfilePreferredColor;->tertiary:I

    return-void
.end method

.method public static convertColorFromString(Ljava/lang/String;)I
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 50
    :cond_0
    const-string v0, "#"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 51
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_1
    const/16 v0, 0x10

    .line 53
    invoke-static {p0, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0

    shr-int/lit8 v0, p0, 0x18

    if-nez v0, :cond_2

    const/high16 v0, -0x1000000

    or-int/2addr p0, v0

    :cond_2
    return p0
.end method


# virtual methods
.method public getPrimaryColor()I
    .locals 1

    .line 21
    iget v0, p0, Lcom/microsoft/xbox/service/network/managers/ProfilePreferredColor;->primary:I

    if-gez v0, :cond_0

    .line 22
    iget-object v0, p0, Lcom/microsoft/xbox/service/network/managers/ProfilePreferredColor;->primaryColorString:Ljava/lang/String;

    invoke-static {v0}, Lcom/microsoft/xbox/service/network/managers/ProfilePreferredColor;->convertColorFromString(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/microsoft/xbox/service/network/managers/ProfilePreferredColor;->primary:I

    .line 25
    :cond_0
    iget v0, p0, Lcom/microsoft/xbox/service/network/managers/ProfilePreferredColor;->primary:I

    return v0
.end method

.method public getSecondaryColor()I
    .locals 1

    .line 29
    iget v0, p0, Lcom/microsoft/xbox/service/network/managers/ProfilePreferredColor;->secondary:I

    if-gez v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/microsoft/xbox/service/network/managers/ProfilePreferredColor;->secondaryColorString:Ljava/lang/String;

    invoke-static {v0}, Lcom/microsoft/xbox/service/network/managers/ProfilePreferredColor;->convertColorFromString(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/microsoft/xbox/service/network/managers/ProfilePreferredColor;->secondary:I

    .line 33
    :cond_0
    iget v0, p0, Lcom/microsoft/xbox/service/network/managers/ProfilePreferredColor;->secondary:I

    return v0
.end method

.method public getTertiaryColor()I
    .locals 1

    .line 37
    iget v0, p0, Lcom/microsoft/xbox/service/network/managers/ProfilePreferredColor;->tertiary:I

    if-gez v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/microsoft/xbox/service/network/managers/ProfilePreferredColor;->tertiaryColorString:Ljava/lang/String;

    invoke-static {v0}, Lcom/microsoft/xbox/service/network/managers/ProfilePreferredColor;->convertColorFromString(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/microsoft/xbox/service/network/managers/ProfilePreferredColor;->tertiary:I

    .line 41
    :cond_0
    iget v0, p0, Lcom/microsoft/xbox/service/network/managers/ProfilePreferredColor;->tertiary:I

    return v0
.end method
