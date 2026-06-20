.class Lnet/gree/unitywebview/CWebViewPlugin$4;
.super Ljava/lang/Object;
.source "CWebViewPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/gree/unitywebview/CWebViewPlugin;->Init(Ljava/lang/String;ZZILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/gree/unitywebview/CWebViewPlugin;

.field final synthetic val$a:Landroid/app/Activity;

.field final synthetic val$androidForceDarkMode:I

.field final synthetic val$gameObject:Ljava/lang/String;

.field final synthetic val$self:Lnet/gree/unitywebview/CWebViewPlugin;

.field final synthetic val$transparent:Z

.field final synthetic val$ua:Ljava/lang/String;

.field final synthetic val$zoom:Z


# direct methods
.method constructor <init>(Lnet/gree/unitywebview/CWebViewPlugin;Lnet/gree/unitywebview/CWebViewPlugin;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZIZ)V
    .locals 0

    .line 285
    iput-object p1, p0, Lnet/gree/unitywebview/CWebViewPlugin$4;->this$0:Lnet/gree/unitywebview/CWebViewPlugin;

    iput-object p2, p0, Lnet/gree/unitywebview/CWebViewPlugin$4;->val$self:Lnet/gree/unitywebview/CWebViewPlugin;

    iput-object p3, p0, Lnet/gree/unitywebview/CWebViewPlugin$4;->val$a:Landroid/app/Activity;

    iput-object p4, p0, Lnet/gree/unitywebview/CWebViewPlugin$4;->val$gameObject:Ljava/lang/String;

    iput-object p5, p0, Lnet/gree/unitywebview/CWebViewPlugin$4;->val$ua:Ljava/lang/String;

    iput-boolean p6, p0, Lnet/gree/unitywebview/CWebViewPlugin$4;->val$zoom:Z

    iput p7, p0, Lnet/gree/unitywebview/CWebViewPlugin$4;->val$androidForceDarkMode:I

    iput-boolean p8, p0, Lnet/gree/unitywebview/CWebViewPlugin$4;->val$transparent:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 286
    iget-object v0, p0, Lnet/gree/unitywebview/CWebViewPlugin$4;->this$0:Lnet/gree/unitywebview/CWebViewPlugin;

    invoke-static {v0}, Lnet/gree/unitywebview/CWebViewPlugin;->access$000(Lnet/gree/unitywebview/CWebViewPlugin;)Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 290
    :cond_0
    iget-object v0, p0, Lnet/gree/unitywebview/CWebViewPlugin$4;->this$0:Lnet/gree/unitywebview/CWebViewPlugin;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/gree/unitywebview/CWebViewPlugin;->setRetainInstance(Z)V

    .line 291
    iget-object v0, p0, Lnet/gree/unitywebview/CWebViewPlugin$4;->this$0:Lnet/gree/unitywebview/CWebViewPlugin;

    invoke-static {v0}, Lnet/gree/unitywebview/CWebViewPlugin;->access$100(Lnet/gree/unitywebview/CWebViewPlugin;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 292
    iget-object v0, p0, Lnet/gree/unitywebview/CWebViewPlugin$4;->this$0:Lnet/gree/unitywebview/CWebViewPlugin;

    invoke-static {v0}, Lnet/gree/unitywebview/CWebViewPlugin;->access$200(Lnet/gree/unitywebview/CWebViewPlugin;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    .line 293
    iget-object v0, p0, Lnet/gree/unitywebview/CWebViewPlugin$4;->this$0:Lnet/gree/unitywebview/CWebViewPlugin;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v3}, Lnet/gree/unitywebview/CWebViewPlugin;->access$202(Lnet/gree/unitywebview/CWebViewPlugin;Ljava/util/List;)Ljava/util/List;

    .line 295
    :cond_1
    iget-object v0, p0, Lnet/gree/unitywebview/CWebViewPlugin$4;->this$0:Lnet/gree/unitywebview/CWebViewPlugin;

    invoke-static {v0}, Lnet/gree/unitywebview/CWebViewPlugin;->access$200(Lnet/gree/unitywebview/CWebViewPlugin;)Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Lnet/gree/unitywebview/CWebViewPlugin$4;->val$self:Lnet/gree/unitywebview/CWebViewPlugin;

    const-string v4, "add"

    invoke-static {v4, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 297
    :cond_2
    iget-object v0, p0, Lnet/gree/unitywebview/CWebViewPlugin$4;->val$a:Landroid/app/Activity;

    .line 298
    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 299
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iget-object v3, p0, Lnet/gree/unitywebview/CWebViewPlugin$4;->val$self:Lnet/gree/unitywebview/CWebViewPlugin;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CWebViewPlugin"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lnet/gree/unitywebview/CWebViewPlugin$4;->this$0:Lnet/gree/unitywebview/CWebViewPlugin;

    .line 300
    invoke-static {v5}, Lnet/gree/unitywebview/CWebViewPlugin;->access$300(Lnet/gree/unitywebview/CWebViewPlugin;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 301
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 304
    :goto_0
    iget-object v0, p0, Lnet/gree/unitywebview/CWebViewPlugin$4;->this$0:Lnet/gree/unitywebview/CWebViewPlugin;

    invoke-static {v0, v1}, Lnet/gree/unitywebview/CWebViewPlugin;->access$402(Lnet/gree/unitywebview/CWebViewPlugin;Z)Z

    .line 305
    iget-object v0, p0, Lnet/gree/unitywebview/CWebViewPlugin$4;->this$0:Lnet/gree/unitywebview/CWebViewPlugin;

    invoke-static {v0, v2}, Lnet/gree/unitywebview/CWebViewPlugin;->access$502(Lnet/gree/unitywebview/CWebViewPlugin;Z)Z

    .line 306
    iget-object v0, p0, Lnet/gree/unitywebview/CWebViewPlugin$4;->this$0:Lnet/gree/unitywebview/CWebViewPlugin;

    invoke-static {v0, v2}, Lnet/gree/unitywebview/CWebViewPlugin;->access$602(Lnet/gree/unitywebview/CWebViewPlugin;Z)Z

    .line 307
    iget-object v0, p0, Lnet/gree/unitywebview/CWebViewPlugin$4;->this$0:Lnet/gree/unitywebview/CWebViewPlugin;

    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    invoke-static {v0, v3}, Lnet/gree/unitywebview/CWebViewPlugin;->access$702(Lnet/gree/unitywebview/CWebViewPlugin;Ljava/util/Hashtable;)Ljava/util/Hashtable;

    .line 309
    new-instance v0, Landroid/webkit/WebView;

    iget-object v3, p0, Lnet/gree/unitywebview/CWebViewPlugin$4;->val$a:Landroid/app/Activity;

    invoke-direct {v0, v3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 310
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    const/4 v5, 0x2

    if-lt v3, v4, :cond_3

    .line 312
    :try_start_0
    iget-object v3, p0, Lnet/gree/unitywebview/CWebViewPlugin$4;->val$a:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p0, Lnet/gree/unitywebview/CWebViewPlugin$4;->val$a:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 313
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v3, v5

    if-eqz v3, :cond_3

    .line 314
    invoke-static {v1}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    :cond_3
    :goto_1
    const/16 v3, 0x8

    .line 319
    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 320
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setFocusable(Z)V

    .line 321
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setFocusableInTouchMode(Z)V

    .line 329
    new-instance v3, Lnet/gree/unitywebview/CWebViewPlugin$4$1;

    invoke-direct {v3, p0}, Lnet/gree/unitywebview/CWebViewPlugin$4$1;-><init>(Lnet/gree/unitywebview/CWebViewPlugin$4;)V

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 451
    iget-object v3, p0, Lnet/gree/unitywebview/CWebViewPlugin$4;->this$0:Lnet/gree/unitywebview/CWebViewPlugin;

    new-instance v4, Lnet/gree/unitywebview/CWebViewPluginInterface;

    iget-object v6, p0, Lnet/gree/unitywebview/CWebViewPlugin$4;->val$self:Lnet/gree/unitywebview/CWebViewPlugin;

    iget-object v7, p0, Lnet/gree/unitywebview/CWebViewPlugin$4;->val$gameObject:Ljava/lang/String;

    invoke-direct {v4, v6, v7}, Lnet/gree/unitywebview/CWebViewPluginInterface;-><init>(Lnet/gree/unitywebview/CWebViewPlugin;Ljava/lang/String;)V

    invoke-static {v3, v4}, Lnet/gree/unitywebview/CWebViewPlugin;->access$1402(Lnet/gree/unitywebview/CWebViewPlugin;Lnet/gree/unitywebview/CWebViewPluginInterface;)Lnet/gree/unitywebview/CWebViewPluginInterface;

    .line 452
    new-instance v3, Lnet/gree/unitywebview/CWebViewPlugin$4$2;

    invoke-direct {v3, p0, v0}, Lnet/gree/unitywebview/CWebViewPlugin$4$2;-><init>(Lnet/gree/unitywebview/CWebViewPlugin$4;Landroid/webkit/WebView;)V

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 617
    iget-object v3, p0, Lnet/gree/unitywebview/CWebViewPlugin$4;->this$0:Lnet/gree/unitywebview/CWebViewPlugin;

    invoke-static {v3}, Lnet/gree/unitywebview/CWebViewPlugin;->access$1400(Lnet/gree/unitywebview/CWebViewPlugin;)Lnet/gree/unitywebview/CWebViewPluginInterface;

    move-result-object v3

    const-string v4, "Unity"

    invoke-virtual {v0, v3, v4}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 619
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    .line 620
    iget-object v4, p0, Lnet/gree/unitywebview/CWebViewPlugin$4;->val$ua:Ljava/lang/String;

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_4

    .line 621
    iget-object v4, p0, Lnet/gree/unitywebview/CWebViewPlugin$4;->val$ua:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 623
    :cond_4
    iget-object v4, p0, Lnet/gree/unitywebview/CWebViewPlugin$4;->this$0:Lnet/gree/unitywebview/CWebViewPlugin;

    invoke-virtual {v3}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lnet/gree/unitywebview/CWebViewPlugin;->access$1902(Lnet/gree/unitywebview/CWebViewPlugin;Ljava/lang/String;)Ljava/lang/String;

    .line 624
    iget-boolean v4, p0, Lnet/gree/unitywebview/CWebViewPlugin$4;->val$zoom:Z

    if-eqz v4, :cond_5

    .line 625
    invoke-virtual {v3, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 626
    invoke-virtual {v3, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    goto :goto_2

    .line 628
    :cond_5
    invoke-virtual {v3, v2}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 629
    invoke-virtual {v3, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 631
    :goto_2
    invoke-virtual {v3, v2}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 632
    invoke-virtual {v3, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 633
    invoke-virtual {v3, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 634
    invoke-virtual {v3, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 635
    invoke-virtual {v3, v1}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 637
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x10

    if-lt v4, v6, :cond_6

    .line 639
    invoke-virtual {v3, v1}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 641
    :cond_6
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x11

    if-lt v4, v7, :cond_7

    .line 642
    invoke-virtual {v3, v2}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 644
    :cond_7
    invoke-virtual {v3, v1}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 645
    invoke-virtual {v3, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 646
    invoke-virtual {v0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v7, "databases"

    invoke-virtual {v4, v7, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 647
    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setDatabasePath(Ljava/lang/String;)V

    .line 648
    invoke-virtual {v3, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 651
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1d

    if-lt v4, v7, :cond_d

    .line 652
    iget v4, p0, Lnet/gree/unitywebview/CWebViewPlugin$4;->val$androidForceDarkMode:I

    if-eqz v4, :cond_a

    if-eq v4, v1, :cond_9

    if-eq v4, v5, :cond_8

    goto :goto_3

    .line 670
    :cond_8
    invoke-virtual {v3, v5}, Landroid/webkit/WebSettings;->setForceDark(I)V

    goto :goto_3

    .line 667
    :cond_9
    invoke-virtual {v3, v2}, Landroid/webkit/WebSettings;->setForceDark(I)V

    goto :goto_3

    .line 655
    :cond_a
    sget-object v4, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    .line 656
    iget v4, v4, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v4, v4, 0x30

    if-eq v4, v6, :cond_c

    const/16 v6, 0x20

    if-eq v4, v6, :cond_b

    goto :goto_3

    .line 661
    :cond_b
    invoke-virtual {v3, v5}, Landroid/webkit/WebSettings;->setForceDark(I)V

    goto :goto_3

    .line 658
    :cond_c
    invoke-virtual {v3, v2}, Landroid/webkit/WebSettings;->setForceDark(I)V

    .line 675
    :cond_d
    :goto_3
    iget-boolean v3, p0, Lnet/gree/unitywebview/CWebViewPlugin$4;->val$transparent:Z

    if-eqz v3, :cond_e

    .line 676
    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 679
    :cond_e
    invoke-static {}, Lnet/gree/unitywebview/CWebViewPlugin;->access$900()Landroid/widget/FrameLayout;

    move-result-object v3

    const/4 v4, -0x1

    if-eqz v3, :cond_f

    invoke-static {}, Lnet/gree/unitywebview/CWebViewPlugin;->access$900()Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    iget-object v5, p0, Lnet/gree/unitywebview/CWebViewPlugin$4;->val$a:Landroid/app/Activity;

    const v6, 0x1020002

    invoke-virtual {v5, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-eq v3, v5, :cond_10

    .line 680
    :cond_f
    new-instance v3, Landroid/widget/FrameLayout;

    iget-object v5, p0, Lnet/gree/unitywebview/CWebViewPlugin$4;->val$a:Landroid/app/Activity;

    invoke-direct {v3, v5}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-static {v3}, Lnet/gree/unitywebview/CWebViewPlugin;->access$902(Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;

    .line 681
    iget-object v3, p0, Lnet/gree/unitywebview/CWebViewPlugin$4;->val$a:Landroid/app/Activity;

    .line 682
    invoke-static {}, Lnet/gree/unitywebview/CWebViewPlugin;->access$900()Landroid/widget/FrameLayout;

    move-result-object v5

    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v6, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 681
    invoke-virtual {v3, v5, v6}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 686
    invoke-static {}, Lnet/gree/unitywebview/CWebViewPlugin;->access$900()Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 687
    invoke-static {}, Lnet/gree/unitywebview/CWebViewPlugin;->access$900()Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->setFocusableInTouchMode(Z)V

    .line 689
    :cond_10
    invoke-static {}, Lnet/gree/unitywebview/CWebViewPlugin;->access$900()Landroid/widget/FrameLayout;

    move-result-object v1

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v4, v4, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 695
    iget-object v1, p0, Lnet/gree/unitywebview/CWebViewPlugin$4;->this$0:Lnet/gree/unitywebview/CWebViewPlugin;

    invoke-static {v1, v0}, Lnet/gree/unitywebview/CWebViewPlugin;->access$002(Lnet/gree/unitywebview/CWebViewPlugin;Landroid/webkit/WebView;)Landroid/webkit/WebView;

    return-void
.end method
