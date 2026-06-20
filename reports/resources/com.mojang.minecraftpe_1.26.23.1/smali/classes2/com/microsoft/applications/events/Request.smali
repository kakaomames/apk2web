.class Lcom/microsoft/applications/events/Request;
.super Ljava/lang/Object;
.source "HttpClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private m_body:[B

.field private m_connection:Ljava/net/HttpURLConnection;

.field private final m_parent:Lcom/microsoft/applications/events/HttpClient;

.field private m_request_id:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/microsoft/applications/events/HttpClient;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;[I[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p1, p0, Lcom/microsoft/applications/events/Request;->m_parent:Lcom/microsoft/applications/events/HttpClient;

    .line 100
    invoke-virtual {p1, p2}, Lcom/microsoft/applications/events/HttpClient;->newUrl(Ljava/lang/String;)Ljava/net/URL;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    iput-object p1, p0, Lcom/microsoft/applications/events/Request;->m_connection:Ljava/net/HttpURLConnection;

    .line 101
    invoke-virtual {p1, p3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 102
    iput-object p4, p0, Lcom/microsoft/applications/events/Request;->m_body:[B

    .line 103
    array-length p1, p4

    if-lez p1, :cond_0

    .line 104
    iget-object p1, p0, Lcom/microsoft/applications/events/Request;->m_connection:Ljava/net/HttpURLConnection;

    array-length p2, p4

    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 105
    iget-object p1, p0, Lcom/microsoft/applications/events/Request;->m_connection:Ljava/net/HttpURLConnection;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 107
    :cond_0
    iput-object p5, p0, Lcom/microsoft/applications/events/Request;->m_request_id:Ljava/lang/String;

    const/4 p1, 0x0

    move p2, p1

    :goto_0
    add-int/lit8 p3, p1, 0x1

    .line 109
    array-length p4, p6

    if-ge p3, p4, :cond_1

    .line 110
    new-instance p4, Ljava/lang/String;

    aget p5, p6, p1

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p4, p7, p2, p5, v0}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 111
    aget p5, p6, p1

    add-int/2addr p2, p5

    .line 112
    new-instance p5, Ljava/lang/String;

    aget v0, p6, p3

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p5, p7, p2, v0, v1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 113
    aget p3, p6, p3

    add-int/2addr p2, p3

    .line 114
    iget-object p3, p0, Lcom/microsoft/applications/events/Request;->m_connection:Ljava/net/HttpURLConnection;

    invoke-virtual {p3, p4, p5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 p1, p1, 0x2

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    const/4 v0, 0x0

    .line 121
    new-array v1, v0, [Ljava/lang/String;

    .line 122
    new-array v2, v0, [B

    .line 125
    :try_start_0
    iget-object v3, p0, Lcom/microsoft/applications/events/Request;->m_body:[B

    array-length v3, v3

    if-lez v3, :cond_0

    .line 126
    iget-object v3, p0, Lcom/microsoft/applications/events/Request;->m_connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    .line 127
    iget-object v4, p0, Lcom/microsoft/applications/events/Request;->m_body:[B

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write([B)V

    .line 129
    :cond_0
    iget-object v3, p0, Lcom/microsoft/applications/events/Request;->m_connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    .line 130
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v4, p0, Lcom/microsoft/applications/events/Request;->m_connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v4

    .line 131
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    .line 132
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 133
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 134
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 135
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 136
    invoke-virtual {v5, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 140
    :cond_2
    invoke-virtual {v5, v1}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v1, 0x12c

    if-lt v3, v1, :cond_3

    .line 143
    :try_start_2
    new-instance v1, Ljava/io/BufferedInputStream;

    iget-object v5, p0, Lcom/microsoft/applications/events/Request;->m_connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_1

    .line 145
    :cond_3
    new-instance v1, Ljava/io/BufferedInputStream;

    iget-object v5, p0, Lcom/microsoft/applications/events/Request;->m_connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    :goto_1
    const/16 v5, 0x400

    .line 147
    new-array v6, v5, [B

    .line 148
    new-instance v7, Ljava/util/Vector;

    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    move v8, v0

    .line 151
    :cond_4
    :goto_2
    invoke-virtual {v1, v6, v0, v5}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v9

    if-gez v9, :cond_7

    .line 160
    new-array v2, v8, [B

    .line 162
    invoke-virtual {v7}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v5, v0

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    .line 163
    array-length v7, v6

    move v8, v0

    :goto_3
    if-ge v8, v7, :cond_5

    aget-byte v9, v6, v8

    .line 164
    aput-byte v9, v2, v5

    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 174
    :cond_6
    iget-object v0, p0, Lcom/microsoft/applications/events/Request;->m_connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_5

    :cond_7
    if-lez v9, :cond_4

    .line 156
    :try_start_3
    invoke-static {v6, v0, v9}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    add-int/2addr v8, v9

    goto :goto_2

    :catch_0
    move v0, v3

    move-object v1, v4

    goto :goto_4

    :catch_1
    move v0, v3

    goto :goto_4

    :catchall_0
    move-exception v0

    .line 174
    iget-object v1, p0, Lcom/microsoft/applications/events/Request;->m_connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 175
    throw v0

    .line 174
    :catch_2
    :goto_4
    iget-object v3, p0, Lcom/microsoft/applications/events/Request;->m_connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    move v3, v0

    move-object v4, v1

    .line 176
    :goto_5
    iget-object v0, p0, Lcom/microsoft/applications/events/Request;->m_parent:Lcom/microsoft/applications/events/HttpClient;

    iget-object v1, p0, Lcom/microsoft/applications/events/Request;->m_request_id:Ljava/lang/String;

    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/microsoft/applications/events/HttpClient;->dispatchCallback(Ljava/lang/String;I[Ljava/lang/Object;[B)V

    return-void
.end method
