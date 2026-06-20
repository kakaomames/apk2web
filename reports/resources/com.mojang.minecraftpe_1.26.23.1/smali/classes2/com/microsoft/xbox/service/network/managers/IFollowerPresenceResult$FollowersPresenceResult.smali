.class public Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$FollowersPresenceResult;
.super Ljava/lang/Object;
.source "IFollowerPresenceResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FollowersPresenceResult"
.end annotation


# instance fields
.field public userPresence:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$UserPresence;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deserialize(Ljava/io/InputStream;)Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$FollowersPresenceResult;
    .locals 3

    .line 182
    const-class v0, [Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$UserPresence;

    const-class v1, Ljava/util/Date;

    new-instance v2, Lcom/microsoft/xbox/service/model/serialization/UTCDateConverterGson$UTCDateConverterJSONDeserializer;

    invoke-direct {v2}, Lcom/microsoft/xbox/service/model/serialization/UTCDateConverterGson$UTCDateConverterJSONDeserializer;-><init>()V

    invoke-static {p0, v0, v1, v2}, Lcom/microsoft/xbox/toolkit/GsonUtil;->deserializeJson(Ljava/io/InputStream;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$UserPresence;

    if-eqz p0, :cond_0

    .line 184
    new-instance v0, Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$FollowersPresenceResult;

    invoke-direct {v0}, Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$FollowersPresenceResult;-><init>()V

    .line 185
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/microsoft/xbox/service/network/managers/IFollowerPresenceResult$FollowersPresenceResult;->userPresence:Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
