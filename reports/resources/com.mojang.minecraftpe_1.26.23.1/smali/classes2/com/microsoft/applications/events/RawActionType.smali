.class public final enum Lcom/microsoft/applications/events/RawActionType;
.super Ljava/lang/Enum;
.source "RawActionType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/applications/events/RawActionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/applications/events/RawActionType;

.field public static final enum KeyboardEnter:Lcom/microsoft/applications/events/RawActionType;

.field public static final enum KeyboardPress:Lcom/microsoft/applications/events/RawActionType;

.field public static final enum LButtonDoubleClick:Lcom/microsoft/applications/events/RawActionType;

.field public static final enum LButtonDown:Lcom/microsoft/applications/events/RawActionType;

.field public static final enum LButtonUp:Lcom/microsoft/applications/events/RawActionType;

.field public static final enum MButtonDoubleClick:Lcom/microsoft/applications/events/RawActionType;

.field public static final enum MButtonDown:Lcom/microsoft/applications/events/RawActionType;

.field public static final enum MButtonUp:Lcom/microsoft/applications/events/RawActionType;

.field public static final enum MouseHover:Lcom/microsoft/applications/events/RawActionType;

.field public static final enum MouseMove:Lcom/microsoft/applications/events/RawActionType;

.field public static final enum MouseWheel:Lcom/microsoft/applications/events/RawActionType;

.field public static final enum Other:Lcom/microsoft/applications/events/RawActionType;

.field public static final enum RButtonDoubleClick:Lcom/microsoft/applications/events/RawActionType;

.field public static final enum RButtonDown:Lcom/microsoft/applications/events/RawActionType;

.field public static final enum RButtonUp:Lcom/microsoft/applications/events/RawActionType;

.field public static final enum TouchDoubleTap:Lcom/microsoft/applications/events/RawActionType;

.field public static final enum TouchFlick:Lcom/microsoft/applications/events/RawActionType;

.field public static final enum TouchLongPress:Lcom/microsoft/applications/events/RawActionType;

.field public static final enum TouchPan:Lcom/microsoft/applications/events/RawActionType;

.field public static final enum TouchPinch:Lcom/microsoft/applications/events/RawActionType;

.field public static final enum TouchRotate:Lcom/microsoft/applications/events/RawActionType;

.field public static final enum TouchScroll:Lcom/microsoft/applications/events/RawActionType;

.field public static final enum TouchTap:Lcom/microsoft/applications/events/RawActionType;

.field public static final enum TouchZoom:Lcom/microsoft/applications/events/RawActionType;

.field public static final enum Unknown:Lcom/microsoft/applications/events/RawActionType;

.field public static final enum Unspecified:Lcom/microsoft/applications/events/RawActionType;


# instance fields
.field private final m_value:I


# direct methods
.method static constructor <clinit>()V
    .locals 30

    .line 14
    new-instance v1, Lcom/microsoft/applications/events/RawActionType;

    move-object v0, v1

    const-string v2, "Unspecified"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v3}, Lcom/microsoft/applications/events/RawActionType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/microsoft/applications/events/RawActionType;->Unspecified:Lcom/microsoft/applications/events/RawActionType;

    .line 19
    new-instance v2, Lcom/microsoft/applications/events/RawActionType;

    move-object v1, v2

    const-string v3, "Unknown"

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4, v4}, Lcom/microsoft/applications/events/RawActionType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/microsoft/applications/events/RawActionType;->Unknown:Lcom/microsoft/applications/events/RawActionType;

    .line 24
    new-instance v3, Lcom/microsoft/applications/events/RawActionType;

    move-object v2, v3

    const-string v4, "Other"

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5, v5}, Lcom/microsoft/applications/events/RawActionType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/microsoft/applications/events/RawActionType;->Other:Lcom/microsoft/applications/events/RawActionType;

    .line 29
    new-instance v4, Lcom/microsoft/applications/events/RawActionType;

    move-object v3, v4

    const-string v5, "LButtonDoubleClick"

    const/4 v6, 0x3

    const/16 v12, 0xb

    invoke-direct {v4, v5, v6, v12}, Lcom/microsoft/applications/events/RawActionType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/microsoft/applications/events/RawActionType;->LButtonDoubleClick:Lcom/microsoft/applications/events/RawActionType;

    .line 34
    new-instance v5, Lcom/microsoft/applications/events/RawActionType;

    move-object v4, v5

    const-string v6, "LButtonDown"

    const/4 v7, 0x4

    const/16 v13, 0xc

    invoke-direct {v5, v6, v7, v13}, Lcom/microsoft/applications/events/RawActionType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/microsoft/applications/events/RawActionType;->LButtonDown:Lcom/microsoft/applications/events/RawActionType;

    .line 39
    new-instance v6, Lcom/microsoft/applications/events/RawActionType;

    move-object v5, v6

    const-string v7, "LButtonUp"

    const/4 v8, 0x5

    const/16 v14, 0xd

    invoke-direct {v6, v7, v8, v14}, Lcom/microsoft/applications/events/RawActionType;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/microsoft/applications/events/RawActionType;->LButtonUp:Lcom/microsoft/applications/events/RawActionType;

    .line 44
    new-instance v7, Lcom/microsoft/applications/events/RawActionType;

    move-object v6, v7

    const-string v8, "MButtonDoubleClick"

    const/4 v9, 0x6

    const/16 v15, 0xe

    invoke-direct {v7, v8, v9, v15}, Lcom/microsoft/applications/events/RawActionType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/microsoft/applications/events/RawActionType;->MButtonDoubleClick:Lcom/microsoft/applications/events/RawActionType;

    .line 49
    new-instance v8, Lcom/microsoft/applications/events/RawActionType;

    move-object v7, v8

    const-string v9, "MButtonDown"

    const/4 v10, 0x7

    const/16 v11, 0xf

    invoke-direct {v8, v9, v10, v11}, Lcom/microsoft/applications/events/RawActionType;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/microsoft/applications/events/RawActionType;->MButtonDown:Lcom/microsoft/applications/events/RawActionType;

    .line 54
    new-instance v9, Lcom/microsoft/applications/events/RawActionType;

    move-object v8, v9

    const-string v10, "MButtonUp"

    const/16 v11, 0x8

    const/16 v15, 0x10

    invoke-direct {v9, v10, v11, v15}, Lcom/microsoft/applications/events/RawActionType;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/microsoft/applications/events/RawActionType;->MButtonUp:Lcom/microsoft/applications/events/RawActionType;

    .line 59
    new-instance v10, Lcom/microsoft/applications/events/RawActionType;

    move-object v9, v10

    const-string v11, "MouseHover"

    const/16 v15, 0x9

    const/16 v14, 0x11

    invoke-direct {v10, v11, v15, v14}, Lcom/microsoft/applications/events/RawActionType;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/microsoft/applications/events/RawActionType;->MouseHover:Lcom/microsoft/applications/events/RawActionType;

    .line 64
    new-instance v11, Lcom/microsoft/applications/events/RawActionType;

    move-object v10, v11

    const-string v15, "MouseWheel"

    const/16 v14, 0xa

    const/16 v13, 0x12

    invoke-direct {v11, v15, v14, v13}, Lcom/microsoft/applications/events/RawActionType;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/microsoft/applications/events/RawActionType;->MouseWheel:Lcom/microsoft/applications/events/RawActionType;

    .line 69
    new-instance v14, Lcom/microsoft/applications/events/RawActionType;

    const/16 v15, 0xf

    move-object v11, v14

    const-string v13, "MouseMove"

    move-object/from16 v26, v0

    const/16 v0, 0x14

    invoke-direct {v14, v13, v12, v0}, Lcom/microsoft/applications/events/RawActionType;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/microsoft/applications/events/RawActionType;->MouseMove:Lcom/microsoft/applications/events/RawActionType;

    .line 74
    new-instance v13, Lcom/microsoft/applications/events/RawActionType;

    move-object v12, v13

    const-string v14, "RButtonDoubleClick"

    const/16 v0, 0x16

    const/16 v15, 0xc

    invoke-direct {v13, v14, v15, v0}, Lcom/microsoft/applications/events/RawActionType;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/microsoft/applications/events/RawActionType;->RButtonDoubleClick:Lcom/microsoft/applications/events/RawActionType;

    .line 79
    new-instance v14, Lcom/microsoft/applications/events/RawActionType;

    const/16 v15, 0x12

    move-object v13, v14

    const-string v15, "RButtonDown"

    const/16 v0, 0x17

    move-object/from16 v27, v1

    const/16 v1, 0xd

    invoke-direct {v14, v15, v1, v0}, Lcom/microsoft/applications/events/RawActionType;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/microsoft/applications/events/RawActionType;->RButtonDown:Lcom/microsoft/applications/events/RawActionType;

    .line 84
    new-instance v1, Lcom/microsoft/applications/events/RawActionType;

    const/16 v15, 0x11

    move-object v14, v1

    const-string v15, "RButtonUp"

    const/16 v0, 0x18

    move-object/from16 v28, v2

    const/16 v2, 0xe

    invoke-direct {v1, v15, v2, v0}, Lcom/microsoft/applications/events/RawActionType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/microsoft/applications/events/RawActionType;->RButtonUp:Lcom/microsoft/applications/events/RawActionType;

    .line 89
    new-instance v1, Lcom/microsoft/applications/events/RawActionType;

    const/16 v0, 0x10

    const/16 v2, 0xf

    move-object v15, v1

    const-string v0, "TouchTap"

    move-object/from16 v29, v3

    const/16 v3, 0x32

    invoke-direct {v1, v0, v2, v3}, Lcom/microsoft/applications/events/RawActionType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/microsoft/applications/events/RawActionType;->TouchTap:Lcom/microsoft/applications/events/RawActionType;

    .line 94
    new-instance v0, Lcom/microsoft/applications/events/RawActionType;

    move-object/from16 v16, v0

    const-string v1, "TouchDoubleTap"

    const/16 v2, 0x33

    const/16 v3, 0x10

    invoke-direct {v0, v1, v3, v2}, Lcom/microsoft/applications/events/RawActionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/applications/events/RawActionType;->TouchDoubleTap:Lcom/microsoft/applications/events/RawActionType;

    .line 99
    new-instance v0, Lcom/microsoft/applications/events/RawActionType;

    move-object/from16 v17, v0

    const-string v1, "TouchLongPress"

    const/16 v2, 0x34

    const/16 v3, 0x11

    invoke-direct {v0, v1, v3, v2}, Lcom/microsoft/applications/events/RawActionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/applications/events/RawActionType;->TouchLongPress:Lcom/microsoft/applications/events/RawActionType;

    .line 104
    new-instance v0, Lcom/microsoft/applications/events/RawActionType;

    move-object/from16 v18, v0

    const-string v1, "TouchScroll"

    const/16 v2, 0x35

    const/16 v3, 0x12

    invoke-direct {v0, v1, v3, v2}, Lcom/microsoft/applications/events/RawActionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/applications/events/RawActionType;->TouchScroll:Lcom/microsoft/applications/events/RawActionType;

    .line 109
    new-instance v0, Lcom/microsoft/applications/events/RawActionType;

    move-object/from16 v19, v0

    const/16 v1, 0x13

    const/16 v2, 0x36

    const-string v3, "TouchPan"

    invoke-direct {v0, v3, v1, v2}, Lcom/microsoft/applications/events/RawActionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/applications/events/RawActionType;->TouchPan:Lcom/microsoft/applications/events/RawActionType;

    .line 114
    new-instance v0, Lcom/microsoft/applications/events/RawActionType;

    move-object/from16 v20, v0

    const-string v1, "TouchFlick"

    const/16 v2, 0x37

    const/16 v3, 0x14

    invoke-direct {v0, v1, v3, v2}, Lcom/microsoft/applications/events/RawActionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/applications/events/RawActionType;->TouchFlick:Lcom/microsoft/applications/events/RawActionType;

    .line 119
    new-instance v0, Lcom/microsoft/applications/events/RawActionType;

    move-object/from16 v21, v0

    const/16 v1, 0x15

    const/16 v2, 0x38

    const-string v3, "TouchPinch"

    invoke-direct {v0, v3, v1, v2}, Lcom/microsoft/applications/events/RawActionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/applications/events/RawActionType;->TouchPinch:Lcom/microsoft/applications/events/RawActionType;

    .line 124
    new-instance v0, Lcom/microsoft/applications/events/RawActionType;

    move-object/from16 v22, v0

    const-string v1, "TouchZoom"

    const/16 v2, 0x39

    const/16 v3, 0x16

    invoke-direct {v0, v1, v3, v2}, Lcom/microsoft/applications/events/RawActionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/applications/events/RawActionType;->TouchZoom:Lcom/microsoft/applications/events/RawActionType;

    .line 129
    new-instance v0, Lcom/microsoft/applications/events/RawActionType;

    move-object/from16 v23, v0

    const-string v1, "TouchRotate"

    const/16 v2, 0x3a

    const/16 v3, 0x17

    invoke-direct {v0, v1, v3, v2}, Lcom/microsoft/applications/events/RawActionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/applications/events/RawActionType;->TouchRotate:Lcom/microsoft/applications/events/RawActionType;

    .line 134
    new-instance v0, Lcom/microsoft/applications/events/RawActionType;

    move-object/from16 v24, v0

    const-string v1, "KeyboardPress"

    const/16 v2, 0x64

    const/16 v3, 0x18

    invoke-direct {v0, v1, v3, v2}, Lcom/microsoft/applications/events/RawActionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/applications/events/RawActionType;->KeyboardPress:Lcom/microsoft/applications/events/RawActionType;

    .line 139
    new-instance v0, Lcom/microsoft/applications/events/RawActionType;

    move-object/from16 v25, v0

    const/16 v1, 0x19

    const/16 v2, 0x65

    const-string v3, "KeyboardEnter"

    invoke-direct {v0, v3, v1, v2}, Lcom/microsoft/applications/events/RawActionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/microsoft/applications/events/RawActionType;->KeyboardEnter:Lcom/microsoft/applications/events/RawActionType;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    move-object/from16 v3, v29

    .line 10
    filled-new-array/range {v0 .. v25}, [Lcom/microsoft/applications/events/RawActionType;

    move-result-object v0

    sput-object v0, Lcom/microsoft/applications/events/RawActionType;->$VALUES:[Lcom/microsoft/applications/events/RawActionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 143
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 144
    iput p3, p0, Lcom/microsoft/applications/events/RawActionType;->m_value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/applications/events/RawActionType;
    .locals 1

    .line 10
    const-class v0, Lcom/microsoft/applications/events/RawActionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/applications/events/RawActionType;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/applications/events/RawActionType;
    .locals 1

    .line 10
    sget-object v0, Lcom/microsoft/applications/events/RawActionType;->$VALUES:[Lcom/microsoft/applications/events/RawActionType;

    invoke-virtual {v0}, [Lcom/microsoft/applications/events/RawActionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/applications/events/RawActionType;

    return-object v0
.end method


# virtual methods
.method getValue()I
    .locals 1

    .line 148
    iget v0, p0, Lcom/microsoft/applications/events/RawActionType;->m_value:I

    return v0
.end method
