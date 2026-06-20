.class public final Lcom/google/androidgamesdk/gametextinput/GameTextInput$Pair;
.super Ljava/lang/Object;
.source "GameTextInput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/androidgamesdk/gametextinput/GameTextInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Pair"
.end annotation


# instance fields
.field first:I

.field second:I


# direct methods
.method constructor <init>(II)V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput p1, p0, Lcom/google/androidgamesdk/gametextinput/GameTextInput$Pair;->first:I

    .line 56
    iput p2, p0, Lcom/google/androidgamesdk/gametextinput/GameTextInput$Pair;->second:I

    return-void
.end method
