.class public Lcom/microsoft/xbox/xle/anim/XLEMAASAnimationPackageNavigationManager;
.super Lcom/microsoft/xbox/toolkit/anim/MAASAnimation;
.source "XLEMAASAnimationPackageNavigationManager.java"


# annotations
.annotation runtime Lorg/simpleframework/xml/Root;
.end annotation


# instance fields
.field public backward:Lcom/microsoft/xbox/xle/anim/XLEMAASAnimationPackageDirection;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field public forward:Lcom/microsoft/xbox/xle/anim/XLEMAASAnimationPackageDirection;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/anim/MAASAnimation;-><init>()V

    return-void
.end method


# virtual methods
.method public compile(Lcom/microsoft/xbox/toolkit/anim/MAAS$MAASAnimationType;ZLandroid/view/View;)Lcom/microsoft/xbox/toolkit/anim/XLEAnimation;
    .locals 0

    if-eqz p2, :cond_0

    .line 21
    iget-object p2, p0, Lcom/microsoft/xbox/xle/anim/XLEMAASAnimationPackageNavigationManager;->backward:Lcom/microsoft/xbox/xle/anim/XLEMAASAnimationPackageDirection;

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/microsoft/xbox/xle/anim/XLEMAASAnimationPackageNavigationManager;->forward:Lcom/microsoft/xbox/xle/anim/XLEMAASAnimationPackageDirection;

    :goto_0
    if-nez p2, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 27
    :cond_1
    invoke-virtual {p2, p1, p3}, Lcom/microsoft/xbox/xle/anim/XLEMAASAnimationPackageDirection;->compile(Lcom/microsoft/xbox/toolkit/anim/MAAS$MAASAnimationType;Landroid/view/View;)Lcom/microsoft/xbox/toolkit/anim/XLEAnimation;

    move-result-object p1

    return-object p1
.end method
