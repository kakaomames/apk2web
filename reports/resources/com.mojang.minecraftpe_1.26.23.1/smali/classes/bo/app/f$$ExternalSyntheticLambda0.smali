.class public final synthetic Lbo/app/f$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/braze/events/IEventSubscriber;


# instance fields
.field public final synthetic f$0:Lbo/app/f;

.field public final synthetic f$1:Lbo/app/g2;


# direct methods
.method public synthetic constructor <init>(Lbo/app/f;Lbo/app/g2;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbo/app/f$$ExternalSyntheticLambda0;->f$0:Lbo/app/f;

    iput-object p2, p0, Lbo/app/f$$ExternalSyntheticLambda0;->f$1:Lbo/app/g2;

    return-void
.end method


# virtual methods
.method public final trigger(Ljava/lang/Object;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lbo/app/f$$ExternalSyntheticLambda0;->f$0:Lbo/app/f;

    iget-object v1, p0, Lbo/app/f$$ExternalSyntheticLambda0;->f$1:Lbo/app/g2;

    check-cast p1, Lbo/app/p0;

    invoke-static {v0, v1, p1}, Lbo/app/f;->$r8$lambda$xrSsowzC_COxYdCtMt1PkzQ31Vo(Lbo/app/f;Lbo/app/g2;Lbo/app/p0;)V

    return-void
.end method
