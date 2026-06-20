.class public final enum Lcom/braze/enums/inappmessage/InAppMessageFailureType;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/braze/models/IPutIntoJson;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/braze/enums/inappmessage/InAppMessageFailureType$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/braze/enums/inappmessage/InAppMessageFailureType;",
        ">;",
        "Lcom/braze/models/IPutIntoJson<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\t\u0008\u0087\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u00012\u0008\u0012\u0004\u0012\u00020\u00030\u0002B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0005\u001a\u00020\u0003H\u0016j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/braze/enums/inappmessage/InAppMessageFailureType;",
        "",
        "Lcom/braze/models/IPutIntoJson;",
        "",
        "(Ljava/lang/String;I)V",
        "forJsonPut",
        "IMAGE_DOWNLOAD",
        "TEMPLATE_REQUEST",
        "ZIP_ASSET_DOWNLOAD",
        "DISPLAY_VIEW_GENERATION",
        "INTERNAL_TIMEOUT_EXCEEDED",
        "UNKNOWN_MESSAGE_TYPE",
        "android-sdk-base_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/braze/enums/inappmessage/InAppMessageFailureType;

.field public static final enum DISPLAY_VIEW_GENERATION:Lcom/braze/enums/inappmessage/InAppMessageFailureType;

.field public static final enum IMAGE_DOWNLOAD:Lcom/braze/enums/inappmessage/InAppMessageFailureType;

.field public static final enum INTERNAL_TIMEOUT_EXCEEDED:Lcom/braze/enums/inappmessage/InAppMessageFailureType;

.field public static final enum TEMPLATE_REQUEST:Lcom/braze/enums/inappmessage/InAppMessageFailureType;

.field public static final enum UNKNOWN_MESSAGE_TYPE:Lcom/braze/enums/inappmessage/InAppMessageFailureType;

.field public static final enum ZIP_ASSET_DOWNLOAD:Lcom/braze/enums/inappmessage/InAppMessageFailureType;


# direct methods
.method private static final synthetic $values()[Lcom/braze/enums/inappmessage/InAppMessageFailureType;
    .locals 6

    sget-object v0, Lcom/braze/enums/inappmessage/InAppMessageFailureType;->IMAGE_DOWNLOAD:Lcom/braze/enums/inappmessage/InAppMessageFailureType;

    sget-object v1, Lcom/braze/enums/inappmessage/InAppMessageFailureType;->TEMPLATE_REQUEST:Lcom/braze/enums/inappmessage/InAppMessageFailureType;

    sget-object v2, Lcom/braze/enums/inappmessage/InAppMessageFailureType;->ZIP_ASSET_DOWNLOAD:Lcom/braze/enums/inappmessage/InAppMessageFailureType;

    sget-object v3, Lcom/braze/enums/inappmessage/InAppMessageFailureType;->DISPLAY_VIEW_GENERATION:Lcom/braze/enums/inappmessage/InAppMessageFailureType;

    sget-object v4, Lcom/braze/enums/inappmessage/InAppMessageFailureType;->INTERNAL_TIMEOUT_EXCEEDED:Lcom/braze/enums/inappmessage/InAppMessageFailureType;

    sget-object v5, Lcom/braze/enums/inappmessage/InAppMessageFailureType;->UNKNOWN_MESSAGE_TYPE:Lcom/braze/enums/inappmessage/InAppMessageFailureType;

    filled-new-array/range {v0 .. v5}, [Lcom/braze/enums/inappmessage/InAppMessageFailureType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/braze/enums/inappmessage/InAppMessageFailureType;

    const-string v1, "IMAGE_DOWNLOAD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/braze/enums/inappmessage/InAppMessageFailureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/braze/enums/inappmessage/InAppMessageFailureType;->IMAGE_DOWNLOAD:Lcom/braze/enums/inappmessage/InAppMessageFailureType;

    new-instance v0, Lcom/braze/enums/inappmessage/InAppMessageFailureType;

    const-string v1, "TEMPLATE_REQUEST"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/braze/enums/inappmessage/InAppMessageFailureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/braze/enums/inappmessage/InAppMessageFailureType;->TEMPLATE_REQUEST:Lcom/braze/enums/inappmessage/InAppMessageFailureType;

    new-instance v0, Lcom/braze/enums/inappmessage/InAppMessageFailureType;

    const-string v1, "ZIP_ASSET_DOWNLOAD"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/braze/enums/inappmessage/InAppMessageFailureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/braze/enums/inappmessage/InAppMessageFailureType;->ZIP_ASSET_DOWNLOAD:Lcom/braze/enums/inappmessage/InAppMessageFailureType;

    new-instance v0, Lcom/braze/enums/inappmessage/InAppMessageFailureType;

    const-string v1, "DISPLAY_VIEW_GENERATION"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/braze/enums/inappmessage/InAppMessageFailureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/braze/enums/inappmessage/InAppMessageFailureType;->DISPLAY_VIEW_GENERATION:Lcom/braze/enums/inappmessage/InAppMessageFailureType;

    new-instance v0, Lcom/braze/enums/inappmessage/InAppMessageFailureType;

    const-string v1, "INTERNAL_TIMEOUT_EXCEEDED"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/braze/enums/inappmessage/InAppMessageFailureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/braze/enums/inappmessage/InAppMessageFailureType;->INTERNAL_TIMEOUT_EXCEEDED:Lcom/braze/enums/inappmessage/InAppMessageFailureType;

    new-instance v0, Lcom/braze/enums/inappmessage/InAppMessageFailureType;

    const-string v1, "UNKNOWN_MESSAGE_TYPE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/braze/enums/inappmessage/InAppMessageFailureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/braze/enums/inappmessage/InAppMessageFailureType;->UNKNOWN_MESSAGE_TYPE:Lcom/braze/enums/inappmessage/InAppMessageFailureType;

    invoke-static {}, Lcom/braze/enums/inappmessage/InAppMessageFailureType;->$values()[Lcom/braze/enums/inappmessage/InAppMessageFailureType;

    move-result-object v0

    sput-object v0, Lcom/braze/enums/inappmessage/InAppMessageFailureType;->$VALUES:[Lcom/braze/enums/inappmessage/InAppMessageFailureType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/braze/enums/inappmessage/InAppMessageFailureType;
    .locals 1

    const-class v0, Lcom/braze/enums/inappmessage/InAppMessageFailureType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/braze/enums/inappmessage/InAppMessageFailureType;

    return-object p0
.end method

.method public static values()[Lcom/braze/enums/inappmessage/InAppMessageFailureType;
    .locals 1

    sget-object v0, Lcom/braze/enums/inappmessage/InAppMessageFailureType;->$VALUES:[Lcom/braze/enums/inappmessage/InAppMessageFailureType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/braze/enums/inappmessage/InAppMessageFailureType;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic forJsonPut()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/braze/enums/inappmessage/InAppMessageFailureType;->forJsonPut()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public forJsonPut()Ljava/lang/String;
    .locals 2

    .line 2
    sget-object v0, Lcom/braze/enums/inappmessage/InAppMessageFailureType$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 8
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :pswitch_0    # 0x6
    const-string v0, "umt"

    goto :goto_0

    .line 9
    :pswitch_1    # 0x5
    const-string v0, "te"

    goto :goto_0

    .line 10
    :pswitch_2    # 0x4
    const-string v0, "vf"

    goto :goto_0

    .line 11
    :pswitch_3    # 0x3
    const-string v0, "zf"

    goto :goto_0

    .line 12
    :pswitch_4    # 0x2
    const/4 v0, 0x0

    sget-object v0, Landroidx/core/internal/view/aLy/wbXUZvT;->DlHrEIl:Ljava/lang/String;

    goto :goto_0

    .line 13
    :pswitch_5    # 0x1
    const-string v0, "if"

    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5    # 0x1
        :pswitch_4    # 0x2
        :pswitch_3    # 0x3
        :pswitch_2    # 0x4
        :pswitch_1    # 0x5
        :pswitch_0    # 0x6
    .end packed-switch
.end method
