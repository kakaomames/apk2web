.class public Lcom/google/androidgamesdk/GameActivity$InputEnabledSurfaceView;
.super Landroid/view/SurfaceView;
.source "GameActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/androidgamesdk/GameActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "InputEnabledSurfaceView"
.end annotation


# instance fields
.field mInputConnection:Lcom/google/androidgamesdk/gametextinput/InputConnection;

.field final synthetic this$0:Lcom/google/androidgamesdk/GameActivity;


# direct methods
.method public constructor <init>(Lcom/google/androidgamesdk/GameActivity;Lcom/google/androidgamesdk/GameActivity;)V
    .locals 3

    .line 583
    iput-object p1, p0, Lcom/google/androidgamesdk/GameActivity$InputEnabledSurfaceView;->this$0:Lcom/google/androidgamesdk/GameActivity;

    .line 584
    invoke-direct {p0, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 585
    invoke-virtual {p2}, Lcom/google/androidgamesdk/GameActivity;->getImeEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object p1

    .line 586
    new-instance v0, Lcom/google/androidgamesdk/gametextinput/InputConnection;

    new-instance v1, Lcom/google/androidgamesdk/gametextinput/Settings;

    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-direct {v1, p1, v2}, Lcom/google/androidgamesdk/gametextinput/Settings;-><init>(Landroid/view/inputmethod/EditorInfo;Z)V

    invoke-direct {v0, p2, p0, v1}, Lcom/google/androidgamesdk/gametextinput/InputConnection;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/google/androidgamesdk/gametextinput/Settings;)V

    .line 590
    invoke-virtual {v0, p2}, Lcom/google/androidgamesdk/gametextinput/InputConnection;->setListener(Lcom/google/androidgamesdk/gametextinput/Listener;)Lcom/google/androidgamesdk/gametextinput/InputConnection;

    move-result-object p1

    iput-object p1, p0, Lcom/google/androidgamesdk/GameActivity$InputEnabledSurfaceView;->mInputConnection:Lcom/google/androidgamesdk/gametextinput/InputConnection;

    return-void
.end method


# virtual methods
.method public getEditorInfo()Landroid/view/inputmethod/EditorInfo;
    .locals 1

    .line 605
    iget-object v0, p0, Lcom/google/androidgamesdk/GameActivity$InputEnabledSurfaceView;->mInputConnection:Lcom/google/androidgamesdk/gametextinput/InputConnection;

    invoke-virtual {v0}, Lcom/google/androidgamesdk/gametextinput/InputConnection;->getEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 0

    .line 581
    invoke-virtual {p0, p1}, Lcom/google/androidgamesdk/GameActivity$InputEnabledSurfaceView;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Lcom/google/androidgamesdk/gametextinput/InputConnection;

    move-result-object p1

    return-object p1
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Lcom/google/androidgamesdk/gametextinput/InputConnection;
    .locals 1

    if-eqz p1, :cond_0

    .line 599
    iget-object v0, p0, Lcom/google/androidgamesdk/GameActivity$InputEnabledSurfaceView;->mInputConnection:Lcom/google/androidgamesdk/gametextinput/InputConnection;

    invoke-virtual {v0}, Lcom/google/androidgamesdk/gametextinput/InputConnection;->getEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/androidgamesdk/gametextinput/GameTextInput;->copyEditorInfo(Landroid/view/inputmethod/EditorInfo;Landroid/view/inputmethod/EditorInfo;)V

    .line 601
    :cond_0
    iget-object p1, p0, Lcom/google/androidgamesdk/GameActivity$InputEnabledSurfaceView;->mInputConnection:Lcom/google/androidgamesdk/gametextinput/InputConnection;

    return-object p1
.end method

.method public setEditorInfo(Landroid/view/inputmethod/EditorInfo;)V
    .locals 1

    .line 609
    iget-object v0, p0, Lcom/google/androidgamesdk/GameActivity$InputEnabledSurfaceView;->mInputConnection:Lcom/google/androidgamesdk/gametextinput/InputConnection;

    invoke-virtual {v0, p1}, Lcom/google/androidgamesdk/gametextinput/InputConnection;->setEditorInfo(Landroid/view/inputmethod/EditorInfo;)V

    return-void
.end method
