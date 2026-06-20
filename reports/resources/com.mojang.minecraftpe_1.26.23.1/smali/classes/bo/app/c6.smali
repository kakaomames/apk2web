.class public abstract Lbo/app/c6;
.super Lbo/app/a6;
.source "SourceFile"

# interfaces
.implements Lbo/app/u2;


# instance fields
.field private e:Lcom/braze/models/outgoing/BrazeProperties;


# direct methods
.method protected constructor <init>(Lcom/braze/models/outgoing/BrazeProperties;Lbo/app/w1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lbo/app/a6;-><init>(Lbo/app/w1;)V

    .line 2
    iput-object p1, p0, Lbo/app/c6;->e:Lcom/braze/models/outgoing/BrazeProperties;

    return-void
.end method


# virtual methods
.method public c()Lcom/braze/models/outgoing/BrazeProperties;
    .locals 1

    .line 1
    iget-object v0, p0, Lbo/app/c6;->e:Lcom/braze/models/outgoing/BrazeProperties;

    return-object v0
.end method
