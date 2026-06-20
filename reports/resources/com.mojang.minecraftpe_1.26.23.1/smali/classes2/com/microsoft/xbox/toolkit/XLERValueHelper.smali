.class public Lcom/microsoft/xbox/toolkit/XLERValueHelper;
.super Ljava/lang/Object;
.source "XLERValueHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findDimensionIdByName(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    .line 113
    :try_start_0
    const-class v1, Lcom/microsoft/xboxtcui/R$dimen;

    invoke-virtual {v1, p0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object p0, v0

    :goto_0
    if-eqz p0, :cond_0

    .line 121
    :try_start_1
    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p0

    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    :cond_0
    const/4 p0, -0x1

    :goto_1
    return p0
.end method

.method public static findViewByString(Ljava/lang/String;)Landroid/view/View;
    .locals 2

    const/4 v0, 0x0

    .line 133
    :try_start_0
    const-class v1, Lcom/microsoft/xboxtcui/R$id;

    invoke-virtual {v1, p0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object p0, v0

    :goto_0
    if-eqz p0, :cond_0

    .line 142
    :try_start_1
    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p0

    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    :cond_0
    const/4 p0, -0x1

    .line 148
    :goto_1
    invoke-static {}, Lcom/microsoft/xboxtcui/XboxTcuiSdk;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method protected static getColorRClass()Ljava/lang/Class;
    .locals 1

    .line 180
    const-class v0, Lcom/microsoft/xboxtcui/R$color;

    return-object v0
.end method

.method public static getColorRValue(Ljava/lang/String;)I
    .locals 2

    .line 101
    :try_start_0
    invoke-static {}, Lcom/microsoft/xbox/toolkit/XLERValueHelper;->getColorRClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p0

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 105
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Can\'t find "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Ljava/lang/String;Z)V

    const/4 p0, -0x1

    return p0
.end method

.method protected static getDimenRClass()Ljava/lang/Class;
    .locals 1

    .line 176
    const-class v0, Lcom/microsoft/xboxtcui/R$dimen;

    return-object v0
.end method

.method public static getDimenRValue(Ljava/lang/String;)I
    .locals 2

    .line 90
    :try_start_0
    invoke-static {}, Lcom/microsoft/xbox/toolkit/XLERValueHelper;->getDimenRClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p0

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 94
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Can\'t find "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Ljava/lang/String;Z)V

    const/4 p0, -0x1

    return p0
.end method

.method protected static getDrawableRClass()Ljava/lang/Class;
    .locals 1

    .line 156
    const-class v0, Lcom/microsoft/xboxtcui/R$drawable;

    return-object v0
.end method

.method public static getDrawableRValue(Ljava/lang/String;)I
    .locals 2

    .line 25
    :try_start_0
    invoke-static {}, Lcom/microsoft/xbox/toolkit/XLERValueHelper;->getDrawableRClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p0

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 29
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Can\'t find "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Ljava/lang/String;Z)V

    const/4 p0, -0x1

    return p0
.end method

.method protected static getIdRClass()Ljava/lang/Class;
    .locals 1

    .line 160
    const-class v0, Lcom/microsoft/xboxtcui/R$id;

    return-object v0
.end method

.method public static getIdRValue(Ljava/lang/String;)I
    .locals 2

    .line 36
    :try_start_0
    invoke-static {}, Lcom/microsoft/xbox/toolkit/XLERValueHelper;->getIdRClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p0

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 40
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Can\'t find "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Ljava/lang/String;Z)V

    const/4 p0, -0x1

    return p0
.end method

.method protected static getLayoutRClass()Ljava/lang/Class;
    .locals 1

    .line 172
    const-class v0, Lcom/microsoft/xboxtcui/R$layout;

    return-object v0
.end method

.method public static getLayoutRValue(Ljava/lang/String;)I
    .locals 2

    .line 79
    :try_start_0
    invoke-static {}, Lcom/microsoft/xbox/toolkit/XLERValueHelper;->getLayoutRClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p0

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 83
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    sget-object v1, Landroidx/legacy/coreutils/Zn/jzoH;->tUYCSEcleujGgLd:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Ljava/lang/String;Z)V

    const/4 p0, -0x1

    return p0
.end method

.method protected static getStringRClass()Ljava/lang/Class;
    .locals 1

    .line 152
    const-class v0, Lcom/microsoft/xboxtcui/R$string;

    return-object v0
.end method

.method public static getStringRValue(Ljava/lang/String;)I
    .locals 2

    .line 14
    :try_start_0
    invoke-static {}, Lcom/microsoft/xbox/toolkit/XLERValueHelper;->getStringRClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p0

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 18
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Can\'t find "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Ljava/lang/String;Z)V

    const/4 p0, -0x1

    return p0
.end method

.method protected static getStyleRClass()Ljava/lang/Class;
    .locals 1

    .line 164
    const-class v0, Lcom/microsoft/xboxtcui/R$style;

    return-object v0
.end method

.method public static getStyleRValue(Ljava/lang/String;)I
    .locals 2

    .line 47
    :try_start_0
    invoke-static {}, Lcom/microsoft/xbox/toolkit/XLERValueHelper;->getStyleRClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p0

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 51
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Can\'t find "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Ljava/lang/String;Z)V

    const/4 p0, -0x1

    return p0
.end method

.method protected static getStyleableRClass()Ljava/lang/Class;
    .locals 1

    .line 168
    const-class v0, Lcom/microsoft/xboxtcui/R$styleable;

    return-object v0
.end method

.method public static getStyleableRValue(Ljava/lang/String;)I
    .locals 2

    .line 69
    :try_start_0
    invoke-static {}, Lcom/microsoft/xbox/toolkit/XLERValueHelper;->getStyleableRClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p0

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 72
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Can\'t find "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Ljava/lang/String;Z)V

    const/4 p0, -0x1

    return p0
.end method

.method public static getStyleableRValueArray(Ljava/lang/String;)[I
    .locals 3

    const/4 v0, 0x0

    .line 58
    :try_start_0
    invoke-static {}, Lcom/microsoft/xbox/toolkit/XLERValueHelper;->getStyleableRClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 60
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 62
    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t find "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/microsoft/xbox/toolkit/XLEAssert;->assertTrue(Ljava/lang/String;Z)V

    return-object v0
.end method
