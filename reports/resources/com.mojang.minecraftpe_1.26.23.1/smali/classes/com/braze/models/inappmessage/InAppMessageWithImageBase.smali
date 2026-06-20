.class public abstract Lcom/braze/models/inappmessage/InAppMessageWithImageBase;
.super Lcom/braze/models/inappmessage/InAppMessageBase;
.source "SourceFile"

# interfaces
.implements Lcom/braze/models/inappmessage/IInAppMessageWithImage;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/braze/models/inappmessage/InAppMessageWithImageBase$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0015\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\'\u0018\u0000 ,2\u00020\u00012\u00020\u0002:\u0001-B\t\u0008\u0014\u00a2\u0006\u0004\u0008\'\u0010\u001bB\u0019\u0008\u0016\u0012\u0006\u0010(\u001a\u00020\n\u0012\u0006\u0010*\u001a\u00020)\u00a2\u0006\u0004\u0008\'\u0010+J\u001c\u0010\u0007\u001a\u00020\u00062\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u0003H\u0016J\u000e\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0008H\u0016J\u0008\u0010\u000b\u001a\u00020\nH\u0016R$\u0010\r\u001a\u0004\u0018\u00010\u000c8\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0012\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R(\u0010\u0014\u001a\u00020\u00138\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0018\n\u0004\u0008\u0014\u0010\u0015\u0012\u0004\u0008\u001a\u0010\u001b\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R$\u0010\u001c\u001a\u0004\u0018\u00010\u00048\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001c\u0010\u001d\u001a\u0004\u0008\u001e\u0010\u001f\"\u0004\u0008 \u0010!R$\u0010\"\u001a\u0004\u0018\u00010\u00048\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0012\n\u0004\u0008\"\u0010\u001d\u001a\u0004\u0008#\u0010\u001f\"\u0004\u0008$\u0010!R\u0016\u0010&\u001a\u0004\u0018\u00010\u00048VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008%\u0010\u001f\u00a8\u0006."
    }
    d2 = {
        "Lcom/braze/models/inappmessage/InAppMessageWithImageBase;",
        "Lcom/braze/models/inappmessage/InAppMessageBase;",
        "Lcom/braze/models/inappmessage/IInAppMessageWithImage;",
        "",
        "",
        "remotePathToLocalAssetMap",
        "",
        "setLocalPrefetchedAssetPaths",
        "",
        "getRemoteAssetPathsForPrefetch",
        "Lorg/json/JSONObject;",
        "forJsonPut",
        "Landroid/graphics/Bitmap;",
        "bitmap",
        "Landroid/graphics/Bitmap;",
        "getBitmap",
        "()Landroid/graphics/Bitmap;",
        "setBitmap",
        "(Landroid/graphics/Bitmap;)V",
        "",
        "imageDownloadSuccessful",
        "Z",
        "getImageDownloadSuccessful",
        "()Z",
        "setImageDownloadSuccessful",
        "(Z)V",
        "getImageDownloadSuccessful$annotations",
        "()V",
        "localImageUrl",
        "Ljava/lang/String;",
        "getLocalImageUrl",
        "()Ljava/lang/String;",
        "setLocalImageUrl",
        "(Ljava/lang/String;)V",
        "remoteImageUrl",
        "getRemoteImageUrl",
        "setRemoteImageUrl",
        "getImageUrl",
        "imageUrl",
        "<init>",
        "jsonObject",
        "Lbo/app/y1;",
        "brazeManager",
        "(Lorg/json/JSONObject;Lbo/app/y1;)V",
        "Companion",
        "a",
        "android-sdk-base_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# static fields
.field public static final Companion:Lcom/braze/models/inappmessage/InAppMessageWithImageBase$a;

.field private static final REMOTE_IMAGE_URL:Ljava/lang/String; = "image_url"


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private imageDownloadSuccessful:Z

.field private localImageUrl:Ljava/lang/String;

.field private remoteImageUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/braze/models/inappmessage/InAppMessageWithImageBase$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/braze/models/inappmessage/InAppMessageWithImageBase$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/braze/models/inappmessage/InAppMessageWithImageBase;->Companion:Lcom/braze/models/inappmessage/InAppMessageWithImageBase$a;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/braze/models/inappmessage/InAppMessageBase;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;Lbo/app/y1;)V
    .locals 8

    const-string v0, "jsonObject"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "brazeManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0xc

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 2
    invoke-direct/range {v1 .. v7}, Lcom/braze/models/inappmessage/InAppMessageBase;-><init>(Lorg/json/JSONObject;Lbo/app/y1;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 3
    const-string p2, "image_url"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/braze/models/inappmessage/InAppMessageWithImageBase;->setRemoteImageUrl(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic getImageDownloadSuccessful$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public bridge synthetic forJsonPut()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/braze/models/inappmessage/InAppMessageWithImageBase;->forJsonPut()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public forJsonPut()Lorg/json/JSONObject;
    .locals 3

    .line 2
    invoke-virtual {p0}, Lcom/braze/models/inappmessage/InAppMessageBase;->getJsonObject()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 4
    :cond_0
    invoke-super {p0}, Lcom/braze/models/inappmessage/InAppMessageBase;->forJsonPut()Lorg/json/JSONObject;

    move-result-object v0

    .line 6
    :try_start_0
    const-string v1, "image_url"

    invoke-virtual {p0}, Lcom/braze/models/inappmessage/InAppMessageWithImageBase;->getRemoteImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/braze/models/inappmessage/InAppMessageWithImageBase;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getImageDownloadSuccessful()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/braze/models/inappmessage/InAppMessageWithImageBase;->imageDownloadSuccessful:Z

    return v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/braze/models/inappmessage/InAppMessageWithImageBase;->getRemoteImageUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocalImageUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/braze/models/inappmessage/InAppMessageWithImageBase;->localImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getRemoteAssetPathsForPrefetch()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/braze/models/inappmessage/InAppMessageWithImageBase;->getRemoteImageUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method

.method public getRemoteImageUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/braze/models/inappmessage/InAppMessageWithImageBase;->remoteImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/braze/models/inappmessage/InAppMessageWithImageBase;->bitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setImageDownloadSuccessful(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/braze/models/inappmessage/InAppMessageWithImageBase;->imageDownloadSuccessful:Z

    return-void
.end method

.method public setLocalImageUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/braze/models/inappmessage/InAppMessageWithImageBase;->localImageUrl:Ljava/lang/String;

    return-void
.end method

.method public setLocalPrefetchedAssetPaths(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "remotePathToLocalAssetMap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    const/4 v0, 0x0

    .line 36
    new-array v1, v0, [Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, [Ljava/lang/String;

    .line 37
    aget-object p1, p1, v0

    invoke-virtual {p0, p1}, Lcom/braze/models/inappmessage/InAppMessageWithImageBase;->setLocalImageUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 71
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public setRemoteImageUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/braze/models/inappmessage/InAppMessageWithImageBase;->remoteImageUrl:Ljava/lang/String;

    return-void
.end method
