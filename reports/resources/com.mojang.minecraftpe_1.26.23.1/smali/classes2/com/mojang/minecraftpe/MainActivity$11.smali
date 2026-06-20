.class public Lcom/mojang/minecraftpe/MainActivity$11;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mojang/minecraftpe/MainActivity;->showKeyboard(Ljava/lang/String;IZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/mojang/minecraftpe/MainActivity;

.field public final synthetic val$fIsMultiline:Z

.field public final synthetic val$fLimitInput:Z

.field public final synthetic val$fMaxLength:I

.field public final synthetic val$fNumbersOnly:Z

.field public final synthetic val$startText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/mojang/minecraftpe/MainActivity;Ljava/lang/String;IZZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 896
    iput-object p1, p0, Lcom/mojang/minecraftpe/MainActivity$11;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    iput-object p2, p0, Lcom/mojang/minecraftpe/MainActivity$11;->val$startText:Ljava/lang/String;

    iput p3, p0, Lcom/mojang/minecraftpe/MainActivity$11;->val$fMaxLength:I

    iput-boolean p4, p0, Lcom/mojang/minecraftpe/MainActivity$11;->val$fLimitInput:Z

    iput-boolean p5, p0, Lcom/mojang/minecraftpe/MainActivity$11;->val$fNumbersOnly:Z

    iput-boolean p6, p0, Lcom/mojang/minecraftpe/MainActivity$11;->val$fIsMultiline:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 898
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity$11;->this$0:Lcom/mojang/minecraftpe/MainActivity;

    iget-object v1, p0, Lcom/mojang/minecraftpe/MainActivity$11;->val$startText:Ljava/lang/String;

    iget v2, p0, Lcom/mojang/minecraftpe/MainActivity$11;->val$fMaxLength:I

    iget-boolean v3, p0, Lcom/mojang/minecraftpe/MainActivity$11;->val$fLimitInput:Z

    iget-boolean v4, p0, Lcom/mojang/minecraftpe/MainActivity$11;->val$fNumbersOnly:Z

    iget-boolean v5, p0, Lcom/mojang/minecraftpe/MainActivity$11;->val$fIsMultiline:Z

    invoke-virtual/range {v0 .. v5}, Lcom/mojang/minecraftpe/MainActivity;->setupKeyboardViews(Ljava/lang/String;IZZZ)V

    return-void
.end method
