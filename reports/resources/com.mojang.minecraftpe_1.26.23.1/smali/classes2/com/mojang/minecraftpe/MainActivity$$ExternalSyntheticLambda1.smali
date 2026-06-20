.class public final synthetic Lcom/mojang/minecraftpe/MainActivity$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/activity/result/ActivityResultCallback;


# instance fields
.field public final synthetic f$0:Lcom/mojang/minecraftpe/MainActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/mojang/minecraftpe/MainActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mojang/minecraftpe/MainActivity$$ExternalSyntheticLambda1;->f$0:Lcom/mojang/minecraftpe/MainActivity;

    return-void
.end method


# virtual methods
.method public final onActivityResult(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity$$ExternalSyntheticLambda1;->f$0:Lcom/mojang/minecraftpe/MainActivity;

    check-cast p1, Landroid/net/Uri;

    invoke-static {v0, p1}, Lcom/mojang/minecraftpe/MainActivity;->$r8$lambda$caNnF5ii_Edf1hL6VoD5wkHUr7w(Lcom/mojang/minecraftpe/MainActivity;Landroid/net/Uri;)V

    return-void
.end method
