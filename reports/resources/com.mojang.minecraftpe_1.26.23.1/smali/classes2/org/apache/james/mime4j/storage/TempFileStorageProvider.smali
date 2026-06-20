.class public Lorg/apache/james/mime4j/storage/TempFileStorageProvider;
.super Lorg/apache/james/mime4j/storage/AbstractStorageProvider;
.source "TempFileStorageProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/james/mime4j/storage/TempFileStorageProvider$TempFileStorage;,
        Lorg/apache/james/mime4j/storage/TempFileStorageProvider$TempFileStorageOutputStream;
    }
.end annotation


# static fields
.field private static final DEFAULT_PREFIX:Ljava/lang/String; = "m4j"


# instance fields
.field private final directory:Ljava/io/File;

.field private final prefix:Ljava/lang/String;

.field private final suffix:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 59
    const-string v0, "m4j"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1}, Lorg/apache/james/mime4j/storage/TempFileStorageProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 2

    .line 67
    const-string v0, "m4j"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lorg/apache/james/mime4j/storage/TempFileStorageProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V
    .locals 2

    .line 90
    invoke-direct {p0}, Lorg/apache/james/mime4j/storage/AbstractStorageProvider;-><init>()V

    if-eqz p1, :cond_2

    .line 91
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_2

    if-eqz p3, :cond_1

    .line 94
    invoke-virtual {p3}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p3}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 96
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "invalid directory"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 98
    :cond_1
    :goto_0
    iput-object p1, p0, Lorg/apache/james/mime4j/storage/TempFileStorageProvider;->prefix:Ljava/lang/String;

    .line 99
    iput-object p2, p0, Lorg/apache/james/mime4j/storage/TempFileStorageProvider;->suffix:Ljava/lang/String;

    .line 100
    iput-object p3, p0, Lorg/apache/james/mime4j/storage/TempFileStorageProvider;->directory:Ljava/io/File;

    return-void

    .line 92
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "invalid prefix"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public createStorageOutputStream()Lorg/apache/james/mime4j/storage/StorageOutputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lorg/apache/james/mime4j/storage/TempFileStorageProvider;->prefix:Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/james/mime4j/storage/TempFileStorageProvider;->suffix:Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/james/mime4j/storage/TempFileStorageProvider;->directory:Ljava/io/File;

    invoke-static {v0, v1, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 105
    invoke-virtual {v0}, Ljava/io/File;->deleteOnExit()V

    .line 107
    new-instance v1, Lorg/apache/james/mime4j/storage/TempFileStorageProvider$TempFileStorageOutputStream;

    invoke-direct {v1, v0}, Lorg/apache/james/mime4j/storage/TempFileStorageProvider$TempFileStorageOutputStream;-><init>(Ljava/io/File;)V

    return-object v1
.end method
