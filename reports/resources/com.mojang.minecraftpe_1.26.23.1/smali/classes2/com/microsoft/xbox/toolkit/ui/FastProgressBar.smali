.class public Lcom/microsoft/xbox/toolkit/ui/FastProgressBar;
.super Landroid/widget/ProgressBar;
.source "FastProgressBar.java"


# instance fields
.field private isEnabled:Z

.field private visibility:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 23
    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/toolkit/ui/FastProgressBar;->setEnabled(Z)V

    const/4 p1, 0x0

    .line 24
    invoke-virtual {p0, p1}, Lcom/microsoft/xbox/toolkit/ui/FastProgressBar;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    monitor-enter p0

    .line 29
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onDraw(Landroid/graphics/Canvas;)V

    const-wide/16 v0, 0x21

    .line 31
    invoke-virtual {p0, v0, v1}, Lcom/microsoft/xbox/toolkit/ui/FastProgressBar;->postInvalidateDelayed(J)V

    .line 32
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0

    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 36
    iget-boolean v0, p0, Lcom/microsoft/xbox/toolkit/ui/FastProgressBar;->isEnabled:Z

    if-eq v0, p1, :cond_1

    .line 37
    iput-boolean p1, p0, Lcom/microsoft/xbox/toolkit/ui/FastProgressBar;->isEnabled:Z

    if-nez p1, :cond_0

    .line 40
    invoke-virtual {p0}, Lcom/microsoft/xbox/toolkit/ui/FastProgressBar;->getVisibility()I

    move-result p1

    iput p1, p0, Lcom/microsoft/xbox/toolkit/ui/FastProgressBar;->visibility:I

    const/16 p1, 0x8

    .line 41
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 43
    :cond_0
    iget p1, p0, Lcom/microsoft/xbox/toolkit/ui/FastProgressBar;->visibility:I

    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    .line 50
    iget-boolean v0, p0, Lcom/microsoft/xbox/toolkit/ui/FastProgressBar;->isEnabled:Z

    if-eqz v0, :cond_0

    .line 51
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 53
    :cond_0
    iput p1, p0, Lcom/microsoft/xbox/toolkit/ui/FastProgressBar;->visibility:I

    :goto_0
    return-void
.end method
