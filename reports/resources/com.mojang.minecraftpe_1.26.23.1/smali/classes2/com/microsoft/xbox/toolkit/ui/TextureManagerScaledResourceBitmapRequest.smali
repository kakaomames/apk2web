.class public Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledResourceBitmapRequest;
.super Ljava/lang/Object;
.source "TextureManagerScaledResourceBitmapRequest.java"


# instance fields
.field public final bindingOption:Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;

.field public final resourceId:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 8
    new-instance v0, Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;

    invoke-direct {v0}, Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledResourceBitmapRequest;-><init>(ILcom/microsoft/xbox/toolkit/ui/TextureBindingOption;)V

    return-void
.end method

.method public constructor <init>(ILcom/microsoft/xbox/toolkit/ui/TextureBindingOption;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledResourceBitmapRequest;->resourceId:I

    .line 14
    iput-object p2, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledResourceBitmapRequest;->bindingOption:Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 23
    :cond_0
    instance-of v1, p1, Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledResourceBitmapRequest;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 27
    :cond_1
    check-cast p1, Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledResourceBitmapRequest;

    .line 28
    iget v1, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledResourceBitmapRequest;->resourceId:I

    iget v3, p1, Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledResourceBitmapRequest;->resourceId:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledResourceBitmapRequest;->bindingOption:Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;

    iget-object p1, p1, Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledResourceBitmapRequest;->bindingOption:Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;

    invoke-virtual {v1, p1}, Lcom/microsoft/xbox/toolkit/ui/TextureBindingOption;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 34
    iget v0, p0, Lcom/microsoft/xbox/toolkit/ui/TextureManagerScaledResourceBitmapRequest;->resourceId:I

    return v0
.end method
