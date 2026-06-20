.class Lcom/microsoft/applications/events/Status$StatusValues;
.super Ljava/lang/Object;
.source "Status.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/applications/events/Status;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StatusValues"
.end annotation


# static fields
.field static final VALUE_EALREADY:I = 0x67

.field static final VALUE_EFAIL:I = -0x1

.field static final VALUE_ENOSYS:I = 0x28

.field static final VALUE_ENOTSUP:I = 0x81

.field static final VALUE_EPERM:I = 0x1

.field static final VALUE_SUCCESS:I


# instance fields
.field final synthetic this$0:Lcom/microsoft/applications/events/Status;


# direct methods
.method constructor <init>(Lcom/microsoft/applications/events/Status;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/microsoft/applications/events/Status$StatusValues;->this$0:Lcom/microsoft/applications/events/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
