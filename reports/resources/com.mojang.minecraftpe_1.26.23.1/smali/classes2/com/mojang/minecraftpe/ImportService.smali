.class public Lcom/mojang/minecraftpe/ImportService;
.super Landroid/app/Service;
.source "ImportService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mojang/minecraftpe/ImportService$IncomingHandler;
    }
.end annotation


# static fields
.field public static final MSG_CORRELATION_CHECK:I = 0x2a0

.field public static final MSG_CORRELATION_RESPONSE:I = 0x345


# instance fields
.field public final mMessenger:Landroid/os/Messenger;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 15
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 56
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/mojang/minecraftpe/ImportService$IncomingHandler;

    invoke-direct {v1, p0}, Lcom/mojang/minecraftpe/ImportService$IncomingHandler;-><init>(Lcom/mojang/minecraftpe/ImportService;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/mojang/minecraftpe/ImportService;->mMessenger:Landroid/os/Messenger;

    return-void
.end method

.method public static synthetic getBinder$001(Landroid/os/Messenger;)Landroid/os/IBinder;
    .locals 1

    invoke-virtual/range {p0 .. p0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 6

    const v2, 0x2

    new-array v1, v2, [Ljava/lang/Object;

    const v2, 0x0

    aput-object p0, v1, v2

    const v2, 0x1

    aput-object p1, v1, v2

    sget-object v0, Lorg/spongycastle/asn1/gnu/yVOW/UywjpnPgsVqFz;->iEHYRHOqFbUoe:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    return-object v0
.end method
