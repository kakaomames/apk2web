.class public Lcom/mojang/minecraftpe/Minecraft_Market;
.super Lcom/mojang/minecraftpe/MainActivity;
.source "Minecraft_Market.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/mojang/minecraftpe/MainActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public buyGame()V
    .locals 3

    .line 9
    const-string v0, "market://details?id=com.mojang.minecraftpe"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 10
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 11
    invoke-virtual {p0, v1}, Lcom/mojang/minecraftpe/Minecraft_Market;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
