.class public Lcom/microsoft/xal/browser/IntentHandler;
.super Landroid/app/Activity;
.source "IntentHandler.java"


# instance fields
.field public final m_logger:Lcom/microsoft/xal/logging/XalLogger;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 9
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 11
    new-instance v0, Lcom/microsoft/xal/logging/XalLogger;

    const-string v1, "IntentHandler"

    invoke-direct {v0, v1}, Lcom/microsoft/xal/logging/XalLogger;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/microsoft/xal/browser/IntentHandler;->m_logger:Lcom/microsoft/xal/logging/XalLogger;

    return-void
.end method

.method public static synthetic Flush$003(Lcom/microsoft/xal/logging/XalLogger;)V
    .locals 1

    invoke-virtual/range {p0 .. p0}, Lcom/microsoft/xal/logging/XalLogger;->Flush()V

    return-void
.end method

.method public static synthetic Important$002(Lcom/microsoft/xal/logging/XalLogger;Ljava/lang/String;)V
    .locals 1

    invoke-virtual/range {p0 .. p1}, Lcom/microsoft/xal/logging/XalLogger;->Important(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic addFlags$007(Landroid/content/Intent;I)Landroid/content/Intent;
    .locals 1

    invoke-virtual/range {p0 .. p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic finish$009(Lcom/microsoft/xal/browser/IntentHandler;)V
    .locals 1

    invoke-virtual/range {p0 .. p0}, Lcom/microsoft/xal/browser/IntentHandler;->finish()V

    return-void
.end method

.method public static synthetic getData$005(Landroid/content/Intent;)Landroid/net/Uri;
    .locals 1

    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic getIntent$004(Lcom/microsoft/xal/browser/IntentHandler;)Landroid/content/Intent;
    .locals 1

    invoke-virtual/range {p0 .. p0}, Lcom/microsoft/xal/browser/IntentHandler;->getIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic onCreate$001(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic setData$006(Landroid/content/Intent;Landroid/net/Uri;)Landroid/content/Intent;
    .locals 1

    invoke-virtual/range {p0 .. p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic startActivity$008(Lcom/microsoft/xal/browser/IntentHandler;Landroid/content/Intent;)V
    .locals 1

    invoke-virtual/range {p0 .. p1}, Lcom/microsoft/xal/browser/IntentHandler;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    const v2, 0x2

    new-array v1, v2, [Ljava/lang/Object;

    const v2, 0x0

    aput-object p0, v1, v2

    const v2, 0x1

    aput-object p1, v1, v2

    sget-object v0, Lorg/spongycastle/asn1/microsoft/Zo/WSAZ;->LIUfTJnfSiuTsGP:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-void
.end method
