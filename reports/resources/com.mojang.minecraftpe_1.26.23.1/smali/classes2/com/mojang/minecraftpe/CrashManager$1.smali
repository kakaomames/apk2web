.class public Lcom/mojang/minecraftpe/CrashManager$1;
.super Ljava/lang/Object;
.source "CrashManager.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mojang/minecraftpe/CrashManager;->installGlobalExceptionHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/mojang/minecraftpe/CrashManager;


# direct methods
.method public constructor <init>(Lcom/mojang/minecraftpe/CrashManager;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/mojang/minecraftpe/CrashManager$1;->this$0:Lcom/mojang/minecraftpe/CrashManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/mojang/minecraftpe/CrashManager$1;->this$0:Lcom/mojang/minecraftpe/CrashManager;

    invoke-static {v0, p1, p2}, Lcom/mojang/minecraftpe/CrashManager;->-$$Nest$mhandleUncaughtException(Lcom/mojang/minecraftpe/CrashManager;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method
