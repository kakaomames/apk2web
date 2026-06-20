.class public Lcom/mojang/minecraftpe/MainActivity$18;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mojang/minecraftpe/MainActivity;->createAlertDialog(ZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/mojang/minecraftpe/MainActivity;


# direct methods
.method public constructor <init>(Lcom/mojang/minecraftpe/MainActivity;)V
    .locals 0

    .line 1027
    iput-object p1, p0, Lcom/mojang/minecraftpe/MainActivity$18;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1028
    iget-object p1, p0, Lcom/mojang/minecraftpe/MainActivity$18;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    invoke-static {p1}, Lcom/mojang/minecraftpe/MainActivity;->-$$Nest$monDialogCanceled(Lcom/mojang/minecraftpe/MainActivity;)V

    return-void
.end method
