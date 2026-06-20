.class public Lcom/mojang/minecraftpe/PDFWriter;
.super Ljava/lang/Object;
.source "PDFWriter.java"


# instance fields
.field public mImageRect:Landroid/graphics/Rect;

.field public mOpenDocument:Landroid/graphics/pdf/PdfDocument;

.field public mPageRect:Landroid/graphics/Rect;

.field public mPageTextPaint:Landroid/text/TextPaint;

.field public mTextRect:Landroid/graphics/Rect;

.field public mTitleRect:Landroid/graphics/Rect;

.field public mTitleTextPaint:Landroid/text/TextPaint;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Landroid/graphics/Rect;

    const/16 v1, 0x264

    const/16 v2, 0x318

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/mojang/minecraftpe/PDFWriter;->mPageRect:Landroid/graphics/Rect;

    .line 40
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/mojang/minecraftpe/PDFWriter;->mPageRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lcom/mojang/minecraftpe/PDFWriter;->mPageRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    const v4, 0x3f333333    # 0.7f

    mul-float/2addr v2, v4

    float-to-int v2, v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/mojang/minecraftpe/PDFWriter;->mTitleRect:Landroid/graphics/Rect;

    .line 41
    iget-object v1, p0, Lcom/mojang/minecraftpe/PDFWriter;->mPageRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3e99999a    # 0.3f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 44
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/mojang/minecraftpe/PDFWriter;->mPageRect:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/mojang/minecraftpe/PDFWriter;->mTextRect:Landroid/graphics/Rect;

    const/16 v1, 0x14

    .line 45
    invoke-virtual {v0, v1, v1}, Landroid/graphics/Rect;->inset(II)V

    .line 48
    new-instance v0, Landroid/graphics/Rect;

    const/16 v1, 0x1f4

    invoke-direct {v0, v3, v3, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/mojang/minecraftpe/PDFWriter;->mImageRect:Landroid/graphics/Rect;

    .line 49
    iget-object v1, p0, Lcom/mojang/minecraftpe/PDFWriter;->mPageRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    iget-object v2, p0, Lcom/mojang/minecraftpe/PDFWriter;->mImageRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/mojang/minecraftpe/PDFWriter;->mPageRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    iget-object v3, p0, Lcom/mojang/minecraftpe/PDFWriter;->mImageRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 51
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    .line 53
    :try_start_0
    sget-object v1, Lcom/mojang/minecraftpe/MainActivity;->mInstance:Lcom/mojang/minecraftpe/MainActivity;

    invoke-virtual {v1}, Lcom/mojang/minecraftpe/MainActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "assets/fonts/Mojangles.ttf"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 56
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to load mojangles font: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 60
    :goto_0
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    iput-object v1, p0, Lcom/mojang/minecraftpe/PDFWriter;->mTitleTextPaint:Landroid/text/TextPaint;

    const/4 v2, 0x1

    .line 61
    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 62
    iget-object v1, p0, Lcom/mojang/minecraftpe/PDFWriter;->mTitleTextPaint:Landroid/text/TextPaint;

    const/high16 v3, 0x42800000

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 63
    iget-object v1, p0, Lcom/mojang/minecraftpe/PDFWriter;->mTitleTextPaint:Landroid/text/TextPaint;

    const/high16 v3, -0x1000000

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setColor(I)V

    .line 64
    iget-object v1, p0, Lcom/mojang/minecraftpe/PDFWriter;->mTitleTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 66
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/mojang/minecraftpe/PDFWriter;->mPageTextPaint:Landroid/text/TextPaint;

    .line 67
    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 68
    iget-object v0, p0, Lcom/mojang/minecraftpe/PDFWriter;->mPageTextPaint:Landroid/text/TextPaint;

    const/high16 v1, 0x42000000

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 69
    iget-object v0, p0, Lcom/mojang/minecraftpe/PDFWriter;->mPageTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setColor(I)V

    return-void
.end method

.method private _drawTextInRect(Ljava/lang/String;Landroid/graphics/pdf/PdfDocument$Page;Landroid/text/TextPaint;Landroid/graphics/Rect;Landroid/text/Layout$Alignment;)V
    .locals 9

    .line 141
    new-instance v8, Landroid/text/StaticLayout;

    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v5, 0x3f800000

    move-object v0, v8

    move-object v1, p1

    move-object v2, p3

    move-object v4, p5

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 142
    invoke-virtual {p2}, Landroid/graphics/pdf/PdfDocument$Page;->getCanvas()Landroid/graphics/Canvas;

    move-result-object p1

    .line 143
    iget p2, p4, Landroid/graphics/Rect;->left:I

    int-to-float p2, p2

    iget p3, p4, Landroid/graphics/Rect;->top:I

    int-to-float p3, p3

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 144
    invoke-virtual {v8, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private _getExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x2e

    .line 160
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 161
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 162
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 164
    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method private _getPageInfo(I)Landroid/graphics/pdf/PdfDocument$PageInfo;
    .locals 3

    .line 137
    new-instance v0, Landroid/graphics/pdf/PdfDocument$PageInfo$Builder;

    iget-object v1, p0, Lcom/mojang/minecraftpe/PDFWriter;->mPageRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lcom/mojang/minecraftpe/PDFWriter;->mPageRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-direct {v0, v1, v2, p1}, Landroid/graphics/pdf/PdfDocument$PageInfo$Builder;-><init>(III)V

    invoke-virtual {v0}, Landroid/graphics/pdf/PdfDocument$PageInfo$Builder;->create()Landroid/graphics/pdf/PdfDocument$PageInfo;

    move-result-object p1

    return-object p1
.end method

.method private _readFileToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 148
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 149
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 150
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    long-to-int v0, v0

    .line 151
    new-array v0, v0, [B

    .line 153
    invoke-virtual {p1, v0}, Ljava/io/FileInputStream;->read([B)I

    .line 154
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V

    .line 156
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([B)V

    return-object p1
.end method


# virtual methods
.method public closeDocument()V
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/mojang/minecraftpe/PDFWriter;->mOpenDocument:Landroid/graphics/pdf/PdfDocument;

    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {v0}, Landroid/graphics/pdf/PdfDocument;->close()V

    const/4 v0, 0x0

    .line 128
    iput-object v0, p0, Lcom/mojang/minecraftpe/PDFWriter;->mOpenDocument:Landroid/graphics/pdf/PdfDocument;

    :cond_0
    return-void
.end method

.method public createDocument([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11

    .line 73
    iget-object v0, p0, Lcom/mojang/minecraftpe/PDFWriter;->mOpenDocument:Landroid/graphics/pdf/PdfDocument;

    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {v0}, Landroid/graphics/pdf/PdfDocument;->close()V

    .line 76
    :cond_0
    new-instance v0, Landroid/graphics/pdf/PdfDocument;

    invoke-direct {v0}, Landroid/graphics/pdf/PdfDocument;-><init>()V

    iput-object v0, p0, Lcom/mojang/minecraftpe/PDFWriter;->mOpenDocument:Landroid/graphics/pdf/PdfDocument;

    const/4 v1, 0x1

    .line 78
    invoke-direct {p0, v1}, Lcom/mojang/minecraftpe/PDFWriter;->_getPageInfo(I)Landroid/graphics/pdf/PdfDocument$PageInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/pdf/PdfDocument;->startPage(Landroid/graphics/pdf/PdfDocument$PageInfo;)Landroid/graphics/pdf/PdfDocument$Page;

    move-result-object v0

    .line 79
    iget-object v6, p0, Lcom/mojang/minecraftpe/PDFWriter;->mTitleTextPaint:Landroid/text/TextPaint;

    iget-object v7, p0, Lcom/mojang/minecraftpe/PDFWriter;->mTitleRect:Landroid/graphics/Rect;

    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    move-object v3, p0

    move-object v4, p2

    move-object v5, v0

    invoke-direct/range {v3 .. v8}, Lcom/mojang/minecraftpe/PDFWriter;->_drawTextInRect(Ljava/lang/String;Landroid/graphics/pdf/PdfDocument$Page;Landroid/text/TextPaint;Landroid/graphics/Rect;Landroid/text/Layout$Alignment;)V

    .line 80
    iget-object p2, p0, Lcom/mojang/minecraftpe/PDFWriter;->mOpenDocument:Landroid/graphics/pdf/PdfDocument;

    invoke-virtual {p2, v0}, Landroid/graphics/pdf/PdfDocument;->finishPage(Landroid/graphics/pdf/PdfDocument$Page;)V

    const/4 p2, 0x0

    move v0, p2

    .line 82
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_3

    .line 83
    aget-object v2, p1, v0

    .line 85
    iget-object v3, p0, Lcom/mojang/minecraftpe/PDFWriter;->mOpenDocument:Landroid/graphics/pdf/PdfDocument;

    add-int/lit8 v4, v0, 0x2

    invoke-direct {p0, v4}, Lcom/mojang/minecraftpe/PDFWriter;->_getPageInfo(I)Landroid/graphics/pdf/PdfDocument$PageInfo;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/pdf/PdfDocument;->startPage(Landroid/graphics/pdf/PdfDocument$PageInfo;)Landroid/graphics/pdf/PdfDocument$Page;

    move-result-object v3

    .line 88
    :try_start_0
    invoke-direct {p0, v2}, Lcom/mojang/minecraftpe/PDFWriter;->_getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 89
    const-string/jumbo v5, "txt"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 90
    invoke-direct {p0, v2}, Lcom/mojang/minecraftpe/PDFWriter;->_readFileToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 91
    iget-object v8, p0, Lcom/mojang/minecraftpe/PDFWriter;->mPageTextPaint:Landroid/text/TextPaint;

    iget-object v9, p0, Lcom/mojang/minecraftpe/PDFWriter;->mTextRect:Landroid/graphics/Rect;

    sget-object v10, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    move-object v5, p0

    move-object v7, v3

    invoke-direct/range {v5 .. v10}, Lcom/mojang/minecraftpe/PDFWriter;->_drawTextInRect(Ljava/lang/String;Landroid/graphics/pdf/PdfDocument$Page;Landroid/text/TextPaint;Landroid/graphics/Rect;Landroid/text/Layout$Alignment;)V

    goto :goto_1

    .line 93
    :cond_1
    const-string v5, "jpeg"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 94
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 95
    invoke-virtual {v3}, Landroid/graphics/pdf/PdfDocument$Page;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v4

    .line 96
    iget-object v5, p0, Lcom/mojang/minecraftpe/PDFWriter;->mImageRect:Landroid/graphics/Rect;

    const/4 v6, 0x0

    invoke-virtual {v4, v2, v6, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 108
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v2, p0, Lcom/mojang/minecraftpe/PDFWriter;->mOpenDocument:Landroid/graphics/pdf/PdfDocument;

    invoke-virtual {v2, v3}, Landroid/graphics/pdf/PdfDocument;->finishPage(Landroid/graphics/pdf/PdfDocument$Page;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 99
    :cond_2
    :try_start_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported extension from file: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p1

    .line 103
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to write page: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/PDFWriter;->closeDocument()V

    return p2

    :cond_3
    return v1
.end method

.method public getPicturesDirectory()Ljava/lang/String;
    .locals 1

    .line 133
    sget-object v0, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeDocumentToFile(Ljava/lang/String;)Z
    .locals 3

    .line 115
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 116
    iget-object p1, p0, Lcom/mojang/minecraftpe/PDFWriter;->mOpenDocument:Landroid/graphics/pdf/PdfDocument;

    invoke-virtual {p1, v0}, Landroid/graphics/pdf/PdfDocument;->writeTo(Ljava/io/OutputStream;)V

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 119
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to write pdf file: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method
