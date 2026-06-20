.class public final Lcom/google/androidgamesdk/gametextinput/Settings;
.super Ljava/lang/Object;
.source "Settings.java"


# instance fields
.field mEditorInfo:Landroid/view/inputmethod/EditorInfo;

.field mForwardKeyEvents:Z


# direct methods
.method public constructor <init>(Landroid/view/inputmethod/EditorInfo;Z)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/google/androidgamesdk/gametextinput/Settings;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    .line 27
    iput-boolean p2, p0, Lcom/google/androidgamesdk/gametextinput/Settings;->mForwardKeyEvents:Z

    return-void
.end method
