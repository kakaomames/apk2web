.class public Lcom/microsoft/xbox/idp/util/FragmentLoaderKey;
.super Ljava/lang/Object;
.source "FragmentLoaderKey.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/microsoft/xbox/idp/util/FragmentLoaderKey;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final className:Ljava/lang/String;

.field private final loaderId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    new-instance v0, Lcom/microsoft/xbox/idp/util/FragmentLoaderKey$1;

    invoke-direct {v0}, Lcom/microsoft/xbox/idp/util/FragmentLoaderKey$1;-><init>()V

    sput-object v0, Lcom/microsoft/xbox/idp/util/FragmentLoaderKey;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/xbox/idp/util/FragmentLoaderKey;->className:Ljava/lang/String;

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/microsoft/xbox/idp/util/FragmentLoaderKey;->loaderId:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Fragment;",
            ">;I)V"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/microsoft/xbox/idp/util/FragmentLoaderKey;->className:Ljava/lang/String;

    .line 17
    iput p2, p0, Lcom/microsoft/xbox/idp/util/FragmentLoaderKey;->loaderId:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 40
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 42
    :cond_1
    check-cast p1, Lcom/microsoft/xbox/idp/util/FragmentLoaderKey;

    .line 44
    iget v1, p0, Lcom/microsoft/xbox/idp/util/FragmentLoaderKey;->loaderId:I

    iget v2, p1, Lcom/microsoft/xbox/idp/util/FragmentLoaderKey;->loaderId:I

    if-eq v1, v2, :cond_2

    return v0

    .line 45
    :cond_2
    iget-object v0, p0, Lcom/microsoft/xbox/idp/util/FragmentLoaderKey;->className:Ljava/lang/String;

    iget-object p1, p1, Lcom/microsoft/xbox/idp/util/FragmentLoaderKey;->className:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/microsoft/xbox/idp/util/FragmentLoaderKey;->className:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 52
    iget v1, p0, Lcom/microsoft/xbox/idp/util/FragmentLoaderKey;->loaderId:I

    add-int/2addr v0, v1

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 63
    iget-object p2, p0, Lcom/microsoft/xbox/idp/util/FragmentLoaderKey;->className:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 64
    iget p2, p0, Lcom/microsoft/xbox/idp/util/FragmentLoaderKey;->loaderId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
