.class Lcom/microsoft/xbox/service/model/ProfileModel$GetProfileRunner$1;
.super Ljava/lang/Object;
.source "ProfileModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/xbox/service/model/ProfileModel$GetProfileRunner;->buildData()Lcom/microsoft/xbox/service/model/ProfileData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/microsoft/xbox/service/model/ProfileModel$GetProfileRunner;

.field final synthetic val$profileUser:Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$ProfileUser;

.field final synthetic val$serviceManager:Lcom/microsoft/xbox/service/network/managers/xblshared/ISLSServiceManager;


# direct methods
.method constructor <init>(Lcom/microsoft/xbox/service/model/ProfileModel$GetProfileRunner;Lcom/microsoft/xbox/service/network/managers/xblshared/ISLSServiceManager;Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$ProfileUser;)V
    .locals 0

    .line 903
    iput-object p1, p0, Lcom/microsoft/xbox/service/model/ProfileModel$GetProfileRunner$1;->this$1:Lcom/microsoft/xbox/service/model/ProfileModel$GetProfileRunner;

    iput-object p2, p0, Lcom/microsoft/xbox/service/model/ProfileModel$GetProfileRunner$1;->val$serviceManager:Lcom/microsoft/xbox/service/network/managers/xblshared/ISLSServiceManager;

    iput-object p3, p0, Lcom/microsoft/xbox/service/model/ProfileModel$GetProfileRunner$1;->val$profileUser:Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$ProfileUser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 908
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/xbox/service/model/ProfileModel$GetProfileRunner$1;->val$serviceManager:Lcom/microsoft/xbox/service/network/managers/xblshared/ISLSServiceManager;

    iget-object v1, p0, Lcom/microsoft/xbox/service/model/ProfileModel$GetProfileRunner$1;->this$1:Lcom/microsoft/xbox/service/model/ProfileModel$GetProfileRunner;

    invoke-static {v1}, Lcom/microsoft/xbox/service/model/ProfileModel$GetProfileRunner;->access$100(Lcom/microsoft/xbox/service/model/ProfileModel$GetProfileRunner;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/microsoft/xbox/service/network/managers/xblshared/ISLSServiceManager;->getFamilySettings(Ljava/lang/String;)Lcom/microsoft/xbox/service/network/managers/FamilySettings;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 910
    iget-object v1, v0, Lcom/microsoft/xbox/service/network/managers/FamilySettings;->familyUsers:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 911
    :goto_0
    iget-object v2, v0, Lcom/microsoft/xbox/service/network/managers/FamilySettings;->familyUsers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 912
    iget-object v2, v0, Lcom/microsoft/xbox/service/network/managers/FamilySettings;->familyUsers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/microsoft/xbox/service/network/managers/FamilyUser;

    iget-object v2, v2, Lcom/microsoft/xbox/service/network/managers/FamilyUser;->xuid:Ljava/lang/String;

    iget-object v3, p0, Lcom/microsoft/xbox/service/model/ProfileModel$GetProfileRunner$1;->this$1:Lcom/microsoft/xbox/service/model/ProfileModel$GetProfileRunner;

    invoke-static {v3}, Lcom/microsoft/xbox/service/model/ProfileModel$GetProfileRunner;->access$100(Lcom/microsoft/xbox/service/model/ProfileModel$GetProfileRunner;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 913
    iget-object v2, p0, Lcom/microsoft/xbox/service/model/ProfileModel$GetProfileRunner$1;->val$profileUser:Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$ProfileUser;

    iget-object v3, v0, Lcom/microsoft/xbox/service/network/managers/FamilySettings;->familyUsers:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/microsoft/xbox/service/network/managers/FamilyUser;

    iget-boolean v3, v3, Lcom/microsoft/xbox/service/network/managers/FamilyUser;->canViewTVAdultContent:Z

    iput-boolean v3, v2, Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$ProfileUser;->canViewTVAdultContent:Z

    .line 914
    iget-object v2, p0, Lcom/microsoft/xbox/service/model/ProfileModel$GetProfileRunner$1;->val$profileUser:Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$ProfileUser;

    iget-object v0, v0, Lcom/microsoft/xbox/service/network/managers/FamilySettings;->familyUsers:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/microsoft/xbox/service/network/managers/FamilyUser;

    iget v0, v0, Lcom/microsoft/xbox/service/network/managers/FamilyUser;->maturityLevel:I

    invoke-virtual {v2, v0}, Lcom/microsoft/xbox/service/network/managers/IUserProfileResult$ProfileUser;->setmaturityLevel(I)V

    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    :cond_1
    :goto_1
    return-void
.end method
