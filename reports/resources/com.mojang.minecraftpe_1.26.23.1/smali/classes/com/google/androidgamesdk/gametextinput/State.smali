.class public final Lcom/google/androidgamesdk/gametextinput/State;
.super Ljava/lang/Object;
.source "State.java"


# instance fields
.field public composingRegionEnd:I

.field public composingRegionStart:I

.field public selectionEnd:I

.field public selectionStart:I

.field public text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;IIII)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/google/androidgamesdk/gametextinput/State;->text:Ljava/lang/String;

    .line 26
    iput p2, p0, Lcom/google/androidgamesdk/gametextinput/State;->selectionStart:I

    .line 27
    iput p3, p0, Lcom/google/androidgamesdk/gametextinput/State;->selectionEnd:I

    .line 28
    iput p4, p0, Lcom/google/androidgamesdk/gametextinput/State;->composingRegionStart:I

    .line 29
    iput p5, p0, Lcom/google/androidgamesdk/gametextinput/State;->composingRegionEnd:I

    return-void
.end method
