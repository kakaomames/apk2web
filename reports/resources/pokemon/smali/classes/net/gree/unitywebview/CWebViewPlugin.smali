.class public Lnet/gree/unitywebview/CWebViewPlugin;
.super Landroid/app/Fragment;
.source "CWebViewPlugin.java"


# static fields
.field private static final INPUT_FILE_REQUEST_CODE:I = 0x1

.field private static final REQUEST_CODE:I = 0x186a1

.field private static instanceCount:J

.field private static layout:Landroid/widget/FrameLayout;


# instance fields
.field private canGoBack:Z

.field private canGoForward:Z

.field private mAlertDialogEnabled:Z

.field private mAllowAudioCapture:Z

.field private mAllowRegex:Ljava/util/regex/Pattern;

.field private mAllowVideoCapture:Z

.field private mBasicAuthPassword:Ljava/lang/String;

.field private mBasicAuthUserName:Ljava/lang/String;

.field private mCameraPhotoPath:Ljava/lang/String;

.field private mCustomHeaders:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDenyRegex:Ljava/util/regex/Pattern;

.field private mFilePathCallback:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private mHookRegex:Ljava/util/regex/Pattern;

.field private mInstanceId:J

.field private mPaused:Z

.field private mTransactions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Lnet/gree/unitywebview/CWebViewPlugin;",
            ">;>;"
        }
    .end annotation
.end field

.field private mUploadMessage:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoView:Landroid/view/View;

.field private mWebView:Landroid/webkit/WebView;

.field private mWebViewPlugin:Lnet/gree/unitywebview/CWebViewPluginInterface;

.field private mWebViewUA:Ljava/lang/String;

.field private progress:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 140
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method public static IsWebViewAvailable()Z
    .locals 3

    .line 205
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 206
    new-instance v1, Ljava/util/concurrent/FutureTask;

    new-instance v2, Lnet/gree/unitywebview/CWebViewPlugin$1;

    invoke-direct {v2, v0}, Lnet/gree/unitywebview/CWebViewPlugin$1;-><init>(Landroid/app/Activity;)V

    invoke-direct {v1, v2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 220
    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 222
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method private ProcessChooser(Landroid/webkit/ValueCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    const/4 p1, 0x0

    .line 737
    iput-object p1, p0, Lnet/gree/unitywebview/CWebViewPlugin;->mCameraPhotoPath:Ljava/lang/String;

    .line 738
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 739
    invoke-virtual {p0}, Lnet/gree/unitywebview/CWebViewPlugin;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 743
    :try_start_0
    invoke-direct {p0}, Lnet/gree/unitywebview/CWebViewPlugin;->createImageFile()Ljava/io/File;

    move-result-object v1

    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "CWebViewPlugin"

    const-string v3, "Unable to create Image File"

    .line 746
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, p1

    :goto_0
    if-eqz v1, :cond_1

    .line 750
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/gree/unitywebview/CWebViewPlugin;->mCameraPhotoPath:Ljava/lang/String;

    const-string v2, "PhotoPath"

    .line 751
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 752
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "output"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "android.intent.extra.sizeLimit"

    const-string v1, "720000"

    .line 753
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    move-object p1, v0

    .line 759
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.OPENABLE"

    .line 760
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.ALLOW_MULTIPLE"

    const/4 v2, 0x1

    .line 761
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "image/*"

    .line 762
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    new-array v3, v2, [Landroid/content/Intent;

    aput-object p1, v3, v1

    goto :goto_1

    :cond_2
    new-array v3, v1, [Landroid/content/Intent;

    .line 771
    :goto_1
    new-instance p1, Landroid/content/Intent;

    const-string v1, "android.intent.action.CHOOSER"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.extra.INTENT"

    .line 772
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v0, "android.intent.extra.INITIAL_INTENTS"

    .line 774
    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v0, "Select images"

    .line 776
    invoke-static {p1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1, v2}, Lnet/gree/unitywebview/CWebViewPlugin;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method static synthetic access$000(Lnet/gree/unitywebview/CWebViewPlugin;)Landroid/webkit/WebView;
    .locals 0

    .line 106
    iget-object p0, p0, Lnet/gree/unitywebview/CWebViewPlugin;->mWebView:Landroid/webkit/WebView;

    return-object p0
.end method

.method static synthetic access$002(Lnet/gree/unitywebview/CWebViewPlugin;Landroid/webkit/WebView;)Landroid/webkit/WebView;
    .locals 0

    .line 106
    iput-object p1, p0, Lnet/gree/unitywebview/CWebViewPlugin;->mWebView:Landroid/webkit/WebView;

    return-object p1
.end method

.method static synthetic access$100(Lnet/gree/unitywebview/CWebViewPlugin;)Z
    .locals 0

    .line 106
    iget-boolean p0, p0, Lnet/gree/unitywebview/CWebViewPlugin;->mPaused:Z

    return p0
.end method

.method static synthetic access$1000(Lnet/gree/unitywebview/CWebViewPlugin;)Landroid/view/View;
    .locals 0

    .line 106
    iget-object p0, p0, Lnet/gree/unitywebview/CWebViewPlugin;->mVideoView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1002(Lnet/gree/unitywebview/CWebViewPlugin;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 106
    iput-object p1, p0, Lnet/gree/unitywebview/CWebViewPlugin;->mVideoView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$1100(Lnet/gree/unitywebview/CWebViewPlugin;)Landroid/webkit/ValueCallback;
    .locals 0

    .line 106
    iget-object p0, p0, Lnet/gree/unitywebview/CWebViewPlugin;->mUploadMessage:Landroid/webkit/ValueCallback;

    return-object p0
.end method

.method static synthetic access$1102(Lnet/gree/unitywebview/CWebViewPlugin;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;
    .locals 0

    .line 106
    iput-object p1, p0, Lnet/gree/unitywebview/CWebViewPlugin;->mUploadMessage:Landroid/webkit/ValueCallback;

    return-object p1
.end method

.method static synthetic access$1200(Lnet/gree/unitywebview/CWebViewPlugin;)Landroid/webkit/ValueCallback;
    .locals 0

    .line 106
    iget-object p0, p0, Lnet/gree/unitywebview/CWebViewPlugin;->mFilePathCallback:Landroid/webkit/ValueCallback;

    return-object p0
.end method

.method static synthetic access$1202(Lnet/gree/unitywebview/CWebViewPlugin;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;
    .locals 0

    .line 106
    iput-object p1, p0, Lnet/gree/unitywebview/CWebViewPlugin;->mFilePathCallback:Landroid/webkit/ValueCallback;

    return-object p1
.end method

.method static synthetic access$1300(Lnet/gree/unitywebview/CWebViewPlugin;Landroid/webkit/ValueCallback;)V
    .locals 0

    .line 106
    invoke-direct {p0, p1}, Lnet/gree/unitywebview/CWebViewPlugin;->ProcessChooser(Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method static synthetic access$1400(Lnet/gree/unitywebview/CWebViewPlugin;)Lnet/gree/unitywebview/CWebViewPluginInterface;
    .locals 0

    .line 106
    iget-object p0, p0, Lnet/gree/unitywebview/CWebViewPlugin;->mWebViewPlugin:Lnet/gree/unitywebview/CWebViewPluginInterface;

    return-object p0
.end method

.method static synthetic access$1402(Lnet/gree/unitywebview/CWebViewPlugin;Lnet/gree/unitywebview/CWebViewPluginInterface;)Lnet/gree/unitywebview/CWebViewPluginInterface;
    .locals 0

    .line 106
    iput-object p1, p0, Lnet/gree/unitywebview/CWebViewPlugin;->mWebViewPlugin:Lnet/gree/unitywebview/CWebViewPluginInterface;

    return-object p1
.end method

.method static synthetic access$1502(Lnet/gree/unitywebview/CWebViewPlugin;Z)Z
    .locals 0

    .line 106
    iput-boolean p1, p0, Lnet/gree/unitywebview/CWebViewPlugin;->canGoBack:Z

    return p1
.end method

.method static synthetic access$1602(Lnet/gree/unitywebview/CWebViewPlugin;Z)Z
    .locals 0

    .line 106
    iput-boolean p1, p0, Lnet/gree/unitywebview/CWebViewPlugin;->canGoForward:Z

    return p1
.end method

.method static synthetic access$1700(Lnet/gree/unitywebview/CWebViewPlugin;)Ljava/lang/String;
    .locals 0

    .line 106
    iget-object p0, p0, Lnet/gree/unitywebview/CWebViewPlugin;->mBasicAuthUserName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1800(Lnet/gree/unitywebview/CWebViewPlugin;)Ljava/lang/String;
    .locals 0

    .line 106
    iget-object p0, p0, Lnet/gree/unitywebview/CWebViewPlugin;->mBasicAuthPassword:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1900(Lnet/gree/unitywebview/CWebViewPlugin;)Ljava/lang/String;
    .locals 0

    .line 106
    iget-object p0, p0, Lnet/gree/unitywebview/CWebViewPlugin;->mWebViewUA:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1902(Lnet/gree/unitywebview/CWebViewPlugin;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 106
    iput-object p1, p0, Lnet/gree/unitywebview/CWebViewPlugin;->mWebViewUA:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lnet/gree/unitywebview/CWebViewPlugin;)Ljava/util/List;
    .locals 0

    .line 106
    iget-object p0, p0, Lnet/gree/unitywebview/CWebViewPlugin;->mTransactions:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$2000(Lnet/gree/unitywebview/CWebViewPlugin;)Ljava/util/regex/Pattern;
    .locals 0

    .line 106
    iget-object p0, p0, Lnet/gree/unitywebview/CWebViewPlugin;->mAllowRegex:Ljava/util/regex/Pattern;

    return-object p0
.end method

.method static synthetic access$2002(Lnet/gree/unitywebview/CWebViewPlugin;Ljava/util/regex/Pattern;)Ljava/util/regex/Pattern;
    .locals 0

    .line 106
    iput-object p1, p0, Lnet/gree/unitywebview/CWebViewPlugin;->mAllowRegex:Ljava/util/regex/Pattern;

    return-object p1
.end method

.method static synthetic access$202(Lnet/gree/unitywebview/CWebViewPlugin;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 106
    iput-object p1, p0, Lnet/gree/unitywebview/CWebViewPlugin;->mTransactions:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$2100(Lnet/gree/unitywebview/CWebViewPlugin;)Ljava/util/regex/Pattern;
    .locals 0

    .line 106
    iget-object p0, p0, Lnet/gree/unitywebview/CWebViewPlugin;->mDenyRegex:Ljava/util/regex/Pattern;

    return-object p0
.end method

.method static synthetic access$2102(Lnet/gree/unitywebview/CWebViewPlugin;Ljava/util/regex/Pattern;)Ljava/util/regex/Pattern;
    .locals 0

    .line 106
    iput-object p1, p0, Lnet/gree/unitywebview/CWebViewPlugin;->mDenyRegex:Ljava/util/regex/Pattern;

    return-object p1
.end method

.method static synthetic access$2200(Lnet/gree/unitywebview/CWebViewPlugin;)Ljava/util/regex/Pattern;
    .locals 0

    .line 106
    iget-object p0, p0, Lnet/gree/unitywebview/CWebViewPlugin;->mHookRegex:Ljava/util/regex/Pattern;

    return-object p0
.end method

.method static synthetic access$2202(Lnet/gree/unitywebview/CWebViewPlugin;Ljava/util/regex/Pattern;)Ljava/util/regex/Pattern;
    .locals 0

    .line 106
    iput-object p1, p0, Lnet/gree/unitywebview/CWebViewPlugin;->mHookRegex:Ljava/util/regex/Pattern;

    return-object p1
.end method

.method static synthetic access$2300(Lnet/gree/unitywebview/CWebViewPlugin;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 0

    .line 106
    iget-object p0, p0, Lnet/gree/unitywebview/CWebViewPlugin;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-object p0
.end method

.method static synthetic access$2302(Lnet/gree/unitywebview/CWebViewPlugin;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 0

    .line 106
    iput-object p1, p0, Lnet/gree/unitywebview/CWebViewPlugin;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-object p1
.end method

.method static synthetic access$300(Lnet/gree/unitywebview/CWebViewPlugin;)J
    .locals 2

    .line 106
    iget-wide v0, p0, Lnet/gree/unitywebview/CWebViewPlugin;->mInstanceId:J

    return-wide v0
.end method

.method static synthetic access$400(Lnet/gree/unitywebview/CWebViewPlugin;)Z
    .locals 0

    .line 106
    iget-boolean p0, p0, Lnet/gree/unitywebview/CWebViewPlugin;->mAlertDialogEnabled:Z

    return p0
.end method

.method static synthetic access$402(Lnet/gree/unitywebview/CWebViewPlugin;Z)Z
    .locals 0

    .line 106
    iput-boolean p1, p0, Lnet/gree/unitywebview/CWebViewPlugin;->mAlertDialogEnabled:Z

    return p1
.end method

.method static synthetic access$500(Lnet/gree/unitywebview/CWebViewPlugin;)Z
    .locals 0

    .line 106
    iget-boolean p0, p0, Lnet/gree/unitywebview/CWebViewPlugin;->mAllowVideoCapture:Z

    return p0
.end method

.method static synthetic access$502(Lnet/gree/unitywebview/CWebViewPlugin;Z)Z
    .locals 0

    .line 106
    iput-boolean p1, p0, Lnet/gree/unitywebview/CWebViewPlugin;->mAllowVideoCapture:Z

    return p1
.end method

.method static synthetic access$600(Lnet/gree/unitywebview/CWebViewPlugin;)Z
    .locals 0

    .line 106
    iget-boolean p0, p0, Lnet/gree/unitywebview/CWebViewPlugin;->mAllowAudioCapture:Z

    return p0
.end method

.method static synthetic access$602(Lnet/gree/unitywebview/CWebViewPlugin;Z)Z
    .locals 0

    .line 106
    iput-boolean p1, p0, Lnet/gree/unitywebview/CWebViewPlugin;->mAllowAudioCapture:Z

    return p1
.end method

.method static synthetic access$700(Lnet/gree/unitywebview/CWebViewPlugin;)Ljava/util/Hashtable;
    .locals 0

    .line 106
    iget-object p0, p0, Lnet/gree/unitywebview/CWebViewPlugin;->mCustomHeaders:Ljava/util/Hashtable;

    return-object p0
.end method

.method static synthetic access$702(Lnet/gree/unitywebview/CWebViewPlugin;Ljava/util/Hashtable;)Ljava/util/Hashtable;
    .locals 0

    .line 106
    iput-object p1, p0, Lnet/gree/unitywebview/CWebViewPlugin;->mCustomHeaders:Ljava/util/Hashtable;

    return-object p1
.end method

.method static synthetic access$802(Lnet/gree/unitywebview/CWebViewPlugin;I)I
    .locals 0

    .line 106
    iput p1, p0, Lnet/gree/unitywebview/CWebViewPlugin;->progress:I

    return p1
.end method

.method static synthetic access$900()Landroid/widget/FrameLayout;
    .locals 1

    .line 106
    sget-object v0, Lnet/gree/unitywebview/CWebViewPlugin;->layout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$902(Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;
    .locals 0

    .line 106
    sput-object p0, Lnet/gree/unitywebview/CWebViewPlugin;->layout:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method private createImageFile()Ljava/io/File;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 781
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd_HHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 782
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JPEG_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 783
    sget-object v1, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const-string v2, ".jpg"

    .line 784
    invoke-static {v0, v2, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public AddCustomHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1016
    iget-object v0, p0, Lnet/gree/unitywebview/CWebViewPlugin;->mCustomHeaders:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    return-void

    .line 1019
    :cond_0
    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public ClearCache(Z)V
    .locals 2

    .line 1124
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 1125
    new-instance v1, Lnet/gree/unitywebview/CWebViewPlugin$20;

    invoke-direct {v1, p0, p1}, Lnet/gree/unitywebview/CWebViewPlugin$20;-><init>(Lnet/gree/unitywebview/CWebViewPlugin;Z)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public ClearCookies()V
    .locals 2

    .line 1056
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 1058
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/CookieManager;->removeAllCookies(Landroid/webkit/ValueCallback;)V

    .line 1059
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->flush()V

    goto :goto_0

    .line 1061
    :cond_0
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 1062
    invoke-static {v0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    move-result-object v0

    .line 1063
    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->startSync()V

    .line 1064
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    .line 1065
    invoke-virtual {v1}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 1066
    invoke-virtual {v1}, Landroid/webkit/CookieManager;->removeSessionCookie()V

    .line 1067
    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->stopSync()V

    .line 1068
    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    :goto_0
    return-void
.end method

.method public ClearCustomHeader()V
    .locals 1

    .line 1047
    iget-object v0, p0, Lnet/gree/unitywebview/CWebViewPlugin;->mCustomHeaders:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    return-void

    .line 1051
    :cond_0
    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    return-void
.end method

.method public Destroy()V
    .locals 2

    .line 792
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 794
    new-instance v1, Lnet/gree/unitywebview/CWebViewPlugin$6;

    invoke-direct {v1, p0, v0, p0}, Lnet/gree/unitywebview/CWebViewPlugin$6;-><init>(Lnet/gree/unitywebview/CWebViewPlugin;Landroid/app/Activity;Lnet/gree/unitywebview/CWebViewPlugin;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public EvaluateJS(Ljava/lang/String;)V
    .locals 2

    .line 873
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 874
    new-instance v1, Lnet/gree/unitywebview/CWebViewPlugin$10;

    invoke-direct {v1, p0, p1}, Lnet/gree/unitywebview/CWebViewPlugin$10;-><init>(Lnet/gree/unitywebview/CWebViewPlugin;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public GetCookies(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1088
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 1089
    invoke-virtual {v0, p1}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public GetCustomHeaderValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1024
    iget-object v0, p0, Lnet/gree/unitywebview/CWebViewPlugin;->mCustomHeaders:Ljava/util/Hashtable;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 1028
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    .line 1031
    :cond_1
    iget-object v0, p0, Lnet/gree/unitywebview/CWebViewPlugin;->mCustomHeaders:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public GoBack()V
    .locals 2

    .line 887
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 888
    new-instance v1, Lnet/gree/unitywebview/CWebViewPlugin$11;

    invoke-direct {v1, p0}, Lnet/gree/unitywebview/CWebViewPlugin$11;-><init>(Lnet/gree/unitywebview/CWebViewPlugin;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public GoForward()V
    .locals 2

    .line 897
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 898
    new-instance v1, Lnet/gree/unitywebview/CWebViewPlugin$12;

    invoke-direct {v1, p0}, Lnet/gree/unitywebview/CWebViewPlugin$12;-><init>(Lnet/gree/unitywebview/CWebViewPlugin;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Init(Ljava/lang/String;ZZILjava/lang/String;)V
    .locals 12

    move-object v9, p0

    .line 282
    sget-object v10, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 283
    sget-wide v0, Lnet/gree/unitywebview/CWebViewPlugin;->instanceCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    sput-wide v0, Lnet/gree/unitywebview/CWebViewPlugin;->instanceCount:J

    .line 284
    iput-wide v0, v9, Lnet/gree/unitywebview/CWebViewPlugin;->mInstanceId:J

    .line 285
    new-instance v11, Lnet/gree/unitywebview/CWebViewPlugin$4;

    move-object v0, v11

    move-object v1, p0

    move-object v2, p0

    move-object v3, v10

    move-object v4, p1

    move-object/from16 v5, p5

    move v6, p3

    move/from16 v7, p4

    move v8, p2

    invoke-direct/range {v0 .. v8}, Lnet/gree/unitywebview/CWebViewPlugin$4;-><init>(Lnet/gree/unitywebview/CWebViewPlugin;Lnet/gree/unitywebview/CWebViewPlugin;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZIZ)V

    invoke-virtual {v10, v11}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 698
    invoke-virtual {v10}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 699
    new-instance v1, Lnet/gree/unitywebview/CWebViewPlugin$5;

    move-object v2, p1

    invoke-direct {v1, p0, v0, v10, p1}, Lnet/gree/unitywebview/CWebViewPlugin$5;-><init>(Lnet/gree/unitywebview/CWebViewPlugin;Landroid/view/View;Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v1, v9, Lnet/gree/unitywebview/CWebViewPlugin;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 733
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, v9, Lnet/gree/unitywebview/CWebViewPlugin;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public IsInitialized()Z
    .locals 1

    .line 277
    iget-object v0, p0, Lnet/gree/unitywebview/CWebViewPlugin;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public LoadHTML(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 863
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 864
    new-instance v1, Lnet/gree/unitywebview/CWebViewPlugin$9;

    invoke-direct {v1, p0, p2, p1}, Lnet/gree/unitywebview/CWebViewPlugin$9;-><init>(Lnet/gree/unitywebview/CWebViewPlugin;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public LoadURL(Ljava/lang/String;)V
    .locals 2

    .line 848
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 849
    new-instance v1, Lnet/gree/unitywebview/CWebViewPlugin$8;

    invoke-direct {v1, p0, p1}, Lnet/gree/unitywebview/CWebViewPlugin$8;-><init>(Lnet/gree/unitywebview/CWebViewPlugin;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public OnApplicationPause(Z)V
    .locals 1

    .line 971
    iput-boolean p1, p0, Lnet/gree/unitywebview/CWebViewPlugin;->mPaused:Z

    .line 972
    sget-object p1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 973
    new-instance v0, Lnet/gree/unitywebview/CWebViewPlugin$19;

    invoke-direct {v0, p0, p1}, Lnet/gree/unitywebview/CWebViewPlugin$19;-><init>(Lnet/gree/unitywebview/CWebViewPlugin;Landroid/app/Activity;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Reload()V
    .locals 2

    .line 907
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 908
    new-instance v1, Lnet/gree/unitywebview/CWebViewPlugin$13;

    invoke-direct {v1, p0}, Lnet/gree/unitywebview/CWebViewPlugin$13;-><init>(Lnet/gree/unitywebview/CWebViewPlugin;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public RemoveCustomHeader(Ljava/lang/String;)V
    .locals 1

    .line 1036
    iget-object v0, p0, Lnet/gree/unitywebview/CWebViewPlugin;->mCustomHeaders:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    return-void

    .line 1040
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1041
    iget-object v0, p0, Lnet/gree/unitywebview/CWebViewPlugin;->mCustomHeaders:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public SaveCookies()V
    .locals 2

    .line 1074
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 1076
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->flush()V

    goto :goto_0

    .line 1078
    :cond_0
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 1079
    invoke-static {v0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    move-result-object v0

    .line 1080
    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->startSync()V

    .line 1081
    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->stopSync()V

    .line 1082
    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    :goto_0
    return-void
.end method

.method public SetAlertDialogEnabled(Z)V
    .locals 2

    .line 949
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 950
    new-instance v1, Lnet/gree/unitywebview/CWebViewPlugin$16;

    invoke-direct {v1, p0, p1}, Lnet/gree/unitywebview/CWebViewPlugin$16;-><init>(Lnet/gree/unitywebview/CWebViewPlugin;Z)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public SetBasicAuthInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1118
    iput-object p1, p0, Lnet/gree/unitywebview/CWebViewPlugin;->mBasicAuthUserName:Ljava/lang/String;

    .line 1119
    iput-object p2, p0, Lnet/gree/unitywebview/CWebViewPlugin;->mBasicAuthPassword:Ljava/lang/String;

    return-void
.end method

.method public SetCameraAccess(Z)V
    .locals 2

    .line 956
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 957
    new-instance v1, Lnet/gree/unitywebview/CWebViewPlugin$17;

    invoke-direct {v1, p0, p1}, Lnet/gree/unitywebview/CWebViewPlugin$17;-><init>(Lnet/gree/unitywebview/CWebViewPlugin;Z)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public SetCookies(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1094
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 1096
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 1097
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1099
    invoke-virtual {v0, p1, v1}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1101
    :cond_0
    invoke-virtual {v0}, Landroid/webkit/CookieManager;->flush()V

    goto :goto_2

    .line 1103
    :cond_1
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 1104
    invoke-static {v0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    move-result-object v0

    .line 1105
    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->startSync()V

    .line 1106
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    .line 1107
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1109
    invoke-virtual {v1, p1, v2}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1111
    :cond_2
    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->stopSync()V

    .line 1112
    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    :goto_2
    return-void
.end method

.method public SetMargins(IIII)V
    .locals 3

    .line 917
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 922
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 923
    sget-object p1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 924
    new-instance p2, Lnet/gree/unitywebview/CWebViewPlugin$14;

    invoke-direct {p2, p0, v0}, Lnet/gree/unitywebview/CWebViewPlugin$14;-><init>(Lnet/gree/unitywebview/CWebViewPlugin;Landroid/widget/FrameLayout$LayoutParams;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public SetMicrophoneAccess(Z)V
    .locals 2

    .line 963
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 964
    new-instance v1, Lnet/gree/unitywebview/CWebViewPlugin$18;

    invoke-direct {v1, p0, p1}, Lnet/gree/unitywebview/CWebViewPlugin$18;-><init>(Lnet/gree/unitywebview/CWebViewPlugin;Z)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public SetTextZoom(I)V
    .locals 2

    .line 1135
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 1136
    new-instance v1, Lnet/gree/unitywebview/CWebViewPlugin$21;

    invoke-direct {v1, p0, p1}, Lnet/gree/unitywebview/CWebViewPlugin$21;-><init>(Lnet/gree/unitywebview/CWebViewPlugin;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public SetURLPattern(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 832
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    goto :goto_1

    :cond_1
    :goto_0
    move-object p1, v0

    :goto_1
    if-eqz p2, :cond_3

    .line 833
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p2

    goto :goto_3

    :cond_3
    :goto_2
    move-object p2, v0

    :goto_3
    if-eqz p3, :cond_5

    .line 834
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_4

    goto :goto_4

    :cond_4
    invoke-static {p3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 835
    :cond_5
    :goto_4
    sget-object p3, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 836
    new-instance v1, Lnet/gree/unitywebview/CWebViewPlugin$7;

    invoke-direct {v1, p0, p1, p2, v0}, Lnet/gree/unitywebview/CWebViewPlugin$7;-><init>(Lnet/gree/unitywebview/CWebViewPlugin;Ljava/util/regex/Pattern;Ljava/util/regex/Pattern;Ljava/util/regex/Pattern;)V

    invoke-virtual {p3, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method public SetVisibility(Z)V
    .locals 2

    .line 933
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 934
    new-instance v1, Lnet/gree/unitywebview/CWebViewPlugin$15;

    invoke-direct {v1, p0, p1}, Lnet/gree/unitywebview/CWebViewPlugin$15;-><init>(Lnet/gree/unitywebview/CWebViewPlugin;Z)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 159
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void

    .line 162
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-lt v1, v2, :cond_5

    .line 163
    iget-object v1, p0, Lnet/gree/unitywebview/CWebViewPlugin;->mFilePathCallback:Landroid/webkit/ValueCallback;

    if-nez v1, :cond_1

    .line 164
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void

    :cond_1
    if-ne p2, v3, :cond_4

    const/4 p1, 0x0

    if-nez p3, :cond_2

    .line 171
    iget-object p2, p0, Lnet/gree/unitywebview/CWebViewPlugin;->mCameraPhotoPath:Ljava/lang/String;

    if-eqz p2, :cond_4

    new-array p3, v0, [Landroid/net/Uri;

    .line 172
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    aput-object p2, p3, p1

    goto :goto_0

    .line 175
    :cond_2
    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_3

    .line 178
    iget-object p2, p0, Lnet/gree/unitywebview/CWebViewPlugin;->mCameraPhotoPath:Ljava/lang/String;

    if-eqz p2, :cond_4

    new-array p3, v0, [Landroid/net/Uri;

    .line 179
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    aput-object p2, p3, p1

    goto :goto_0

    :cond_3
    new-array p3, v0, [Landroid/net/Uri;

    .line 182
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    aput-object p2, p3, p1

    goto :goto_0

    :cond_4
    move-object p3, v4

    .line 186
    :goto_0
    iget-object p1, p0, Lnet/gree/unitywebview/CWebViewPlugin;->mFilePathCallback:Landroid/webkit/ValueCallback;

    invoke-interface {p1, p3}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 187
    iput-object v4, p0, Lnet/gree/unitywebview/CWebViewPlugin;->mFilePathCallback:Landroid/webkit/ValueCallback;

    goto :goto_2

    .line 189
    :cond_5
    iget-object v0, p0, Lnet/gree/unitywebview/CWebViewPlugin;->mUploadMessage:Landroid/webkit/ValueCallback;

    if-nez v0, :cond_6

    .line 190
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void

    :cond_6
    if-ne p2, v3, :cond_7

    if-eqz p3, :cond_7

    .line 196
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    goto :goto_1

    :cond_7
    move-object p1, v4

    .line 199
    :goto_1
    iget-object p2, p0, Lnet/gree/unitywebview/CWebViewPlugin;->mUploadMessage:Landroid/webkit/ValueCallback;

    invoke-interface {p2, p1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 200
    iput-object v4, p0, Lnet/gree/unitywebview/CWebViewPlugin;->mUploadMessage:Landroid/webkit/ValueCallback;

    :goto_2
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    const v0, 0x186a1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 147
    aget v0, p3, v0

    if-nez v0, :cond_1

    .line 148
    iget-object v0, p0, Lnet/gree/unitywebview/CWebViewPlugin;->mFilePathCallback:Landroid/webkit/ValueCallback;

    invoke-direct {p0, v0}, Lnet/gree/unitywebview/CWebViewPlugin;->ProcessChooser(Landroid/webkit/ValueCallback;)V

    .line 153
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method

.method public verifyStoragePermissions(Landroid/app/Activity;)Z
    .locals 8

    .line 229
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const-string v2, "android.permission.CAMERA"

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    const-string v4, "android.permission.READ_EXTERNAL_STORAGE"

    const/4 v5, 0x1

    const/16 v6, 0x1d

    if-lt v0, v6, :cond_2

    .line 230
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 231
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 232
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 233
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v2, v6}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 235
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "android.permission.ACCESS_MEDIA_LOCATION"

    invoke-virtual {v0, v7, v6}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v4, :cond_1

    if-nez v3, :cond_1

    if-nez v2, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return v5

    .line 240
    :cond_1
    :goto_0
    new-instance v0, Lnet/gree/unitywebview/CWebViewPlugin$2;

    invoke-direct {v0, p0}, Lnet/gree/unitywebview/CWebViewPlugin$2;-><init>(Lnet/gree/unitywebview/CWebViewPlugin;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return v1

    .line 252
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x17

    if-lt v0, v6, :cond_5

    .line 253
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 254
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 255
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 256
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v2, v6}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v4, :cond_4

    if-nez v3, :cond_4

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    return v5

    .line 260
    :cond_4
    :goto_1
    new-instance v0, Lnet/gree/unitywebview/CWebViewPlugin$3;

    invoke-direct {v0, p0}, Lnet/gree/unitywebview/CWebViewPlugin$3;-><init>(Lnet/gree/unitywebview/CWebViewPlugin;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return v1

    :cond_5
    return v5
.end method
