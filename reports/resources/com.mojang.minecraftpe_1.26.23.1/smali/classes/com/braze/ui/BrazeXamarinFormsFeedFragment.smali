.class public Lcom/braze/ui/BrazeXamarinFormsFeedFragment;
.super Landroid/app/ListFragment;
.source "BrazeXamarinFormsFeedFragment.java"

# interfaces
.implements Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/braze/ui/BrazeXamarinFormsFeedFragment$FeedGestureListener;
    }
.end annotation


# static fields
.field private static final AUTO_HIDE_REFRESH_INDICATOR_DELAY_MS:J = 0x9c4L

.field private static final MAX_FEED_TTL_SECONDS:I = 0x3c

.field private static final NETWORK_PROBLEM_WARNING_MS:I = 0x1388

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private currentCardIndexAtBottomOfScreen:I

.field private mAdapter:Lcom/braze/ui/adapters/BrazeListAdapter;

.field private mBraze:Lcom/braze/IBraze;

.field private mCategories:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/braze/enums/CardCategory;",
            ">;"
        }
    .end annotation
.end field

.field private mEmptyFeedLayout:Landroid/widget/LinearLayout;

.field private mFeedRootLayout:Landroid/widget/RelativeLayout;

.field private mFeedSwipeLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

.field private mFeedUpdatedSubscriber:Lcom/braze/events/IEventSubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/braze/events/IEventSubscriber<",
            "Lcom/braze/events/FeedUpdatedEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mGestureDetector:Landroidx/core/view/GestureDetectorCompat;

.field private mLoadingSpinner:Landroid/widget/ProgressBar;

.field private final mMainThreadLooper:Landroid/os/Handler;

.field private mNetworkErrorLayout:Landroid/widget/LinearLayout;

.field private final mShowNetworkError:Ljava/lang/Runnable;

.field private mSkipCardImpressionsReset:Z

.field private mTransparentFullBoundsContainerView:Landroid/view/View;

.field private previousVisibleHeadCardIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    const-class v0, Lcom/braze/ui/BrazeXamarinFormsFeedFragment;

    invoke-static {v0}, Lcom/braze/support/BrazeLogger;->getBrazeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/braze/ui/BrazeXamarinFormsFeedFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 75
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 41
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/braze/ui/BrazeXamarinFormsFeedFragment;->mMainThreadLooper:Landroid/os/Handler;

    .line 43
    new-instance v0, Lcom/braze/ui/BrazeXamarinFormsFeedFragment$1;

    invoke-direct {v0, p0}, Lcom/braze/ui/BrazeXamarinFormsFeedFragment$1;-><init>(Lcom/braze/ui/BrazeXamarinFormsFeedFragment;)V

    iput-object v0, p0, Lcom/braze/ui/BrazeXamarinFormsFeedFragment;->mShowNetworkError:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/braze/ui/BrazeXamarinFormsFeedFragment;)Landroid/widget/ProgressBar;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/braze/ui/BrazeXamarinFormsFeedFragment;->mLoadingSpinner:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$100(Lcom/braze/ui/BrazeXamarinFormsFeedFragment;)Landroid/widget/LinearLayout;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/braze/ui/BrazeXamarinFormsFeedFragment;->mNetworkErrorLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$200(Lcom/braze/ui/BrazeXamarinFormsFeedFragment;)Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/braze/ui/BrazeXamarinFormsFeedFragment;->mFeedSwipeLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    return-object p0
.end method

.method static synthetic access$300(Lcom/braze/ui/BrazeXamarinFormsFeedFragment;)I
    .locals 0

    .line 35
    iget p0, p0, Lcom/braze/ui/BrazeXamarinFormsFeedFragment;->previousVisibleHeadCardIndex:I

    return p0
.end method

.method static synthetic access$302(Lcom/braze/ui/BrazeXamarinFormsFeedFragment;I)I
    .locals 0

    .line 35
    iput p1, p0, Lcom/braze/ui/BrazeXamarinFormsFeedFragment;->previousVisibleHeadCardIndex:I

    return p1
.end method

.method static synthetic access$400(Lcom/braze/ui/BrazeXamarinFormsFeedFragment;)Lcom/braze/ui/adapters/BrazeListAdapter;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/braze/ui/BrazeXamarinFormsFeedFragment;->mAdapter:Lcom/braze/ui/adapters/BrazeListAdapter;

    return-object p0
.end method

.method static synthetic access$502(Lcom/braze/ui/BrazeXamarinFormsFeedFragment;I)I
    .locals 0

    .line 35
    iput p1, p0, Lcom/braze/ui/BrazeXamarinFormsFeedFragment;->currentCardIndexAtBottomOfScreen:I

    return p1
.end method

.method static synthetic lambda$onActivityCreated$1(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 166
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private setOnScreenCardsToRead()V
    .locals 3

    .line 264
    iget-object v0, p0, Lcom/braze/ui/BrazeXamarinFormsFeedFragment;->mAdapter:Lcom/braze/ui/adapters/BrazeListAdapter;

    iget v1, p0, Lcom/braze/ui/BrazeXamarinFormsFeedFragment;->previousVisibleHeadCardIndex:I

    iget v2, p0, Lcom/braze/ui/BrazeXamarinFormsFeedFragment;->currentCardIndexAtBottomOfScreen:I

    invoke-virtual {v0, v1, v2}, Lcom/braze/ui/adapters/BrazeListAdapter;->batchSetCardsToRead(II)V

    return-void
.end method


# virtual methods
.method public getCategories()Ljava/util/EnumSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lcom/braze/enums/CardCategory;",
            ">;"
        }
    .end annotation

    .line 288
    iget-object v0, p0, Lcom/braze/ui/BrazeXamarinFormsFeedFragment;->mCategories:Ljava/util/EnumSet;

    return-object v0
.end method

.method synthetic lambda$onActivityCreated$0$com-braze-ui-BrazeXamarinFormsFeedFragment(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 128
    iget-object p1, p0, Lcom/braze/ui/BrazeXamarinFormsFeedFragment;->mGestureDetector:Landroidx/core/view/GestureDetectorCompat;

    invoke-virtual {p1, p2}, Landroidx/core/view/GestureDetectorCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method synthetic lambda$onActivityCreated$2$com-braze-ui-BrazeXamarinFormsFeedFragment(Lcom/braze/events/FeedUpdatedEvent;Landroid/widget/ListView;)V
    .locals 8

    .line 180
    sget-object v0, Lcom/braze/ui/BrazeXamarinFormsFeedFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Updating feed views in response to FeedUpdatedEvent: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/braze/support/BrazeLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    iget-object v1, p0, Lcom/braze/ui/BrazeXamarinFormsFeedFragment;->mMainThreadLooper:Landroid/os/Handler;

    iget-object v2, p0, Lcom/braze/ui/BrazeXamarinFormsFeedFragment;->mShowNetworkError:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 185
    iget-object v1, p0, Lcom/braze/ui/BrazeXamarinFormsFeedFragment;->mNetworkErrorLayout:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 189
    iget-object v1, p0, Lcom/braze/ui/BrazeXamarinFormsFeedFragment;->mCategories:Ljava/util/EnumSet;

    invoke-virtual {p1, v1}, Lcom/braze/events/FeedUpdatedEvent;->getCardCount(Ljava/util/EnumSet;)I

    move-result v1

    if-nez v1, :cond_0

    .line 190
    invoke-virtual {p2, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 191
    iget-object v1, p0, Lcom/braze/ui/BrazeXamarinFormsFeedFragment;->mAdapter:Lcom/braze/ui/adapters/BrazeListAdapter;

    invoke-virtual {v1}, Lcom/braze/ui/adapters/BrazeListAdapter;->clear()V

    goto :goto_0

    .line 193
    :cond_0
    iget-object v1, p0, Lcom/braze/ui/BrazeXamarinFormsFeedFragment;->mEmptyFeedLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 194
    iget-object v1, p0, Lcom/braze/ui/BrazeXamarinFormsFeedFragment;->mLoadingSpinner:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 195
    iget-object v1, p0, Lcom/braze/ui/BrazeXamarinFormsFeedFragment;->mTransparentFullBoundsContainerView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 200
    :goto_0
    invoke-virtual {p1}, Lcom/braze/events/FeedUpdatedEvent;->isFromOfflineStorage()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/braze/events/FeedUpdatedEvent;->lastUpdatedInSecondsFromEpoch()J

    move-result-wide v4

    const-wide/16 v6, 0x3c

    add-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-gez v1, :cond_1

    .line 201
    const-string v1, "Feed received was older than the max time to live of 60 seconds, displaying it for now, but requesting an updated view from the server."

    invoke-static {v0, v1}, Lcom/braze/support/BrazeLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    iget-object v1, p0, Lcom/braze/ui/BrazeXamarinFormsFeedFragment;->mBraze:Lcom/braze/IBraze;

    invoke-interface {v1}, Lcom/braze/IBraze;->requestFeedRefresh()V

    .line 206
    iget-object v1, p0, Lcom/braze/ui/BrazeXamarinFormsFeedFragment;->mCategories:Ljava/util/EnumSet;

    invoke-virtual {p1, v1}, Lcom/braze/events/FeedUpdatedEvent;->getCardCount(Ljava/util/EnumSet;)I

    move-result v1

    if-nez v1, :cond_1

    .line 207
    const-string p1, "Old feed was empty, putting up a network spinner and registering the network error message on a delay of 5000ms."

    invoke-static {v0, p1}, Lcom/braze/support/BrazeLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    iget-object p1, p0, Lcom/braze/ui/BrazeXamarinFormsFeedFragment;->mEmptyFeedLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 209
    iget-object p1, p0, Lcom/braze/ui/BrazeXamarinFormsFeedFragment;->mLoadingSpinner:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 210
    iget-object p1, p0, Lcom/braze/ui/BrazeXamarinFormsFeedFragment;->mTransparentFullBoundsContainerView:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 211
    iget-object p1, p0, Lcom/braze/ui/BrazeXamarinFormsFeedFragment;->mMainThreadLooper:Landroid/os/Handler;

    iget-object p2, p0, Lcom/braze/ui/BrazeXamarinFormsFeedFragment;->mShowNetworkError:Ljava/lang/Runnable;

    const-wide/16 v0, 0x1388

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 219
    :cond_1
    iget-object v0, p0, Lcom/braze/ui/BrazeXamarinFormsFeedFragment;->mCategories:Ljava/util/EnumSet;

    invoke-virtual {p1, v0}, Lcom/braze/events/FeedUpdatedEvent;->getCardCount(Ljava/util/EnumSet;)I

    move-result v0

    if-nez v0, :cond_2

    .line 220
    iget-object p1, p0, Lcom/braze/ui/BrazeXamarinFormsFeedFragment;->mLoadingSpinner:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 221
    iget-object p1, p0, Lcom/braze/ui/BrazeXamarinFormsFeedFragment;->mEmptyFeedLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 222
    iget-object p1, p0, Lcom/braze/ui/BrazeXamarinFormsFeedFragment;->mTransparentFullBoundsContainerView:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 224
    :cond_2
    iget-object v0, p0, Lcom/braze/ui/BrazeXamarinFormsFeedFragment;->mAdapter:Lcom/braze/ui/adapters/BrazeListAdapter;

    iget-object v1, p0, Lcom/braze/ui/BrazeXamarinFormsFeedFragment;->mCategories:Ljava/util/EnumSet;

    invoke-virtual {p1, v1}, Lcom/braze/events/FeedUpdatedEvent;->getFeedCards(Ljava/util/EnumSet;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/braze/ui/adapters/BrazeListAdapter;->replaceFeed(Ljava/util/List;)V

    .line 225
    invoke-virtual {p2, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 227
    :goto_1
    iget-object p1, p0, Lcom/braze/ui/BrazeXamarinFormsFeedFragment;->mFeedSwipeLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {p1, v3}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    return-void
.end method

.method synthetic lambda$onActivityCreated$3$com-braze-ui-BrazeXamarinFormsFeedFragment(Landroid/widget/ListView;Lcom/braze/events/FeedUpdatedEvent;)V
    .locals 2

    .line 172
    invoke-virtual {p0}, Lcom/braze/ui/BrazeXamarinFormsFeedFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 179
    :cond_0
    new-instance v1, Lcom/braze/ui/BrazeXamarinFormsFeedFragment$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p2, p1}, Lcom/braze/ui/BrazeXamarinFormsFeedFragment$$ExternalSyntheticLambda4;-><init>(Lcom/braze/ui/BrazeXamarinFormsFeedFragment;Lcom/braze/events/FeedUpdatedEvent;Landroid/widget/ListView;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$onRefresh$4$com-braze-ui-BrazeXamarinFormsFeedFragment()V
    .locals 2

    .line 326
    iget-object v0, p0, Lcom/braze/ui/BrazeXamarinFormsFeedFragment;->mFeedSwipeLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .line 111
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 112
    iget-boolean p1, p0, Lcom/braze/ui/BrazeXamarinFormsFeedFragment;->mSkipCardImpressionsReset:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 113
    iput-boolean p1, p0, Lcom/braze/ui/BrazeXamarinFormsFeedFragment;->mSkipCardImpressionsReset:Z

    goto :goto_0

    .line 115
    :cond_0
    iget-object p1, p0, Lcom/braze/ui/BrazeXamarinFormsFeedFragment;->mAdapter:Lcom/braze/ui/adapters/BrazeListAdapter;

    invoke-virtual {p1}, Lcom/braze/ui/adapters/BrazeListAdapter;->resetCardImpressionTracker()V

    .line 116
    sget-object p1, Lcom/braze/ui/BrazeXamarinFormsFeedFragment;->TAG:Ljava/lang/String;

    const-string v0, "Resetting card impressions."

    invoke-static {p1, v0}, Lcom/braze/support/BrazeLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    :goto_0
    invoke-virtual {p0}, Lcom/braze/ui/BrazeXamarinFormsFeedFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 122
    invoke-virtual {p0}, Lcom/braze/ui/BrazeXamarinFormsFeedFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 123
    sget v1, Lcom/braze/ui/R$layout;->com_braze_feed_header:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 124
    sget v1, Lcom/braze/ui/R$layout;->com_braze_feed_footer:I

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 126
    iget-object p1, p0, Lcom/braze/ui/BrazeXamarinFormsFeedFragment;->mFeedRootLayout:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/braze/ui/BrazeXamarinFormsFeedFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/braze/ui/BrazeXamarinFormsFeedFragment$$ExternalSyntheticLambda1;-><init>(Lcom/braze/ui/BrazeXamarinFormsFeedFragment;)V

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 132
    new-instance p1, Lcom/braze/ui/BrazeXamarinFormsFeedFragment$2;

    invoke-direct {p1, p0}, Lcom/braze/ui/BrazeXamarinFormsFeedFragment$2;-><init>(Lcom/braze/ui/BrazeXamarinFormsFeedFragment;)V

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 164
    iget-object p1, p0, Lcom/braze/ui/BrazeXamarinFormsFeedFragment;->mTransparentFullBoundsContainerView:Landroid/view/View;

    new-instance v1, Lcom/braze/ui/BrazeXamarinFormsFeedFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/braze/ui/BrazeXamarinFormsFeedFragment$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 170
    iget-object p1, p0, Lcom/braze/ui/BrazeXamarinFormsFeedFragment;->mBraze:Lcom/braze/IBraze;

    iget-object v1, p0, Lcom/braze/ui/BrazeXamarinFormsFeedFragment;->mFeedUpdatedSubscriber:Lcom/braze/events/IEventSubscriber;

    const-class v2, Lcom/braze/events/FeedUpdatedEvent;

    invoke-interface {p1, v1, v2}, Lcom/braze/IBraze;->removeSingleSubscription(Lcom/braze/events/IEventSubscriber;Ljava/lang/Class;)V

    .line 171
    new-instance p1, Lcom/braze/ui/BrazeXamarinFormsFeedFragment$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0, v0}, Lcom/braze/ui/BrazeXamarinFormsFeedFragment$$ExternalSyntheticLambda3;-><init>(Lcom/braze/ui/BrazeXamarinFormsFeedFragment;Landroid/widget/ListView;)V

    iput-object p1, p0, Lcom/braze/ui/BrazeXamarinFormsFeedFragment;->mFeedUpdatedSubscriber:Lcom/braze/events/IEventSubscriber;

    .line 230
    iget-object v1, p0, Lcom/braze/ui/BrazeXamarinFormsFeedFragment;->mBraze:Lcom/braze/IBraze;

    invoke-interface {v1, p1}, Lcom/braze/IBraze;->subscribeToFeedUpdates(Lcom/braze/events/IEventSubscriber;)V

    .line 234
    iget-object p1, p0, Lcom/braze/ui/BrazeXamarinFormsFeedFragment;->mAdapter:Lcom/braze/ui/adapters/BrazeListAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 235
    iget-object p1, p0, Lcom/braze/ui/BrazeXamarinFormsFeedFragment;->mBraze:Lcom/braze/IBraze;

    invoke-interface {p1}, Lcom/braze/IBraze;->requestFeedRefreshFromCache()V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 3

    .line 80
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onAttach(Landroid/content/Context;)V

    .line 81
    invoke-static {p1}, Lcom/braze/Braze;->getInstance(Landroid/content/Context;)Lcom/braze/Braze;

    move-result-object v0

    iput-object v0, p0, Lcom/braze/ui/BrazeXamarinFormsFeedFragment;->mBraze:Lcom/braze/IBraze;

    .line 82
    iget-object v0, p0, Lcom/braze/ui/BrazeXamarinFormsFeedFragment;->mAdapter:Lcom/braze/ui/adapters/BrazeListAdapter;

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Lcom/braze/ui/adapters/BrazeListAdapter;

    sget v1, Lcom/braze/ui/R$id;->tag:I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, p1, v1, v2}, Lcom/braze/ui/adapters/BrazeListAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lcom/braze/ui/BrazeXamarinFormsFeedFragment;->mAdapter:Lcom/braze/ui/adapters/BrazeListAdapter;

    .line 84
    invoke-static {}, Lcom/braze/enums/CardCategory;->getAllCategories()Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/braze/ui/BrazeXamarinFormsFeedFragment;->mCategories:Ljava/util/EnumSet;

    :cond_0
    const/4 v0, 0x1

    .line 86
    invoke-virtual {p0, v0}, Lcom/braze/ui/BrazeXamarinFormsFeedFragment;->setRetainInstance(Z)V

    .line 87
    new-instance v0, Landroidx/core/view/GestureDetectorCompat;

    new-instance v1, Lcom/braze/ui/BrazeXamarinFormsFeedFragment$FeedGestureListener;

    invoke-direct {v1, p0}, Lcom/braze/ui/BrazeXamarinFormsFeedFragment$FeedGestureListener;-><init>(Lcom/braze/ui/BrazeXamarinFormsFeedFragment;)V

    invoke-direct {v0, p1, v1}, Landroidx/core/view/GestureDetectorCompat;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/braze/ui/BrazeXamarinFormsFeedFragment;->mGestureDetector:Landroidx/core/view/GestureDetectorCompat;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .line 92
    sget p3, Lcom/braze/ui/R$layout;->com_braze_feed:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 93
    sget p2, Lcom/braze/ui/R$id;->com_braze_feed_network_error:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/braze/ui/BrazeXamarinFormsFeedFragment;->mNetworkErrorLayout:Landroid/widget/LinearLayout;

    .line 94
    sget p2, Lcom/braze/ui/R$id;->com_braze_feed_loading_spinner:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ProgressBar;

    iput-object p2, p0, Lcom/braze/ui/BrazeXamarinFormsFeedFragment;->mLoadingSpinner:Landroid/widget/ProgressBar;

    .line 95
    sget p2, Lcom/braze/ui/R$id;->com_braze_feed_empty_feed:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/braze/ui/BrazeXamarinFormsFeedFragment;->mEmptyFeedLayout:Landroid/widget/LinearLayout;

    .line 96
    sget p2, Lcom/braze/ui/R$id;->com_braze_feed_root:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/braze/ui/BrazeXamarinFormsFeedFragment;->mFeedRootLayout:Landroid/widget/RelativeLayout;

    .line 97
    sget p2, Lcom/braze/ui/R$id;->braze_feed_swipe_container:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iput-object p2, p0, Lcom/braze/ui/BrazeXamarinFormsFeedFragment;->mFeedSwipeLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 98
    invoke-virtual {p2, p0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 99
    iget-object p2, p0, Lcom/braze/ui/BrazeXamarinFormsFeedFragment;->mFeedSwipeLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {p2, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setEnabled(Z)V

    .line 100
    iget-object p2, p0, Lcom/braze/ui/BrazeXamarinFormsFeedFragment;->mFeedSwipeLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    sget p3, Lcom/braze/ui/R$color;->com_braze_newsfeed_swipe_refresh_color_1:I

    sget v0, Lcom/braze/ui/R$color;->com_braze_newsfeed_swipe_refresh_color_2:I

    sget v1, Lcom/braze/ui/R$color;->com_braze_newsfeed_swipe_refresh_color_3:I

    sget v2, Lcom/braze/ui/R$color;->com_braze_newsfeed_swipe_refresh_color_4:I

    filled-new-array {p3, v0, v1, v2}, [I

    move-result-object p3

    invoke-virtual {p2, p3}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setColorSchemeResources([I)V

    .line 104
    sget p2, Lcom/braze/ui/R$id;->com_braze_feed_transparent_full_bounds_container_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/braze/ui/BrazeXamarinFormsFeedFragment;->mTransparentFullBoundsContainerView:Landroid/view/View;

    return-object p1
.end method

.method public onDestroyView()V
    .locals 3

    .line 246
    invoke-super {p0}, Landroid/app/ListFragment;->onDestroyView()V

    .line 248
    iget-object v0, p0, Lcom/braze/ui/BrazeXamarinFormsFeedFragment;->mBraze:Lcom/braze/IBraze;

    iget-object v1, p0, Lcom/braze/ui/BrazeXamarinFormsFeedFragment;->mFeedUpdatedSubscriber:Lcom/braze/events/IEventSubscriber;

    const-class v2, Lcom/braze/events/FeedUpdatedEvent;

    invoke-interface {v0, v1, v2}, Lcom/braze/IBraze;->removeSingleSubscription(Lcom/braze/events/IEventSubscriber;Ljava/lang/Class;)V

    .line 250
    invoke-direct {p0}, Lcom/braze/ui/BrazeXamarinFormsFeedFragment;->setOnScreenCardsToRead()V

    return-void
.end method

.method public onDetach()V
    .locals 1

    .line 269
    invoke-super {p0}, Landroid/app/ListFragment;->onDetach()V

    const/4 v0, 0x0

    .line 270
    invoke-virtual {p0, v0}, Lcom/braze/ui/BrazeXamarinFormsFeedFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public onPause()V
    .locals 0

    .line 255
    invoke-super {p0}, Landroid/app/ListFragment;->onPause()V

    .line 256
    invoke-direct {p0}, Lcom/braze/ui/BrazeXamarinFormsFeedFragment;->setOnScreenCardsToRead()V

    return-void
.end method

.method public onRefresh()V
    .locals 4

    .line 325
    iget-object v0, p0, Lcom/braze/ui/BrazeXamarinFormsFeedFragment;->mBraze:Lcom/braze/IBraze;

    invoke-interface {v0}, Lcom/braze/IBraze;->requestFeedRefresh()V

    .line 326
    iget-object v0, p0, Lcom/braze/ui/BrazeXamarinFormsFeedFragment;->mMainThreadLooper:Landroid/os/Handler;

    new-instance v1, Lcom/braze/ui/BrazeXamarinFormsFeedFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/braze/ui/BrazeXamarinFormsFeedFragment$$ExternalSyntheticLambda0;-><init>(Lcom/braze/ui/BrazeXamarinFormsFeedFragment;)V

    const-wide/16 v2, 0x9c4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 240
    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    .line 241
    invoke-virtual {p0}, Lcom/braze/ui/BrazeXamarinFormsFeedFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/braze/Braze;->getInstance(Landroid/content/Context;)Lcom/braze/Braze;

    move-result-object v0

    invoke-virtual {v0}, Lcom/braze/Braze;->logFeedDisplayed()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 277
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 282
    invoke-virtual {p0}, Lcom/braze/ui/BrazeXamarinFormsFeedFragment;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 283
    iput-boolean p1, p0, Lcom/braze/ui/BrazeXamarinFormsFeedFragment;->mSkipCardImpressionsReset:Z

    :cond_0
    return-void
.end method

.method public setCategories(Ljava/util/EnumSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lcom/braze/enums/CardCategory;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 307
    sget-object p1, Lcom/braze/ui/BrazeXamarinFormsFeedFragment;->TAG:Ljava/lang/String;

    const-string v0, "The categories passed into setCategories are null, BrazeFeedFragment is going to display all the cards in cache."

    invoke-static {p1, v0}, Lcom/braze/support/BrazeLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    invoke-static {}, Lcom/braze/enums/CardCategory;->getAllCategories()Ljava/util/EnumSet;

    move-result-object p1

    iput-object p1, p0, Lcom/braze/ui/BrazeXamarinFormsFeedFragment;->mCategories:Ljava/util/EnumSet;

    goto :goto_0

    .line 309
    :cond_0
    invoke-virtual {p1}, Ljava/util/EnumSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 310
    sget-object p1, Lcom/braze/ui/BrazeXamarinFormsFeedFragment;->TAG:Ljava/lang/String;

    const-string v0, "The categories set had no elements and have been ignored. Please pass a valid EnumSet of CardCategory."

    invoke-static {p1, v0}, Lcom/braze/support/BrazeLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 312
    :cond_1
    iget-object v0, p0, Lcom/braze/ui/BrazeXamarinFormsFeedFragment;->mCategories:Ljava/util/EnumSet;

    invoke-virtual {p1, v0}, Ljava/util/EnumSet;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 315
    :cond_2
    iput-object p1, p0, Lcom/braze/ui/BrazeXamarinFormsFeedFragment;->mCategories:Ljava/util/EnumSet;

    .line 317
    :goto_0
    iget-object p1, p0, Lcom/braze/ui/BrazeXamarinFormsFeedFragment;->mBraze:Lcom/braze/IBraze;

    if-eqz p1, :cond_3

    .line 318
    invoke-interface {p1}, Lcom/braze/IBraze;->requestFeedRefreshFromCache()V

    :cond_3
    return-void
.end method

.method public setCategory(Lcom/braze/enums/CardCategory;)V
    .locals 0

    .line 292
    invoke-static {p1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/braze/ui/BrazeXamarinFormsFeedFragment;->setCategories(Ljava/util/EnumSet;)V

    return-void
.end method
