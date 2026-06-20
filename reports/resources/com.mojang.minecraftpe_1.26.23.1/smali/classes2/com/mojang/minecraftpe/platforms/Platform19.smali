.class public Lcom/mojang/minecraftpe/platforms/Platform19;
.super Lcom/mojang/minecraftpe/platforms/Platform9;
.source "Platform19.java"


# instance fields
.field private decorViewSettings:Ljava/lang/Runnable;

.field private decoreView:Landroid/view/View;

.field private eventHandler:Landroid/os/Handler;


# direct methods
.method static bridge synthetic -$$Nest$fgetdecorViewSettings(Lcom/mojang/minecraftpe/platforms/Platform19;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/mojang/minecraftpe/platforms/Platform19;->decorViewSettings:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdecoreView(Lcom/mojang/minecraftpe/platforms/Platform19;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/mojang/minecraftpe/platforms/Platform19;->decoreView:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgeteventHandler(Lcom/mojang/minecraftpe/platforms/Platform19;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/mojang/minecraftpe/platforms/Platform19;->eventHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/mojang/minecraftpe/platforms/Platform9;-><init>()V

    if-eqz p1, :cond_0

    .line 13
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/mojang/minecraftpe/platforms/Platform19;->eventHandler:Landroid/os/Handler;

    :cond_0
    return-void
.end method


# virtual methods
.method public onAppStart(Landroid/view/View;)V
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/mojang/minecraftpe/platforms/Platform19;->eventHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    .line 23
    :cond_0
    iput-object p1, p0, Lcom/mojang/minecraftpe/platforms/Platform19;->decoreView:Landroid/view/View;

    .line 24
    new-instance v0, Lcom/mojang/minecraftpe/platforms/Platform19$1;

    invoke-direct {v0, p0}, Lcom/mojang/minecraftpe/platforms/Platform19$1;-><init>(Lcom/mojang/minecraftpe/platforms/Platform19;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 33
    new-instance p1, Lcom/mojang/minecraftpe/platforms/Platform19$2;

    invoke-direct {p1, p0}, Lcom/mojang/minecraftpe/platforms/Platform19$2;-><init>(Lcom/mojang/minecraftpe/platforms/Platform19;)V

    iput-object p1, p0, Lcom/mojang/minecraftpe/platforms/Platform19;->decorViewSettings:Ljava/lang/Runnable;

    .line 46
    iget-object v0, p0, Lcom/mojang/minecraftpe/platforms/Platform19;->eventHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onViewFocusChanged(Z)V
    .locals 3

    .line 50
    iget-object v0, p0, Lcom/mojang/minecraftpe/platforms/Platform19;->eventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 51
    iget-object p1, p0, Lcom/mojang/minecraftpe/platforms/Platform19;->decorViewSettings:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public onVolumePressed()V
    .locals 0

    return-void
.end method
