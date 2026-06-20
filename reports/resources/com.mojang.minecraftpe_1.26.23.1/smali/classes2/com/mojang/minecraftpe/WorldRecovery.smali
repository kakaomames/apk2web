.class public Lcom/mojang/minecraftpe/WorldRecovery;
.super Ljava/lang/Object;
.source "WorldRecovery.java"


# instance fields
.field public mContentResolver:Landroid/content/ContentResolver;

.field public mContext:Landroid/content/Context;

.field public mTotalBytesRequired:J

.field public mTotalFilesToCopy:I


# direct methods
.method public static synthetic $r8$lambda$6YwepEh5VbBvuzS4H0yJNY3bVIA(Lcom/mojang/minecraftpe/WorldRecovery;Landroidx/documentfile/provider/DocumentFile;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/mojang/minecraftpe/WorldRecovery;->lambda$migrateFolderContents$0(Landroidx/documentfile/provider/DocumentFile;Ljava/io/File;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/ContentResolver;)V
    .locals 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput v0, p0, Lcom/mojang/minecraftpe/WorldRecovery;->mTotalFilesToCopy:I

    const-wide/16 v0, 0x0

    .line 30
    iput-wide v0, p0, Lcom/mojang/minecraftpe/WorldRecovery;->mTotalBytesRequired:J

    .line 33
    iput-object p1, p0, Lcom/mojang/minecraftpe/WorldRecovery;->mContext:Landroid/content/Context;

    .line 34
    iput-object p2, p0, Lcom/mojang/minecraftpe/WorldRecovery;->mContentResolver:Landroid/content/ContentResolver;

    return-void
.end method

.method private doMigration(Landroidx/documentfile/provider/DocumentFile;Ljava/io/File;)V
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    .line 68
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    .line 69
    iput v3, v1, Lcom/mojang/minecraftpe/WorldRecovery;->mTotalFilesToCopy:I

    const-wide/16 v4, 0x0

    .line 70
    iput-wide v4, v1, Lcom/mojang/minecraftpe/WorldRecovery;->mTotalBytesRequired:J

    move-object/from16 v6, p1

    .line 71
    invoke-direct {v1, v2, v6}, Lcom/mojang/minecraftpe/WorldRecovery;->generateCopyFilesRecursively(Ljava/util/ArrayList;Landroidx/documentfile/provider/DocumentFile;)V

    .line 73
    new-instance v7, Landroid/os/StatFs;

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v7}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v7

    .line 76
    iget-wide v9, v1, Lcom/mojang/minecraftpe/WorldRecovery;->mTotalBytesRequired:J

    cmp-long v11, v9, v7

    if-ltz v11, :cond_0

    .line 77
    const-string v0, "Insufficient space"

    invoke-static {v0, v9, v10, v7, v8}, Lcom/mojang/minecraftpe/WorldRecovery;->nativeError(Ljava/lang/String;JJ)V

    return-void

    .line 81
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    .line 82
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_temp"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 83
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v9, 0x2000

    .line 84
    new-array v10, v9, [B

    .line 89
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v11, v3

    move-wide/from16 v19, v4

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    move-object/from16 v21, v12

    check-cast v21, Landroidx/documentfile/provider/DocumentFile;

    .line 90
    invoke-virtual/range {v21 .. v21}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    .line 91
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 93
    invoke-virtual/range {v21 .. v21}, Landroidx/documentfile/provider/DocumentFile;->isDirectory()Z

    move-result v12

    const-string v13, "\'"

    const-string v14, "Minecraft"

    if-eqz v12, :cond_3

    .line 94
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 96
    invoke-virtual {v12}, Ljava/io/File;->isDirectory()Z

    move-result v16

    if-nez v16, :cond_1

    .line 97
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v9, "Creating directory \'"

    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-virtual {v12}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_2

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Could not create directory: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4, v5, v4, v5}, Lcom/mojang/minecraftpe/WorldRecovery;->nativeError(Ljava/lang/String;JJ)V

    return-void

    .line 105
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v9, "Directory \'"

    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v9, "\' already exists"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v3, 0x0

    const/16 v9, 0x2000

    goto :goto_2

    .line 109
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v9, "Copying \'"

    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v21}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v9, "\' to \'"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v9, "Copying: "

    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    iget v13, v1, Lcom/mojang/minecraftpe/WorldRecovery;->mTotalFilesToCopy:I

    add-int/lit8 v11, v11, 0x1

    iget-wide v4, v1, Lcom/mojang/minecraftpe/WorldRecovery;->mTotalBytesRequired:J

    move v14, v11

    move-object v3, v15

    move-wide v15, v4

    move-wide/from16 v17, v19

    invoke-static/range {v12 .. v18}, Lcom/mojang/minecraftpe/WorldRecovery;->nativeUpdate(Ljava/lang/String;IIJJ)V

    .line 113
    :try_start_0
    iget-object v4, v1, Lcom/mojang/minecraftpe/WorldRecovery;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual/range {v21 .. v21}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v4

    .line 114
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    const/16 v9, 0x2000

    .line 117
    :goto_1
    invoke-virtual {v4, v10, v3, v9}, Ljava/io/InputStream;->read([BII)I

    move-result v12

    if-ltz v12, :cond_4

    .line 118
    invoke-virtual {v5, v10, v3, v12}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v12, v12

    add-long v19, v19, v12

    goto :goto_1

    .line 122
    :cond_4
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    .line 123
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    const-wide/16 v4, 0x0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    .line 125
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 126
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3, v2, v3}, Lcom/mojang/minecraftpe/WorldRecovery;->nativeError(Ljava/lang/String;JJ)V

    return-void

    .line 133
    :cond_5
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->delete()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 134
    invoke-virtual {v8, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 135
    invoke-static {}, Lcom/mojang/minecraftpe/WorldRecovery;->nativeComplete()V

    goto :goto_3

    .line 137
    :cond_6
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->mkdir()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 138
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not replace destination directory: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3, v2, v3}, Lcom/mojang/minecraftpe/WorldRecovery;->nativeError(Ljava/lang/String;JJ)V

    goto :goto_3

    :cond_7
    const-wide/16 v2, 0x0

    .line 141
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Could not recreate destination directory after failed replace: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2, v3, v2, v3}, Lcom/mojang/minecraftpe/WorldRecovery;->nativeError(Ljava/lang/String;JJ)V

    goto :goto_3

    :cond_8
    const-wide/16 v2, 0x0

    .line 145
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Could not delete empty destination directory: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2, v3, v2, v3}, Lcom/mojang/minecraftpe/WorldRecovery;->nativeError(Ljava/lang/String;JJ)V

    :goto_3
    return-void
.end method

.method private generateCopyFilesRecursively(Ljava/util/ArrayList;Landroidx/documentfile/provider/DocumentFile;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/documentfile/provider/DocumentFile;",
            ">;",
            "Landroidx/documentfile/provider/DocumentFile;",
            ")V"
        }
    .end annotation

    .line 150
    invoke-virtual {p2}, Landroidx/documentfile/provider/DocumentFile;->listFiles()[Landroidx/documentfile/provider/DocumentFile;

    move-result-object p2

    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p2, v1

    .line 151
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    invoke-virtual {v2}, Landroidx/documentfile/provider/DocumentFile;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 154
    invoke-direct {p0, p1, v2}, Lcom/mojang/minecraftpe/WorldRecovery;->generateCopyFilesRecursively(Ljava/util/ArrayList;Landroidx/documentfile/provider/DocumentFile;)V

    goto :goto_1

    .line 157
    :cond_0
    iget-wide v3, p0, Lcom/mojang/minecraftpe/WorldRecovery;->mTotalBytesRequired:J

    invoke-virtual {v2}, Landroidx/documentfile/provider/DocumentFile;->length()J

    move-result-wide v5

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/mojang/minecraftpe/WorldRecovery;->mTotalBytesRequired:J

    .line 158
    iget v2, p0, Lcom/mojang/minecraftpe/WorldRecovery;->mTotalFilesToCopy:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/mojang/minecraftpe/WorldRecovery;->mTotalFilesToCopy:I

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private synthetic lambda$migrateFolderContents$0(Landroidx/documentfile/provider/DocumentFile;Ljava/io/File;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/mojang/minecraftpe/WorldRecovery;->doMigration(Landroidx/documentfile/provider/DocumentFile;Ljava/io/File;)V

    return-void
.end method

.method public static native nativeComplete()V
.end method

.method public static native nativeError(Ljava/lang/String;JJ)V
.end method

.method public static native nativeUpdate(Ljava/lang/String;IIJJ)V
.end method


# virtual methods
.method public migrateFolderContents(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 38
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 39
    iget-object v1, p0, Lcom/mojang/minecraftpe/WorldRecovery;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Landroidx/documentfile/provider/DocumentFile;->fromTreeUri(Landroid/content/Context;Landroid/net/Uri;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object v0

    if-nez v0, :cond_0

    .line 42
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Could not resolve URI to a DocumentFile tree: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 45
    :cond_0
    invoke-virtual {v0}, Landroidx/documentfile/provider/DocumentFile;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1

    .line 46
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Root file of URI is not a directory: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 49
    :cond_1
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_2

    .line 52
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Destination folder does not exist: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 55
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    array-length v1, v1

    if-eqz v1, :cond_3

    .line 56
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Destination folder is not empty: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 60
    :cond_3
    new-instance p2, Ljava/lang/Thread;

    new-instance v1, Lcom/mojang/minecraftpe/WorldRecovery$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0, p1}, Lcom/mojang/minecraftpe/WorldRecovery$$ExternalSyntheticLambda0;-><init>(Lcom/mojang/minecraftpe/WorldRecovery;Landroidx/documentfile/provider/DocumentFile;Ljava/io/File;)V

    invoke-direct {p2, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 61
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    .line 63
    const-string p1, ""

    return-object p1
.end method
