.class public Lcom/microsoft/xal/browser/BrowserSelectionResult$BrowserInfo;
.super Ljava/lang/Object;
.source "BrowserSelectionResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/xal/browser/BrowserSelectionResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BrowserInfo"
.end annotation


# instance fields
.field public final packageName:Ljava/lang/String;

.field public final versionCode:I

.field public final versionName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/microsoft/xal/browser/BrowserSelectionResult$BrowserInfo;->packageName:Ljava/lang/String;

    .line 26
    iput p2, p0, Lcom/microsoft/xal/browser/BrowserSelectionResult$BrowserInfo;->versionCode:I

    .line 27
    iput-object p3, p0, Lcom/microsoft/xal/browser/BrowserSelectionResult$BrowserInfo;->versionName:Ljava/lang/String;

    return-void
.end method
