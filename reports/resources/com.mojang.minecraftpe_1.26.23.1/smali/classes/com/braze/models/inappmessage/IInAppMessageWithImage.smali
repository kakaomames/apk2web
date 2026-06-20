.class public interface abstract Lcom/braze/models/inappmessage/IInAppMessageWithImage;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0008\n\u0008g\u0018\u00002\u00020\u0001R\u001a\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0004\u0010\u0005\"\u0004\u0008\u0006\u0010\u0007R\u001e\u0010\u0008\u001a\u00020\tX\u00a6\u000e\u00a2\u0006\u0012\u0012\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u0014\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u0013R\u001a\u0010\u0014\u001a\u0004\u0018\u00010\u0011X\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0015\u0010\u0013\"\u0004\u0008\u0016\u0010\u0017R\u001a\u0010\u0018\u001a\u0004\u0018\u00010\u0011X\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0019\u0010\u0013\"\u0004\u0008\u001a\u0010\u0017\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006\u001b\u00c0\u0006\u0001"
    }
    d2 = {
        "Lcom/braze/models/inappmessage/IInAppMessageWithImage;",
        "",
        "bitmap",
        "Landroid/graphics/Bitmap;",
        "getBitmap",
        "()Landroid/graphics/Bitmap;",
        "setBitmap",
        "(Landroid/graphics/Bitmap;)V",
        "imageDownloadSuccessful",
        "",
        "getImageDownloadSuccessful$annotations",
        "()V",
        "getImageDownloadSuccessful",
        "()Z",
        "setImageDownloadSuccessful",
        "(Z)V",
        "imageUrl",
        "",
        "getImageUrl",
        "()Ljava/lang/String;",
        "localImageUrl",
        "getLocalImageUrl",
        "setLocalImageUrl",
        "(Ljava/lang/String;)V",
        "remoteImageUrl",
        "getRemoteImageUrl",
        "setRemoteImageUrl",
        "android-sdk-base_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static synthetic getImageDownloadSuccessful$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public abstract getBitmap()Landroid/graphics/Bitmap;
.end method

.method public abstract getImageDownloadSuccessful()Z
.end method

.method public abstract getImageUrl()Ljava/lang/String;
.end method

.method public abstract getLocalImageUrl()Ljava/lang/String;
.end method

.method public abstract getRemoteImageUrl()Ljava/lang/String;
.end method

.method public abstract setBitmap(Landroid/graphics/Bitmap;)V
.end method

.method public abstract setImageDownloadSuccessful(Z)V
.end method

.method public abstract setLocalImageUrl(Ljava/lang/String;)V
.end method

.method public abstract setRemoteImageUrl(Ljava/lang/String;)V
.end method
