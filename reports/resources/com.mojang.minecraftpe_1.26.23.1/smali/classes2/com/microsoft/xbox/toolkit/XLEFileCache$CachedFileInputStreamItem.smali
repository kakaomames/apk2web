.class Lcom/microsoft/xbox/toolkit/XLEFileCache$CachedFileInputStreamItem;
.super Ljava/lang/Object;
.source "XLEFileCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/toolkit/XLEFileCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CachedFileInputStreamItem"
.end annotation


# instance fields
.field private computedMd5:[B

.field private contentInputStream:Ljava/io/InputStream;

.field private mDigest:Ljava/security/MessageDigest;

.field private savedMd5:[B

.field final synthetic this$0:Lcom/microsoft/xbox/toolkit/XLEFileCache;


# direct methods
.method public constructor <init>(Lcom/microsoft/xbox/toolkit/XLEFileCache;Lcom/microsoft/xbox/toolkit/XLEFileCacheItemKey;Ljava/io/File;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 157
    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/XLEFileCache$CachedFileInputStreamItem;->this$0:Lcom/microsoft/xbox/toolkit/XLEFileCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 152
    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/XLEFileCache$CachedFileInputStreamItem;->mDigest:Ljava/security/MessageDigest;

    .line 158
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, p3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 161
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/XLEFileCache$CachedFileInputStreamItem;->mDigest:Ljava/security/MessageDigest;

    .line 162
    invoke-virtual {v0}, Ljava/security/MessageDigest;->getDigestLength()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/XLEFileCache$CachedFileInputStreamItem;->savedMd5:[B

    .line 163
    invoke-virtual {p1, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v0

    .line 164
    iget-object v1, p0, Lcom/microsoft/xbox/toolkit/XLEFileCache$CachedFileInputStreamItem;->mDigest:Ljava/security/MessageDigest;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->getDigestLength()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 169
    invoke-static {p1}, Lcom/microsoft/xbox/toolkit/XLEFileCache;->access$000(Ljava/io/InputStream;)I

    move-result v0

    .line 170
    new-array v1, v0, [B

    .line 171
    invoke-virtual {p1, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    if-ne v0, v2, :cond_1

    .line 172
    invoke-interface {p2}, Lcom/microsoft/xbox/toolkit/XLEFileCacheItemKey;->getKeyString()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p2, :cond_1

    .line 184
    new-instance p2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 185
    invoke-static {p2, p1}, Lcom/microsoft/xbox/toolkit/StreamUtil;->CopyStream(Ljava/io/OutputStream;Ljava/io/InputStream;)V

    .line 186
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V

    .line 187
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    .line 188
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/XLEFileCache$CachedFileInputStreamItem;->mDigest:Ljava/security/MessageDigest;

    invoke-virtual {v0, p2}, Ljava/security/MessageDigest;->update([B)V

    .line 189
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/XLEFileCache$CachedFileInputStreamItem;->mDigest:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    iput-object v0, p0, Lcom/microsoft/xbox/toolkit/XLEFileCache$CachedFileInputStreamItem;->computedMd5:[B

    .line 190
    invoke-direct {p0}, Lcom/microsoft/xbox/toolkit/XLEFileCache$CachedFileInputStreamItem;->isMd5Error()Z

    move-result v0

    if-nez v0, :cond_0

    .line 195
    new-instance p1, Ljava/io/ByteArrayInputStream;

    invoke-direct {p1, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object p1, p0, Lcom/microsoft/xbox/toolkit/XLEFileCache$CachedFileInputStreamItem;->contentInputStream:Ljava/io/InputStream;

    return-void

    .line 191
    :cond_0
    invoke-virtual {p3}, Ljava/io/File;->delete()Z

    .line 192
    new-instance p2, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string/jumbo p3, "the saved md5 is not equal computed md5.ComputedMd5:"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p3, p0, Lcom/microsoft/xbox/toolkit/XLEFileCache$CachedFileInputStreamItem;->computedMd5:[B

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, "     SavedMd5:"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p3, p0, Lcom/microsoft/xbox/toolkit/XLEFileCache$CachedFileInputStreamItem;->savedMd5:[B

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 173
    :cond_1
    :try_start_1
    invoke-virtual {p3}, Ljava/io/File;->delete()Z

    .line 174
    new-instance p2, Ljava/io/IOException;

    const-string p3, "File key check failed because keyLength != readKeyLength or !key.getKeyString().equals(new String(urlOrSomething))"

    invoke-direct {p2, p3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 165
    :cond_2
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V

    .line 166
    new-instance p2, Ljava/io/IOException;

    const/4 p3, 0x0

    sget-object p3, Lorg/spongycastle/asn1/util/GKS/lAxclkLY;->oXfbNeMOOpCf:Ljava/lang/String;

    invoke-direct {p2, p3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p2

    .line 180
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V

    .line 181
    new-instance p1, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "File digest failed! Out of memory: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_1
    move-exception p2

    .line 177
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V

    .line 178
    new-instance p1, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "File digest failed! "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private isMd5Error()Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 203
    :goto_0
    iget-object v2, p0, Lcom/microsoft/xbox/toolkit/XLEFileCache$CachedFileInputStreamItem;->mDigest:Ljava/security/MessageDigest;

    invoke-virtual {v2}, Ljava/security/MessageDigest;->getDigestLength()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 204
    iget-object v2, p0, Lcom/microsoft/xbox/toolkit/XLEFileCache$CachedFileInputStreamItem;->savedMd5:[B

    aget-byte v2, v2, v1

    iget-object v3, p0, Lcom/microsoft/xbox/toolkit/XLEFileCache$CachedFileInputStreamItem;->computedMd5:[B

    aget-byte v3, v3, v1

    if-eq v2, v3, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method


# virtual methods
.method public getContentInputStream()Ljava/io/InputStream;
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/microsoft/xbox/toolkit/XLEFileCache$CachedFileInputStreamItem;->contentInputStream:Ljava/io/InputStream;

    return-object v0
.end method
