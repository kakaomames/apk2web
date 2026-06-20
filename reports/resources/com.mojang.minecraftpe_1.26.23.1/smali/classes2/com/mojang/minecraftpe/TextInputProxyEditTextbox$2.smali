.class public Lcom/mojang/minecraftpe/TextInputProxyEditTextbox$2;
.super Ljava/lang/Object;
.source "TextInputProxyEditTextbox.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;->createUnicodeFilter()Landroid/text/InputFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;


# direct methods
.method public constructor <init>(Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox$2;->this$0:Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 2

    const/4 p4, 0x0

    move p5, p2

    move-object p6, p4

    :goto_0
    if-ge p5, p3, :cond_2

    .line 221
    invoke-interface {p1, p5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v1, 0x3000

    if-ne v0, v1, :cond_1

    if-nez p6, :cond_0

    .line 225
    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    :cond_0
    const/16 v0, 0x20

    .line 227
    invoke-virtual {p6, p5, v0}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    :cond_1
    add-int/lit8 p5, p5, 0x1

    goto :goto_0

    :cond_2
    if-eqz p6, :cond_3

    .line 231
    invoke-virtual {p6, p2, p3}, Ljava/lang/StringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    :cond_3
    return-object p4
.end method
