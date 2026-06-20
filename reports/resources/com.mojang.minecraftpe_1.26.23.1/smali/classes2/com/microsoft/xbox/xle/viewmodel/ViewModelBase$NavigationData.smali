.class Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase$NavigationData;
.super Ljava/lang/Object;
.source "ViewModelBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NavigationData"
.end annotation


# instance fields
.field private navigationType:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase$NavigationType;

.field private screenClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;


# direct methods
.method protected constructor <init>(Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;Ljava/lang/Class;Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase$NavigationType;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;",
            ">;",
            "Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase$NavigationType;",
            ")V"
        }
    .end annotation

    .line 51
    iput-object p1, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase$NavigationData;->this$0:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p2, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase$NavigationData;->screenClass:Ljava/lang/Class;

    .line 53
    iput-object p3, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase$NavigationData;->navigationType:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase$NavigationType;

    return-void
.end method


# virtual methods
.method protected getNavigationType()Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase$NavigationType;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase$NavigationData;->navigationType:Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase$NavigationType;

    return-object v0
.end method

.method protected getScreenClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/microsoft/xbox/toolkit/ui/ScreenLayout;",
            ">;"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/microsoft/xbox/xle/viewmodel/ViewModelBase$NavigationData;->screenClass:Ljava/lang/Class;

    return-object v0
.end method
