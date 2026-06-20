.class public Lcom/microsoft/xbox/xle/anim/XLEMAASAnimationPackageDirection;
.super Lcom/microsoft/xbox/toolkit/anim/MAASAnimation;
.source "XLEMAASAnimationPackageDirection.java"


# annotations
.annotation runtime Lorg/simpleframework/xml/Root;
.end annotation


# instance fields
.field public inAnimation:Lcom/microsoft/xbox/xle/anim/XLEMAASAnimation;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field public outAnimation:Lcom/microsoft/xbox/xle/anim/XLEMAASAnimation;
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
.method public compile(Lcom/microsoft/xbox/toolkit/anim/MAAS$MAASAnimationType;Landroid/view/View;)Lcom/microsoft/xbox/toolkit/anim/XLEAnimation;
    .locals 1

    .line 21
    sget-object v0, Lcom/microsoft/xbox/toolkit/anim/MAAS$MAASAnimationType;->ANIMATE_IN:Lcom/microsoft/xbox/toolkit/anim/MAAS$MAASAnimationType;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/microsoft/xbox/xle/anim/XLEMAASAnimationPackageDirection;->inAnimation:Lcom/microsoft/xbox/xle/anim/XLEMAASAnimation;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/microsoft/xbox/xle/anim/XLEMAASAnimationPackageDirection;->outAnimation:Lcom/microsoft/xbox/xle/anim/XLEMAASAnimation;

    :goto_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 27
    :cond_1
    invoke-virtual {p1, p2}, Lcom/microsoft/xbox/xle/anim/XLEMAASAnimation;->compile(Landroid/view/View;)Lcom/microsoft/xbox/toolkit/anim/XLEAnimation;

    move-result-object p1

    return-object p1
.end method
