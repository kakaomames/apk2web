.class final Lorg/apache/james/mime4j/util/StringArrayMap$1;
.super Ljava/lang/Object;
.source "StringArrayMap.java"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/james/mime4j/util/StringArrayMap;->asStringEnum(Ljava/lang/Object;)Ljava/util/Enumeration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Enumeration<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$pValue:Ljava/lang/Object;

.field private value:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lorg/apache/james/mime4j/util/StringArrayMap$1;->val$pValue:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-object p1, p0, Lorg/apache/james/mime4j/util/StringArrayMap$1;->value:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 1

    .line 115
    iget-object v0, p0, Lorg/apache/james/mime4j/util/StringArrayMap$1;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic nextElement()Ljava/lang/Object;
    .locals 1

    .line 112
    invoke-virtual {p0}, Lorg/apache/james/mime4j/util/StringArrayMap$1;->nextElement()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public nextElement()Ljava/lang/String;
    .locals 2

    .line 118
    iget-object v0, p0, Lorg/apache/james/mime4j/util/StringArrayMap$1;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 121
    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    .line 122
    iput-object v1, p0, Lorg/apache/james/mime4j/util/StringArrayMap$1;->value:Ljava/lang/Object;

    return-object v0

    .line 119
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
