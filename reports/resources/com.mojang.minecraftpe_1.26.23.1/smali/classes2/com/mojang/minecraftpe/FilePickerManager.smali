.class public Lcom/mojang/minecraftpe/FilePickerManager;
.super Ljava/lang/Object;
.source "FilePickerManager.java"

# interfaces
.implements Lcom/mojang/minecraftpe/ActivityListener;


# static fields
.field public static final PICK_DIRECTORY_REQUEST_CODE:I


# instance fields
.field public mHandler:Lcom/mojang/minecraftpe/FilePickerManagerHandler;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 14
    const-string v0, "PickDirectoryRequest"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sput v0, Lcom/mojang/minecraftpe/FilePickerManager;->PICK_DIRECTORY_REQUEST_CODE:I

    return-void
.end method

.method public constructor <init>(Lcom/mojang/minecraftpe/FilePickerManagerHandler;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/mojang/minecraftpe/FilePickerManager;->mHandler:Lcom/mojang/minecraftpe/FilePickerManagerHandler;

    return-void
.end method

.method public static native nativeDirectoryPickResult(Ljava/lang/String;Ljava/lang/String;)V
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 39
    sget v0, Lcom/mojang/minecraftpe/FilePickerManager;->PICK_DIRECTORY_REQUEST_CODE:I

    if-ne p1, v0, :cond_1

    const/4 p1, -0x1

    .line 40
    const-string v0, ""

    if-ne p2, p1, :cond_0

    .line 41
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 42
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/mojang/minecraftpe/FilePickerManager;->nativeDirectoryPickResult(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 45
    :cond_0
    const-string p1, "No directory selected"

    invoke-static {v0, p1}, Lcom/mojang/minecraftpe/FilePickerManager;->nativeDirectoryPickResult(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method public onStop()V
    .locals 0

    return-void
.end method

.method public pickDirectory(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 23
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.OPEN_DOCUMENT_TREE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 25
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 26
    const-string v1, "android.provider.extra.PROMPT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    if-eqz p2, :cond_1

    .line 29
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 30
    const-string p1, "android.provider.extra.INITIAL_URI"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 33
    :cond_1
    iget-object p1, p0, Lcom/mojang/minecraftpe/FilePickerManager;->mHandler:Lcom/mojang/minecraftpe/FilePickerManagerHandler;

    sget p2, Lcom/mojang/minecraftpe/FilePickerManager;->PICK_DIRECTORY_REQUEST_CODE:I

    invoke-interface {p1, v0, p2}, Lcom/mojang/minecraftpe/FilePickerManagerHandler;->startPickerActivity(Landroid/content/Intent;I)V

    return-void
.end method
