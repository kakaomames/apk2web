.class Lcom/google/androidgamesdk/gametextinput/InputConnection$SingeLineFilter;
.super Ljava/lang/Object;
.source "InputConnection.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/androidgamesdk/gametextinput/InputConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SingeLineFilter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/androidgamesdk/gametextinput/InputConnection;


# direct methods
.method private constructor <init>(Lcom/google/androidgamesdk/gametextinput/InputConnection;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/google/androidgamesdk/gametextinput/InputConnection$SingeLineFilter;->this$0:Lcom/google/androidgamesdk/gametextinput/InputConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/androidgamesdk/gametextinput/InputConnection;Lcom/google/androidgamesdk/gametextinput/InputConnection$1;)V
    .locals 0

    .line 107
    invoke-direct {p0, p1}, Lcom/google/androidgamesdk/gametextinput/InputConnection$SingeLineFilter;-><init>(Lcom/google/androidgamesdk/gametextinput/InputConnection;)V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 6

    .line 112
    new-instance p4, Ljava/lang/StringBuilder;

    sub-int p5, p3, p2

    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 p5, 0x1

    move p6, p2

    :goto_0
    if-ge p6, p3, :cond_1

    .line 115
    invoke-interface {p1, p6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    const/4 p5, 0x0

    goto :goto_1

    .line 120
    :cond_0
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 p6, p6, 0x1

    goto :goto_0

    :cond_1
    if-eqz p5, :cond_2

    const/4 p1, 0x0

    return-object p1

    .line 128
    :cond_2
    instance-of p3, p1, Landroid/text/Spanned;

    if-eqz p3, :cond_3

    .line 129
    new-instance p3, Landroid/text/SpannableString;

    invoke-direct {p3, p4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 130
    move-object v0, p1

    check-cast v0, Landroid/text/Spanned;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const/4 v3, 0x0

    const/4 v5, 0x0

    move v1, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Landroid/text/TextUtils;->copySpansFrom(Landroid/text/Spanned;IILjava/lang/Class;Landroid/text/Spannable;I)V

    return-object p3

    :cond_3
    return-object p4
.end method
