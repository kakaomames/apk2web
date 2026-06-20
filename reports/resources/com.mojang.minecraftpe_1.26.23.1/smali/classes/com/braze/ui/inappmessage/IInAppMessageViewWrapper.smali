.class public interface abstract Lcom/braze/ui/inappmessage/IInAppMessageViewWrapper;
.super Ljava/lang/Object;
.source "IInAppMessageViewWrapper.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008f\u0018\u00002\u00020\u0001J\u0008\u0010\r\u001a\u00020\u000eH&J\u0010\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u0011H&R\u0012\u0010\u0002\u001a\u00020\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005R\u0012\u0010\u0006\u001a\u00020\u0007X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\tR\u0012\u0010\n\u001a\u00020\u000bX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000c\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006\u0012\u00c0\u0006\u0001"
    }
    d2 = {
        "Lcom/braze/ui/inappmessage/IInAppMessageViewWrapper;",
        "",
        "inAppMessage",
        "Lcom/braze/models/inappmessage/IInAppMessage;",
        "getInAppMessage",
        "()Lcom/braze/models/inappmessage/IInAppMessage;",
        "inAppMessageView",
        "Landroid/view/View;",
        "getInAppMessageView",
        "()Landroid/view/View;",
        "isAnimatingClose",
        "",
        "()Z",
        "close",
        "",
        "open",
        "activity",
        "Landroid/app/Activity;",
        "android-sdk-ui_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract close()V
.end method

.method public abstract getInAppMessage()Lcom/braze/models/inappmessage/IInAppMessage;
.end method

.method public abstract getInAppMessageView()Landroid/view/View;
.end method

.method public abstract isAnimatingClose()Z
.end method

.method public abstract open(Landroid/app/Activity;)V
.end method
