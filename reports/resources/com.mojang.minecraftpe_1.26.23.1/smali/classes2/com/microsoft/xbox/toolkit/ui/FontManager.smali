.class public Lcom/microsoft/xbox/toolkit/ui/FontManager;
.super Ljava/lang/Object;
.source "FontManager.java"


# static fields
.field private static instance:Lcom/microsoft/xbox/toolkit/ui/FontManager;


# instance fields
.field private fonts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    new-instance v0, Lcom/microsoft/xbox/toolkit/ui/FontManager;

    invoke-direct {v0}, Lcom/microsoft/xbox/toolkit/ui/FontManager;-><init>()V

    sput-object v0, Lcom/microsoft/xbox/toolkit/ui/FontManager;->instance:Lcom/microsoft/xbox/toolkit/ui/FontManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Instance()Lcom/microsoft/xbox/toolkit/ui/FontManager;
    .locals 1

    .line 19
    sget-object v0, Lcom/microsoft/xbox/toolkit/ui/FontManager;->instance:Lcom/microsoft/xbox/toolkit/ui/FontManager;

    return-object v0
.end method


# virtual methods
.method public getTypeface(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/FontManager;->fonts:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/FontManager;->fonts:Ljava/util/HashMap;

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/FontManager;->fonts:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    invoke-static {p1, p2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    .line 36
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/ui/FontManager;->fonts:Ljava/util/HashMap;

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    :cond_1
    iget-object p1, p0, Lcom/microsoft/xbox/toolkit/ui/FontManager;->fonts:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Typeface;

    return-object p1
.end method
