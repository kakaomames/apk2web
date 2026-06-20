.class public interface abstract Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserConstants;
.super Ljava/lang/Object;
.source "StructuredFieldParserConstants.java"


# static fields
.field public static final ANY:I = 0x11

.field public static final CONTENT:I = 0xf

.field public static final DEFAULT:I = 0x0

.field public static final EOF:I = 0x0

.field public static final FOLD:I = 0xc

.field public static final INCOMMENT:I = 0x1

.field public static final INQUOTEDSTRING:I = 0x3

.field public static final NESTED_COMMENT:I = 0x2

.field public static final QUOTEDPAIR:I = 0x10

.field public static final QUOTEDSTRING:I = 0xd

.field public static final STRING_CONTENT:I = 0xb

.field public static final WS:I = 0xe

.field public static final tokenImage:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0x12

    .line 38
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "<EOF>"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "\"(\""

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v3, "\")\""

    aput-object v3, v0, v1

    const/4 v1, 0x3

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v4, "<token of kind 4>"

    aput-object v4, v0, v1

    const/4 v1, 0x5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    aput-object v3, v0, v1

    const/4 v1, 0x7

    const/4 v2, 0x0

    sget-object v2, Lcom/microsoft/xbox/telemetry/utc/nz/ILDSXGB;->WnvvExWh:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "<token of kind 8>"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\"\\\"\""

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v3, "<token of kind 10>"

    aput-object v3, v0, v1

    const/16 v1, 0xb

    const-string v3, "<STRING_CONTENT>"

    aput-object v3, v0, v1

    const/16 v1, 0xc

    const-string v3, "<FOLD>"

    aput-object v3, v0, v1

    const/16 v1, 0xd

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "<WS>"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "<CONTENT>"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "<QUOTEDPAIR>"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const/4 v2, 0x0

    sget-object v2, Lcom/google/android/datatransport/runtime/dagger/WBH/QNeSdHmyDdVMGk;->leYjR:Ljava/lang/String;

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserConstants;->tokenImage:[Ljava/lang/String;

    return-void
.end method
