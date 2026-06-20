.class Lcom/microsoft/xbox/service/model/ProfileModel$FollowingAndFavoritesComparator;
.super Ljava/lang/Object;
.source "ProfileModel.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/service/model/ProfileModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FollowingAndFavoritesComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/microsoft/xbox/service/model/FollowersData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/xbox/service/model/ProfileModel;


# direct methods
.method private constructor <init>(Lcom/microsoft/xbox/service/model/ProfileModel;)V
    .locals 0

    .line 977
    iput-object p1, p0, Lcom/microsoft/xbox/service/model/ProfileModel$FollowingAndFavoritesComparator;->this$0:Lcom/microsoft/xbox/service/model/ProfileModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/microsoft/xbox/service/model/ProfileModel;Lcom/microsoft/xbox/service/model/ProfileModel$1;)V
    .locals 0

    .line 977
    invoke-direct {p0, p1}, Lcom/microsoft/xbox/service/model/ProfileModel$FollowingAndFavoritesComparator;-><init>(Lcom/microsoft/xbox/service/model/ProfileModel;)V

    return-void
.end method


# virtual methods
.method public compare(Lcom/microsoft/xbox/service/model/FollowersData;Lcom/microsoft/xbox/service/model/FollowersData;)I
    .locals 0

    .line 980
    iget-object p1, p1, Lcom/microsoft/xbox/service/model/FollowersData;->userProfileData:Lcom/microsoft/xbox/service/model/UserProfileData;

    iget-object p1, p1, Lcom/microsoft/xbox/service/model/UserProfileData;->appDisplayName:Ljava/lang/String;

    iget-object p2, p2, Lcom/microsoft/xbox/service/model/FollowersData;->userProfileData:Lcom/microsoft/xbox/service/model/UserProfileData;

    iget-object p2, p2, Lcom/microsoft/xbox/service/model/UserProfileData;->appDisplayName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 977
    check-cast p1, Lcom/microsoft/xbox/service/model/FollowersData;

    check-cast p2, Lcom/microsoft/xbox/service/model/FollowersData;

    invoke-virtual {p0, p1, p2}, Lcom/microsoft/xbox/service/model/ProfileModel$FollowingAndFavoritesComparator;->compare(Lcom/microsoft/xbox/service/model/FollowersData;Lcom/microsoft/xbox/service/model/FollowersData;)I

    move-result p1

    return p1
.end method
