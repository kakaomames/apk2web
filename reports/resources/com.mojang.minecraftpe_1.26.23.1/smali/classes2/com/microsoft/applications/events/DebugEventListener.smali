.class public abstract Lcom/microsoft/applications/events/DebugEventListener;
.super Ljava/lang/Object;
.source "DebugEventListener.java"


# instance fields
.field public nativeIdentity:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 6
    iput-wide v0, p0, Lcom/microsoft/applications/events/DebugEventListener;->nativeIdentity:J

    return-void
.end method


# virtual methods
.method public abstract onDebugEvent(Lcom/microsoft/applications/events/DebugEvent;)V
.end method
